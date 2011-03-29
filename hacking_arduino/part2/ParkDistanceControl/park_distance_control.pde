// START:main
#include <stdint.h>
#include "inc/park_distance_control.h"

const uint16_t BAUD_RATE     = 57600;
const uint16_t IR_SENSOR_PIN = A0;
const float    MOUNTING_GAP  = 3.0;
const uint16_t SPEAKER_PIN   = 13;

arduino::ParkDistanceControl pdc(
  InfraredSensor(IR_SENSOR_PIN),
  SPEAKER_PIN,
  MOUNTING_GAP
);

void setup(void) {
  Serial.begin(BAUD_RATE);
}

void loop(void) {
  pdc.check();
  delay(50);
}
// END:main

// vim:ft=arduino