proc pngeninsttemplate {} {
  cd C:/Users/DELL/Desktop/Motor_New/motor_new/uart/uart
  if { [xload xmp uart.xmp] != 0 } {
    return -1
  }
  if { [catch {run mhs2hdl} result] } {
    return -1
  }
  return 0
}
if { [catch {pngeninsttemplate} result] } {
  exit -1
}
exit $result
