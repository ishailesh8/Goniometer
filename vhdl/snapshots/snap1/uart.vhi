
-- VHDL Instantiation Created from source file uart.vhd -- 12:24:22 09/04/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT uart
	PORT(
		fpga_0_RS232_Uart_1_RX_pin : IN std_logic;
		sys_clk_pin : IN std_logic;
		sys_rst_pin : IN std_logic;          
		fpga_0_RS232_Uart_1_TX_pin : OUT std_logic;
		fpga_0_net_gnd_pin : OUT std_logic;
		fpga_0_net_gnd_1_pin : OUT std_logic;
		fpga_0_net_gnd_2_pin : OUT std_logic;
		fpga_0_net_gnd_3_pin : OUT std_logic;
		fpga_0_net_gnd_4_pin : OUT std_logic;
		fpga_0_net_gnd_5_pin : OUT std_logic;
		fpga_0_net_gnd_6_pin : OUT std_logic
		);
	END COMPONENT;

	Inst_uart: uart PORT MAP(
		fpga_0_RS232_Uart_1_RX_pin => ,
		fpga_0_RS232_Uart_1_TX_pin => ,
		fpga_0_net_gnd_pin => ,
		fpga_0_net_gnd_1_pin => ,
		fpga_0_net_gnd_2_pin => ,
		fpga_0_net_gnd_3_pin => ,
		fpga_0_net_gnd_4_pin => ,
		fpga_0_net_gnd_5_pin => ,
		fpga_0_net_gnd_6_pin => ,
		sys_clk_pin => ,
		sys_rst_pin => 
	);


