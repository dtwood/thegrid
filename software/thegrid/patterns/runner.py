"""
1. Colour runner pattern

Looks as if a coloured pole is running through The Grid!  Imagine: grid is set
to all blue.  Suddenly, one of them is red, and the co-ordinates of the red
pole changes, leaving a fading red trail in its wake.  We call this moving red
pole the runner.  In future, the colour of the runner might change,
and/or the background colour.  Exciting!

2. Rainbow runner pattern

A rainbow snake moving through an otherwise dark grid!
"""

import collections
import copy
import itertools
import numpy as np
import logging
logger = logging.getLogger(__name__)

from ..pattern import Pattern, register_pattern


class Runner(Pattern):
    """Parent class for runner patterns"""

    def __init__(self, config, ui):
        super().__init__(config, ui)
        self.grid_gen = self.generate_grid()
        self.runner_loc = self.runner_location()

    def update(self):
        return next(self.grid_gen), 1/15

    @staticmethod
    def runner_location():
        """
        Yields (x, y) co-ordinates of the runner

        Yields (x, y) co-ordinates of runner, moving through The Grid row by
        row.  E.g. from (0, 0) to (6, 0), then from (6, 1) to (0, 1).  It does
        this til it reaches the end of the grid, (6, 6), then turns round.
        This is repeated forever.
        """
        x_length_cycle = itertools.cycle((list(range(7)) +
                                          list(reversed(range(7)))))
        y_length_cycle = copy.deepcopy(x_length_cycle)
        x, y = 0, next(y_length_cycle)
        yield x, y

        while True:
            for _ in range(7):
                yield (next(x_length_cycle), y)
            y = next(y_length_cycle)


@register_pattern("[COLOUR] Runner")
class ColourRunner(Runner):

    @staticmethod
    def interpolate_rgb(start_rgb, end_rgb, distance, n=7):
        return [int(start_rgb[channel] + distance/n *
                (end_rgb[channel] - start_rgb[channel]))
                for channel in range(3)]

    def generate_grid(self, wake_length=10):
        """
        Yields 7x7x6 numpy array representing grid pole configurations

        Yields a 7x7x6 numpy array, with each entry representing the
        configuration of a pole in The Grid.
        """
        blue = [0, 0, 255]
        red = [255, 0, 0]

        wake = collections.deque(maxlen=wake_length)
        wake.appendleft(next(self.runner_loc))

        grid = np.zeros((7, 7, 6), dtype=np.uint8)
        grid[:, :] = blue + [0, 0, 0]

        while True:
            runner_x, runner_y = wake[0]
            grid[runner_x][runner_y][0:3] = red
            yield grid

            for i in range(len(wake)):
                x, y = wake[i]
                grid[x][y][0:3] = self.interpolate_rgb(red, blue, i,
                                                       wake_length)
            wake.appendleft(next(self.runner_loc))


@register_pattern("[COLOUR] Rainbow Runner")
class RainbowRunner(Runner):

    @staticmethod
    def colour_gradient(n=4):
        """
        Returns list of rainbow colours in gradient.

        Returns a list of colours gradating from red to green to blue to red.
        Kwarg n is the number of interpolation steps between each colour.
        """
        red = [255, 0, 0]
        green = [0, 255, 0]
        blue = [0, 0, 255]

        start_rgb_cycle = itertools.cycle([red, green, blue])
        end_rgb_cycle = itertools.cycle([green, blue, red])

        colours = []
        for _ in range(3):
            start_rgb = next(start_rgb_cycle)
            end_rgb = next(end_rgb_cycle)
            for i in range(n):
                rgb = [int(start_rgb[channel] +
                       i/n * (end_rgb[channel] - start_rgb[channel]))
                       for channel in range(3)]
                colours.append(rgb)
        return colours

    def generate_grid(self, wake_length=11):
        """
        Yields 7x7x6 numpy array representing grid pole configurations

        Yields a 7x7x6 numpy array, with each entry representing the
        configuration of a pole in The Grid.
        """
        wake = collections.deque(maxlen=wake_length)
        wake.appendleft(next(self.runner_loc))
        colours = self.colour_gradient()

        while True:
            grid = np.zeros((7, 7, 6), dtype=np.uint8)
            runner_x, runner_y = wake[0]
            grid[runner_x][runner_y][0:3] = colours[0]

            for i in range(len(wake)):
                x, y = wake[i]
                grid[x][y][0:3] = colours[1 + i]
            wake.appendleft(next(self.runner_loc))
            yield grid
