# Chase Lotito - SIUC - ECE447 HW 4
# Q 3.12 - Plotting Eg v. T from 0<=T<=600 K, note val at T=300kl

import matplotlib.pyplot as plt
import numpy as np
import math

# IMPORTANT CONSTANTS
Eg0 = 1.17          # Si bandgap at T=0K [eV]
alpha = 4.73e-4     # [eV/K]
beta = 636          # [K]

# define Eg(T) function
def bandgapTemp(T):
    """
    Calculate Si bandgap energy for a given temperature in K.
    Parameters:
    T = temp in K.
    """
    Eg = Eg0 - ( ( alpha * T**2 ) / (beta + T) )
    return Eg


##  Plotting ##

# Set up x-vals and input into Eg(T)
x = np.linspace(0, 600, 6000)
y = bandgapTemp(x)

markers_on = [3000]

# Create plot of Eg(T)
plt.plot(x, y, '-go', markevery=markers_on, label = "Eg(T)")

EgROOM = bandgapTemp(300)
plt.text((300 + 20), EgROOM, "(300, %.4f)" % EgROOM, fontsize = 12)

# Labels and Titles
plt.xlabel('Temperature (K)')
plt.ylabel('Bandgap Energy (eV)')
plt.title('Si Bandgap Energy v. Temperature')

# Axis Formatting
plt.xlim(0,600)

# Show plot
plt.legend()
plt.show()
