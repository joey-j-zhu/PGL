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
FPS = 20
seconds = 10
fourcc = cv2.VideoWriter_fourcc(*'MP42')
video = cv2.VideoWriter('output_video.avi', fourcc, float(FPS), (width, height))

def png_to_array(path):
    image = im.open(path)
    return np.array(image.getdata())

def save_png(input, path):
    a=1


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


def cv_rgb(red, green, blue):
    red = np.clip((red + np.ones(red.shape)) * 128, 0, 255)
    green = np.clip((green + np.ones(green.shape)) * 128, 0, 255)
    blue = np.clip((blue + np.ones(blue.shape)) * 128, 0, 255)
    out = np.array(np.dstack((red, green, blue)), dtype=np.uint8)
    return out


# Animate a Perlin series by assigning a random rotation speed for each vector
# All RGB series must be of same depth
SOLID = np.ones((D, D)) * 255

def animate(red, green, blue, frames, jump):
    r_omega, g_omega, b_omega = [], [], []
    for i in range(red.size):
        r_omega.append(np.ones(red.fields[i].dxn.shape) * 0.2)
        g_omega.append(np.ones(green.fields[i].dxn.shape) * -0.2)
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
image = Field(frameSize, lambda x, y: np.sin(6 * x) * np.sin(6 * y), D / 2, D / 2).out

# Logo test
#image = png_to_array("test_images/512x512-logo-five-pointed-star-logo-icon-icons-download-8.png")

perlin = perlin_test(image, octaves=7, learning_rate=5, epoch_frames=20, jump=5, playback=False)
animate(red=perlin, green=perlin.copy(), blue=PerlinSeries(SOLID, perlin.size), frames=100, jump=5)

video.release()

print("finished with no errors")
