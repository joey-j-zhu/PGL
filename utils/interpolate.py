# Stolen from an EECS 126 lab
import numpy as np

def smooth(t):
    return t*t*t*(t*(t*6 - 15) + 10)