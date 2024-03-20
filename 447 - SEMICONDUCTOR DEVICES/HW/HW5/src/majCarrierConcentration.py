'''
Chase Lotito - SIUC - SP2024
ECE447 - HW6
Q3: A sample of silicon doped N_a = 0 & N_d = 10E15 cm^-3
    
--> Plot the majority carrier concentration
    versus temperature over the range
    100 <= T <= 600 K
'''

# NOTES:
# --> the SC is doped with DONORS => n-type (e majority)
# Na = 0
# -> n_0 = 0.5N_d + sqrt((0.5N_d)**2 + n_i**2)
#
# Effective Density of States Function in Conduction Band
# --> N_c = 2 ( 2pi m* kT / h^2)^3/2
# Intrinsic Carrier Density:
# --> n_i = N_c exp(-(E_c - E_Fi) / kT)
# --------------------------------------------------

import matplotlib.pyplot as plt
import numpy as np
import math

# IMPORTANT CONSTANTS
q = 1.6e-19                 # fundamental charge / eV-to-J conversion factor
h = 6.63e-34                # Planck's constant [J*s]
hbar = h / ( 2 * math.pi )  # Reduced Planck's Constant
mfe = 9.8e-31               # mass of free electron

# 
def majCarrierConcentration(T):
    """
    This function evaluates the majority carrier
    concentration in Si w.r.t. temperature.
    """
    return ans

# Ranges for graph
x = np.linspace(100,600,5000) 
y = majCarrierConcentration(x)

# Plot the graphs
plt.plot(x, y)

# Labels and Titles
plt.xlabel('Temperature (K)')
plt.ylabel('Majority Carrier Concentration (cm^-3)')
plt.title('Majority Carrier Concentration w.r.t. Temperature')

# Axis formatting
plt.xlim(0,700)

# Show the plot
plt.legend()
plt.show()
