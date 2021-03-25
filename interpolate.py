# Stolen from an EECS 126 lab
import numpy as np

def smooth_interp(t, a, b):
    smooth_t = 6*t**5 - 15*t**4 + 10*t**3
    return (1 - smooth_t) * a + smooth_t * b

# Bilinearly interpolate from a source array which is 1:1 scaled with the true
# coordinate system.
def interpolate(source, x, y):
    dx = x - np.floor(x)
    dy = y - np.floor(y)
    interp1 = smooth_interp(dx, source[0, 0], source[0, 1])
    interp2 = smooth_interp(dx, source[1, 0], source[1, 1])
    interp = smooth_interp(dy, interp1, interp2)
    return interp
