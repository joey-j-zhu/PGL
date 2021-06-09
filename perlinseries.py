import perlinfield as pf
import numpy as np

class PerlinSeries:
    # Image resolution must be a multiple of 3
    def __init__(self, image, depth):
        self.image = image
        self.error = self.image
        self.shape = image.shape
        self.out = np.zeros(image.shape)
        self.fields = []
        for i in range(1, depth + 1):
            self.fields.append(pf.PerlinField(image, (2 ** i, 2 ** i)))

    # Stream: yield intermittent frames which are multiples of the given number. 0 to turn off
    def epoch(self, iterations, learning_rate, stream=0):
        residue = self.image
        for i in range(len(self.fields)):
            # Set the current layer's target to whatever is leftover from the previous
            self.fields[i].set_image(residue)
            for j in range(iterations):
                # Perform ^^ number of steps
                self.fields[i].descent(learning_rate)
                if stream != 0 and j % stream == 0:
                    self.render()
                    yield residue
            residue = residue - self.fields[i].out


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

    # Generate an RGB array for OpenCV render from a scalar array
    # For a good render, make sure the array is within [-1, 1]
    def quick_rgb(self, array):
        val = np.clip((array + np.ones(array.shape)) * 128, 0, 255)
        out = np.array(np.dstack((val, val, val)), dtype=np.uint8)

        return out

def noise(shape, res):
    image = np.zeros(shape)
    p = pf.PerlinField(image, res)
    p.render()
    return p