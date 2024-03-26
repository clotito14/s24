// Chase Lotito - SIUC Undergraduate - SP2024
// Arduino Lab 1 - Night Light

// Initialize variables
const int LEDPIN = 11;
int sensorValue;
int lightOutput

// Setup Method
void setup() {
    pinMode(LEDPIN, OUTPUT);        // Set LED pin to output pin
    Serial.begin(9600);             // Starting point for serial monitor
    digitalWrite(LEDPIN, HIGH);     // Start with turning LED on
}

// Live Program
void loop() {
    sensorValue = analogRead(A0);                   // Analog input data variable
    lightOutput = map(sensorValue, 0, 650, 0, 255); // map min max of sensorValue to digital I/0 min max

    if (lightOutput > 100) {
        digitalWrite(LEDPIN, LOW);  // if bright enough, keep LED off
    }
    else {
        digitalWrite(LEDPIN, HIGH); // else, too dark, turn LED on
    }
}