setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
setMode -bs
addDevice -p 3 -file "C:/Users/DELL/Desktop/Final/ISE_Goniometer/motor_state.bit"
deleteDevice -position 4
Program -p 3 
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
