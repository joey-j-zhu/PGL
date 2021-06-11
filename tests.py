# TODO: Reformat tester and Perlin files into module, create new file for structure manipulation/interpolation
# TODO: Implement a way to save Perlin structures
# TODO: Fix magnitude descent

from perlinfield import *
from perlinseries import *
from render import *
import numpy as np
import cv2
from PIL import Image as im

# ALL TESTS ARE OF 512x512 IMAGES
D = 512
frameSize = (D, D)

# OpenCV avi video setup
width = D
height = D
FPS = 24
seconds = 10
fourcc = cv2.VideoWriter_fourcc(*'MP42')
video = cv2.VideoWriter('output_video.avi', fourcc, float(FPS), (width, height))

# Returns a tuple of a red, green, and blue array from an image, clipped/padded to test dimensions
def png_to_arrays(path):
    image = im.open(path)
    image = image.resize((D, D))
    arrays = (np.array(image) / 256).transpose([2, 0, 1])
    return arrays[2], arrays[1], arrays[0]




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
SOLID = np.ones((D, D))

def animate(red, green, blue, red_avg, green_avg, blue_avg, frames, jump):
    r_omega, g_omega, b_omega = [], [], []
    for i in range(red.size):
        r_omega.append(np.ones(red.fields[i].dxn.shape) * 0.25 / (i + 1))
        g_omega.append(np.ones(green.fields[i].dxn.shape) * 0.25 / (i + 1))
        b_omega.append(np.ones(blue.fields[i].dxn.shape) * 0.25 / (i + 1))

    for i in range(frames):
        for j in range(red.size):
            red.fields[j].rotate(r_omega[j])
            green.fields[j].rotate(g_omega[j])
            blue.fields[j].rotate(b_omega[j])

        red.render()
        green.render()
        blue.render()

        raster = cv_rgb(rp.out + SOLID * red_avg, gp.out + SOLID * green_avg, bp.out + SOLID * blue_avg)
        video.write(raster)
        if not (i % jump):
            print("frame: " + str(i))

def cycle(files, transition, idle):
    i = 0
    for red, green, blue in slideshow(files, transition, idle):
        raster = cv_rgb(red, green, blue)
        video.write(raster)
        print("ding!")


# Checkerboard test
#image = Field(frameSize, lambda x, y: np.sin(6 * x) * np.sin(6 * y), D / 2, D / 2).out

# Logo test



red, green, blue = png_to_arrays("test_images/rain.png") # Convert png to input arrays
#perlin = perlin_test(image, octaves=7, learning_rate=5, epoch_frames=20, jump=5, playback=False) # Compute single Perlin series
rp, gp, bp = perlinize(red, green, blue, octaves=8, learning_rate=10, epoch_frames=20)
offset = np.ones((D, D))

rp.save("perlinmaps/rain_red.npz")
gp.save("perlinmaps/rain_green.npz")
bp.save("perlinmaps/rain_blue.npz")

rp = load("perlinmaps/rain_red.npz")
gp = load("perlinmaps/rain_green.npz")
bp = load("perlinmaps/rain_blue.npz")
rp.render()
gp.render()
bp.render()

raster = cv_rgb(rp.out, gp.out, bp.out)

cv2.imwrite('renders/rain_perlinized.png', raster)
#animate(red=gp, green=gp, blue=bp, red_avg=red_avg, green_avg=green_avg, blue_avg=blue_avg, frames=100, jump=5)

# Compute a Perlin series for each channel
#animate(red=rp, green=gp, blue=bp, frames=10, jump=5)



cycle(["windowsxp", "sunset", "rain"], 24, 24)

video.release()

print("finished with no errors")




