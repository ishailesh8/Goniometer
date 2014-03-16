--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : dcm_tbw.vhw
-- /___/   /\     Timestamp : Mon Aug 13 17:35:04 2012
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: dcm_tbw
--Device: Xilinx
--

library ieee;
use ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY dcm_tbw IS
END dcm_tbw;

ARCHITECTURE testbench_arch OF dcm_tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT motor_state
        PORT (
            en : In std_logic;
            clk : In std_logic;
            dir : In std_logic;
            reset : In std_logic;
            data_out : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL en : std_logic := '0';
    SIGNAL clk : std_logic := '0';
    SIGNAL dir : std_logic := '0';
    SIGNAL reset : std_logic := '0';
    SIGNAL data_out : std_logic_vector (3 DownTo 0) := "0000";

    constant PERIOD : time := 100 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 10 ns;

    BEGIN
        UUT : motor_state
        PORT MAP (
            en => en,
            clk => clk,
            dir => dir,
            reset => reset,
            data_out => data_out
        );

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  50ns
                WAIT FOR 50 ns;
                dir <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  150ns
                WAIT FOR 100 ns;
                en <= '1';
                -- -------------------------------------
                WAIT FOR 7950 ns;

            END PROCESS;

    END testbench_arch;

