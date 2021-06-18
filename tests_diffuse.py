from tests import *
from stochastic_diffuse.diffuse import *
from utils.interpolate import *

# Data Inputs
red, green, blue = png_to_arrays("test_images/windowsxp")
blue_contr = np.clip(blue * 2 - np.ones(blue.shape), 0, 1)
STRENGTH = 5
inv_sq = lambda x, y: 1 / (x * x + y * y)
dist = lambda x, y: np.sqrt(x * x + y * y)
field_x, field_y = lambda x, y: STRENGTH * y * np.sin(dist(x, y) * 2 * np.pi), lambda x, y: -STRENGTH * x * np.sin(dist(x, y) * 2 * np.pi)

# Parameters
max_rad, exchange = 1, 0.95
buffer_frames, rate = 10, 0.1
wfunc = lambda x: 1 - x

# Render settings
frames, steps_per_frame = 200, 2000

dx, dy = fa.generate(field_x, D, D), fa.generate(field_y, D, D)
r_diff, g_diff, b_diff = Diffuse(red, dx, dy, wfunc), Diffuse(green, dx, dy, wfunc), Diffuse(blue_contr, dx, dy, wfunc)

b_smooth = SmoothStream(b_diff.out + np.zeros(b_diff.out.shape), buffer_frames, rate)

for i in range(frames):
    for j in range(steps_per_frame):
        #r_diff.step(max_rad, exchange)
        #g_diff.step(max_rad, exchange)
        b_diff.step(max_rad, exchange)

    b_smooth.add_frame(b_diff.out)
    b_smooth.step()
    raster = cv_rgb(b_smooth.out, b_smooth.out, b_smooth.out)
    video.write(raster)
    print("Frame " + str(i))

video.release()
print("LETS FUCKING GOOOOOO")




