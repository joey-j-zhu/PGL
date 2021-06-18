from utils.tests import *

red, green, blue = png_to_arrays("test_images/windowsxp")

dx, dy = fa.generate(lambda x, y: 5 * y, D, D), fa.generate(lambda x, y: 5 * -x, D, D)
r_diff, g_diff, b_diff = diffuse.Diffuse(red, dx, dy), diffuse.Diffuse(green, dx, dy), diffuse.Diffuse(blue, dx, dy)
for i in range(100):
    for j in range(10000):
        b_diff.step(10, 1)
    raster = cv_rgb(b_diff.out, b_diff.out, b_diff.out)
    video.write(raster)
    print("Frame " + str(i))

#cycle(["zebra-1", "zebra-2"], 150, 0, 0)
video.release()
print("LETS FUCKING GOOOOOO")




