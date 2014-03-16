Goniometer
==========

We made a controller which can be used in place of PS 10 controller provided by OWIS. This controller will enable us to control the position of goniometer.

Three different controller board were designed.
1. Using ATMega32 Microcontroller
2. Using DRV8824 Integrated Motor Driver IC ( Texas Instruments)
3. Using Virtex 2 Pro Board
4. PS10 Controller (With our interface)

Schematic and PCB layout available on request basis.
Contact : ishailesh8@gmail.com

app : This folder contains a windows desktop application which is being used to communicate with controller board.
atmega32 : This folder contains the project which was created in AVR Studio for ATMega
dll : This folder contains api which contains function which are being used in windows app
edk : This folder contains the project which was created in Xilinx Platform Studio and uses a PowerPC405 module for control action
gonioappdeployment : This folder contains executable and msi installer.
images : This folder contains dso images 
vhdl : This folder contains vhdl implementaion of controller module. (Here dip_swithes on v2pro are being used for control)
webapp : This folder contains a webimplementaion of interface..which makes it platform independent.
webservice : This folder contains webservice which provides required functionality to webapp.
