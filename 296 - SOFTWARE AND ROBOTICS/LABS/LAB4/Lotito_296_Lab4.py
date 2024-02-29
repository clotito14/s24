'''
Chase Lotito - SIUC - SP2024
ECE296L - Dr. James Phegley
RPi Lab 4 - Code from Phegley
LCD screen with CUSTOM CHARS
'''
import RPi.GPIO as GPIO
from myLCD import *
from time import sleep, time # time() returns time in sec since EPOCH

# RPi Pin Setups
RS = 21 # Register Select Pin
E = 20 # Enable Pin
D4 = 12 # Data Pin 4
D5 = 25 # Data Pin 5
D6 = 24 # Data Pin 6
D7 = 23 # Data Pin 7
BKL = 1 # Backlight

# Useful parameters
LN1 = 1
LN2 = 2

GPIO.setmode(GPIO.BCM) # BROADCOM PINS

# LCD Initialization Functions
start(GPIO, 2, 16) # define size of display
LCD(GPIO, RS, E, D4, D5, D6, D7, BKL) # define LCD pins
lcd_init(GPIO) # initialize LCD
backlight(GPIO, True) # turn on backlight always

# Custom Arrow Characters!
westArrow = [0x00, 0x00, 0x04, 0x08, 0x1F, 0x08, 0x04, 0x00]
northWestArrow = [0x00, 0x1E, 0x18, 0x14, 0x12, 0x01, 0x00, 0x00]
northArrow = [0x04, 0x0E, 0x15, 0x04, 0x04, 0x04, 0x04, 0x04]
northEastArrow = [0x00, 0x0F, 0x03, 0x05, 0x09, 0x10, 0x00, 0x00]
eastArrow = [0x00, 0x00, 0x04, 0x02, 0x1F, 0x02, 0x04, 0x00]

# Characters for Chase
'''
C = [0x0E, 0x11, 0x10, 0x10, 0x10, 0x10, 0x11, 0x0E]
H = [0x11, 0x11, 0x11, 0x1F, 0x11, 0x11, 0x11, 0x11]
A = [0x0E, 0x11, 0x11, 0x1F, 0x11, 0x11, 0x11, 0x11]
S = [0x0E, 0x11, 0x10, 0x0E, 0x01, 0x01, 0x11, 0x0E]
E = [0x1F, 0x10, 0x10, 0x1E, 0x10, 0x10, 0x10, 0x1F]
'''

# Store the custom characters in myLCD
lcd_custom(GPIO, 0, westArrow)
lcd_custom(GPIO, 1, northWestArrow)
lcd_custom(GPIO, 2, northArrow)
lcd_custom(GPIO, 3, northEastArrow)
lcd_custom(GPIO, 4, eastArrow)
'''
lcd_custom(GPIO, 0, C)
lcd_custom(GPIO, 1, H)
lcd_custom(GPIO, 2, A)
lcd_custom(GPIO, 3, S)
lcd_custom(GPIO, 4, E)
'''
try:
    while True:
        # Display on LCD!
        # lcd_string(GPIO, "TIME: %.2f ms" % (trip_time * 1000), LN1)
        # lcd_string(GPIO, "DIST: %.1f cm" % (distance), LN2)
        lcd_string(GPIO, chr(0) + chr(1) + chr(2) + chr(3) + chr(4), LN1)
        
        # Do a forever while loop to show the custom arrows changing
        i = 0
        while (i < 5):
            lcd_string(GPIO, chr(i), LN2) # Print the current arrow
            i += 1                        # set the next arrow character
            sleep(1)
            if (i == 5):                  # once fully cycled -> reset
                i = 0
        

finally:
    lcd_shutdown(GPIO)
    GPIO.cleanup()
    print('PROGRAM TERMINATED')
