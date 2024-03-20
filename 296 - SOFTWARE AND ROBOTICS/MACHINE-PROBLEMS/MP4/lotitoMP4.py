'''
Chase Lotito - SIUC Undergrad - SP2024
ECE296 - Intro Software & Robotics
MP4 - Bisection Method
'''

# uses the eval() func that dynamically evaluates string
# based mathematical expressions

# take a func input with bounds a and b
# calculate the midpoint c
# eval func at all 3 points to determine where the root is

from math import *

def bisect(f, lower, upper, eps=1e-12, imax=100):
    """
    Finds the single root of a function via the bisection method.
    --
    bisect("equation", lower bound, upper bound, tolerance, max iteration)
    --
    DEFAULTS: eps = 1e-12, imax = 100
    """

    try:
        # inital params
        root = 0        # answer 
        df = 1
        i = 0           # counter
        a = lower       # left endpoint
        b = upper       # right endpoint
        d0 = b - a      # length of interval
        c = 0

        # eval function at points
        x = a
        fa = eval(f)
        x = b
        fb = eval(f)

        # loop error checking
        if (fa == fb) or (fa * fb > 0):
            print("[ERROR]: NO ZERO EXISTS IN GIVEN INTERVAL")
            return
        elif (lower == upper):
            print("[ERROR]: INVALID INTERVAL (A == B FAULT)")
            return

        # main loop
        while (True):
            # calculate midpoint of current interval
            i += 1
            c = (a + b) / 2
           
            # evaluate the function at midpoint
            fc = 0
            x = c
            fc = eval(f)
        
            if (df < eps) or (i > imax):
                root = c
                print("finished!")
                break

            if fa*fc < 0:
                df = (c - a)/d0
                fb = fc
                b = c
            elif fc*fb < 0:
                df = (b - c)/d0
                fa = fc
                a = c
            elif fc == 0:
                root = c
                print("finished!")
                break

        print('The root is equal to: %f' % root)
        print('The value of the function at %f is %f' % (root, fc))
        print('The number of iterations is %d' %(i))

        # return final answer
        return root
    except NameError:
        print("Invalid Entry")
