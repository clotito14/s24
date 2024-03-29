'''
Chase Lotito - SIUC Undergrad - SP2024
ECE296 - Intro Software & Robotics
MP5 - Program 3 
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

# create Ice Cream Stand class that INHERITS Restaurant
class IceCreamStand(Restaurant):
    """Class for an ice cream stand, a child class of Restaurant"""

    def __init__(self, restaurant_name, cuisine_type, flavors, number_served=0):
        Restaurant.__init__(self, restaurant_name, cuisine_type, number_served)
        self.flavors = flavors

    def display_flavors(self):
        return self.flavors

# Do stuff with the class...
r1 = IceCreamStand('The Freeze', 'frozen', ['Vanilla', 'Chocolate', 'Strawberry', 'Oreo'])

# Display Flavors
print(r1.display_flavors())


