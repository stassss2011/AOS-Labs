/*
 * mq135.h
 *
 *  Created on: 26 мая 2020 г.
 *      Author: stas
 */

#ifndef INC_MQ135_H_
#define INC_MQ135_H_

/// The load resistance on the board
#define RLOAD 10.0
/// Calibration resistance at atmospheric CO2 level
#define RZERO 80.0
/// Parameters for calculating ppm of CO2 from sensor resistance
#define PARA 116.6020682
#define PARB 2.769034857

/// Parameters to model temperature and humidity dependence
#define CORA 0.00035
#define CORB 0.02718
#define CORC 1.39538
#define CORD 0.0018

/// Atmospheric CO2 level for calibration purposes
#define ATMOCO2 397.13


	float getCorrectionFactor(float t, float h);
	float getResistance(int val);
	float getCorrectedResistance(float t, float h, int val);
	float getPPM(int val);
	float getCorrectedPPM(float t, float h, int val);
	float getRZero(int val);
	float getCorrectedRZero(float t, float h, int val);


#endif /* INC_MQ135_H_ */
