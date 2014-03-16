/*
 * xstepper.c
 *
 * Created: 21-08-2013 09:58:12
 *  Author: DELL
 */ 
#include <avr/io.h>

#include "xstepper.h"
#include <util/delay.h>



void StepperStepCCWHalf()
{
	__STEPPER_PORT = 0x01;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x05;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x04;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x06;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x02;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x0A;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x08;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x09;
	_delay_ms(DELAY);
}

void StepperStepCWHalf()
{   
	__STEPPER_PORT = 0x09;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x08;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x0A;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x02;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x06;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x04;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x05;
	_delay_ms(DELAY);
	__STEPPER_PORT = 0x01;
	_delay_ms(DELAY);

}
