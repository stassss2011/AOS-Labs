/*
 * mq135.c
 *
 *  Created on: 26 мая 2020 г.
 *      Author: stas
 */

#include "main.h"
#include "mq135.h"
#include <math.h>



float getCorrectionFactor(float t, float h) {
  return CORA * t * t - CORB * t + CORC - (h-33.)*CORD;
}


float getResistance(int val) {
  return ((4095./(float)val) * 5. - 1.)*RLOAD;
}


float getCorrectedResistance(float t, float h, int val) {
  return getResistance(val)/getCorrectionFactor(t, h);
}


float getPPM(int val) {
  return PARA * pow((getResistance(val)/RZERO), -PARB);
}


float getCorrectedPPM(float t, float h, int val) {
  return PARA * pow((getCorrectedResistance(t, h, val)/RZERO), -PARB);
}


float getRZero(int val) {
  return getResistance(val) * pow((ATMOCO2/PARA), (1./PARB));
}


float getCorrectedRZero(float t, float h, int val) {
  return getCorrectedResistance(t, h, val) * pow((ATMOCO2/PARA), (1./PARB));
}
