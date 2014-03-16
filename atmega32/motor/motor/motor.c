/*
 * motor.c
 *
 * Created: 21-08-2013 09:47:41
 *  Author: DELL
 */ 


#include <avr/io.h>

#include <util/delay.h>

#include "xstepper.h"


void StepperInit()
{
	__STEPPER_DDR|=(0X0F<<STEPPER_POS); //Make Port as Output
	__STEPPER_PORT|=(0x00<<STEPPER_POS); //Set Value to 0
}


int main(void)
{   
	char data;
	//Initialize the stepper control pins
	StepperInit();
	//Initialize the usart
	USARTInit(9600); 
	
    while(1)
    {
        data=USARTReadChar();
		
		if(data == 'f' || data == 'F')
		
		{
			 for(uint16_t i=0;i<600;i++)
				 {
					 StepperStepCWSingle();     //Step Clock wise
	         
				 }
		}
        
		
		else if(data == 'b' || data == 'B')
         {
			 for(uint16_t i=0;i<600;i++)
				 {
					 StepperStepCCWSingle();    //Step Counter Clock wise

				 }
		 }

    }
}