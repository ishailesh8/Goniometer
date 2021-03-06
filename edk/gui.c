#include "xparameters.h"
#include "xgpio.h"
#include "stdio.h"
#include "xstatus.h"
#include "xgpio_l.h"
#include "xuartlite_i.h"
#include "xbasic_types.h"
#include "xio.h"
#include "xuartlite.h"
#include "xuartlite_l.h"

#define XPAR_RS232_UART_1_DEVICE_ID 0
#define XPAR_LEDS_4BIT_DEVICE_ID 0
#define XPAR_FORWARD_DEVICE_ID 1
#define XPAR_BACKWARD_DEVICE_ID 2
#define XPAR_MOTORSEQ_DEVICE_ID 3
#define XPAR_HALT_DEVICE_ID 4

XGpio GpioOutput_Led;
XGpio GpioOutput_sequence;
XGpio forward;
XGpio backward;
XGpio halt;

void delay()
{
 int k,p;
 for(k=0;k<150;k++)
    {
	   for(p=0;p<k;p++)
		  {
		   }
		}
}

void init()
{ 
  XGpio_Initialize(&GpioOutput_Led,XPAR_LEDS_4BIT_DEVICE_ID);
  XGpio_Initialize(&GpioOutput_sequence,XPAR_MOTORSEQ_BASEADDR);
  XGpio_Initialize(&forward,XPAR_FORWARD_DEVICE_ID);
  XGpio_Initialize(&backward,XPAR_BACKWARD_DEVICE_ID);
  XGpio_Initialize(&halt,XPAR_HALT_DEVICE_ID);
  XGpio_SetDataDirection(&GpioOutput_Led,1,0x0);
  XGpio_SetDataDirection(&GpioOutput_sequence,1,0x0);
  XGpio_SetDataDirection(&forward,1, 0x1);
  XGpio_SetDataDirection(&backward,1, 0x1);
  XGpio_SetDataDirection(&halt,1, 0x1);
    
}

char receive()
{
 char read;
 read = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
 return read;
}
 
void main()
{ 
init();
int counter = 0;	
unsigned int value = 0;
char dir;
int lsb , msb = 0;
Xuint16 halt;	

 
		while(1)
		{
					if (!(XUartLite_mIsReceiveEmpty(XPAR_UARTLITE_0_BASEADDR)))
					{  
						lsb = receive();   
						msb = receive();
						dir = receive();
						halt = XGpio_mGetDataReg(XPAR_HALT_BASEADDR, 1);
						
						value = msb;
						value = value << 8;
						value =  value | lsb ;
						
						for (counter = 0; counter <= value; counter++)
                    {
							 
									 if(halt)
										  {									
													if(dir == 0xAA )
														{ 
															 
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x1);
														delay();		  
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x4);
														delay();		  
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x2);
														delay();		  
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x8);
														delay();	 								 
														}	 
													else if(dir == 0xBB)
														{
														
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x8);
														delay();			
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x2);
														delay();
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x4);
														delay();
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x1);
														delay();	  	
														}		
													else   
														{ 
													  
														XGpio_mSetDataReg(XPAR_LEDS_4BIT_BASEADDR, 1 , 0x0);
														XGpio_mSetDataReg(XPAR_MOTORSEQ_BASEADDR, 1 , 0x0);
														}
														
											}
                       }											
					}
        }  
}
