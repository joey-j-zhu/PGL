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

image = Field(frameSize, lambda x, y: np.sin(2 * x) * np.sin(0.75 * y), D / 2, D / 2).out
series = PerlinSeries(image, 1)
#field.generate_input(lambda x, y: np.sin(2 * x) * np.sin(1 * y))

beta = 1
frames = 10000
jump = 100
#ideo.release()
i = 0

#print(series.calculate(frames, beta, jump, 0))
for rendered_frame in series.calculate(frames, beta, jump, 1):
    raster = series.quick_rgb()
    #raster = np.array(rendered_frame, dtype=np.uint8)
    #print(raster[0, 0])
    video.write(raster)
    series.update_error()
    print("frame: " + str(i) + ", error: " + str(series.total_error()))
    i += 1

video.release()


# Goal: get error down to 100

#for i in range(240):
#    c.update(1)
#    raster = np.array(c.out, dtype=np.uint8)
#    print("frame " + str(i))
#    video.write(raster)
#video.release()
#cv2.imshow('image',img)
print("finished with no errors")
