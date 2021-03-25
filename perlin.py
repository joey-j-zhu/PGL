import numpy as np
import cmath
import math
import interpolate as interp
r = np.random

def c(x, y):
    return x + y * 1j
# 2d Perlin field
class Perlin:
    # All grid/data functions
    def __init__(self, x, y, cell_size, omega):
        # Direction of gradients is fully random, but not magnitude
        length_func = lambda: max(0, r.normal(1, 0))
        # The true shape. NOT the grid that contains the gradients
        self.x_size, self.y_size = x, y
        self.cell_size = cell_size
        self.render = np.zeros((x, y))
        x_cells, y_cells = x // cell_size, y // cell_size
        self.dxn = np.array([[self.cgradient() for j in range(x_cells + 1)] for i in range(y_cells + 1)])
        self.mag = np.array([[length_func() for j in range(x_cells + 1)] for i in range(y_cells + 1)])
        self.g = self.dxn * self.mag
        self.omega = omega
        self.positions = np.array([[x + y * 1j for x in range(self.x_size)] for y in range(self.y_size)])


    def update(self):
        # compute dots for each pixel
        for y in range(self.y_size):
            for x in range(self.x_size):
                z = x + y * 1j
                cx, cy = math.floor(z.real / self.cell_size), math.floor(z.imag / self.cell_size)
                cell = x + y * 1j
                delta = z - cell * self.cell_size
                self.render[y, x] = 0
                self.render[y, x] += self.cdot(self.g[cx, cy], delta)
                self.render[y, x] += self.cdot(self.g[cx, cy + 1], delta + self.cell_size)
                self.render[y, x] += self.cdot(self.g[cx + 1, cy], delta + 1j * self.cell_size)
                self.render[y, x] += self.cdot(self.g[cx + 1, cy + 1], delta + (1 + 1j) * self.cell_size)

        # scale down delta vectors
        self.render /= self.cell_size
        self.dxn *= self.omega * 1j

    def cgradient(self):
        g = r.normal(0, 1, 2)
        g /= np.sqrt(sum(g * g))
        return g[0] + g[1] * 1j

    def cdot(self, z1, z2):
        return z1.real * z2.real + z1.imag * z2.imag