for x in range(1,3):
    z = [x+x*y+y for y in range(2,4)]
    print(z, end = ' ')

"""

x loop 1, y loop 1 (x=1,y=2)
    -> 1+1*2+2 = 1+2+2 = 5

x loop 1, y loop 2 (x=1, y=3)
    -> 1+1*3+3 = 1+3+3 = 7

"""
