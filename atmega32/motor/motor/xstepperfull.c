/*
 * xstepper.c
 *
 * Created: 21-08-2013 09:58:12
 *  Author: DELL
 */ 
#include <avr/io.h>

#include "xstepper.h"
#include <util/delay.h>

void StepperStepCCWFull()
{
	__STEPPER_PORT = 0x05;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x06;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x0A;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x09;
	_delay_ms(DELAY);
}

void StepperStepCWFull()
{ 
	__STEPPER_PORT = 0x09;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x0A;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x06;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x05;
	_delay_ms(DELAY);
	
}
