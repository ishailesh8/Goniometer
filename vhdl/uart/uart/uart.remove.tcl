cd C:/Users/DELL/Desktop/Motor_New/motor_new/uart/uart
if { [xload xmp uart.xmp] != 0 } {
  exit -1
}
xset intstyle default
save proj
exit 0
