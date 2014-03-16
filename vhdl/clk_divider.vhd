----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:33 08/13/2012 
-- Design Name: 
-- Module Name:    clk_divider - Behavioral 
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

entity clk_divider is
    Port ( CLKIN : in  STD_LOGIC;
	        RST : in std_logic;
			  ENABLE :in std_logic;
			  CLKDV : out  STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

begin

process(CLKIN)
 variable count : natural range 1 to 18000:=1;
   
begin
	if (ENABLE = '1')then
    if rising_edge( CLKIN) then
       if RST = '1' then
            count := 1;
            CLKDV <= '1';
            elsif count < 9001 then
                CLKDV    <='1';
                count := count + 1;
            elsif (count < 18000 and count > 9000)then
                CLKDV    <='0';
                count := count + 1;
            else
                count := 1;
                CLKDV    <='1';
            end if;
        end if;
    end if;   
 
end process;
end Behavioral;

