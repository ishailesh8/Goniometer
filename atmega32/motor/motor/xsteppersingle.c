/*
 * xstepper.c
 *
 * Created: 21-08-2013 09:58:12
 *  Author: DELL
 */ 
#include <avr/io.h>

#include "xstepper.h"
#include <util/delay.h>

void StepperStepCCWSingle()
{  
	__STEPPER_PORT = 0x01;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x04;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x02;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x08;
	_delay_ms(DELAY);
	
}

void StepperStepCWSingle()
{   
	__STEPPER_PORT = 0x08;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x02;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x04;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x01;
	_delay_ms(DELAY);
	
}
