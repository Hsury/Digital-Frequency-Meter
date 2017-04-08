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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Standard Edition"

-- DATE "04/08/2017 20:42:03"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FREQTEST IS
    PORT (
	CLK : IN std_logic;
	FSIN : IN std_logic;
	DUAN : BUFFER std_logic_vector(7 DOWNTO 0);
	WEI : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END FREQTEST;

-- Design Ports Information
-- FSIN	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUAN[0]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[1]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[2]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[3]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[4]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[5]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[6]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[0]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[1]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[2]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[3]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[4]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[5]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FREQTEST IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_FSIN : std_logic;
SIGNAL ww_DUAN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WEI : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|CO0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Div2CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO4~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U7|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CO5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSIN~input_o\ : std_logic;
SIGNAL \DUAN[0]~output_o\ : std_logic;
SIGNAL \DUAN[1]~output_o\ : std_logic;
SIGNAL \DUAN[2]~output_o\ : std_logic;
SIGNAL \DUAN[3]~output_o\ : std_logic;
SIGNAL \DUAN[4]~output_o\ : std_logic;
SIGNAL \DUAN[5]~output_o\ : std_logic;
SIGNAL \DUAN[6]~output_o\ : std_logic;
SIGNAL \DUAN[7]~output_o\ : std_logic;
SIGNAL \WEI[0]~output_o\ : std_logic;
SIGNAL \WEI[1]~output_o\ : std_logic;
SIGNAL \WEI[2]~output_o\ : std_logic;
SIGNAL \WEI[3]~output_o\ : std_logic;
SIGNAL \WEI[4]~output_o\ : std_logic;
SIGNAL \WEI[5]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT0~0_combout\ : std_logic;
SIGNAL \U0|CNT0~2_combout\ : std_logic;
SIGNAL \U0|CNT0~1_combout\ : std_logic;
SIGNAL \U0|CO0~0_combout\ : std_logic;
SIGNAL \U0|CO0~feeder_combout\ : std_logic;
SIGNAL \U0|CO0~q\ : std_logic;
SIGNAL \U0|CO0~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT1~2_combout\ : std_logic;
SIGNAL \U0|CNT1~3_combout\ : std_logic;
SIGNAL \U0|CNT1~1_combout\ : std_logic;
SIGNAL \U0|CNT1~0_combout\ : std_logic;
SIGNAL \U0|LessThan3~0_combout\ : std_logic;
SIGNAL \U0|CO1~0_combout\ : std_logic;
SIGNAL \U0|CO1~feeder_combout\ : std_logic;
SIGNAL \U0|CO1~q\ : std_logic;
SIGNAL \U0|CO1~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT2~2_combout\ : std_logic;
SIGNAL \U0|CNT2~0_combout\ : std_logic;
SIGNAL \U0|CNT2~1_combout\ : std_logic;
SIGNAL \U0|CNT2~3_combout\ : std_logic;
SIGNAL \U0|LessThan5~0_combout\ : std_logic;
SIGNAL \U0|CO2~0_combout\ : std_logic;
SIGNAL \U0|CO2~feeder_combout\ : std_logic;
SIGNAL \U0|CO2~q\ : std_logic;
SIGNAL \U0|CO2~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT3~2_combout\ : std_logic;
SIGNAL \U0|CNT3~0_combout\ : std_logic;
SIGNAL \U0|CNT3~1_combout\ : std_logic;
SIGNAL \U0|CNT3~3_combout\ : std_logic;
SIGNAL \U0|LessThan7~0_combout\ : std_logic;
SIGNAL \U0|CO3~0_combout\ : std_logic;
SIGNAL \U0|CO3~feeder_combout\ : std_logic;
SIGNAL \U0|CO3~q\ : std_logic;
SIGNAL \U0|CO3~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT4~3_combout\ : std_logic;
SIGNAL \U0|CNT4~2_combout\ : std_logic;
SIGNAL \U0|CNT4~1_combout\ : std_logic;
SIGNAL \U0|CNT4~0_combout\ : std_logic;
SIGNAL \U0|LessThan9~0_combout\ : std_logic;
SIGNAL \U0|CO4~0_combout\ : std_logic;
SIGNAL \U0|CO4~feeder_combout\ : std_logic;
SIGNAL \U0|CO4~q\ : std_logic;
SIGNAL \U0|CO4~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT5~2_combout\ : std_logic;
SIGNAL \U0|CNT5~0_combout\ : std_logic;
SIGNAL \U0|CNT5~1_combout\ : std_logic;
SIGNAL \U0|CNT5~3_combout\ : std_logic;
SIGNAL \U0|LessThan11~0_combout\ : std_logic;
SIGNAL \U0|CO5~0_combout\ : std_logic;
SIGNAL \U0|CO5~feeder_combout\ : std_logic;
SIGNAL \U0|CO5~q\ : std_logic;
SIGNAL \U0|CO5~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT6~3_combout\ : std_logic;
SIGNAL \U0|CNT6~2_combout\ : std_logic;
SIGNAL \U0|CNT6~1_combout\ : std_logic;
SIGNAL \U0|CNT6~0_combout\ : std_logic;
SIGNAL \U0|LessThan13~0_combout\ : std_logic;
SIGNAL \U0|CO6~0_combout\ : std_logic;
SIGNAL \U0|CO6~feeder_combout\ : std_logic;
SIGNAL \U0|CO6~q\ : std_logic;
SIGNAL \U0|CO6~clkctrl_outclk\ : std_logic;
SIGNAL \U0|CNT7~2_combout\ : std_logic;
SIGNAL \U0|CNT7~1_combout\ : std_logic;
SIGNAL \U0|CNT7~0_combout\ : std_logic;
SIGNAL \U0|CNT7~3_combout\ : std_logic;
SIGNAL \U0|LessThan15~0_combout\ : std_logic;
SIGNAL \U0|CO7~0_combout\ : std_logic;
SIGNAL \U0|CO7~feeder_combout\ : std_logic;
SIGNAL \U0|CO7~q\ : std_logic;
SIGNAL \U1|Div2CLK~0_combout\ : std_logic;
SIGNAL \U1|Div2CLK~feeder_combout\ : std_logic;
SIGNAL \U1|Div2CLK~q\ : std_logic;
SIGNAL \U1|Div2CLK~clkctrl_outclk\ : std_logic;
SIGNAL \U3|CQI~1_combout\ : std_logic;
SIGNAL \U3|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U1|CLR_CNT~combout\ : std_logic;
SIGNAL \U3|CQI~2_combout\ : std_logic;
SIGNAL \U3|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U3|CQI~3_combout\ : std_logic;
SIGNAL \U3|CQI[3]~feeder_combout\ : std_logic;
SIGNAL \U3|CQI~0_combout\ : std_logic;
SIGNAL \U3|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \U9|CURSOR[0]~0_combout\ : std_logic;
SIGNAL \U3|Equal0~combout\ : std_logic;
SIGNAL \U4|CQI~1_combout\ : std_logic;
SIGNAL \U4|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U4|CQI~2_combout\ : std_logic;
SIGNAL \U4|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U4|CQI~3_combout\ : std_logic;
SIGNAL \U4|CQI[3]~feeder_combout\ : std_logic;
SIGNAL \U4|CQI~0_combout\ : std_logic;
SIGNAL \U4|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \U9|NUM[0]~0_combout\ : std_logic;
SIGNAL \U4|Equal0~combout\ : std_logic;
SIGNAL \U5|CQI~2_combout\ : std_logic;
SIGNAL \U5|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U5|CQI~3_combout\ : std_logic;
SIGNAL \U5|CQI[3]~feeder_combout\ : std_logic;
SIGNAL \U5|CQI~1_combout\ : std_logic;
SIGNAL \U5|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U5|CQI~0_combout\ : std_logic;
SIGNAL \U5|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U9|COUNTER~1_combout\ : std_logic;
SIGNAL \U9|COUNTER~0_combout\ : std_logic;
SIGNAL \U5|Equal0~combout\ : std_logic;
SIGNAL \U6|CQI~1_combout\ : std_logic;
SIGNAL \U6|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U6|CQI~2_combout\ : std_logic;
SIGNAL \U6|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U6|CQI~3_combout\ : std_logic;
SIGNAL \U6|CQI~0_combout\ : std_logic;
SIGNAL \U6|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U6|Equal0~combout\ : std_logic;
SIGNAL \U7|CQI~1_combout\ : std_logic;
SIGNAL \U7|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U7|CQI~2_combout\ : std_logic;
SIGNAL \U7|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U7|CQI~3_combout\ : std_logic;
SIGNAL \U7|CQI[3]~feeder_combout\ : std_logic;
SIGNAL \U7|CQI~0_combout\ : std_logic;
SIGNAL \U7|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U7|Equal0~combout\ : std_logic;
SIGNAL \U7|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \U8|CQI~1_combout\ : std_logic;
SIGNAL \U8|CQI[1]~feeder_combout\ : std_logic;
SIGNAL \U8|CQI~2_combout\ : std_logic;
SIGNAL \U8|CQI[2]~feeder_combout\ : std_logic;
SIGNAL \U8|CQI~3_combout\ : std_logic;
SIGNAL \U8|CQI[3]~feeder_combout\ : std_logic;
SIGNAL \U8|CQI~0_combout\ : std_logic;
SIGNAL \U8|CQI[0]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[20]~feeder_combout\ : std_logic;
SIGNAL \U9|Mux3~0_combout\ : std_logic;
SIGNAL \U9|Mux3~1_combout\ : std_logic;
SIGNAL \U2|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \U9|NUM[1]~1_combout\ : std_logic;
SIGNAL \U2|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[21]~feeder_combout\ : std_logic;
SIGNAL \U9|Mux2~0_combout\ : std_logic;
SIGNAL \U9|Mux2~1_combout\ : std_logic;
SIGNAL \U2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \U9|NUM[3]~3_combout\ : std_logic;
SIGNAL \U2|DOUT[11]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[23]~feeder_combout\ : std_logic;
SIGNAL \U9|Mux0~0_combout\ : std_logic;
SIGNAL \U9|Mux0~1_combout\ : std_logic;
SIGNAL \U2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \U2|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \U9|NUM[2]~2_combout\ : std_logic;
SIGNAL \U2|DOUT[22]~feeder_combout\ : std_logic;
SIGNAL \U9|Mux1~0_combout\ : std_logic;
SIGNAL \U9|Mux1~1_combout\ : std_logic;
SIGNAL \U11|Mux7~0_combout\ : std_logic;
SIGNAL \U11|Mux6~0_combout\ : std_logic;
SIGNAL \U11|Mux5~0_combout\ : std_logic;
SIGNAL \U11|Mux4~0_combout\ : std_logic;
SIGNAL \U11|Mux3~0_combout\ : std_logic;
SIGNAL \U11|Mux2~0_combout\ : std_logic;
SIGNAL \U11|Mux1~0_combout\ : std_logic;
SIGNAL \U9|CURSOR[2]~feeder_combout\ : std_logic;
SIGNAL \U9|CURSOR[1]~feeder_combout\ : std_logic;
SIGNAL \U10|RotateRight0~0_combout\ : std_logic;
SIGNAL \U10|RotateRight0~1_combout\ : std_logic;
SIGNAL \U10|RotateRight0~2_combout\ : std_logic;
SIGNAL \U10|RotateRight0~3_combout\ : std_logic;
SIGNAL \U10|RotateRight0~4_combout\ : std_logic;
SIGNAL \U10|RotateRight0~5_combout\ : std_logic;
SIGNAL \U9|NUM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U9|CURSOR\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|DOUT\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U0|CNT7\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U9|COUNTER\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|CNT4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U8|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U7|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U6|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT0\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|CNT5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_CLR_CNT~combout\ : std_logic;
SIGNAL \U1|ALT_INV_Div2CLK~clkctrl_outclk\ : std_logic;
SIGNAL \U9|ALT_INV_COUNTER\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \U11|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_FSIN <= FSIN;
DUAN <= ww_DUAN;
WEI <= ww_WEI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|CO0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO0~q\);

\U1|Div2CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Div2CLK~q\);

\U0|CO2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO2~q\);

\U0|CO4~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO4~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\U0|CO3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO3~q\);

\U0|CO1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO1~q\);

\U7|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U7|Equal0~combout\);

\U0|CO6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO6~q\);

\U0|CO5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CO5~q\);
\U1|ALT_INV_CLR_CNT~combout\ <= NOT \U1|CLR_CNT~combout\;
\U1|ALT_INV_Div2CLK~clkctrl_outclk\ <= NOT \U1|Div2CLK~clkctrl_outclk\;
\U9|ALT_INV_COUNTER\(2) <= NOT \U9|COUNTER\(2);
\U11|ALT_INV_Mux1~0_combout\ <= NOT \U11|Mux1~0_combout\;

-- Location: IOOBUF_X30_Y0_N2
\DUAN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\DUAN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\DUAN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\DUAN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\DUAN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\DUAN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\DUAN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[6]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\DUAN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DUAN[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\WEI[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~0_combout\,
	devoe => ww_devoe,
	o => \WEI[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\WEI[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~1_combout\,
	devoe => ww_devoe,
	o => \WEI[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\WEI[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~2_combout\,
	devoe => ww_devoe,
	o => \WEI[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\WEI[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~3_combout\,
	devoe => ww_devoe,
	o => \WEI[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\WEI[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~4_combout\,
	devoe => ww_devoe,
	o => \WEI[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\WEI[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|RotateRight0~5_combout\,
	devoe => ww_devoe,
	o => \WEI[5]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N28
\U0|CNT0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT0~0_combout\ = (\U0|CNT0\(0) & (!\U0|CNT0\(2) & \U0|CNT0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT0\(0),
	datac => \U0|CNT0\(2),
	datad => \U0|CNT0\(1),
	combout => \U0|CNT0~0_combout\);

-- Location: FF_X32_Y12_N29
\U0|CNT0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|CNT0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT0\(2));

-- Location: LCCOMB_X32_Y12_N26
\U0|CNT0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT0~2_combout\ = (!\U0|CNT0\(0) & !\U0|CNT0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT0\(0),
	datad => \U0|CNT0\(2),
	combout => \U0|CNT0~2_combout\);

-- Location: FF_X32_Y12_N27
\U0|CNT0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|CNT0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT0\(0));

-- Location: LCCOMB_X32_Y12_N30
\U0|CNT0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT0~1_combout\ = (!\U0|CNT0\(2) & (\U0|CNT0\(0) $ (\U0|CNT0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT0\(0),
	datac => \U0|CNT0\(1),
	datad => \U0|CNT0\(2),
	combout => \U0|CNT0~1_combout\);

-- Location: FF_X32_Y12_N31
\U0|CNT0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|CNT0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT0\(1));

-- Location: LCCOMB_X32_Y12_N22
\U0|CO0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO0~0_combout\ = (\U0|CNT0\(2) & (\U0|CO0~q\)) # (!\U0|CNT0\(2) & ((!\U0|CNT0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO0~q\,
	datac => \U0|CNT0\(1),
	datad => \U0|CNT0\(2),
	combout => \U0|CO0~0_combout\);

-- Location: LCCOMB_X32_Y12_N2
\U0|CO0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO0~feeder_combout\ = \U0|CO0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO0~0_combout\,
	combout => \U0|CO0~feeder_combout\);

-- Location: FF_X32_Y12_N3
\U0|CO0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|CO0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO0~q\);

-- Location: CLKCTRL_G7
\U0|CO0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO0~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N0
\U0|CNT1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT1~2_combout\ = (!\U0|CNT1\(3) & (\U0|CNT1\(0) $ (\U0|CNT1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT1\(0),
	datac => \U0|CNT1\(1),
	datad => \U0|CNT1\(3),
	combout => \U0|CNT1~2_combout\);

-- Location: FF_X33_Y12_N1
\U0|CNT1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO0~clkctrl_outclk\,
	d => \U0|CNT1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT1\(1));

-- Location: LCCOMB_X33_Y12_N18
\U0|CNT1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT1~3_combout\ = (\U0|CNT1\(1) & (\U0|CNT1\(0) & (!\U0|CNT1\(3) & \U0|CNT1\(2)))) # (!\U0|CNT1\(1) & (!\U0|CNT1\(0) & (\U0|CNT1\(3) & !\U0|CNT1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT1\(1),
	datab => \U0|CNT1\(0),
	datac => \U0|CNT1\(3),
	datad => \U0|CNT1\(2),
	combout => \U0|CNT1~3_combout\);

-- Location: FF_X33_Y12_N19
\U0|CNT1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO0~clkctrl_outclk\,
	d => \U0|CNT1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT1\(3));

-- Location: LCCOMB_X33_Y12_N30
\U0|CNT1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT1~1_combout\ = (!\U0|CNT1\(0) & (((!\U0|CNT1\(2) & !\U0|CNT1\(1))) # (!\U0|CNT1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT1\(2),
	datab => \U0|CNT1\(3),
	datac => \U0|CNT1\(0),
	datad => \U0|CNT1\(1),
	combout => \U0|CNT1~1_combout\);

-- Location: FF_X33_Y12_N31
\U0|CNT1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO0~clkctrl_outclk\,
	d => \U0|CNT1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT1\(0));

-- Location: LCCOMB_X33_Y12_N28
\U0|CNT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT1~0_combout\ = (!\U0|CNT1\(3) & (\U0|CNT1\(2) $ (((\U0|CNT1\(0) & \U0|CNT1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT1\(0),
	datab => \U0|CNT1\(3),
	datac => \U0|CNT1\(2),
	datad => \U0|CNT1\(1),
	combout => \U0|CNT1~0_combout\);

-- Location: FF_X33_Y12_N29
\U0|CNT1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO0~clkctrl_outclk\,
	d => \U0|CNT1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT1\(2));

-- Location: LCCOMB_X33_Y12_N16
\U0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan3~0_combout\ = (!\U0|CNT1\(0) & !\U0|CNT1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT1\(0),
	datad => \U0|CNT1\(1),
	combout => \U0|LessThan3~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\U0|CO1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO1~0_combout\ = (\U0|CNT1\(3) & (\U0|CO1~q\ & ((\U0|CNT1\(2)) # (!\U0|LessThan3~0_combout\)))) # (!\U0|CNT1\(3) & (((\U0|LessThan3~0_combout\) # (!\U0|CNT1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO1~q\,
	datab => \U0|CNT1\(2),
	datac => \U0|CNT1\(3),
	datad => \U0|LessThan3~0_combout\,
	combout => \U0|CO1~0_combout\);

-- Location: LCCOMB_X33_Y12_N12
\U0|CO1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO1~feeder_combout\ = \U0|CO1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CO1~0_combout\,
	combout => \U0|CO1~feeder_combout\);

-- Location: FF_X33_Y12_N13
\U0|CO1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO0~clkctrl_outclk\,
	d => \U0|CO1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO1~q\);

-- Location: CLKCTRL_G6
\U0|CO1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO1~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y7_N24
\U0|CNT2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT2~2_combout\ = (!\U0|CNT2\(3) & (\U0|CNT2\(1) $ (\U0|CNT2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT2\(3),
	datac => \U0|CNT2\(1),
	datad => \U0|CNT2\(0),
	combout => \U0|CNT2~2_combout\);

-- Location: FF_X22_Y7_N25
\U0|CNT2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO1~clkctrl_outclk\,
	d => \U0|CNT2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT2\(1));

-- Location: LCCOMB_X22_Y7_N26
\U0|CNT2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT2~0_combout\ = (!\U0|CNT2\(3) & (\U0|CNT2\(2) $ (((\U0|CNT2\(1) & \U0|CNT2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT2\(3),
	datab => \U0|CNT2\(1),
	datac => \U0|CNT2\(2),
	datad => \U0|CNT2\(0),
	combout => \U0|CNT2~0_combout\);

-- Location: FF_X22_Y7_N27
\U0|CNT2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO1~clkctrl_outclk\,
	d => \U0|CNT2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT2\(2));

-- Location: LCCOMB_X22_Y7_N22
\U0|CNT2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT2~1_combout\ = (!\U0|CNT2\(0) & (((!\U0|CNT2\(2) & !\U0|CNT2\(1))) # (!\U0|CNT2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT2\(3),
	datab => \U0|CNT2\(2),
	datac => \U0|CNT2\(0),
	datad => \U0|CNT2\(1),
	combout => \U0|CNT2~1_combout\);

-- Location: FF_X22_Y7_N23
\U0|CNT2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO1~clkctrl_outclk\,
	d => \U0|CNT2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT2\(0));

-- Location: LCCOMB_X22_Y7_N30
\U0|CNT2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT2~3_combout\ = (\U0|CNT2\(0) & (\U0|CNT2\(2) & (!\U0|CNT2\(3) & \U0|CNT2\(1)))) # (!\U0|CNT2\(0) & (!\U0|CNT2\(2) & (\U0|CNT2\(3) & !\U0|CNT2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT2\(0),
	datab => \U0|CNT2\(2),
	datac => \U0|CNT2\(3),
	datad => \U0|CNT2\(1),
	combout => \U0|CNT2~3_combout\);

-- Location: FF_X22_Y7_N31
\U0|CNT2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO1~clkctrl_outclk\,
	d => \U0|CNT2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT2\(3));

-- Location: LCCOMB_X22_Y7_N6
\U0|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan5~0_combout\ = (!\U0|CNT2\(0) & !\U0|CNT2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT2\(0),
	datad => \U0|CNT2\(1),
	combout => \U0|LessThan5~0_combout\);

-- Location: LCCOMB_X22_Y7_N20
\U0|CO2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO2~0_combout\ = (\U0|CNT2\(3) & (\U0|CO2~q\ & ((\U0|CNT2\(2)) # (!\U0|LessThan5~0_combout\)))) # (!\U0|CNT2\(3) & (((\U0|LessThan5~0_combout\) # (!\U0|CNT2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT2\(3),
	datab => \U0|CO2~q\,
	datac => \U0|CNT2\(2),
	datad => \U0|LessThan5~0_combout\,
	combout => \U0|CO2~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\U0|CO2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO2~feeder_combout\ = \U0|CO2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CO2~0_combout\,
	combout => \U0|CO2~feeder_combout\);

-- Location: FF_X22_Y7_N29
\U0|CO2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO1~clkctrl_outclk\,
	d => \U0|CO2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO2~q\);

-- Location: CLKCTRL_G4
\U0|CO2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO2~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N28
\U0|CNT3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT3~2_combout\ = (!\U0|CNT3\(3) & (\U0|CNT3\(0) $ (\U0|CNT3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT3\(0),
	datac => \U0|CNT3\(1),
	datad => \U0|CNT3\(3),
	combout => \U0|CNT3~2_combout\);

-- Location: FF_X1_Y11_N29
\U0|CNT3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U0|CNT3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT3\(1));

-- Location: LCCOMB_X1_Y11_N8
\U0|CNT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT3~0_combout\ = (!\U0|CNT3\(3) & (\U0|CNT3\(2) $ (((\U0|CNT3\(0) & \U0|CNT3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT3\(0),
	datab => \U0|CNT3\(3),
	datac => \U0|CNT3\(2),
	datad => \U0|CNT3\(1),
	combout => \U0|CNT3~0_combout\);

-- Location: FF_X1_Y11_N9
\U0|CNT3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U0|CNT3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT3\(2));

-- Location: LCCOMB_X1_Y11_N14
\U0|CNT3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT3~1_combout\ = (!\U0|CNT3\(0) & (((!\U0|CNT3\(2) & !\U0|CNT3\(1))) # (!\U0|CNT3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT3\(2),
	datab => \U0|CNT3\(1),
	datac => \U0|CNT3\(0),
	datad => \U0|CNT3\(3),
	combout => \U0|CNT3~1_combout\);

-- Location: FF_X1_Y11_N15
\U0|CNT3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U0|CNT3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT3\(0));

-- Location: LCCOMB_X1_Y11_N26
\U0|CNT3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT3~3_combout\ = (\U0|CNT3\(0) & (\U0|CNT3\(1) & (!\U0|CNT3\(3) & \U0|CNT3\(2)))) # (!\U0|CNT3\(0) & (!\U0|CNT3\(1) & (\U0|CNT3\(3) & !\U0|CNT3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT3\(0),
	datab => \U0|CNT3\(1),
	datac => \U0|CNT3\(3),
	datad => \U0|CNT3\(2),
	combout => \U0|CNT3~3_combout\);

-- Location: FF_X1_Y11_N27
\U0|CNT3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U0|CNT3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT3\(3));

-- Location: LCCOMB_X1_Y11_N24
\U0|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan7~0_combout\ = (!\U0|CNT3\(0) & !\U0|CNT3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT3\(0),
	datad => \U0|CNT3\(1),
	combout => \U0|LessThan7~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\U0|CO3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO3~0_combout\ = (\U0|CNT3\(3) & (\U0|CO3~q\ & ((\U0|CNT3\(2)) # (!\U0|LessThan7~0_combout\)))) # (!\U0|CNT3\(3) & (((\U0|LessThan7~0_combout\) # (!\U0|CNT3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT3\(3),
	datab => \U0|CO3~q\,
	datac => \U0|CNT3\(2),
	datad => \U0|LessThan7~0_combout\,
	combout => \U0|CO3~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\U0|CO3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO3~feeder_combout\ = \U0|CO3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO3~0_combout\,
	combout => \U0|CO3~feeder_combout\);

-- Location: FF_X1_Y11_N23
\U0|CO3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U0|CO3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO3~q\);

-- Location: CLKCTRL_G0
\U0|CO3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO3~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N24
\U0|CNT4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT4~3_combout\ = (\U0|CNT4\(2) & (\U0|CNT4\(0) & (!\U0|CNT4\(3) & \U0|CNT4\(1)))) # (!\U0|CNT4\(2) & (!\U0|CNT4\(0) & (\U0|CNT4\(3) & !\U0|CNT4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT4\(2),
	datab => \U0|CNT4\(0),
	datac => \U0|CNT4\(3),
	datad => \U0|CNT4\(1),
	combout => \U0|CNT4~3_combout\);

-- Location: FF_X2_Y11_N25
\U0|CNT4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO3~clkctrl_outclk\,
	d => \U0|CNT4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT4\(3));

-- Location: LCCOMB_X2_Y11_N28
\U0|CNT4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT4~2_combout\ = (!\U0|CNT4\(3) & (\U0|CNT4\(0) $ (\U0|CNT4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT4\(0),
	datac => \U0|CNT4\(1),
	datad => \U0|CNT4\(3),
	combout => \U0|CNT4~2_combout\);

-- Location: FF_X2_Y11_N29
\U0|CNT4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO3~clkctrl_outclk\,
	d => \U0|CNT4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT4\(1));

-- Location: LCCOMB_X2_Y11_N22
\U0|CNT4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT4~1_combout\ = (!\U0|CNT4\(0) & (((!\U0|CNT4\(2) & !\U0|CNT4\(1))) # (!\U0|CNT4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT4\(2),
	datab => \U0|CNT4\(1),
	datac => \U0|CNT4\(0),
	datad => \U0|CNT4\(3),
	combout => \U0|CNT4~1_combout\);

-- Location: FF_X2_Y11_N23
\U0|CNT4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO3~clkctrl_outclk\,
	d => \U0|CNT4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT4\(0));

-- Location: LCCOMB_X2_Y11_N30
\U0|CNT4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT4~0_combout\ = (!\U0|CNT4\(3) & (\U0|CNT4\(2) $ (((\U0|CNT4\(0) & \U0|CNT4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT4\(0),
	datab => \U0|CNT4\(1),
	datac => \U0|CNT4\(2),
	datad => \U0|CNT4\(3),
	combout => \U0|CNT4~0_combout\);

-- Location: FF_X2_Y11_N31
\U0|CNT4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO3~clkctrl_outclk\,
	d => \U0|CNT4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT4\(2));

-- Location: LCCOMB_X2_Y11_N20
\U0|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan9~0_combout\ = (!\U0|CNT4\(0) & !\U0|CNT4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT4\(0),
	datad => \U0|CNT4\(1),
	combout => \U0|LessThan9~0_combout\);

-- Location: LCCOMB_X2_Y11_N8
\U0|CO4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO4~0_combout\ = (\U0|CNT4\(3) & (\U0|CO4~q\ & ((\U0|CNT4\(2)) # (!\U0|LessThan9~0_combout\)))) # (!\U0|CNT4\(3) & (((\U0|LessThan9~0_combout\)) # (!\U0|CNT4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT4\(2),
	datab => \U0|CNT4\(3),
	datac => \U0|CO4~q\,
	datad => \U0|LessThan9~0_combout\,
	combout => \U0|CO4~0_combout\);

-- Location: LCCOMB_X2_Y11_N26
\U0|CO4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO4~feeder_combout\ = \U0|CO4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CO4~0_combout\,
	combout => \U0|CO4~feeder_combout\);

-- Location: FF_X2_Y11_N27
\U0|CO4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO3~clkctrl_outclk\,
	d => \U0|CO4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO4~q\);

-- Location: CLKCTRL_G3
\U0|CO4~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO4~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO4~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N18
\U0|CNT5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT5~2_combout\ = (!\U0|CNT5\(3) & (\U0|CNT5\(0) $ (\U0|CNT5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT5\(0),
	datac => \U0|CNT5\(1),
	datad => \U0|CNT5\(3),
	combout => \U0|CNT5~2_combout\);

-- Location: FF_X33_Y11_N19
\U0|CNT5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U0|CNT5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT5\(1));

-- Location: LCCOMB_X33_Y11_N16
\U0|CNT5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT5~0_combout\ = (!\U0|CNT5\(3) & (\U0|CNT5\(2) $ (((\U0|CNT5\(0) & \U0|CNT5\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT5\(0),
	datab => \U0|CNT5\(1),
	datac => \U0|CNT5\(2),
	datad => \U0|CNT5\(3),
	combout => \U0|CNT5~0_combout\);

-- Location: FF_X33_Y11_N17
\U0|CNT5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U0|CNT5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT5\(2));

-- Location: LCCOMB_X33_Y11_N14
\U0|CNT5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT5~1_combout\ = (!\U0|CNT5\(0) & (((!\U0|CNT5\(1) & !\U0|CNT5\(2))) # (!\U0|CNT5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT5\(1),
	datab => \U0|CNT5\(3),
	datac => \U0|CNT5\(0),
	datad => \U0|CNT5\(2),
	combout => \U0|CNT5~1_combout\);

-- Location: FF_X33_Y11_N15
\U0|CNT5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U0|CNT5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT5\(0));

-- Location: LCCOMB_X33_Y11_N24
\U0|CNT5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT5~3_combout\ = (\U0|CNT5\(0) & (\U0|CNT5\(2) & (!\U0|CNT5\(3) & \U0|CNT5\(1)))) # (!\U0|CNT5\(0) & (!\U0|CNT5\(2) & (\U0|CNT5\(3) & !\U0|CNT5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT5\(0),
	datab => \U0|CNT5\(2),
	datac => \U0|CNT5\(3),
	datad => \U0|CNT5\(1),
	combout => \U0|CNT5~3_combout\);

-- Location: FF_X33_Y11_N25
\U0|CNT5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U0|CNT5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT5\(3));

-- Location: LCCOMB_X33_Y11_N0
\U0|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan11~0_combout\ = (!\U0|CNT5\(0) & !\U0|CNT5\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT5\(0),
	datad => \U0|CNT5\(1),
	combout => \U0|LessThan11~0_combout\);

-- Location: LCCOMB_X33_Y11_N20
\U0|CO5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO5~0_combout\ = (\U0|CNT5\(3) & (\U0|CO5~q\ & ((\U0|CNT5\(2)) # (!\U0|LessThan11~0_combout\)))) # (!\U0|CNT5\(3) & (((\U0|LessThan11~0_combout\) # (!\U0|CNT5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO5~q\,
	datab => \U0|CNT5\(3),
	datac => \U0|LessThan11~0_combout\,
	datad => \U0|CNT5\(2),
	combout => \U0|CO5~0_combout\);

-- Location: LCCOMB_X33_Y11_N30
\U0|CO5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO5~feeder_combout\ = \U0|CO5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CO5~0_combout\,
	combout => \U0|CO5~feeder_combout\);

-- Location: FF_X33_Y11_N31
\U0|CO5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U0|CO5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO5~q\);

-- Location: CLKCTRL_G5
\U0|CO5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO5~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y13_N22
\U0|CNT6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT6~3_combout\ = (\U0|CNT6\(0) & (\U0|CNT6\(1) & (!\U0|CNT6\(3) & \U0|CNT6\(2)))) # (!\U0|CNT6\(0) & (!\U0|CNT6\(1) & (\U0|CNT6\(3) & !\U0|CNT6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT6\(0),
	datab => \U0|CNT6\(1),
	datac => \U0|CNT6\(3),
	datad => \U0|CNT6\(2),
	combout => \U0|CNT6~3_combout\);

-- Location: FF_X33_Y13_N23
\U0|CNT6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO5~clkctrl_outclk\,
	d => \U0|CNT6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT6\(3));

-- Location: LCCOMB_X33_Y13_N20
\U0|CNT6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT6~2_combout\ = (!\U0|CNT6\(3) & (\U0|CNT6\(0) $ (\U0|CNT6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT6\(0),
	datac => \U0|CNT6\(1),
	datad => \U0|CNT6\(3),
	combout => \U0|CNT6~2_combout\);

-- Location: FF_X33_Y13_N21
\U0|CNT6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO5~clkctrl_outclk\,
	d => \U0|CNT6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT6\(1));

-- Location: LCCOMB_X33_Y13_N26
\U0|CNT6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT6~1_combout\ = (!\U0|CNT6\(0) & (((!\U0|CNT6\(1) & !\U0|CNT6\(2))) # (!\U0|CNT6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT6\(1),
	datab => \U0|CNT6\(2),
	datac => \U0|CNT6\(0),
	datad => \U0|CNT6\(3),
	combout => \U0|CNT6~1_combout\);

-- Location: FF_X33_Y13_N27
\U0|CNT6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO5~clkctrl_outclk\,
	d => \U0|CNT6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT6\(0));

-- Location: LCCOMB_X33_Y13_N28
\U0|CNT6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT6~0_combout\ = (!\U0|CNT6\(3) & (\U0|CNT6\(2) $ (((\U0|CNT6\(0) & \U0|CNT6\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT6\(0),
	datab => \U0|CNT6\(1),
	datac => \U0|CNT6\(2),
	datad => \U0|CNT6\(3),
	combout => \U0|CNT6~0_combout\);

-- Location: FF_X33_Y13_N29
\U0|CNT6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO5~clkctrl_outclk\,
	d => \U0|CNT6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT6\(2));

-- Location: LCCOMB_X33_Y13_N18
\U0|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan13~0_combout\ = (!\U0|CNT6\(0) & !\U0|CNT6\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT6\(0),
	datad => \U0|CNT6\(1),
	combout => \U0|LessThan13~0_combout\);

-- Location: LCCOMB_X33_Y13_N24
\U0|CO6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO6~0_combout\ = (\U0|CNT6\(3) & (\U0|CO6~q\ & ((\U0|CNT6\(2)) # (!\U0|LessThan13~0_combout\)))) # (!\U0|CNT6\(3) & (((\U0|LessThan13~0_combout\) # (!\U0|CNT6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO6~q\,
	datab => \U0|CNT6\(2),
	datac => \U0|CNT6\(3),
	datad => \U0|LessThan13~0_combout\,
	combout => \U0|CO6~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\U0|CO6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO6~feeder_combout\ = \U0|CO6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CO6~0_combout\,
	combout => \U0|CO6~feeder_combout\);

-- Location: FF_X33_Y13_N31
\U0|CO6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO5~clkctrl_outclk\,
	d => \U0|CO6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO6~q\);

-- Location: CLKCTRL_G9
\U0|CO6~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CO6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CO6~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y5_N18
\U0|CNT7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT7~2_combout\ = (!\U0|CNT7\(3) & (\U0|CNT7\(0) $ (\U0|CNT7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT7\(0),
	datac => \U0|CNT7\(1),
	datad => \U0|CNT7\(3),
	combout => \U0|CNT7~2_combout\);

-- Location: FF_X29_Y5_N19
\U0|CNT7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO6~clkctrl_outclk\,
	d => \U0|CNT7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT7\(1));

-- Location: LCCOMB_X29_Y5_N4
\U0|CNT7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT7~1_combout\ = (!\U0|CNT7\(0) & (((!\U0|CNT7\(2) & !\U0|CNT7\(1))) # (!\U0|CNT7\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT7\(2),
	datab => \U0|CNT7\(3),
	datac => \U0|CNT7\(0),
	datad => \U0|CNT7\(1),
	combout => \U0|CNT7~1_combout\);

-- Location: FF_X29_Y5_N5
\U0|CNT7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO6~clkctrl_outclk\,
	d => \U0|CNT7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT7\(0));

-- Location: LCCOMB_X29_Y5_N14
\U0|CNT7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT7~0_combout\ = (!\U0|CNT7\(3) & (\U0|CNT7\(2) $ (((\U0|CNT7\(0) & \U0|CNT7\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT7\(0),
	datab => \U0|CNT7\(3),
	datac => \U0|CNT7\(2),
	datad => \U0|CNT7\(1),
	combout => \U0|CNT7~0_combout\);

-- Location: FF_X29_Y5_N15
\U0|CNT7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO6~clkctrl_outclk\,
	d => \U0|CNT7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT7\(2));

-- Location: LCCOMB_X29_Y5_N24
\U0|CNT7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT7~3_combout\ = (\U0|CNT7\(2) & (\U0|CNT7\(0) & (!\U0|CNT7\(3) & \U0|CNT7\(1)))) # (!\U0|CNT7\(2) & (!\U0|CNT7\(0) & (\U0|CNT7\(3) & !\U0|CNT7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT7\(2),
	datab => \U0|CNT7\(0),
	datac => \U0|CNT7\(3),
	datad => \U0|CNT7\(1),
	combout => \U0|CNT7~3_combout\);

-- Location: FF_X29_Y5_N25
\U0|CNT7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO6~clkctrl_outclk\,
	d => \U0|CNT7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT7\(3));

-- Location: LCCOMB_X29_Y5_N10
\U0|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|LessThan15~0_combout\ = (!\U0|CNT7\(0) & !\U0|CNT7\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|CNT7\(0),
	datad => \U0|CNT7\(1),
	combout => \U0|LessThan15~0_combout\);

-- Location: LCCOMB_X29_Y5_N28
\U0|CO7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO7~0_combout\ = (\U0|CNT7\(3) & (\U0|CO7~q\ & ((\U0|CNT7\(2)) # (!\U0|LessThan15~0_combout\)))) # (!\U0|CNT7\(3) & (((\U0|LessThan15~0_combout\) # (!\U0|CNT7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CO7~q\,
	datab => \U0|CNT7\(3),
	datac => \U0|CNT7\(2),
	datad => \U0|LessThan15~0_combout\,
	combout => \U0|CO7~0_combout\);

-- Location: LCCOMB_X29_Y5_N20
\U0|CO7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CO7~feeder_combout\ = \U0|CO7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|CO7~0_combout\,
	combout => \U0|CO7~feeder_combout\);

-- Location: FF_X29_Y5_N21
\U0|CO7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO6~clkctrl_outclk\,
	d => \U0|CO7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CO7~q\);

-- Location: LCCOMB_X28_Y8_N14
\U1|Div2CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Div2CLK~0_combout\ = !\U1|Div2CLK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Div2CLK~q\,
	combout => \U1|Div2CLK~0_combout\);

-- Location: LCCOMB_X28_Y8_N12
\U1|Div2CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Div2CLK~feeder_combout\ = \U1|Div2CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Div2CLK~0_combout\,
	combout => \U1|Div2CLK~feeder_combout\);

-- Location: FF_X28_Y8_N13
\U1|Div2CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO7~q\,
	d => \U1|Div2CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Div2CLK~q\);

-- Location: CLKCTRL_G1
\U1|Div2CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Div2CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Div2CLK~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y5_N16
\U3|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI~1_combout\ = (!\U3|CQI\(3) & (\U3|CQI\(0) $ (\U3|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|CQI\(0),
	datac => \U3|CQI\(3),
	datad => \U3|CQI\(1),
	combout => \U3|CQI~1_combout\);

-- Location: LCCOMB_X29_Y5_N6
\U3|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI[1]~feeder_combout\ = \U3|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|CQI~1_combout\,
	combout => \U3|CQI[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y8_N30
\U1|CLR_CNT\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|CLR_CNT~combout\ = (!\U1|Div2CLK~q\ & !\U0|CO7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Div2CLK~q\,
	datad => \U0|CO7~q\,
	combout => \U1|CLR_CNT~combout\);

-- Location: FF_X29_Y5_N7
\U3|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~q\,
	d => \U3|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CQI\(1));

-- Location: LCCOMB_X29_Y5_N30
\U3|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI~2_combout\ = (!\U3|CQI\(3) & (\U3|CQI\(2) $ (((\U3|CQI\(0) & \U3|CQI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(3),
	datab => \U3|CQI\(0),
	datac => \U3|CQI\(2),
	datad => \U3|CQI\(1),
	combout => \U3|CQI~2_combout\);

-- Location: LCCOMB_X29_Y5_N22
\U3|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI[2]~feeder_combout\ = \U3|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI~2_combout\,
	combout => \U3|CQI[2]~feeder_combout\);

-- Location: FF_X29_Y5_N23
\U3|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~q\,
	d => \U3|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CQI\(2));

-- Location: LCCOMB_X29_Y5_N12
\U3|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI~3_combout\ = (\U3|CQI\(3) & (!\U3|CQI\(0) & (!\U3|CQI\(2) & !\U3|CQI\(1)))) # (!\U3|CQI\(3) & (\U3|CQI\(0) & (\U3|CQI\(2) & \U3|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(3),
	datab => \U3|CQI\(0),
	datac => \U3|CQI\(2),
	datad => \U3|CQI\(1),
	combout => \U3|CQI~3_combout\);

-- Location: LCCOMB_X29_Y5_N26
\U3|CQI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI[3]~feeder_combout\ = \U3|CQI~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI~3_combout\,
	combout => \U3|CQI[3]~feeder_combout\);

-- Location: FF_X29_Y5_N27
\U3|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~q\,
	d => \U3|CQI[3]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CQI\(3));

-- Location: LCCOMB_X30_Y5_N30
\U3|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI~0_combout\ = (!\U3|CQI\(0) & (((!\U3|CQI\(1) & !\U3|CQI\(2))) # (!\U3|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(3),
	datab => \U3|CQI\(0),
	datac => \U3|CQI\(1),
	datad => \U3|CQI\(2),
	combout => \U3|CQI~0_combout\);

-- Location: LCCOMB_X30_Y5_N28
\U3|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CQI[0]~feeder_combout\ = \U3|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI~0_combout\,
	combout => \U3|CQI[0]~feeder_combout\);

-- Location: FF_X30_Y5_N29
\U3|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO2~clkctrl_outclk\,
	d => \U3|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CQI\(0));

-- Location: LCCOMB_X30_Y5_N18
\U2|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[0]~feeder_combout\ = \U3|CQI\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(0),
	combout => \U2|DOUT[0]~feeder_combout\);

-- Location: FF_X30_Y5_N19
\U2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(0));

-- Location: LCCOMB_X31_Y8_N28
\U9|CURSOR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|CURSOR[0]~0_combout\ = !\U9|CURSOR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|CURSOR\(0),
	combout => \U9|CURSOR[0]~0_combout\);

-- Location: FF_X31_Y8_N29
\U9|CURSOR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|CURSOR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|CURSOR\(0));

-- Location: LCCOMB_X29_Y5_N8
\U3|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal0~combout\ = LCELL((!\U3|CQI\(1) & (!\U3|CQI\(2) & (\U3|CQI\(3) & \U3|CQI\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(1),
	datab => \U3|CQI\(2),
	datac => \U3|CQI\(3),
	datad => \U3|CQI\(0),
	combout => \U3|Equal0~combout\);

-- Location: LCCOMB_X29_Y7_N18
\U4|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI~1_combout\ = (!\U4|CQI\(3) & (\U4|CQI\(0) $ (\U4|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(0),
	datac => \U4|CQI\(3),
	datad => \U4|CQI\(1),
	combout => \U4|CQI~1_combout\);

-- Location: LCCOMB_X29_Y7_N28
\U4|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI[1]~feeder_combout\ = \U4|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI~1_combout\,
	combout => \U4|CQI[1]~feeder_combout\);

-- Location: FF_X29_Y7_N29
\U4|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~combout\,
	d => \U4|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CQI\(1));

-- Location: LCCOMB_X29_Y7_N16
\U4|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI~2_combout\ = (!\U4|CQI\(3) & (\U4|CQI\(2) $ (((\U4|CQI\(0) & \U4|CQI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(2),
	datab => \U4|CQI\(0),
	datac => \U4|CQI\(3),
	datad => \U4|CQI\(1),
	combout => \U4|CQI~2_combout\);

-- Location: LCCOMB_X29_Y7_N26
\U4|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI[2]~feeder_combout\ = \U4|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI~2_combout\,
	combout => \U4|CQI[2]~feeder_combout\);

-- Location: FF_X29_Y7_N27
\U4|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~combout\,
	d => \U4|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CQI\(2));

-- Location: LCCOMB_X29_Y7_N12
\U4|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI~3_combout\ = (\U4|CQI\(0) & (!\U4|CQI\(3) & (\U4|CQI\(2) & \U4|CQI\(1)))) # (!\U4|CQI\(0) & (\U4|CQI\(3) & (!\U4|CQI\(2) & !\U4|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(0),
	datab => \U4|CQI\(3),
	datac => \U4|CQI\(2),
	datad => \U4|CQI\(1),
	combout => \U4|CQI~3_combout\);

-- Location: LCCOMB_X29_Y7_N30
\U4|CQI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI[3]~feeder_combout\ = \U4|CQI~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|CQI~3_combout\,
	combout => \U4|CQI[3]~feeder_combout\);

-- Location: FF_X29_Y7_N31
\U4|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~combout\,
	d => \U4|CQI[3]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CQI\(3));

-- Location: LCCOMB_X29_Y7_N14
\U4|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI~0_combout\ = (!\U4|CQI\(0) & (((!\U4|CQI\(1) & !\U4|CQI\(2))) # (!\U4|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(3),
	datab => \U4|CQI\(1),
	datac => \U4|CQI\(0),
	datad => \U4|CQI\(2),
	combout => \U4|CQI~0_combout\);

-- Location: LCCOMB_X29_Y7_N4
\U4|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CQI[0]~feeder_combout\ = \U4|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CQI~0_combout\,
	combout => \U4|CQI[0]~feeder_combout\);

-- Location: FF_X29_Y7_N5
\U4|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~combout\,
	d => \U4|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CQI\(0));

-- Location: LCCOMB_X31_Y8_N20
\U2|DOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[4]~feeder_combout\ = \U4|CQI\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|CQI\(0),
	combout => \U2|DOUT[4]~feeder_combout\);

-- Location: FF_X31_Y8_N21
\U2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(4));

-- Location: LCCOMB_X31_Y8_N26
\U9|NUM[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|NUM[0]~0_combout\ = (\U9|CURSOR\(0) & (\U2|DOUT\(0))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(0),
	datab => \U9|CURSOR\(0),
	datad => \U2|DOUT\(4),
	combout => \U9|NUM[0]~0_combout\);

-- Location: LCCOMB_X29_Y7_N8
\U4|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal0~combout\ = LCELL((!\U4|CQI\(2) & (\U4|CQI\(0) & (\U4|CQI\(3) & !\U4|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(2),
	datab => \U4|CQI\(0),
	datac => \U4|CQI\(3),
	datad => \U4|CQI\(1),
	combout => \U4|Equal0~combout\);

-- Location: LCCOMB_X28_Y7_N12
\U5|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI~2_combout\ = (!\U5|CQI\(3) & (\U5|CQI\(2) $ (((\U5|CQI\(0) & \U5|CQI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CQI\(0),
	datab => \U5|CQI\(2),
	datac => \U5|CQI\(3),
	datad => \U5|CQI\(1),
	combout => \U5|CQI~2_combout\);

-- Location: LCCOMB_X28_Y7_N0
\U5|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI[2]~feeder_combout\ = \U5|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CQI~2_combout\,
	combout => \U5|CQI[2]~feeder_combout\);

-- Location: FF_X28_Y7_N1
\U5|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|Equal0~combout\,
	d => \U5|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CQI\(2));

-- Location: LCCOMB_X28_Y7_N14
\U5|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI~3_combout\ = (\U5|CQI\(0) & (\U5|CQI\(2) & (!\U5|CQI\(3) & \U5|CQI\(1)))) # (!\U5|CQI\(0) & (!\U5|CQI\(2) & (\U5|CQI\(3) & !\U5|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CQI\(0),
	datab => \U5|CQI\(2),
	datac => \U5|CQI\(3),
	datad => \U5|CQI\(1),
	combout => \U5|CQI~3_combout\);

-- Location: LCCOMB_X28_Y7_N26
\U5|CQI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI[3]~feeder_combout\ = \U5|CQI~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CQI~3_combout\,
	combout => \U5|CQI[3]~feeder_combout\);

-- Location: FF_X28_Y7_N27
\U5|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|Equal0~combout\,
	d => \U5|CQI[3]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CQI\(3));

-- Location: LCCOMB_X28_Y7_N22
\U5|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI~1_combout\ = (!\U5|CQI\(3) & (\U5|CQI\(0) $ (\U5|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|CQI\(0),
	datac => \U5|CQI\(3),
	datad => \U5|CQI\(1),
	combout => \U5|CQI~1_combout\);

-- Location: LCCOMB_X28_Y7_N28
\U5|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI[1]~feeder_combout\ = \U5|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CQI~1_combout\,
	combout => \U5|CQI[1]~feeder_combout\);

-- Location: FF_X28_Y7_N29
\U5|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|Equal0~combout\,
	d => \U5|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CQI\(1));

-- Location: LCCOMB_X28_Y7_N30
\U5|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI~0_combout\ = (!\U5|CQI\(0) & (((!\U5|CQI\(1) & !\U5|CQI\(2))) # (!\U5|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CQI\(0),
	datab => \U5|CQI\(1),
	datac => \U5|CQI\(3),
	datad => \U5|CQI\(2),
	combout => \U5|CQI~0_combout\);

-- Location: LCCOMB_X28_Y7_N16
\U5|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CQI[0]~feeder_combout\ = \U5|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|CQI~0_combout\,
	combout => \U5|CQI[0]~feeder_combout\);

-- Location: FF_X28_Y7_N17
\U5|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|Equal0~combout\,
	d => \U5|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CQI\(0));

-- Location: FF_X30_Y8_N23
\U2|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U5|CQI\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(8));

-- Location: LCCOMB_X30_Y7_N0
\U9|COUNTER~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|COUNTER~1_combout\ = (\U9|COUNTER\(2) & ((!\U9|CURSOR\(0)))) # (!\U9|COUNTER\(2) & (\U9|COUNTER\(1) & \U9|CURSOR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|COUNTER\(1),
	datac => \U9|COUNTER\(2),
	datad => \U9|CURSOR\(0),
	combout => \U9|COUNTER~1_combout\);

-- Location: FF_X30_Y7_N1
\U9|COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|COUNTER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|COUNTER\(2));

-- Location: LCCOMB_X31_Y8_N10
\U9|COUNTER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|COUNTER~0_combout\ = (\U9|COUNTER\(1) & ((!\U9|CURSOR\(0)))) # (!\U9|COUNTER\(1) & (!\U9|COUNTER\(2) & \U9|CURSOR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|COUNTER\(2),
	datac => \U9|COUNTER\(1),
	datad => \U9|CURSOR\(0),
	combout => \U9|COUNTER~0_combout\);

-- Location: FF_X31_Y8_N11
\U9|COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|COUNTER\(1));

-- Location: LCCOMB_X29_Y8_N20
\U5|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Equal0~combout\ = LCELL((\U5|CQI\(0) & (\U5|CQI\(3) & (!\U5|CQI\(2) & !\U5|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CQI\(0),
	datab => \U5|CQI\(3),
	datac => \U5|CQI\(2),
	datad => \U5|CQI\(1),
	combout => \U5|Equal0~combout\);

-- Location: LCCOMB_X29_Y8_N12
\U6|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI~1_combout\ = (!\U6|CQI\(3) & (\U6|CQI\(0) $ (\U6|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|CQI\(0),
	datac => \U6|CQI\(3),
	datad => \U6|CQI\(1),
	combout => \U6|CQI~1_combout\);

-- Location: LCCOMB_X29_Y8_N6
\U6|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI[1]~feeder_combout\ = \U6|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|CQI~1_combout\,
	combout => \U6|CQI[1]~feeder_combout\);

-- Location: FF_X29_Y8_N7
\U6|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|Equal0~combout\,
	d => \U6|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|CQI\(1));

-- Location: LCCOMB_X29_Y8_N28
\U6|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI~2_combout\ = (!\U6|CQI\(3) & (\U6|CQI\(2) $ (((\U6|CQI\(0) & \U6|CQI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|CQI\(0),
	datab => \U6|CQI\(3),
	datac => \U6|CQI\(2),
	datad => \U6|CQI\(1),
	combout => \U6|CQI~2_combout\);

-- Location: LCCOMB_X29_Y8_N4
\U6|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI[2]~feeder_combout\ = \U6|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|CQI~2_combout\,
	combout => \U6|CQI[2]~feeder_combout\);

-- Location: FF_X29_Y8_N5
\U6|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|Equal0~combout\,
	d => \U6|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|CQI\(2));

-- Location: LCCOMB_X29_Y8_N18
\U6|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI~3_combout\ = (\U6|CQI\(0) & (\U6|CQI\(2) & (!\U6|CQI\(3) & \U6|CQI\(1)))) # (!\U6|CQI\(0) & (!\U6|CQI\(2) & (\U6|CQI\(3) & !\U6|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|CQI\(0),
	datab => \U6|CQI\(2),
	datac => \U6|CQI\(3),
	datad => \U6|CQI\(1),
	combout => \U6|CQI~3_combout\);

-- Location: FF_X29_Y8_N9
\U6|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|Equal0~combout\,
	asdata => \U6|CQI~3_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	sload => VCC,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|CQI\(3));

-- Location: LCCOMB_X29_Y8_N22
\U6|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI~0_combout\ = (!\U6|CQI\(0) & (((!\U6|CQI\(2) & !\U6|CQI\(1))) # (!\U6|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|CQI\(0),
	datab => \U6|CQI\(3),
	datac => \U6|CQI\(2),
	datad => \U6|CQI\(1),
	combout => \U6|CQI~0_combout\);

-- Location: LCCOMB_X29_Y8_N16
\U6|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|CQI[0]~feeder_combout\ = \U6|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|CQI~0_combout\,
	combout => \U6|CQI[0]~feeder_combout\);

-- Location: FF_X29_Y8_N17
\U6|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|Equal0~combout\,
	d => \U6|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|CQI\(0));

-- Location: FF_X30_Y8_N7
\U2|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U6|CQI\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(12));

-- Location: LCCOMB_X29_Y8_N2
\U6|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Equal0~combout\ = LCELL((!\U6|CQI\(2) & (\U6|CQI\(0) & (\U6|CQI\(3) & !\U6|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|CQI\(2),
	datab => \U6|CQI\(0),
	datac => \U6|CQI\(3),
	datad => \U6|CQI\(1),
	combout => \U6|Equal0~combout\);

-- Location: LCCOMB_X30_Y8_N22
\U7|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI~1_combout\ = (!\U7|CQI\(3) & (\U7|CQI\(0) $ (\U7|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|CQI\(3),
	datab => \U7|CQI\(0),
	datad => \U7|CQI\(1),
	combout => \U7|CQI~1_combout\);

-- Location: LCCOMB_X30_Y8_N8
\U7|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI[1]~feeder_combout\ = \U7|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U7|CQI~1_combout\,
	combout => \U7|CQI[1]~feeder_combout\);

-- Location: FF_X30_Y8_N9
\U7|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|Equal0~combout\,
	d => \U7|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|CQI\(1));

-- Location: LCCOMB_X30_Y8_N18
\U7|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI~2_combout\ = (!\U7|CQI\(3) & (\U7|CQI\(2) $ (((\U7|CQI\(0) & \U7|CQI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|CQI\(3),
	datab => \U7|CQI\(0),
	datac => \U7|CQI\(1),
	datad => \U7|CQI\(2),
	combout => \U7|CQI~2_combout\);

-- Location: LCCOMB_X30_Y8_N12
\U7|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI[2]~feeder_combout\ = \U7|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U7|CQI~2_combout\,
	combout => \U7|CQI[2]~feeder_combout\);

-- Location: FF_X30_Y8_N13
\U7|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|Equal0~combout\,
	d => \U7|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|CQI\(2));

-- Location: LCCOMB_X30_Y8_N14
\U7|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI~3_combout\ = (\U7|CQI\(3) & (!\U7|CQI\(0) & (!\U7|CQI\(1) & !\U7|CQI\(2)))) # (!\U7|CQI\(3) & (\U7|CQI\(0) & (\U7|CQI\(1) & \U7|CQI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|CQI\(3),
	datab => \U7|CQI\(0),
	datac => \U7|CQI\(1),
	datad => \U7|CQI\(2),
	combout => \U7|CQI~3_combout\);

-- Location: LCCOMB_X30_Y8_N30
\U7|CQI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI[3]~feeder_combout\ = \U7|CQI~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U7|CQI~3_combout\,
	combout => \U7|CQI[3]~feeder_combout\);

-- Location: FF_X30_Y8_N31
\U7|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|Equal0~combout\,
	d => \U7|CQI[3]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|CQI\(3));

-- Location: LCCOMB_X30_Y8_N20
\U7|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI~0_combout\ = (!\U7|CQI\(0) & (((!\U7|CQI\(1) & !\U7|CQI\(2))) # (!\U7|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|CQI\(3),
	datab => \U7|CQI\(0),
	datac => \U7|CQI\(1),
	datad => \U7|CQI\(2),
	combout => \U7|CQI~0_combout\);

-- Location: LCCOMB_X30_Y8_N26
\U7|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|CQI[0]~feeder_combout\ = \U7|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U7|CQI~0_combout\,
	combout => \U7|CQI[0]~feeder_combout\);

-- Location: FF_X30_Y8_N27
\U7|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|Equal0~combout\,
	d => \U7|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|CQI\(0));

-- Location: FF_X30_Y8_N1
\U2|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U7|CQI\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(16));

-- Location: LCCOMB_X31_Y8_N24
\U7|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Equal0~combout\ = LCELL((!\U7|CQI\(2) & (\U7|CQI\(3) & (\U7|CQI\(0) & !\U7|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|CQI\(2),
	datab => \U7|CQI\(3),
	datac => \U7|CQI\(0),
	datad => \U7|CQI\(1),
	combout => \U7|Equal0~combout\);

-- Location: CLKCTRL_G8
\U7|Equal0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U7|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U7|Equal0~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y8_N16
\U8|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI~1_combout\ = (!\U8|CQI\(3) & (\U8|CQI\(1) $ (\U8|CQI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|CQI\(3),
	datac => \U8|CQI\(1),
	datad => \U8|CQI\(0),
	combout => \U8|CQI~1_combout\);

-- Location: LCCOMB_X28_Y8_N4
\U8|CQI[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI[1]~feeder_combout\ = \U8|CQI~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI~1_combout\,
	combout => \U8|CQI[1]~feeder_combout\);

-- Location: FF_X28_Y8_N5
\U8|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U7|Equal0~clkctrl_outclk\,
	d => \U8|CQI[1]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|CQI\(1));

-- Location: LCCOMB_X28_Y8_N20
\U8|CQI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI~2_combout\ = (!\U8|CQI\(3) & (\U8|CQI\(2) $ (((\U8|CQI\(1) & \U8|CQI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|CQI\(3),
	datab => \U8|CQI\(2),
	datac => \U8|CQI\(1),
	datad => \U8|CQI\(0),
	combout => \U8|CQI~2_combout\);

-- Location: LCCOMB_X28_Y8_N24
\U8|CQI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI[2]~feeder_combout\ = \U8|CQI~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI~2_combout\,
	combout => \U8|CQI[2]~feeder_combout\);

-- Location: FF_X28_Y8_N25
\U8|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U7|Equal0~clkctrl_outclk\,
	d => \U8|CQI[2]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|CQI\(2));

-- Location: LCCOMB_X28_Y8_N0
\U8|CQI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI~3_combout\ = (\U8|CQI\(3) & (!\U8|CQI\(2) & (!\U8|CQI\(1) & !\U8|CQI\(0)))) # (!\U8|CQI\(3) & (\U8|CQI\(2) & (\U8|CQI\(1) & \U8|CQI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|CQI\(3),
	datab => \U8|CQI\(2),
	datac => \U8|CQI\(1),
	datad => \U8|CQI\(0),
	combout => \U8|CQI~3_combout\);

-- Location: LCCOMB_X28_Y8_N26
\U8|CQI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI[3]~feeder_combout\ = \U8|CQI~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI~3_combout\,
	combout => \U8|CQI[3]~feeder_combout\);

-- Location: FF_X28_Y8_N27
\U8|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U7|Equal0~clkctrl_outclk\,
	d => \U8|CQI[3]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|CQI\(3));

-- Location: LCCOMB_X28_Y8_N18
\U8|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI~0_combout\ = (!\U8|CQI\(0) & (((!\U8|CQI\(2) & !\U8|CQI\(1))) # (!\U8|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|CQI\(3),
	datab => \U8|CQI\(2),
	datac => \U8|CQI\(1),
	datad => \U8|CQI\(0),
	combout => \U8|CQI~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\U8|CQI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|CQI[0]~feeder_combout\ = \U8|CQI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI~0_combout\,
	combout => \U8|CQI[0]~feeder_combout\);

-- Location: FF_X28_Y8_N3
\U8|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U7|Equal0~clkctrl_outclk\,
	d => \U8|CQI[0]~feeder_combout\,
	clrn => \U1|ALT_INV_CLR_CNT~combout\,
	ena => \U0|CO7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|CQI\(0));

-- Location: LCCOMB_X29_Y8_N14
\U2|DOUT[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[20]~feeder_combout\ = \U8|CQI\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI\(0),
	combout => \U2|DOUT[20]~feeder_combout\);

-- Location: FF_X29_Y8_N15
\U2|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(20));

-- Location: LCCOMB_X30_Y8_N0
\U9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux3~0_combout\ = (\U9|COUNTER\(1) & (!\U9|CURSOR\(0))) # (!\U9|COUNTER\(1) & ((\U9|CURSOR\(0) & (\U2|DOUT\(16))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|COUNTER\(1),
	datab => \U9|CURSOR\(0),
	datac => \U2|DOUT\(16),
	datad => \U2|DOUT\(20),
	combout => \U9|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y8_N6
\U9|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux3~1_combout\ = (\U9|COUNTER\(1) & ((\U9|Mux3~0_combout\ & ((\U2|DOUT\(12)))) # (!\U9|Mux3~0_combout\ & (\U2|DOUT\(8))))) # (!\U9|COUNTER\(1) & (((\U9|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(8),
	datab => \U9|COUNTER\(1),
	datac => \U2|DOUT\(12),
	datad => \U9|Mux3~0_combout\,
	combout => \U9|Mux3~1_combout\);

-- Location: FF_X31_Y8_N27
\U9|NUM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|NUM[0]~0_combout\,
	asdata => \U9|Mux3~1_combout\,
	sload => \U9|ALT_INV_COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|NUM\(0));

-- Location: LCCOMB_X29_Y7_N20
\U2|DOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[5]~feeder_combout\ = \U4|CQI\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|CQI\(1),
	combout => \U2|DOUT[5]~feeder_combout\);

-- Location: FF_X29_Y7_N21
\U2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(5));

-- Location: LCCOMB_X30_Y5_N14
\U2|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[1]~feeder_combout\ = \U3|CQI\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|CQI\(1),
	combout => \U2|DOUT[1]~feeder_combout\);

-- Location: FF_X30_Y5_N15
\U2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(1));

-- Location: LCCOMB_X31_Y8_N22
\U9|NUM[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|NUM[1]~1_combout\ = (\U9|CURSOR\(0) & ((\U2|DOUT\(1)))) # (!\U9|CURSOR\(0) & (\U2|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|CURSOR\(0),
	datab => \U2|DOUT\(5),
	datad => \U2|DOUT\(1),
	combout => \U9|NUM[1]~1_combout\);

-- Location: LCCOMB_X29_Y8_N10
\U2|DOUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[9]~feeder_combout\ = \U5|CQI\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CQI\(1),
	combout => \U2|DOUT[9]~feeder_combout\);

-- Location: FF_X29_Y8_N11
\U2|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(9));

-- Location: FF_X30_Y8_N5
\U2|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U6|CQI\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(13));

-- Location: FF_X30_Y8_N3
\U2|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U7|CQI\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(17));

-- Location: LCCOMB_X30_Y8_N28
\U2|DOUT[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[21]~feeder_combout\ = \U8|CQI\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI\(1),
	combout => \U2|DOUT[21]~feeder_combout\);

-- Location: FF_X30_Y8_N29
\U2|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(21));

-- Location: LCCOMB_X30_Y8_N2
\U9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux2~0_combout\ = (\U9|COUNTER\(1) & (!\U9|CURSOR\(0))) # (!\U9|COUNTER\(1) & ((\U9|CURSOR\(0) & (\U2|DOUT\(17))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|COUNTER\(1),
	datab => \U9|CURSOR\(0),
	datac => \U2|DOUT\(17),
	datad => \U2|DOUT\(21),
	combout => \U9|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y8_N4
\U9|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux2~1_combout\ = (\U9|COUNTER\(1) & ((\U9|Mux2~0_combout\ & ((\U2|DOUT\(13)))) # (!\U9|Mux2~0_combout\ & (\U2|DOUT\(9))))) # (!\U9|COUNTER\(1) & (((\U9|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(9),
	datab => \U9|COUNTER\(1),
	datac => \U2|DOUT\(13),
	datad => \U9|Mux2~0_combout\,
	combout => \U9|Mux2~1_combout\);

-- Location: FF_X31_Y8_N23
\U9|NUM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|NUM[1]~1_combout\,
	asdata => \U9|Mux2~1_combout\,
	sload => \U9|ALT_INV_COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|NUM\(1));

-- Location: LCCOMB_X30_Y5_N26
\U2|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[3]~feeder_combout\ = \U3|CQI\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CQI\(3),
	combout => \U2|DOUT[3]~feeder_combout\);

-- Location: FF_X30_Y5_N27
\U2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(3));

-- Location: LCCOMB_X29_Y7_N22
\U2|DOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[7]~feeder_combout\ = \U4|CQI\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CQI\(3),
	combout => \U2|DOUT[7]~feeder_combout\);

-- Location: FF_X29_Y7_N23
\U2|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(7));

-- Location: LCCOMB_X31_Y8_N30
\U9|NUM[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|NUM[3]~3_combout\ = (\U9|CURSOR\(0) & (\U2|DOUT\(3))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(3),
	datab => \U9|CURSOR\(0),
	datad => \U2|DOUT\(7),
	combout => \U9|NUM[3]~3_combout\);

-- Location: LCCOMB_X29_Y8_N0
\U2|DOUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[11]~feeder_combout\ = \U5|CQI\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|CQI\(3),
	combout => \U2|DOUT[11]~feeder_combout\);

-- Location: FF_X29_Y8_N1
\U2|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(11));

-- Location: FF_X30_Y8_N17
\U2|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U6|CQI\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(15));

-- Location: FF_X30_Y8_N25
\U2|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U7|CQI\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(19));

-- Location: LCCOMB_X30_Y8_N10
\U2|DOUT[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[23]~feeder_combout\ = \U8|CQI\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U8|CQI\(3),
	combout => \U2|DOUT[23]~feeder_combout\);

-- Location: FF_X30_Y8_N11
\U2|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(23));

-- Location: LCCOMB_X30_Y8_N24
\U9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~0_combout\ = (\U9|COUNTER\(1) & (!\U9|CURSOR\(0))) # (!\U9|COUNTER\(1) & ((\U9|CURSOR\(0) & (\U2|DOUT\(19))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|COUNTER\(1),
	datab => \U9|CURSOR\(0),
	datac => \U2|DOUT\(19),
	datad => \U2|DOUT\(23),
	combout => \U9|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y8_N16
\U9|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~1_combout\ = (\U9|COUNTER\(1) & ((\U9|Mux0~0_combout\ & ((\U2|DOUT\(15)))) # (!\U9|Mux0~0_combout\ & (\U2|DOUT\(11))))) # (!\U9|COUNTER\(1) & (((\U9|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(11),
	datab => \U9|COUNTER\(1),
	datac => \U2|DOUT\(15),
	datad => \U9|Mux0~0_combout\,
	combout => \U9|Mux0~1_combout\);

-- Location: FF_X31_Y8_N31
\U9|NUM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|NUM[3]~3_combout\,
	asdata => \U9|Mux0~1_combout\,
	sload => \U9|ALT_INV_COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|NUM\(3));

-- Location: LCCOMB_X30_Y5_N24
\U2|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[2]~feeder_combout\ = \U3|CQI\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|CQI\(2),
	combout => \U2|DOUT[2]~feeder_combout\);

-- Location: FF_X30_Y5_N25
\U2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(2));

-- Location: LCCOMB_X29_Y7_N24
\U2|DOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[6]~feeder_combout\ = \U4|CQI\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|CQI\(2),
	combout => \U2|DOUT[6]~feeder_combout\);

-- Location: FF_X29_Y7_N25
\U2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(6));

-- Location: LCCOMB_X30_Y7_N12
\U9|NUM[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|NUM[2]~2_combout\ = (\U9|CURSOR\(0) & (\U2|DOUT\(2))) # (!\U9|CURSOR\(0) & ((\U2|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(2),
	datab => \U2|DOUT\(6),
	datad => \U9|CURSOR\(0),
	combout => \U9|NUM[2]~2_combout\);

-- Location: FF_X29_Y8_N21
\U2|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U5|CQI\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(10));

-- Location: FF_X29_Y8_N31
\U2|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U6|CQI\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(14));

-- Location: LCCOMB_X29_Y8_N26
\U2|DOUT[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DOUT[22]~feeder_combout\ = \U8|CQI\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U8|CQI\(2),
	combout => \U2|DOUT[22]~feeder_combout\);

-- Location: FF_X29_Y8_N27
\U2|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	d => \U2|DOUT[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(22));

-- Location: FF_X29_Y8_N25
\U2|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_Div2CLK~clkctrl_outclk\,
	asdata => \U7|CQI\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DOUT\(18));

-- Location: LCCOMB_X29_Y8_N24
\U9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux1~0_combout\ = (\U9|COUNTER\(1) & (((!\U9|CURSOR\(0))))) # (!\U9|COUNTER\(1) & ((\U9|CURSOR\(0) & ((\U2|DOUT\(18)))) # (!\U9|CURSOR\(0) & (\U2|DOUT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(22),
	datab => \U9|COUNTER\(1),
	datac => \U2|DOUT\(18),
	datad => \U9|CURSOR\(0),
	combout => \U9|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y8_N30
\U9|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux1~1_combout\ = (\U9|COUNTER\(1) & ((\U9|Mux1~0_combout\ & ((\U2|DOUT\(14)))) # (!\U9|Mux1~0_combout\ & (\U2|DOUT\(10))))) # (!\U9|COUNTER\(1) & (((\U9|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DOUT\(10),
	datab => \U9|COUNTER\(1),
	datac => \U2|DOUT\(14),
	datad => \U9|Mux1~0_combout\,
	combout => \U9|Mux1~1_combout\);

-- Location: FF_X30_Y7_N13
\U9|NUM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|NUM[2]~2_combout\,
	asdata => \U9|Mux1~1_combout\,
	sload => \U9|ALT_INV_COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|NUM\(2));

-- Location: LCCOMB_X30_Y7_N2
\U11|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux7~0_combout\ = (\U9|NUM\(1) & (((\U9|NUM\(3))))) # (!\U9|NUM\(1) & (\U9|NUM\(2) $ (((\U9|NUM\(0) & !\U9|NUM\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y7_N16
\U11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux6~0_combout\ = (\U9|NUM\(3) & (((\U9|NUM\(1)) # (\U9|NUM\(2))))) # (!\U9|NUM\(3) & (\U9|NUM\(2) & (\U9|NUM\(0) $ (\U9|NUM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y7_N14
\U11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux5~0_combout\ = (\U9|NUM\(2) & (((\U9|NUM\(3))))) # (!\U9|NUM\(2) & (\U9|NUM\(1) & ((\U9|NUM\(3)) # (!\U9|NUM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y7_N8
\U11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux4~0_combout\ = (\U9|NUM\(1) & ((\U9|NUM\(3)) # ((\U9|NUM\(0) & \U9|NUM\(2))))) # (!\U9|NUM\(1) & (\U9|NUM\(2) $ (((\U9|NUM\(0) & !\U9|NUM\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y7_N10
\U11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux3~0_combout\ = (\U9|NUM\(0)) # ((\U9|NUM\(1) & (\U9|NUM\(3))) # (!\U9|NUM\(1) & ((\U9|NUM\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y7_N24
\U11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux2~0_combout\ = (\U9|NUM\(0) & ((\U9|NUM\(1)) # (\U9|NUM\(3) $ (!\U9|NUM\(2))))) # (!\U9|NUM\(0) & ((\U9|NUM\(2) & ((\U9|NUM\(3)))) # (!\U9|NUM\(2) & (\U9|NUM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y7_N22
\U11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|Mux1~0_combout\ = (\U9|NUM\(1) & (!\U9|NUM\(3) & ((!\U9|NUM\(2)) # (!\U9|NUM\(0))))) # (!\U9|NUM\(1) & ((\U9|NUM\(3) $ (\U9|NUM\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|NUM\(0),
	datab => \U9|NUM\(1),
	datac => \U9|NUM\(3),
	datad => \U9|NUM\(2),
	combout => \U11|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y7_N30
\U9|CURSOR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|CURSOR[2]~feeder_combout\ = \U9|COUNTER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U9|COUNTER\(2),
	combout => \U9|CURSOR[2]~feeder_combout\);

-- Location: FF_X30_Y7_N31
\U9|CURSOR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|CURSOR[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|CURSOR\(2));

-- Location: LCCOMB_X30_Y7_N28
\U9|CURSOR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|CURSOR[1]~feeder_combout\ = \U9|COUNTER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U9|COUNTER\(1),
	combout => \U9|CURSOR[1]~feeder_combout\);

-- Location: FF_X30_Y7_N29
\U9|CURSOR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CO4~clkctrl_outclk\,
	d => \U9|CURSOR[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|CURSOR\(1));

-- Location: LCCOMB_X30_Y6_N16
\U10|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~0_combout\ = (\U9|CURSOR\(0)) # ((\U9|CURSOR\(1)) # (!\U9|CURSOR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~0_combout\);

-- Location: LCCOMB_X30_Y6_N6
\U10|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~1_combout\ = ((\U9|CURSOR\(1)) # (!\U9|CURSOR\(2))) # (!\U9|CURSOR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~1_combout\);

-- Location: LCCOMB_X30_Y6_N12
\U10|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~2_combout\ = (\U9|CURSOR\(0)) # ((\U9|CURSOR\(2)) # (!\U9|CURSOR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~2_combout\);

-- Location: LCCOMB_X30_Y6_N18
\U10|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~3_combout\ = ((\U9|CURSOR\(2)) # (!\U9|CURSOR\(1))) # (!\U9|CURSOR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~3_combout\);

-- Location: LCCOMB_X30_Y6_N4
\U10|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~4_combout\ = (\U9|CURSOR\(0)) # (\U9|CURSOR\(2) $ (\U9|CURSOR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~4_combout\);

-- Location: LCCOMB_X30_Y6_N10
\U10|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|RotateRight0~5_combout\ = (\U9|CURSOR\(2) $ (\U9|CURSOR\(1))) # (!\U9|CURSOR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|CURSOR\(0),
	datac => \U9|CURSOR\(2),
	datad => \U9|CURSOR\(1),
	combout => \U10|RotateRight0~5_combout\);

-- Location: IOIBUF_X34_Y12_N8
\FSIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSIN,
	o => \FSIN~input_o\);

ww_DUAN(0) <= \DUAN[0]~output_o\;

ww_DUAN(1) <= \DUAN[1]~output_o\;

ww_DUAN(2) <= \DUAN[2]~output_o\;

ww_DUAN(3) <= \DUAN[3]~output_o\;

ww_DUAN(4) <= \DUAN[4]~output_o\;

ww_DUAN(5) <= \DUAN[5]~output_o\;

ww_DUAN(6) <= \DUAN[6]~output_o\;

ww_DUAN(7) <= \DUAN[7]~output_o\;

ww_WEI(0) <= \WEI[0]~output_o\;

ww_WEI(1) <= \WEI[1]~output_o\;

ww_WEI(2) <= \WEI[2]~output_o\;

ww_WEI(3) <= \WEI[3]~output_o\;

ww_WEI(4) <= \WEI[4]~output_o\;

ww_WEI(5) <= \WEI[5]~output_o\;
END structure;


