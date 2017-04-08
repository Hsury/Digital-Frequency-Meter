-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/08/2017 19:05:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FREQTEST
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FREQTEST_vhd_vec_tst IS
END FREQTEST_vhd_vec_tst;
ARCHITECTURE FREQTEST_arch OF FREQTEST_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DUAN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WEI : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT FREQTEST
	PORT (
	CLK : IN STD_LOGIC;
	DUAN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	WEI : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FREQTEST
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DUAN => DUAN,
	WEI => WEI
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END FREQTEST_arch;
