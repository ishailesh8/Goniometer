/*
 * xstepper.h
 *
 * Created: 21-08-2013 09:59:02
 *  Author: DELL
 */ 


#ifndef XSTEPPER_H_
#define XSTEPPER_H_

/*
Port where stepper is connected
*/
#define STEPPER_PORT 	B // To Select Port 
#define STEPPER_POS 0 // To Select Pins on the above port

#define _CONCAT(a,b) a##b
#define PORT(x) _CONCAT(PORT,x)
#define PIN(x) _CONCAT(PIN,x)
#define DDR(x) _CONCAT(DDR,x)

#define __STEPPER_PORT 	PORT(STEPPER_PORT)
#define __STEPPER_DDR	DDR(STEPPER_PORT)

#define DELAY 1 /* delay in milliseconds between steps */

void StepperInit();
void StepperStepCWSingle();
void StepperStepCCWSingle();
void StepperStepCWFull();
void StepperStepCCWFull();
void StepperStepCWHalf();
void StepperStepCCWHalf();
void USARTInit(uint16_t);
char USARTReadChar();



#endif /* XSTEPPER_H_ */