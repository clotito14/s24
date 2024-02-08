'''
Chase Lotito - SIUC - SP2024
ECE296L - Dr. James Phegley
RPi Lab 2 - Code from Phegley
Ultrasonic Sensor
'''
import RPi.GPIO as GPIO
from time import sleep, time

# RPi Pin Setups
TRIG_PIN = 16
ECHO_PIN = 20

GPIO.setmode(GPIO.BCM) # BROADCOM PINS
GPIO.setup(TRIG_PIN, GPIO.OUT)
GPIO.setup(ECHO_PIN, GPIO.IN)

try:
    while True:
        # Toggle the Trigger pin
        GPIO.output(TRIG_PIN, True)
        sleep(0.1)
        GPIO.output(TRIG_PIN, False)

        # Detect when ECHO CHIRP is sent
        while GPIO.input(ECHO_PIN) == False:
            t_tx = time()
        
        while GPIO.input(ECHO_PIN) == True:
            t_rx = time()
        
        trip_time = t_rx - t_tx
        distance = 343 * (trip_time / 2) * 100
        sleep(1)
        print('[TRIP TIME]: %.2f ms [DISTANCE]: %.1f cm \n' % (trip_time * 1000, distance))
finally:
    GPIO.cleanup()
    print('PROGRAM TERMINATED')