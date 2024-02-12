"""
Chase Lotito - ECE296 - Machine Problem 2

Find the AREA or VOLUME of:
    --> parallelogram, ellipse, triangle, Dodecahedron, Spheroid, or Octahedron
"""

"""
GAMEPLAN:
    1) Have an loop that always runs to ask the user for what shape they want
    2) Ask the user the user what shape they want.
    3) If/Elif/Else logic to identify the desired shape
    4) Ask the user the needed dimensions of the shape
        4.1) If you can find the shape to be impossible, redo.
    5) Proceed to calculate the area or volume & SA
"""
#import some stuff
import math

# EMBED IN TRY/FINALLY BLOCK
try:
    # Shape / Terminate Program Loop
    terminateProgram = 0
    while True:
        # Welcome User
        print("|---- SHAPE AREA/VOLUME CALCULATOR ----|")

        # Ask for shape or if quit
        print("[1] Parallelogram [2] Ellipse [3] Triangle")
        print("[4] Dodecahedron [5] Spheroid [6] Octahedron")
        print("[7] QUIT")
        terminateProgram = input("ENTER CHOICE:")
        num = int(terminateProgram)

        # Logic to ensure valid input
        if not terminateProgram.isdigit():
            print("## INVALID ENTRY ##")
            print()
            continue

        # Shape Logic
        # parallelogram
        if num == 1:
            print("Parallelogram (BASE and HEIGHT)")

            base = input("Base [length]: ") 
            height = input('Height [length]:')

            # Valid input checker
            if not base.isdigit() or not height.isdigit:
                print("Invalid input!")
                print()
                continue 

            area = 0.5 * (int(base) + int(height))

            print("Area [sq. length] = %.4f" % area)
            
            print()
            continue
        # ellipse
        elif num == 2:
            print("ELLIPSE (SEMIMAJOR AND SEMIMINOR AXES)")
            
            smaj = input("Semimajor Axis [length]: ")
            smin = input("Semiminor Axis [length]: ")

            # Valid input checker
            if not smaj.isdigit() or not smin.isdigit or int(smaj) < 0 or int(smin) < 0:
                print("Invalid input!")
                print()
                continue 

            # calc area
            area = math.pi * int(smaj) * int(smin)   
            print("Area [sq. length] = %.4f" % area)
            
            print()
            continue
        # triangle
        elif num == 3: 
            print("TRIANGLE (HERON\'S FORMULA)")

            a = input("Side A [length]: ") 
            b = input('Side B [length]: ')
            c = input('Side C [length]: ')
            s = 0.5 * (int(a) + int(b) + int(c))

            # Valid input checker
            if (not a.isdigit()) or (not b.isdigit()) or (not c.isdigit()):
                print("Invalid input!")
                print()
                continue
            # Checks if triangle is possible
            elif not int(a) <= (int(b) + int(c)) or not int(b) <= (int(a) + int(c)) or not int(c) <= (int(b) + int(a)):
                print("INVALID TRIANGLE")
                print()
                continue
            
            # Output
            area = math.sqrt(s * (s - int(a)) * (s - int(b)) * (s - int(c)))
            print("Area [sq. length] = %.4f" % area)

            print()
            continue
        # dodecahedron
        elif num == 4:
            print()
            print("DODECAHEDRON (side)")

            s = input("Edge [length]: ")

            # Check valid input
            if not s.isdigit() or int(s) < 0:
                print("Invalid Input!")
                print()
                continue

            # calc volume
            v = 7.66 * int(s)**3
            print("Volume [cubic length] = %.4f" % v)

            # calc surface area
            sa = 20.64 * int(s)**2 
            print("Surface Area [sq. length] = %.4f" % sa)

            print()
            continue
        # spheroid
        elif num == 5:
            print()
            print("SPHEROID (Equitorial Radius and Symmetry Axis)")

            a = input("Equitorial Radius [length]: ")
            c = input("Center to pole along symmetry axis [length]: ")

            # Valid input checker
            if (not a.isdigit()) or (not c.isdigit()):
                print("Invalid input!")
                print()
                continue
            
            a = int(a)
            c = int(c)
            # eccentricity

            #volume
            v = (4/3) * math.pi * int(a)**2 * int(c)
            print("Volume [cubic length] = %.4f" % v)

            # oblate or prolate for sa
            if int(c) < int(a):
                e = math.sqrt(1 - (c**2 / a**2)) # eccentricity

                sa = 2 * math.pi * a**2 + ( math.pi * c**2 * (1 / e) * math.log((1 + e)/(1 - e), math.e) )
                print("Surface Area [sq. length] = %.4f" % sa)
            elif int(c) > int(a):
                e = math.sqrt(1 - (a**2 / c**2)) # eccentricity

                sa = 2 * math.pi * a**2 * (1 + c * (1/a) * (1/e) * math.asin(e))
                print("Surface Area [sq. length] = %.4f" % sa)

            print()
            continue
        # octohedron
        elif num == 6:
            print("OCTOHEDRON (edge)")

            s = input("Edge [length]: ")

            # Check valid input
            if not s.isdigit() or int(s) < 0:
                print("Invalid Input!")
                print()
                continue

            # calc volume
            v = .471 * int(s)**3
            print("Volume [cubic length] = %.4f" % v)

            # calc surface area
            sa = 3.464 * int(s)**2 
            print("Surface Area [sq. length] = %.4f" % sa)

            print()
            continue
        #QUIT
        elif num == 7:
            break
        else:
            print()
            continue

finally:
    print("PROGRAM TERMINATED")
