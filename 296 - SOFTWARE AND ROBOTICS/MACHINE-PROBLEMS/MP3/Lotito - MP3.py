"""
Chase Lotito - ECE296 - Machine Problem 3

Write a program to find the integral of sin(mx)/mx from user-defined bounds using trapezoidal approximation. 
"""

# REQUIREMENTS:
    # 1) g(x) = sin(mx) / mx
    # 2) prompt for:
        # 2a) Parameter => m
        # 2b) Lower Limit => a
        # 2c) Upper Limit => b
        # 2d) Number of trapezoids => n
    # 3) Reprompt until n = 0
import math
import string

# Function Definition for: sin(mx)/mx
def g(x, m):
    gans = 0
    mx = m * x
    
    if (x == 0):
        gans = 1
    else:
        gans = (math.sin(mx)) / mx 

    return gans 

# Trapezoial approximation function
def trapezoid(m, n, a, b):
    ans = 0             # default return val

    dx = (b - a) / (n)
    
    k = 0
    for i in range(0, n + 1):
        xi = a + k * dx
        k += 1

        if (xi == a or xi == b):
            ans = ans + g(xi, m)
        else:
            ans = ans + 2 * g(xi, m)
        
    ans = 0.5 * dx * ans
    return ans

# Program Startup
print("\n")             # buffer
print("## TRAPEZOIDAL APPROXIMATION CALCULATOR FOR sin(mx)/mx ##")
print("Written by: Chase Lotito // 02/24/2024")
print("ECE296 - Machine Problem 3")

# While Loop
n = 1                   # trapezoid no. // loop condition variable
while (True):
    print("\n")             # buffer
    # Ask user for integral parameters
    n = input("[NO. OF TRAPEZOIDS (0 to EXIT)]: ")

    if ( n == '0' ):      # if n is 0, then EXIT PROGRAM
        print("PROGRAM TERMINATED")
        break
    elif(not n.isdigit()):
        print("[ERROR: NON-NUMERICAL INPUT]")
        continue
    elif (int(n) < 0):
        print("[ERROR: INCORRECT NUMBER OF TRAPEZOIDS (n >= 0)]")
        continue
    m = input("[ENTER PARAMETER m (m < 0)]: ")

    if ( m.isdigit() < 0 ):       # Catch incorrect m inputs
        print("[ERROR: INCORRECT m VALUE]")
        continue

    a = input("[LOWER LIMIT]: ")
    b = input("[UPPER LIMIT]: ")

    # General Input Error Checking
    
    if ((not m.isdigit()) and (not a.isdigit()) and (not b.isdigit())):
        print("[ERROR: NON-NUMERICAL INPUT]")

    # Get the parameters in the type we want 
    ni = int(n)
    mf = float(m)
    ai = int(a)
    bi= int(b)
    # Compute the integral
    ans = trapezoid(mf, ni, ai, bi)
    print("[INTEGRAL] = %.4f" % ans)
