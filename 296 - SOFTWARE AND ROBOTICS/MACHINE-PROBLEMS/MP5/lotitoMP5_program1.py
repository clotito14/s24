'''
Chase Lotito - SIUC Undergrad - SP2024
ECE296 - Intro Software & Robotics
MP5 - Program 1 
'''

class Restaurant:
    """Contains data for a restaurant."""
    
    def __init__(self, restaurant_name, cuisine_type):
        self.restaurant_name = restaurant_name
        self.cuisine_type = cuisine_type

    def describe_restaurant(self):
        """Describe restaurant"""
        return self.restaurant_name + ' serves ' + self.cuisine_type + '.'

    def open_restaurant(self):
        """Opens restaurant"""
        return self.restaurant_name + ' is now open!'

# Do stuff with the class...

# initialize Restaurant class 3 times
r1 = Restaurant('Olive Garden', 'Italian')
r2 = Restaurant('Bombay Olive', 'Indian')
r3 = Restaurant('Chili\'s', 'Tex-Mex')

# print all three restaurant's attributes
print(r1.restaurant_name)
print(r1.cuisine_type)
print(r2.restaurant_name)
print(r2.cuisine_type)
print(r3.restaurant_name)
print(r3.cuisine_type)

# call both methods of each instance
print(r1.describe_restaurant())
print(r1.open_restaurant())
print(r2.describe_restaurant())
print(r2.open_restaurant())
print(r3.describe_restaurant())
print(r3.open_restaurant())
