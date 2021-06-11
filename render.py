from perlinseries import *
from interpolate import smooth

def render_interp(a, b, t, func=smooth):
    out = np.zeros(a.shape)
    for i in range(a.size):
        a.fields[i].render()
        out += a.fields[i].out + (b.fields[i].out - a.fields[i].out) * func(t)
    return out