# Exam I Practice - ECE296 - Chase Lotito

# Q1: Can you predict the output?
string1 = 'Southern Illinois University'
print(string1[4:-3:3])
# OUTPUT:>>hnlnsne

'''
This is an example of string slicing.
str[start_pos:end_pos:step]
--> end_pos is EXCLUDED!!!!!!!!!!

A string can be indexed from the beginning @ 0
OR a string can be indexed from the end @ -1

This means we start the string at string1[4] = h.
Then we should end at string1[-3] = i (if we can make it)
--> notice that string1[-3] = string1[25]

string1[4] string1[7] string1[10] string1[13] string1[16] string1[19] string1[22] XXX string1[25]

--> h n l n s n e 
'''

# ------------------------------------------------------

# Q2: Determine the value of the following expression
x = 20%7-3/6*10+3.5
print("Q2: x = %f " % x)
 # 6 - 0.5 * 10 + 3.5
 # 6 - 5 + 3.5
 # 1 + 3.5 = 4.5
    
# ------------------------------------------------------

# Q3: Write what should be displayed
list1 = [ 2*x - x**2 for x in range(5) ]
print(list1)

# prediction: [0, 1, 0, -3, -8]
# this is correct!


# ------------------------------------------------------
x_5 = 0
# Q4: Write the output of the following code
a = 1;
b = 2;
c = 3;
if (a+b*c >= a*c+a*b): # 7 >= 5 (TRUE)
    a += 1; # a = 2
    b += 2; # b = 4
    c *= 4; # c = 12

    if (c > 15): # 12 > 15 (FALSE)
        print("ECE 296")
        x_5 = a*b/(c/a)+a;
    else:
        print("Engr. 296")
        x_5 = a*(b/c)/a+a;

else:
    a -= 1
    b -= 2
    c /= 4

    if (c > 16):
        print("SIUC")
        x_5 = (a*b)/c/a+a
    else:
        print("Saluki")
        x_5 = a*b/c/(a+b)

# prediction --> prints Engr. 296
# ------------------------------------------------------

# Q5: Predict what the value of x_5 is from Q4

# 2 * (4/12) / 2 + 2 = 2 * (1/3) / 2 +2 = (2/3) / 2 + 2 = 2.333...

print(x_5)

# ------------------------------------------------------
'''
# Q6: Write a complete program that reads in five numbers,
#     prints out the entered values, the smallest value,
#     the largest value, and the average value.

x1 = int(input("Enter number 1: "))
x2 = int(input("Enter number 2: "))
x3 = int(input("Enter number 3: "))
x4 = int(input("Enter number 4: "))
x5 = int(input("Enter number 5: "))

print("You entered the following 5 numbers: [%.1f, %.1f, %.1f, %.1f, %.1f]" % (x1,x2,x3,x4,x5))

# Find the minimum number

xmin = 0

if (x1 < x2 and x1 < x3 and x1 < x4 and x1 < x5):
    xmin = x1
elif (x2 < x3 and x2 < x4 and x2 < x5):
    xmin = x2
elif (x3 < x4 and x3 < x5):
    xmin = x3
elif (x4 < x5):
    xmin = x4
else:
    xmin = x5

# max number code here

# average value

xavg = (x1 + x2 + x3 + x4 + x5) / 5

print("Minimum number = %.1f" % xmin)
print("Average number = %.1f" % xavg)
'''

# ------------------------------------------------------
def test1_fun(a):
# """Test #1 function"""
 
    m = 0
    c = 0
    for n in a:
        m = m + n
        c += 1
    if c == 0:
        return 0
    else:
        return m/c
 
my_numbers = [1, 2, 3, 4, 5]
x = test1_fun(my_numbers)
print(x)

# n=1,m=1,c=1 => n=2,m=3,c=2 => n=3,m=6,c=3 => n=4,m=10,c=4 => n=5,m=15,c=5
# => return 15 / 5 ... print(3)

