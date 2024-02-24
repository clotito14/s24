# Chase Lotito - SIUC - ECE447 HW 3 - Q2: Tunneling Probability Graphs

# We wish to write a script that will plot the tunneling probability of an electron T as a function of the electron's energy E.

# We have a conduction electron with an effective mass of 0.067m, potential barrier thickness of 15A, and potential barrier height of 0.3eV

import matplotlib.pyplot as plt
import numpy as np
import math

# IMPORTANT CONSTANTS
q = 1.6e-19                 # fundamental charge / eV-to-J conversion factor
h = 6.63e-34                # Planck's constant [J*s]
hbar = h / ( 2 * math.pi )  # Reduced Planck's Constant
mfe = 9.8e-31               # mass of free electron
me = 0.067 * mfe            # effective mass of electron
a1 = 15e-10                 # potential barrier thickness
a2 = 5e-10                  # second potential barrier thickness
v0_eV = 0.3                 # potential barrier height in eV            # energy must be less than this for real solutions
v0_J = v0_eV * q            # potential barrier height in Joules

# Tunneling Probability Function
def tunnelProb(x, a):
    # Find the energy of the electron 
    energy = x * q       # making sure to convert eV to J
    energyOverPotential = energy / v0_J
    k =  ( 2 * me * (v0_J - energy) )**0.5 / hbar  # second wavenumber
    
    exponentialTerm = np.exp(-1 * 2 * k * a)

    return (16 * energyOverPotential * ( 1 - energyOverPotential ) * exponentialTerm)

# Ranges for graph
x = np.linspace(0,4,4000)                  # Gives a range of 0 to 4 with steps of 0.001
y1 = tunnelProb(x, a1)                    # Evals tunneling prob of 15A barrier thickness
y2 = tunnelProb(x, a2)                    # Does this again with 5A barrier thickness

# Plot the graphs
plt.plot(x, y1, label = '15A')
plt.plot(x, y2, label = '5A')

# Find the maximums of the functions!
max_x = np.argmax(tunnelProb(x, a1))
max_y = tunnelProb(float(max_x), a1)
print(f"The maximum of the function occurs at x = {x[max_x]} with a value of {max_y}")

# Plot the maximums of our functions!
# plt.plot(max_x, 5e-6, marker="o", markersize=2, markeredgecolor="orange", markerfacecolor="orange")

# Console log some values for import debug
print('[15A] E = ' + '{:e}'.format(0.2 * q) + ', T = ' + '{:e}'.format(tunnelProb(0.2,a1)))
print('[5A] E = ' + '{:e}'.format(0.2 * q) + ', T = ' + '{:e}'.format(tunnelProb(0.2,a2)))


'''
ai = a1
for i in range(6):
    y = tunnelProb(x, ai)
    plt.plot(x, y, label = '%d A' % (ai * 1e10))
    ai = ai - 2e-10
'''

# Labels and Titles
plt.xlabel('Energy (eV)')
plt.ylabel('Tunneling Coefficient')
plt.title('Tunneling Coefficient for 5A and 15A Well')

# Axis formatting
plt.xlim(0,4)

# Show the plot
plt.legend()
plt.show()
