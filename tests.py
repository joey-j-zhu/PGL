# TODO: Fix magnitude descent
# TODO: Mask error onto successive magnitude arrays
# TODO: Clean up magic numbers
# TODO: Create orientation array so vectors are rotating efficiently
# TODO: Map functions from space coords to gradient grid coords

# TODO: Perturbation w/ position and velocity
# TODO: Goal: 512x512 total square error < 1000
    # Gradients affected by an inv.square force
    # Also proportional with cross product length


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
FPS = 30
seconds = 30
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


# Compute the Perlin map of an image, input via name in test files.
def perlinize(name, octaves, learning_rate, epoch_frames):
    red, green, blue = png_to_arrays("test_images/" + name)

    red_series = perlin_test(red, octaves, learning_rate, epoch_frames, 1, False)
    print("red channel finished")
    green_series = perlin_test(green, octaves, learning_rate, epoch_frames, 1, False)
    print("green channel finished")
    blue_series = perlin_test(blue, octaves, learning_rate, epoch_frames, 1, False)
    print("blue channel finished")

    red_series.save("perlinmaps/" + name + "_red.npz")
    green_series.save("perlinmaps/" + name + "_green.npz")
    blue_series.save("perlinmaps/" + name + "_blue.npz")

    return red_series, green_series, blue_series


# Load the RGB perlin maps of the input filename
def load_perlin_map(name):
    rp = load("perlinmaps/" + name + "_red.npz")
    gp = load("perlinmaps/" + name + "_green.npz")
    bp = load("perlinmaps/" + name + "_blue.npz")
    rp.render()
    gp.render()
    bp.render()
    return rp, gp, bp




def cv_rgb(red, green, blue):
    red = np.clip(red * 255, 0, 255)
    green = np.clip(green * 255, 0, 255)
    blue = np.clip(blue * 255, 0, 255)
    out = np.array((np.dstack((red, green, blue)) // 255) * 255, dtype=np.uint8)
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
        raster = cv_rgb(red.out, green.out, blue.out)
        video.write(raster)
        if not (i % jump):
            print("frame: " + str(i))


def cycle(files, transition, idle, rev_offset):
    i = 0
    for red, green, blue in slideshow(files, transition, idle, rev_offset):
        raster = cv_rgb(red, green, blue)
        video.write(raster)
        print("ding!")

red, green, blue = png_to_arrays("test_images/zebra-1")
perlin = perlin_test(green, octaves=7, learning_rate=1, epoch_frames=50, jump=5, playback=True) # Compute single Perlin series
#perlin.save("renders/zebra-1")
#perlinize("zebra-1", octaves=8, learning_rate=10, epoch_frames=20)
#perlinize("zebra-2", octaves=8, learning_rate=10, epoch_frames=20)
#perlinize("sunset3", octaves=8, learning_rate=10, epoch_frames=20)

#cycle(["zebra-1", "zebra-2"], 150, 0, 0)
video.release()
print("LETS FUCKING GOOOOOO")




