import numpy as np
import math


def generate_gradient(n):
    gradient = np.random.normal(0, 1, (n))
    norm = np.sqrt(sum(gradient * gradient))
    gradient /= norm

    # All norms come out to be 1, and it looks like equal directional distribution
    # Isotropic behavior, standard deviation should have no effect

    return gradient


def generate_corner_gradients(l):
    # START YOUR MAGNIFICENT CODE HERE

    array = np.zeros((l + 1, l + 1, 2))
    for i in range(l + 1):
        for j in range(l + 1):
            g = generate_gradient(2)
            array[i, j] = g

    # This array should be right, right?

    return array


def compute_dot_products(gradients, x, y):
    # START YOUR MAGNIFICENT CODE HERE
    floor_x, floor_y = math.floor(x), math.floor(y)  # coordinates rounded down
    ceil_x, ceil_y = floor_x + 1, floor_y + 1  # coordinates rounded up

    # Or here
    corner_coords = np.array([[[floor_x, floor_y], [floor_x + 1, floor_y]],
                              [[floor_x, floor_y + 1],
                               [floor_x + 1, floor_y + 1]]])  # numpy array of corner coordinates with shape (2,2,2)

    # END YOUR MAGNIFICENT CODE HERE
    corner_gradients = gradients[floor_y: ceil_y + 1, floor_x: ceil_x + 1]
    delta = np.array([x, y]) - corner_coords
    return np.sum(corner_gradients * delta, axis=2)


def smooth_interp(t, a, b):
    smooth_t = 6*t**5 - 15*t**4 + 10*t**3
    return (1 - smooth_t) * a + smooth_t * b


def interpolate(dots, x, y):
    dx = x - np.floor(x)
    dy = y - np.floor(y)
    interp1 = smooth_interp(dx, dots[0, 0], dots[0, 1])
    interp2 = smooth_interp(dx, dots[1, 0], dots[1, 1])
    interp = smooth_interp(dy, interp1, interp2)
    return interp

def generate_world(size=100, l=4):
    grad = generate_corner_gradients(2 ** l + 1)
    units = np.linspace(0, 1, size)
    rescale_factor = (2 ** 0.5)
    grid = np.zeros((size, size))
    for i, x in enumerate(units):
        for j, y in enumerate(units):
            for log_f in range(l):
                f = 2 ** log_f
                amp = 1 / f
                new_x = x * f
                new_y = y * f
                dots = compute_dot_products(grad, new_x, new_y)
                val = interpolate(dots, new_x, new_y)
                rescaled_val = val * rescale_factor
                grid[j][i] += rescaled_val * amp
    grid /= 2 - 2 ** (1 - l)
    return grid

print(generate_world())