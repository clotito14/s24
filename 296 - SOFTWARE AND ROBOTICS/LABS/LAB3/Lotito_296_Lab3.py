'''
Chase Lotito - SIUC - SP2024
ECE296L - Dr. James Phegley
RPi Lab 3 - Code from Phegley
Ultrasonic Sensor with LCD screen
'''
import RPi.GPIO as GPIO
from myLCD import *
from time import sleep, time # time() returns time in sec since EPOCH

# RPi Pin Setups
TRIG_PIN = 16
ECHO_PIN = 20
RS = 1 # Register Select Pin
E = 1 # Enable Pin
D4 = 1 # Data Pin 4
D5 = 1 # Data Pin 5
D6 = 1 # Data Pin 6
D7 = 1 # Data Pin 7
BKL = 1 # Backlight

# Useful parameters
LN1 = 1
LN2 = 2

GPIO.setmode(GPIO.BCM) # BROADCOM PINS
GPIO.setup(TRIG_PIN, GPIO.OUT)
GPIO.setup(ECHO_PIN, GPIO.IN)

# LCD Initialization Functions
start(GPIO, 2, 16) # define size of display
LCD(GPIO, RS, E, D4, D5, D6, D7, BKL) # define LCD pins
lcd_init(GPIO) # initialize LCD
backlight(GPIO, True) # turn on backlight always

try:
    while True:
        # Toggle the Trigger pin
        GPIO.output(TRIG_PIN, True)
        sleep(0.1)
        GPIO.output(TRIG_PIN, False)

        # Detect when ECHO CHIRP is sent
        while GPIO.input(ECHO_PIN) == False:
            t_tx = time()
        # Detect when ECHO CHIRP is recieved
        while GPIO.input(ECHO_PIN) == True:
            t_rx = time()
        
        trip_time = t_rx - t_tx
        distance = 343 * (trip_time / 2) * 100 # * 100 to convert m -> cm
        sleep(1)
        print('[TRIP TIME]: %.2f ms [DISTANCE]: %.1f cm \n' % (trip_time * 1000, distance))

        # Display on LCD!
        lcd_string(GPIO, "TIME: %.2f ms" % (trip_time * 1000), LN1)
        lcd_string(GPIO, "DIST: %.1f cm" % (distance), LN2)

finally:
    lcd_shutdown(GPIO)
    GPIO.cleanup()
    print('PROGRAM TERMINATED')
