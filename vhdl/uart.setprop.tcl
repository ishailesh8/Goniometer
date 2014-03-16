cd C:/Users/DELL/Desktop/Motor_New/motor_new/uart/uart
if { [xload xmp uart.xmp] != 0 } {
  exit -1
}
set xpsArch [xget arch]
if { ! [ string equal -nocase $xpsArch "virtex2p" ] } {
   puts "Device Family setting in XPS ($xpsArch) does not match Device Family setting in ISE (virtex2p)"
   exit -1
}
set xpsDev [xget dev]
if { ! [ string equal -nocase $xpsDev "xc2vp30" ] } {
   puts "Device setting in XPS ($xpsDev) does not match Device setting in ISE (xc2vp30)"
   exit -1
}
set xpsPkg [xget package]
if { ! [ string equal -nocase $xpsPkg "ff896" ] } {
   puts "Package setting in XPS ($xpsPkg) does not match Package setting in ISE (ff896)"
   exit -1
}
set xpsSpd [xget speedgrade]
if { ! [ string equal -nocase $xpsSpd "-7" ] } {
   puts "Speed Grade setting in XPS ($xpsSpd) does not match Speed Grade setting in ISE (-7)"
   exit -1
}
xset topinst uart_i
#default language
xset hdl vhdl
xset intstyle ise
save proj
exit
