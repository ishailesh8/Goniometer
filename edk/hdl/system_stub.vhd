-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_Uart_1_RX_pin : in std_logic;
    fpga_0_RS232_Uart_1_TX_pin : out std_logic;
    fpga_0_LEDs_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
    fpga_0_net_gnd_pin : out std_logic;
    fpga_0_net_gnd_1_pin : out std_logic;
    fpga_0_net_gnd_2_pin : out std_logic;
    fpga_0_net_gnd_3_pin : out std_logic;
    fpga_0_net_gnd_4_pin : out std_logic;
    fpga_0_net_gnd_5_pin : out std_logic;
    fpga_0_net_gnd_6_pin : out std_logic;
    sys_clk_pin : in std_logic;
    sys_rst_pin : in std_logic;
    motorseq_GPIO_IO_O_pin : out std_logic_vector(0 to 3);
    halt_GPIO_in_pin : in std_logic_vector(0 to 0);
    forward_GPIO_in_pin : in std_logic_vector(0 to 0);
    backward_GPIO_in_pin : in std_logic_vector(0 to 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_Uart_1_RX_pin : in std_logic;
      fpga_0_RS232_Uart_1_TX_pin : out std_logic;
      fpga_0_LEDs_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
      fpga_0_net_gnd_pin : out std_logic;
      fpga_0_net_gnd_1_pin : out std_logic;
      fpga_0_net_gnd_2_pin : out std_logic;
      fpga_0_net_gnd_3_pin : out std_logic;
      fpga_0_net_gnd_4_pin : out std_logic;
      fpga_0_net_gnd_5_pin : out std_logic;
      fpga_0_net_gnd_6_pin : out std_logic;
      sys_clk_pin : in std_logic;
      sys_rst_pin : in std_logic;
      motorseq_GPIO_IO_O_pin : out std_logic_vector(0 to 3);
      halt_GPIO_in_pin : in std_logic_vector(0 to 0);
      forward_GPIO_in_pin : in std_logic_vector(0 to 0);
      backward_GPIO_in_pin : in std_logic_vector(0 to 0)
    );
  end component;

begin

  system_i : system
    port map (
      fpga_0_RS232_Uart_1_RX_pin => fpga_0_RS232_Uart_1_RX_pin,
      fpga_0_RS232_Uart_1_TX_pin => fpga_0_RS232_Uart_1_TX_pin,
      fpga_0_LEDs_4Bit_GPIO_IO_pin => fpga_0_LEDs_4Bit_GPIO_IO_pin,
      fpga_0_net_gnd_pin => fpga_0_net_gnd_pin,
      fpga_0_net_gnd_1_pin => fpga_0_net_gnd_1_pin,
      fpga_0_net_gnd_2_pin => fpga_0_net_gnd_2_pin,
      fpga_0_net_gnd_3_pin => fpga_0_net_gnd_3_pin,
      fpga_0_net_gnd_4_pin => fpga_0_net_gnd_4_pin,
      fpga_0_net_gnd_5_pin => fpga_0_net_gnd_5_pin,
      fpga_0_net_gnd_6_pin => fpga_0_net_gnd_6_pin,
      sys_clk_pin => sys_clk_pin,
      sys_rst_pin => sys_rst_pin,
      motorseq_GPIO_IO_O_pin => motorseq_GPIO_IO_O_pin,
      halt_GPIO_in_pin => halt_GPIO_in_pin(0 to 0),
      forward_GPIO_in_pin => forward_GPIO_in_pin(0 to 0),
      backward_GPIO_in_pin => backward_GPIO_in_pin(0 to 0)
    );

end architecture STRUCTURE;

