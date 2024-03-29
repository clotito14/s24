'''
Chase Lotito - SIUC Undergrad - SP2024
ECE296 - Intro Software & Robotics
MP5 - Program 2 
'''

class Restaurant:
    """Contains data for a restaurant."""
    
    def __init__(self, restaurant_name, cuisine_type, number_served = 0):
        self.restaurant_name = restaurant_name
        self.cuisine_type = cuisine_type
        self.number_served = number_served

    def describe_restaurant(self):
        """Describe restaurant"""
        return self.restaurant_name + ' serves ' + self.cuisine_type + '.'

    def open_restaurant(self):
        """Opens restaurant"""
        return self.restaurant_name + ' is now open!'

    def set_number_served(self, served):
        """Sets number of customers served."""
        self.number_served = served

    def increment_number_served(self):
        """Increments numbered served by 1."""
        self.number_served += 1

# Do stuff with the class...

# initialize Restaurant class 3 times
r1 = Restaurant('Longbranch Cafe and Bakery', 'Vegetarian')

# print number of customers r1 has served
print(r1.restaurant_name + ' has served ' + str(r1.number_served) + ' customers.')

# set the numbered served to a new number
print("...LUNCH RUSH LOADING...")
r1.set_number_served(20)
print(r1.restaurant_name + ' has now served ' + str(r1.number_served) + ' customers.')

# increment number served
print('...A CUSTOMER COMES IN FOR COFFEE...')
r1.increment_number_served()
print(r1.restaurant_name + ' has now served ' + str(r1.number_served) + ' customers.')

