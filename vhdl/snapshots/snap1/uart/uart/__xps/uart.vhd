LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY uart IS
PORT (
	fpga_0_RS232_Uart_1_RX_pin : IN STD_LOGIC;
	fpga_0_RS232_Uart_1_TX_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_1_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_2_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_3_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_4_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_5_pin : OUT STD_LOGIC;
	fpga_0_net_gnd_6_pin : OUT STD_LOGIC;
	sys_clk_pin : IN STD_LOGIC;
	sys_rst_pin : IN STD_LOGIC
	);
END uart;

ARCHITECTURE STRUCTURE OF uart IS

BEGIN
END ARCHITECTURE STRUCTURE;
