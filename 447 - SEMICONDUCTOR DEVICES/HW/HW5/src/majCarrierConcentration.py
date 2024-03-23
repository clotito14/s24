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
# --------------------------------------------------

import matplotlib.pyplot as plt
import numpy as np
import math

# IMPORTANT CONSTANTS
q = 1.6e-19                 # fundamental charge / eV-to-J conversion
h = 6.63e-34                # Planck's constant [J*s]
hbar = h / ( 2 * math.pi )  # Reduced Planck's Constant
m_0 = 9.8e-31               # mass of free electron
k_b = 8.617e-5              # Boltzmann constant [eV/K]
m_nEff = 1.08 * m_0         # electron DOS effective mass in Si 
m_pEff = 0.56 * m_0         # hole DOS effective mass in Si
N_d = 10e+15                # donor concentration [cm^-3]
n_i = 1.5e+10               # intrinsic carrier Concentration for Si at 300K
E_g0 = 1.17                 # Si bandgap at T=0K [eV]
alpha = 4.73e-4             # [eV/K]
beta = 636                  # [K]

def majCarrierConcentration(T):
    """
    This function evaluates the majority carrier
    concentration in Si w.r.t. temperature.
    """
    
    # Effective Density of States Function in Conduction Band
    # --> n_c = 2 ( 2pi m* kT / h^2)^3/2
    N_c = 2 * ( 2 * math.pi * m_nEff * k_b * T / h**2)**(3/2)
    N_v = 2 * ( 2 * math.pi * m_pEff * k_b * T / h**2)**(3/2)

    # Intrinsic Carrier Density:
    # --> use temperature dependent bandgap equation
    # --> n_i = sqrt(N_c * N_v) exp(-E_g / 2kT)
    E_g = E_g0 - ( ( alpha * T**2 ) / (beta + T) )
    n_i = ( (N_c * N_v)**0.5 * np.exp(-1 * E_g / (2 * k_b * T)) )**0.5
    
    # -> n_0 = 0.5N_d + sqrt((0.5N_d)**2 + n_i**2)
    n_0 = 0.5 * N_d + ((0.5 * N_d)**2 + n_i)**0.5
    return n_0

# Ranges for graph
x = np.linspace(100, 600, 5000) 
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
