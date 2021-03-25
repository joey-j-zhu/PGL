from perlin import Perlin
import noise_generator as ng
import numpy as np
import cairo
import opencv

class Screen:
    def __init__(self, x, y, window):
        self.grid = np.zeros((x, y))
        self.x_size, self.y_size = x, y

    def render(self, raster):
        # Render a 2d numpy array
        return

screen = Screen(100, 100, None)
#x, y, cell size, omega
p = Perlin(100, 100, 10, 1)
for i in range(100):
    p.update()
    screen.render(p.render)

print("finished with no errors")
