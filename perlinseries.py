import perlinfield as pf
import numpy as np

class PerlinSeries:
    # Image resolution must be a multiple of 3
    def __init__(self, image, depth):
        self.image = image
        self.shape = image.shape
        self.out = np.zeros(image.shape)
        self.fields = []
        for i in range(1, depth + 1):
            self.fields.append(pf.PerlinField(image, (2 ** i, 2 ** i)))

    # Stream: yield intermittent frames which are multiples of the given number. 0 to turn off
    def calculate(self, iterations, learning_rate, jump, stream=0):
        residue = self.image
        for i in range(len(self.fields)):
            self.fields[i].image = residue
            #print(iterations // jump)
            for j in range(iterations // jump):
                self.fields[i].descent(learning_rate)
                residue = residue - self.fields[i].out
                if stream != 0 and j % stream == 0:
                    self.render()
                    yield self.out

    # Update self.out
    def render(self, octaves=-1):
        self.out = np.zeros(self.shape)
        if octaves == -1:
            octaves = len(self.fields)
        for i in range(octaves):
            #print(self.out)
            self.fields[i].render()
            self.out = self.out + self.fields[i].out #SEGFAULT

    def update_error(self):
        self.error = self.image - self.out

    def total_error(self):
        return 0.5 * np.sum(self.error * self.error, axis=None)

    def quick_rgb(self):
        val = ((self.out) * 128)
        #print(val.shape)
        #val = np.tile(np.max(self.min_val, np.min(self.max_val, (self.out + 1) * 128)), (1, 1, 3))
        out = np.array(np.dstack((val, val, val)), dtype=np.uint8)
        #print(out[0, 0])
        #print(out.shape)
        return out

def noise(shape, res):
    image = np.zeros(shape)
    p = pf.PerlinField(image, res)
    p.render()
    return p