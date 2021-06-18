from tests import *
from stochastic_diffuse.diffuse import *
import os

# Data Inputs
red, green, blue = png_to_arrays("test_images/windowsxp")
field_x, field_y = lambda x, y: 5 * y, lambda x, y: 5 * -x

# Parameters
max_rad, exchange = 10, 1

# Render settings
frames, steps = 100, 10000

print()




dx, dy = fa.generate(field_x, D, D), fa.generate(field_y, D, D)
r_diff, g_diff, b_diff = Diffuse(red, dx, dy), Diffuse(green, dx, dy), Diffuse(blue, dx, dy)

for i in range(frames):
    for j in range(steps):
        b_diff.step(max_rad, exchange)
    raster = cv_rgb(b_diff.out, b_diff.out, b_diff.out)
    video.write(raster)
    print("Frame " + str(i))

video.release()
print("LETS FUCKING GOOOOOO")




