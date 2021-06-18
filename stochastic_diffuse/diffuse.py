import numpy as np

class Diffuse:
    def __init__(self, initial_array, xdrift, ydrift):
        self.out = initial_array
        self.xdrift, self.ydrift = xdrift, ydrift
        self.shape = initial_array.shape

    # Sample the Bernoulli variable of probability p
    def flip(self, p):
        return np.random.random() < p

    # Return a random n-size partition of variables which add up to 1 by virtue of Poisson process equivalence
    def fission(self, n):
        arr = np.log(np.random.rand(n))
        return arr / -arr.sum

    # Randomly sample from the entire grid
    def grid_sample(self):
        return np.random.randint(0, self.shape[0] - 1), np.random.randint(0, self.shape[1] - 1)

    # Sample from the axis-aligned square of length 2d+1 centered on x, y
    def box_sample(self, x, y, d):
        dx, dy = np.random.randint(-d, d), np.random.randint(-d, d)
        return min(max(0, x + dx), self.shape[0] - 1), min(max(0, y + dy), self.shape[1] - 1)

    def stoc(self, n):
        extra = self.flip(n % 1)
        if extra:
            return np.floor(n) + 1
        else:
            return np.floor(n)

    # Return a random neighbor with inverse radius weighting
    # max distance squared, NOT distance
    def invsq_neighbor(self, x, y, max_dist):
        max_distsq = max_dist * max_dist
        finished, r2 = False, max_distsq
        nx, ny = x, y
        while not(finished or r2 >= max_distsq):
            nx, ny = self.box_sample(x + self.stoc(self.xdrift[x, y]), y + self.stoc(self.ydrift[x, y]), max_dist)
            dx, dy = x - nx, y - ny
            r2 = dx * dx + dy * dy
            finished = self.flip(1 / r2)
        return nx, ny

    def sample_filter(self):
        x, y = 0, 0
        finished = 0
        while not finished:
            x, y = self.grid_sample()
            finished = self.flip(self.out[x, y])
        return x, y

    # Swap the contents of two cells
    def transfer(self, x1, y1, x2, y2, amt):
        cell_1, cell_2 = self.out[x1, y1], self.out[x2, y2]
        self.out[x1, y1] = cell_1 + amt * (cell_2 - cell_1)
        self.out[x2, y2] = cell_2 + amt * (cell_1 - cell_2)

    # Perform a single
    def step(self, d, diff=1, prob_weight=True):
        x, y, finished = 0, 0, False
        while not finished:
            x, y = self.grid_sample()
            finished = self.flip(self.out[x, y])
        nx, ny = self.invsq_neighbor(x, y, d)
        self.transfer(x, y, nx, ny, diff)

