import numpy as np
import scipy as sp
import sympy as smp
import matplotlib.pyplot as plt
from scipy.misc import derivative

data = np.loadtxt('./2nm.txt', delimiter=',')

'''
for i in range(0,len(data)):
    k = data[i][0]
    E = data[i][1]
'''

d2Edk2 = np.gradient(data, axis=0,2)

#plt.plot(d2Edk2, label='second derivative')
#plt.legend()

