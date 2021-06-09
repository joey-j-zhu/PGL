from perlin import *
from perlinfield import *
from perlinseries import *
import noise_generator as ng
import numpy as np
from matplotlib import pyplot as plt
import cairo
import cv2

D = 512
#C = 5
frameSize = (D, D)
#cellSize = (C, C)

width = D
height = D
FPS = 20
seconds = 10

fourcc = cv2.VideoWriter_fourcc(*'MP42')
video = cv2.VideoWriter('output_video.avi', fourcc, float(FPS), (width, height))

#image = noise(frameSize, cellSize)
#field = PerlinField(image, cellSize)


#field.generate_input(lambda x, y: np.sin(2 * x) * np.sin(1 * y))

beta = 10
frames = 15
jump = 1
i = 0

# Test 1: checkerboard
image = Field(frameSize, lambda x, y: np.sin(6 * x) * np.sin(6 * y), D / 2, D / 2).out

# Test 2: sin x
#image = Field(frameSize, lambda x, y: np.sin(6 * x), D / 2, D / 2).out

series = PerlinSeries(image, 6)

# Integrated test 1: recreate a checkerboard
for rendered_frame in series.epoch(frames, beta, jump):
    raster = series.quick_rgb(series.out)
    video.write(raster)

    series.update_error()

    print("frame: " + str(i * jump) + ", error: " + str(series.total_error()))
    i += 1

video.release()

print("finished with no errors")
