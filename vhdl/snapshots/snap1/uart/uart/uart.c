#include "xparameters.h"
#include "xuartlite.h"
#include "xstatus.h" 
#include "xuartlite_l.h"

int main(void)
{
Xuint16 data;
data = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR, data);
}