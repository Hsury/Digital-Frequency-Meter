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
-- Generated on "05/24/2017 09:30:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DIGITAL_FREQUENCY_METER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DIGITAL_FREQUENCY_METER_vhd_vec_tst IS
END DIGITAL_FREQUENCY_METER_vhd_vec_tst;
ARCHITECTURE DIGITAL_FREQUENCY_METER_arch OF DIGITAL_FREQUENCY_METER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHZ : STD_LOGIC;
SIGNAL CLK_ARDUINO : STD_LOGIC;
SIGNAL CLK_PLL : STD_LOGIC;
SIGNAL CLK_SIGNAL : STD_LOGIC;
SIGNAL CLK_SYNC : STD_LOGIC;
SIGNAL H_ARDUINO : STD_LOGIC;
SIGNAL M_ARDUINO : STD_LOGIC;
SIGNAL N_ARDUINO : STD_LOGIC;
SIGNAL RST_ARDUINO : STD_LOGIC;
COMPONENT DIGITAL_FREQUENCY_METER
	PORT (
	CLK_50MHZ : IN STD_LOGIC;
	CLK_ARDUINO : OUT STD_LOGIC;
	CLK_PLL : OUT STD_LOGIC;
	CLK_SIGNAL : IN STD_LOGIC;
	CLK_SYNC : IN STD_LOGIC;
	H_ARDUINO : OUT STD_LOGIC;
	M_ARDUINO : OUT STD_LOGIC;
	N_ARDUINO : OUT STD_LOGIC;
	RST_ARDUINO : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DIGITAL_FREQUENCY_METER
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHZ => CLK_50MHZ,
	CLK_ARDUINO => CLK_ARDUINO,
	CLK_PLL => CLK_PLL,
	CLK_SIGNAL => CLK_SIGNAL,
	CLK_SYNC => CLK_SYNC,
	H_ARDUINO => H_ARDUINO,
	M_ARDUINO => M_ARDUINO,
	N_ARDUINO => N_ARDUINO,
	RST_ARDUINO => RST_ARDUINO
	);

-- CLK_50MHZ
t_prcs_CLK_50MHZ: PROCESS
BEGIN
LOOP
	CLK_50MHZ <= '0';
	WAIT FOR 10000 ps;
	CLK_50MHZ <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50MHZ;

-- CLK_SIGNAL
t_prcs_CLK_SIGNAL: PROCESS
BEGIN
LOOP
	CLK_SIGNAL <= '0';
	WAIT FOR 50000 ps;
	CLK_SIGNAL <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_SIGNAL;

-- CLK_SYNC
t_prcs_CLK_SYNC: PROCESS
BEGIN
LOOP
	CLK_SYNC <= '0';
	WAIT FOR 250000 ps;
	CLK_SYNC <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_SYNC;
END DIGITAL_FREQUENCY_METER_arch;
