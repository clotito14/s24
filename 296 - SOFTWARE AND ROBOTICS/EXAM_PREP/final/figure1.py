a = 6
b = 9
c = 12

if (a+b*c <= a*c+a*b):
    a += 1
    b -= 2
    c /= 4
    if (c > 15):
        print("ECE 296")
        x_5 = a*(b/c)**a+a
    else:
        print("Engr. 296")
        x_5 = a*b**c+a
else:
    a -= 2
    b *= 3
    c /= 4
    if (c > 2):
        print("SIUC")
        x_5 = a**c*(b-a)
    else:
        print("Saluki")
        x_5 = (a*b)+c*a**2
