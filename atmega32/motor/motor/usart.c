/*
 * usart.c
 *
 * Created: 21-08-2013 14:49:19
 *  Author: DELL
 */ 

#include <avr/io.h>
#include <inttypes.h>

void USARTInit(uint16_t ubrr_value)
{

   //Set Baud rate
      
	UBRRL = ubrr_value;
	UBRRH = (ubrr_value>>8);

   /*Set Frame Format

   
   >> Asynchronous mode
   >> No Parity
   >> 1 StopBit
   >> char size 8

   */

   UCSRC=(1<<URSEL)|(3<<UCSZ0);


   //Enable The receiver and transmitter
   UCSRB=(1<<RXEN)|(1<<TXEN);


}

char USARTReadChar()
{
	//Wait untill a data is available

	while(!(UCSRA & (1<<RXC)))
	{
		//Do nothing
	}

	//Now USART has got data from host
	//and is available is buffer

	return UDR;
}

