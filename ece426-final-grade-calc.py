"""
Chase Lotito
Final Exam Grade Calculator - for 426 for now

ECE426 Grade Breakdown
-> 30% for 8 homeworks
-> 30% for 6 labs
-> 20% for midterm exam
-> 20% for final exam
"""

# libraries
import math

grade = 0       # overall grade
homeworks = []  # list containing homework scores
labs = []       # list containing lab scores
midterm = 0     # midterm grade
final = 0       # final exam grade

print("ECE426 Final Grade Calculator")
print("**enter point value, not percentage**")

# populate homework grades
for i in range(8):
    user_input = input("Enter HW" + str(i + 1) + " Grade: ")
    hw_float = float(user_input)
    homeworks.append(hw_float)

# populate lab grades
for i in range(6):
    user_input = input("Enter LAB" + str(i + 1) + " Grade: ")
    lab_float = float(user_input)
    labs.append(lab_float)

midterm_user_input = input("Enter Midterm Grade: ")
midterm = float(midterm_user_input)

# calculate overall homework grade
total_points = 8 * 3.75
homework_overall = sum(homeworks) / total_points

# calculate overall lab grade
total_points = 6 * 5
lab_overall = sum(labs) / total_points

# calc overall midterm
midterm_overall = midterm / 20.0

# calculate the grade needed on final
# overall = .3*homework_overall + .3*lab_overall + .2 * midterm_overall + .2 * final

# grade needed to get A >= 0.93
final = ( 0.93 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For an A (93-100), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for A- (90-93)
final = ( 0.90 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For an A- (90-93), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for B+ (87-90)
final = ( 0.87 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a B+ (87-90), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for B (83-87)
final = ( 0.83 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a B- (83-87), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for B- (80-83)
final = ( 0.80 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a B- (80-83), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for C+ (77-80)
final = ( 0.77 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a C+ (77-80), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for C (73-77)
final = ( 0.73 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a C (73-77), Final = " + str(final * 100) + "% -> " + str(points) + "/20")
 
# for C- (70-73)
final = ( 0.70 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a C- (70-73), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for D+ (66-70)
final = ( 0.66 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a D+ (66-70), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

# for D (60-66)
final = ( 0.60 - ( 0.3 * homework_overall ) - ( 0.3 * lab_overall ) - (0.2 * midterm_overall) ) / 0.2
points = math.ceil(final * 20)
print("For a D (60-66), Final = " + str(final * 100) + "% -> " + str(points) + "/20")

