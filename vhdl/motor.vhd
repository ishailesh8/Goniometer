library ieee;
use ieee.std_logic_1164.all;

entity motor_state is

	port(
	   
		en 	    : in	std_logic;
		clk	    : in	std_logic;
		dir	    : in	std_logic;
		reset	    : in	std_logic;
		data_out	 : out std_logic_vector(3 downto 0):="1111"
	);
	
end entity;

architecture motor_state_sequential of motor_state is

	-- Enumerated type for the sequence flow
	type state_type is (s0, s1, s2, s3);
	
	-- Register for internal signal and to hold the current state 
	signal state   : state_type;
	signal clk_dv  :std_logic;
	signal clk_dv_final :std_logic;
	
	--Component declaration DCM
	
	COMPONENT dcm_divider
 
 PORT(
      CLKIN_IN : IN std_logic;
      RST_IN : IN std_logic; 
      CLKDV_OUT : OUT std_logic;
      CLKIN_IBUFG_OUT : OUT std_logic;
      CLK0_OUT : OUT std_logic
);
END COMPONENT;
 
 --Component declaration Clock Divider

COMPONENT clk_divider

PORT(
      CLKIN : IN std_logic;
		RST:in std_logic;
		ENABLE:in std_logic;
      CLKDV : OUT std_logic
);
END COMPONENT;


begin

Inst_trial1: dcm_divider PORT MAP(
CLKIN_IN => clk ,
RST_IN => reset,
CLKDV_OUT => clk_dv ,
CLKIN_IBUFG_OUT => open,
CLK0_OUT => open 
);



Inst_trial2: clk_divider PORT MAP(
CLKIN => clk_dv,
ENABLE => en,
RST => reset,
CLKDV => clk_dv_final
);

	-- Logic to advance to the next state
	process (clk_dv_final, reset)
	begin
  	if (en = '1')then
		if reset = '1' then
		state <= s0;
		   elsif (clk_dv_final'event and clk_dv_final='1') then
			case state is
				when s0=>
					if dir = '1' then
						state <= s1;
					else
						state <= s3;
					end if;
				when s1=>
					if dir = '1' then
						state <= s2;
					else
						state <= s0;
					end if;
				when s2=>
					if dir = '1' then
						state <= s3;
					else
						state <= s1;
					end if;
				when s3 =>
					if dir = '1' then
						state <= s0;
					else
						state <= s2;
					end if;
			end case;
		end if;
	end if;
	
	end process;
	
	-- Output depends on the current state
	process (state)
	begin
	 
if (en = '1')then
			case state is
			when s0 =>
				data_out <= "0001";
				for delay_counter1 in 1 to 2500 loop
				  for delay_counter2 in 1 to 2500 loop
				 end loop;
			  end loop;
			when s1 =>
				data_out <= "0100";
				for delay_counter1 in 1 to 2500 loop
				  for delay_counter2 in 1 to 2500 loop
				 end loop;
			  end loop;
			when s2 =>
				data_out <= "0010";
				for delay_counter1 in 1 to 2500 loop
				  for delay_counter2 in 1 to 2500 loop
				 end loop;
			  end loop;
			  
			when s3 =>
				data_out <= "1000";
				for delay_counter1 in 1 to 2500 loop
				  for delay_counter2 in 1 to 2500 loop
				 end loop;
			  end loop;
		end case;
end if;		
	
	end process;
	
end motor_state_sequential;