from perlinseries import *
from interpolate import smooth

def render_interp(a, b, t, func=smooth):
    out = np.ones(a.shape) * (a.avg + (b.avg - a.avg) * func(t))
    for i in range(a.size):
        a.fields[i].render()
        out += a.fields[i].out + (b.fields[i].out - a.fields[i].out) * func(t)
    return out

# Yields a triplet of r, g, b arrays
# files is a list of file names, without the color or the suffix so rgb wont have to be repeated
def slideshow(files, transition, idle):
    red_maps, green_maps, blue_maps = [], [], []
    for file in files:
        red_maps.append(load(file + "_red.npz"))
        green_maps.append(load(file + "_green.npz"))
        blue_maps.append(load(file + "_blue.npz"))
    for i in range(len(files)):
        for j in range(idle):
            yield red_maps[i], green_maps[i], blue_maps[i]
        for j in range(transition):
            yield render_interp(red_maps[i], red_maps[(i + 1) % len(files)], j / transition),\
                  render_interp(green_maps[i], green_maps[(i + 1) % len(files)], j / transition), \
                  render_interp(green_maps[i], green_maps[(i + 1) % len(files)], j / transition)