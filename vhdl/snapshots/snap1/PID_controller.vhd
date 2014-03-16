----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:00 08/29/2012 
-- Design Name: 
-- Module Name:    PID_controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PID_controller is
    Port ( error_in : in  STD_LOGIC_VECTOR (15 downto 0);
           control_signal_out : out  STD_LOGIC_VECTOR (15 downto 0);
           reset_pid : in  STD_LOGIC;
           clk_pid : in  STD_LOGIC);
end PID_controller;

architecture Behavioral of PID_controller is

	type state_type is (st0, st1, st2, st3, st4);
	
signal control_signal: std_logic_vector(15 downto 0);
signal control_signal_previous : std_logic_vector( 15 downto 0);
signal error_signal_previous1: std_logic_vector( 15 downto 0);
signal error_signal_previous2: std_logic_vector( 15 downto 0);


constant proportional_multiplier: std_logic_vector( 6 downto 0 ):="1101011";
constant integral_muliplier:std_logic_vector( 6 downto 0):="1101000";
constant derivative_multiplier: std_logic_vector( 6 downto 0) :="0000010";

begin

process( clk_pid)
  begin
			if reset ='1' then
			control_signal_previous <="0000000000000000";
			error_signal_previous1<="0000000000000000";
			error_signal_previous2<="0000000000000000";
elsif (clk_pid'event and clk_pid='1') then
error_signal_previous2<=error_signal_previous1;
error_signal_previous1<=error_in;
control_signal_previous1<=control_signal;
control_signal<=control_signal_previous + ((proportional_multiplier + integral_muliplier + derivative_multiplier) * error_in) - ((proportional_multiplier + (2 *derivative_multiplier)) * error_signal_previous1 ) + ( error_signal_previous2 * derivative_multiplier);
control_signal_out<=control_signal;
end if;
end if;
end process;
end Behavioral;




