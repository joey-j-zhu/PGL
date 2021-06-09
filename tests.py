from perlinfield import *
from perlinseries import *
import numpy as np
import cv2
from PIL import Image as im

# ALL TESTS ARE OF 512x512 IMAGES
D = 512
frameSize = (D, D)

# OpenCV avi video setup
width = D
height = D
FPS = 6
seconds = 10
fourcc = cv2.VideoWriter_fourcc(*'MP42')
video = cv2.VideoWriter('output_video.avi', fourcc, float(FPS), (width, height))

# Returns a tuple of a red, green, and blue array from an image, clipped/padded to test dimensions
def png_to_arrays(path):
    image = im.open(path)
    image = image.resize((D, D))
    arrays = (np.array(image) / 256).transpose([2, 0, 1])
    return arrays[2], arrays[1], arrays[0]


def average(array):
    avg = array.sum() / (D * D)
    return array - np.ones(array.shape) * avg, avg




# Perlin series tests take INPUT as a test image
# Each layer takes epoch_frames steps of size learning_rate
# Jump indicates how many steps to skip when making playback video
def perlin_test(input, octaves, learning_rate, epoch_frames, jump, playback):
    series = PerlinSeries(input, octaves)
    i = 0
    for rendered_frame in series.epoch(epoch_frames, learning_rate, jump):
        if playback:
            raster = series.quick_rgb(series.out)
            video.write(raster)
            series.update_error()
            print("frame: " + str(i * jump) + ", error: " + str(series.total_error()))
        i += 1
    return series


# Return Perlin series of red, green, and blue given an input image
def perlinize(red, green, blue, octaves, learning_rate, epoch_frames):
    red_series = perlin_test(red, octaves, learning_rate, epoch_frames, 1, False)
    print("red channel finished")
    green_series = perlin_test(green, octaves, learning_rate, epoch_frames, 1, False)
    print("green channel finished")
    blue_series = perlin_test(blue, octaves, learning_rate, epoch_frames, 1, False)
    print("blue channel finished")
    return red_series, green_series, blue_series



def cv_rgb(red, green, blue):
    red = np.clip(red * 255, 0, 255)
    green = np.clip(green * 255, 0, 255)
    blue = np.clip(blue * 255, 0, 255)
    out = np.array(np.dstack((red, green, blue)), dtype=np.uint8)
    return out


# Animate a Perlin series by assigning a random rotation speed for each vector
# All RGB series must be of same depth
SOLID = np.ones((D, D)) * 255

def animate(red, green, blue, frames, jump):
    r_omega, g_omega, b_omega = [], [], []
    for i in range(red.size):
        r_omega.append(np.random.sample(red.fields[i].dxn.shape) * 0.02)
        g_omega.append(np.random.sample(green.fields[i].dxn.shape) * -0.02)
        b_omega.append(np.zeros(green.fields[i].dxn.shape))

    for i in range(frames):
        for j in range(red.size):
            red.fields[j].rotate(r_omega[j])
            green.fields[j].rotate(g_omega[j])
            blue.fields[j].rotate(b_omega[j])

        red.render()
        green.render()
        blue.render()

        raster = cv_rgb(SOLID, green.out, red.out)
        video.write(raster)
        if not (i % jump):
            print("frame: " + str(i))


# Checkerboard test
#image = Field(frameSize, lambda x, y: np.sin(6 * x) * np.sin(6 * y), D / 2, D / 2).out

# Logo test



red, green, blue = png_to_arrays("test_images/windowsxp.jpeg") # Convert png to input arrays
red, red_avg = average(red)
green, green_avg = average(green)
blue, blue_avg = average(blue)
#perlin = perlin_test(image, octaves=7, learning_rate=5, epoch_frames=20, jump=5, playback=False) # Compute single Perlin series

rp, gp, bp = perlinize(red, green, blue, octaves=8, learning_rate=10, epoch_frames=15)
offset = np.ones((D, D))
raster = cv_rgb(rp.out + offset * red_avg, gp.out + offset * green_avg, bp.out + offset * blue_avg)
cv2.imwrite('renders/windowsxp_perlinized.png', raster)

# Compute a Perlin series for each channel
#animate(red=rp, green=gp, blue=bp, frames=10, jump=5)
#video.release()

print("finished with no errors")
