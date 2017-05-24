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

-- DATE "05/24/2017 09:30:14"

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

ENTITY 	DIGITAL_FREQUENCY_METER IS
    PORT (
	CLK_50MHZ : IN std_logic;
	CLK_SIGNAL : IN std_logic;
	CLK_SYNC : IN std_logic;
	CLK_PLL : OUT std_logic;
	RST_ARDUINO : OUT std_logic;
	CLK_ARDUINO : OUT std_logic;
	M_ARDUINO : OUT std_logic;
	N_ARDUINO : OUT std_logic;
	H_ARDUINO : OUT std_logic
	);
END DIGITAL_FREQUENCY_METER;

-- Design Ports Information
-- CLK_PLL	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_ARDUINO	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_ARDUINO	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_ARDUINO	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_ARDUINO	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_ARDUINO	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHZ	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_SYNC	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_SIGNAL	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DIGITAL_FREQUENCY_METER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHZ : std_logic;
SIGNAL ww_CLK_SIGNAL : std_logic;
SIGNAL ww_CLK_SYNC : std_logic;
SIGNAL ww_CLK_PLL : std_logic;
SIGNAL ww_RST_ARDUINO : std_logic;
SIGNAL ww_CLK_ARDUINO : std_logic;
SIGNAL ww_M_ARDUINO : std_logic;
SIGNAL ww_N_ARDUINO : std_logic;
SIGNAL ww_H_ARDUINO : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK_SIGNAL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CTRL_MODULE|C~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLK_50MHZ~input_o\ : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_outclk\ : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|STAT[0]~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[0]~5_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[1]~8\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[2]~9_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[2]~10\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[3]~12_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[3]~13\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[4]~14_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[4]~11_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[0]~6\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|INDEX[1]~7_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|LessThan0~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux106~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|RST_ARDUINO~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|RST_ARDUINO~q\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux100~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|CLK_ARDUINO~q\ : std_logic;
SIGNAL \CLK_SYNC~input_o\ : std_logic;
SIGNAL \CTRL_MODULE|C~0_combout\ : std_logic;
SIGNAL \CTRL_MODULE|C~feeder_combout\ : std_logic;
SIGNAL \CTRL_MODULE|C~q\ : std_logic;
SIGNAL \CTRL_MODULE|C~clkctrl_outclk\ : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[0]~32_combout\ : std_logic;
SIGNAL \CTRL_MODULE|CLR~combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[19]~71\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[20]~72_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[20]~73\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[21]~74_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[21]~75\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[22]~76_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[22]~77\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[23]~78_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[23]~79\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[24]~80_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[24]~81\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[25]~82_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[25]~83\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[26]~84_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~3_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~4_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~5_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~6_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~0_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~1_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~2_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~7_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~8_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[26]~85\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[27]~86_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[27]~87\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[28]~88_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[28]~89\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[29]~90_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[29]~91\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[30]~92_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[30]~93\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[31]~94_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~9_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~10_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|LessThan0~11_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[0]~33\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[1]~34_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[1]~35\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[2]~36_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[2]~37\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[3]~38_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[3]~39\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[4]~40_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[4]~41\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[5]~42_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[5]~43\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[6]~44_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[6]~45\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[7]~46_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[7]~47\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[8]~48_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[8]~49\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[9]~50_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[9]~51\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[10]~52_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[10]~53\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[11]~54_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[11]~55\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[12]~56_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[12]~57\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[13]~58_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[13]~59\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[14]~60_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[14]~61\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[15]~62_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[15]~63\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[16]~64_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[16]~65\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[17]~66_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[17]~67\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[18]~68_combout\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[18]~69\ : std_logic;
SIGNAL \M_CNT_MODULE|Q_TEMP[19]~70_combout\ : std_logic;
SIGNAL \M[19]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux3~0_combout\ : std_logic;
SIGNAL \M[23]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[23]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~7_combout\ : std_logic;
SIGNAL \M[31]~feeder_combout\ : std_logic;
SIGNAL \M[27]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[27]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~8_combout\ : std_logic;
SIGNAL \M[30]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[30]~feeder_combout\ : std_logic;
SIGNAL \M[22]~feeder_combout\ : std_logic;
SIGNAL \M[18]~feeder_combout\ : std_logic;
SIGNAL \M[26]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[26]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~0_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~1_combout\ : std_logic;
SIGNAL \M[21]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[21]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~2_combout\ : std_logic;
SIGNAL \M[25]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[25]~feeder_combout\ : std_logic;
SIGNAL \M[29]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~3_combout\ : std_logic;
SIGNAL \M[24]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[24]~feeder_combout\ : std_logic;
SIGNAL \M[16]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~4_combout\ : std_logic;
SIGNAL \M[28]~feeder_combout\ : std_logic;
SIGNAL \M[20]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[20]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~5_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~6_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~9_combout\ : std_logic;
SIGNAL \M[11]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[11]~feeder_combout\ : std_logic;
SIGNAL \M[9]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[9]~feeder_combout\ : std_logic;
SIGNAL \M[8]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~10_combout\ : std_logic;
SIGNAL \M[10]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~11_combout\ : std_logic;
SIGNAL \M[14]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[14]~feeder_combout\ : std_logic;
SIGNAL \M[12]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~17_combout\ : std_logic;
SIGNAL \M[13]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[13]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~18_combout\ : std_logic;
SIGNAL \M[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[1]~feeder_combout\ : std_logic;
SIGNAL \M[0]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~14_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \M[3]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~15_combout\ : std_logic;
SIGNAL \M[6]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[6]~feeder_combout\ : std_logic;
SIGNAL \M[4]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~12_combout\ : std_logic;
SIGNAL \M[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \M[7]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~13_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~16_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~19_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~20_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux107~21_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|M_ARDUINO~q\ : std_logic;
SIGNAL \CLK_SIGNAL~input_o\ : std_logic;
SIGNAL \CLK_SIGNAL~inputclkctrl_outclk\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[0]~32_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[0]~33\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[1]~34_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[1]~35\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[2]~36_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[2]~37\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[3]~38_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[3]~39\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[4]~40_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[4]~41\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[5]~42_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[5]~43\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[6]~44_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[6]~45\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[7]~46_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[7]~47\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[8]~48_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[8]~49\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[9]~50_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[9]~51\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[10]~52_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[10]~53\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[11]~54_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[11]~55\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[12]~56_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[12]~57\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[13]~58_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[13]~59\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[14]~60_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[14]~61\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[15]~62_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[15]~63\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[16]~64_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[16]~65\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[17]~66_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[17]~67\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[18]~68_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[18]~69\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[19]~70_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[19]~71\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[20]~72_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[20]~73\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[21]~74_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[21]~75\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[22]~76_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[22]~77\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[23]~78_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[23]~79\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[24]~80_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[24]~81\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[25]~82_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[25]~83\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[26]~84_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[26]~85\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[27]~86_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[27]~87\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[28]~88_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[28]~89\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[29]~90_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[29]~91\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[30]~92_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[30]~93\ : std_logic;
SIGNAL \N_CNT_MODULE|Q_TEMP[31]~94_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~10_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~11_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~0_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~5_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~2_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~3_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~1_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~4_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~6_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~7_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~8_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~9_combout\ : std_logic;
SIGNAL \N_CNT_MODULE|LessThan0~12_combout\ : std_logic;
SIGNAL \N[0]~feeder_combout\ : std_logic;
SIGNAL \N[2]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~14_combout\ : std_logic;
SIGNAL \N[3]~feeder_combout\ : std_logic;
SIGNAL \N[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~15_combout\ : std_logic;
SIGNAL \N[9]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[9]~feeder_combout\ : std_logic;
SIGNAL \N[11]~feeder_combout\ : std_logic;
SIGNAL \N[8]~feeder_combout\ : std_logic;
SIGNAL \N[10]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[10]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~12_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~13_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~16_combout\ : std_logic;
SIGNAL \N[7]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[7]~feeder_combout\ : std_logic;
SIGNAL \N[6]~feeder_combout\ : std_logic;
SIGNAL \N[4]~feeder_combout\ : std_logic;
SIGNAL \N[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~10_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~11_combout\ : std_logic;
SIGNAL \N[13]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[13]~feeder_combout\ : std_logic;
SIGNAL \N[12]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~17_combout\ : std_logic;
SIGNAL \N[15]~feeder_combout\ : std_logic;
SIGNAL \N[14]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[14]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~18_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~19_combout\ : std_logic;
SIGNAL \N[17]~feeder_combout\ : std_logic;
SIGNAL \N[25]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[25]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~0_combout\ : std_logic;
SIGNAL \N[21]~feeder_combout\ : std_logic;
SIGNAL \N[29]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[29]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~1_combout\ : std_logic;
SIGNAL \N[23]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[23]~feeder_combout\ : std_logic;
SIGNAL \N[31]~feeder_combout\ : std_logic;
SIGNAL \N[19]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[19]~feeder_combout\ : std_logic;
SIGNAL \N[27]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[27]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~7_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~8_combout\ : std_logic;
SIGNAL \N[26]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[26]~feeder_combout\ : std_logic;
SIGNAL \N[18]~feeder_combout\ : std_logic;
SIGNAL \N[22]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[22]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~2_combout\ : std_logic;
SIGNAL \N[30]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~3_combout\ : std_logic;
SIGNAL \N[16]~feeder_combout\ : std_logic;
SIGNAL \N[20]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[20]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~4_combout\ : std_logic;
SIGNAL \N[28]~feeder_combout\ : std_logic;
SIGNAL \N[24]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_TEMP[24]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~5_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~6_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~9_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux108~20_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|N_ARDUINO~q\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[0]~32_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~0_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~1_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~2_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~5_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~3_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~4_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~6_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~7_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~8_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[26]~85\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[27]~86_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|process_0~0_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[27]~87\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[28]~88_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[28]~89\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[29]~90_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[29]~91\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[30]~92_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[30]~93\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[31]~94_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~9_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~10_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|LessThan0~11_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[0]~33\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[1]~34_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[1]~35\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[2]~36_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[2]~37\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[3]~38_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[3]~39\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[4]~40_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[4]~41\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[5]~42_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[5]~43\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[6]~44_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[6]~45\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[7]~46_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[7]~47\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[8]~48_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[8]~49\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[9]~50_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[9]~51\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[10]~52_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[10]~53\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[11]~54_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[11]~55\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[12]~56_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[12]~57\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[13]~58_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[13]~59\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[14]~60_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[14]~61\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[15]~62_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[15]~63\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[16]~64_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[16]~65\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[17]~66_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[17]~67\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[18]~68_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[18]~69\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[19]~70_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[19]~71\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[20]~72_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[20]~73\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[21]~74_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[21]~75\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[22]~76_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[22]~77\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[23]~78_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[23]~79\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[24]~80_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[24]~81\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[25]~82_combout\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[25]~83\ : std_logic;
SIGNAL \H_CNT_MODULE|Q_TEMP[26]~84_combout\ : std_logic;
SIGNAL \H[26]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[26]~feeder_combout\ : std_logic;
SIGNAL \H[18]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~0_combout\ : std_logic;
SIGNAL \H[30]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[30]~feeder_combout\ : std_logic;
SIGNAL \H[22]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~1_combout\ : std_logic;
SIGNAL \H[25]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[25]~feeder_combout\ : std_logic;
SIGNAL \H[29]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[21]~feeder_combout\ : std_logic;
SIGNAL \H[17]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~2_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~3_combout\ : std_logic;
SIGNAL \H[20]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[20]~feeder_combout\ : std_logic;
SIGNAL \H[24]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[24]~feeder_combout\ : std_logic;
SIGNAL \H[16]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~4_combout\ : std_logic;
SIGNAL \H[28]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~5_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~6_combout\ : std_logic;
SIGNAL \H[23]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[23]~feeder_combout\ : std_logic;
SIGNAL \H[19]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~7_combout\ : std_logic;
SIGNAL \H[27]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[27]~feeder_combout\ : std_logic;
SIGNAL \H[31]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~8_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~9_combout\ : std_logic;
SIGNAL \H[12]~feeder_combout\ : std_logic;
SIGNAL \H[14]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[14]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~17_combout\ : std_logic;
SIGNAL \H[15]~feeder_combout\ : std_logic;
SIGNAL \H[13]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[13]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~18_combout\ : std_logic;
SIGNAL \H[6]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[6]~feeder_combout\ : std_logic;
SIGNAL \H[4]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~12_combout\ : std_logic;
SIGNAL \H[7]~feeder_combout\ : std_logic;
SIGNAL \H[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~13_combout\ : std_logic;
SIGNAL \H[0]~feeder_combout\ : std_logic;
SIGNAL \H[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~14_combout\ : std_logic;
SIGNAL \H[3]~feeder_combout\ : std_logic;
SIGNAL \H[2]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~15_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~16_combout\ : std_logic;
SIGNAL \H[11]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[11]~feeder_combout\ : std_logic;
SIGNAL \H[8]~feeder_combout\ : std_logic;
SIGNAL \H[9]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_TEMP[9]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~10_combout\ : std_logic;
SIGNAL \H[10]~feeder_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~11_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~19_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|Mux109~20_combout\ : std_logic;
SIGNAL \SHIFT_OUT_MODULE|H_ARDUINO~q\ : std_logic;
SIGNAL \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|INDEX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|N_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \M_CNT_MODULE|Q_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|H_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \N_CNT_MODULE|Q_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \H_CNT_MODULE|Q_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|STAT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|M_TEMP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL M : std_logic_vector(31 DOWNTO 0);
SIGNAL N : std_logic_vector(31 DOWNTO 0);
SIGNAL H : std_logic_vector(31 DOWNTO 0);
SIGNAL \SHIFT_OUT_MODULE|ALT_INV_STAT\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \CTRL_MODULE|ALT_INV_CLR~combout\ : std_logic;
SIGNAL \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLK_50MHZ <= CLK_50MHZ;
ww_CLK_SIGNAL <= CLK_SIGNAL;
ww_CLK_SYNC <= CLK_SYNC;
CLK_PLL <= ww_CLK_PLL;
RST_ARDUINO <= ww_RST_ARDUINO;
CLK_ARDUINO <= ww_CLK_ARDUINO;
M_ARDUINO <= ww_M_ARDUINO;
N_ARDUINO <= ww_N_ARDUINO;
H_ARDUINO <= ww_H_ARDUINO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_MODULE|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK_50MHZ~input_o\);

\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLK_SIGNAL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_SIGNAL~input_o\);

\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(0));

\CTRL_MODULE|C~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CTRL_MODULE|C~q\);

\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(0));

\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk\(1));
\SHIFT_OUT_MODULE|ALT_INV_STAT\(1) <= NOT \SHIFT_OUT_MODULE|STAT\(1);
\CTRL_MODULE|ALT_INV_CLR~combout\ <= NOT \CTRL_MODULE|CLR~combout\;
\CTRL_MODULE|ALT_INV_C~clkctrl_outclk\ <= NOT \CTRL_MODULE|C~clkctrl_outclk\;

-- Location: IOOBUF_X5_Y0_N23
\CLK_PLL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_outclk\,
	devoe => ww_devoe,
	o => ww_CLK_PLL);

-- Location: IOOBUF_X18_Y0_N23
\RST_ARDUINO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT_OUT_MODULE|RST_ARDUINO~q\,
	devoe => ww_devoe,
	o => ww_RST_ARDUINO);

-- Location: IOOBUF_X16_Y0_N16
\CLK_ARDUINO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT_OUT_MODULE|CLK_ARDUINO~q\,
	devoe => ww_devoe,
	o => ww_CLK_ARDUINO);

-- Location: IOOBUF_X16_Y0_N9
\M_ARDUINO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT_OUT_MODULE|M_ARDUINO~q\,
	devoe => ww_devoe,
	o => ww_M_ARDUINO);

-- Location: IOOBUF_X16_Y0_N2
\N_ARDUINO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT_OUT_MODULE|N_ARDUINO~q\,
	devoe => ww_devoe,
	o => ww_N_ARDUINO);

-- Location: IOOBUF_X16_Y0_N23
\H_ARDUINO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT_OUT_MODULE|H_ARDUINO~q\,
	devoe => ww_devoe,
	o => ww_H_ARDUINO);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50MHZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHZ,
	o => \CLK_50MHZ~input_o\);

-- Location: PLL_1
\PLL_MODULE|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 50,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_MODULE|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_MODULE|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLK_PLL_outclk\);

-- Location: CLKCTRL_G4
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y5_N22
\SHIFT_OUT_MODULE|STAT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|STAT[0]~0_combout\ = !\SHIFT_OUT_MODULE|STAT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIFT_OUT_MODULE|STAT\(0),
	combout => \SHIFT_OUT_MODULE|STAT[0]~0_combout\);

-- Location: FF_X17_Y5_N23
\SHIFT_OUT_MODULE|STAT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|STAT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|STAT\(0));

-- Location: LCCOMB_X17_Y5_N4
\SHIFT_OUT_MODULE|INDEX[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[0]~5_combout\ = \SHIFT_OUT_MODULE|INDEX\(0) $ (VCC)
-- \SHIFT_OUT_MODULE|INDEX[0]~6\ = CARRY(\SHIFT_OUT_MODULE|INDEX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFT_OUT_MODULE|INDEX\(0),
	datad => VCC,
	combout => \SHIFT_OUT_MODULE|INDEX[0]~5_combout\,
	cout => \SHIFT_OUT_MODULE|INDEX[0]~6\);

-- Location: LCCOMB_X17_Y5_N6
\SHIFT_OUT_MODULE|INDEX[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[1]~7_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (!\SHIFT_OUT_MODULE|INDEX[0]~6\)) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX[0]~6\) # (GND)))
-- \SHIFT_OUT_MODULE|INDEX[1]~8\ = CARRY((!\SHIFT_OUT_MODULE|INDEX[0]~6\) # (!\SHIFT_OUT_MODULE|INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datad => VCC,
	cin => \SHIFT_OUT_MODULE|INDEX[0]~6\,
	combout => \SHIFT_OUT_MODULE|INDEX[1]~7_combout\,
	cout => \SHIFT_OUT_MODULE|INDEX[1]~8\);

-- Location: LCCOMB_X17_Y5_N8
\SHIFT_OUT_MODULE|INDEX[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[2]~9_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|INDEX[1]~8\ $ (GND))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & (!\SHIFT_OUT_MODULE|INDEX[1]~8\ & VCC))
-- \SHIFT_OUT_MODULE|INDEX[2]~10\ = CARRY((\SHIFT_OUT_MODULE|INDEX\(2) & !\SHIFT_OUT_MODULE|INDEX[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datad => VCC,
	cin => \SHIFT_OUT_MODULE|INDEX[1]~8\,
	combout => \SHIFT_OUT_MODULE|INDEX[2]~9_combout\,
	cout => \SHIFT_OUT_MODULE|INDEX[2]~10\);

-- Location: FF_X17_Y5_N9
\SHIFT_OUT_MODULE|INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|INDEX[2]~9_combout\,
	sclr => \SHIFT_OUT_MODULE|ALT_INV_STAT\(1),
	ena => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|INDEX\(2));

-- Location: LCCOMB_X17_Y5_N10
\SHIFT_OUT_MODULE|INDEX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[3]~12_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (!\SHIFT_OUT_MODULE|INDEX[2]~10\)) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX[2]~10\) # (GND)))
-- \SHIFT_OUT_MODULE|INDEX[3]~13\ = CARRY((!\SHIFT_OUT_MODULE|INDEX[2]~10\) # (!\SHIFT_OUT_MODULE|INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datad => VCC,
	cin => \SHIFT_OUT_MODULE|INDEX[2]~10\,
	combout => \SHIFT_OUT_MODULE|INDEX[3]~12_combout\,
	cout => \SHIFT_OUT_MODULE|INDEX[3]~13\);

-- Location: FF_X17_Y5_N11
\SHIFT_OUT_MODULE|INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|INDEX[3]~12_combout\,
	sclr => \SHIFT_OUT_MODULE|ALT_INV_STAT\(1),
	ena => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|INDEX\(3));

-- Location: LCCOMB_X17_Y5_N12
\SHIFT_OUT_MODULE|INDEX[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[4]~14_combout\ = \SHIFT_OUT_MODULE|INDEX\(4) $ (!\SHIFT_OUT_MODULE|INDEX[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(4),
	cin => \SHIFT_OUT_MODULE|INDEX[3]~13\,
	combout => \SHIFT_OUT_MODULE|INDEX[4]~14_combout\);

-- Location: FF_X17_Y5_N13
\SHIFT_OUT_MODULE|INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|INDEX[4]~14_combout\,
	sclr => \SHIFT_OUT_MODULE|ALT_INV_STAT\(1),
	ena => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|INDEX\(4));

-- Location: LCCOMB_X17_Y5_N24
\SHIFT_OUT_MODULE|INDEX[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|INDEX[4]~11_combout\ = (\SHIFT_OUT_MODULE|STAT\(1) & (\SHIFT_OUT_MODULE|STAT\(0) & ((!\SHIFT_OUT_MODULE|LessThan0~0_combout\) # (!\SHIFT_OUT_MODULE|INDEX\(4))))) # (!\SHIFT_OUT_MODULE|STAT\(1) & (((!\SHIFT_OUT_MODULE|STAT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(4),
	datab => \SHIFT_OUT_MODULE|STAT\(1),
	datac => \SHIFT_OUT_MODULE|STAT\(0),
	datad => \SHIFT_OUT_MODULE|LessThan0~0_combout\,
	combout => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\);

-- Location: FF_X17_Y5_N5
\SHIFT_OUT_MODULE|INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|INDEX[0]~5_combout\,
	sclr => \SHIFT_OUT_MODULE|ALT_INV_STAT\(1),
	ena => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|INDEX\(0));

-- Location: FF_X17_Y5_N7
\SHIFT_OUT_MODULE|INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|INDEX[1]~7_combout\,
	sclr => \SHIFT_OUT_MODULE|ALT_INV_STAT\(1),
	ena => \SHIFT_OUT_MODULE|INDEX[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|INDEX\(1));

-- Location: LCCOMB_X17_Y5_N28
\SHIFT_OUT_MODULE|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|LessThan0~0_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|INDEX\(0) & \SHIFT_OUT_MODULE|INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|INDEX\(0),
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y5_N16
\SHIFT_OUT_MODULE|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux106~0_combout\ = (\SHIFT_OUT_MODULE|STAT\(0) & (((!\SHIFT_OUT_MODULE|INDEX\(4)) # (!\SHIFT_OUT_MODULE|STAT\(1))) # (!\SHIFT_OUT_MODULE|LessThan0~0_combout\))) # (!\SHIFT_OUT_MODULE|STAT\(0) & (((\SHIFT_OUT_MODULE|STAT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|STAT\(0),
	datab => \SHIFT_OUT_MODULE|LessThan0~0_combout\,
	datac => \SHIFT_OUT_MODULE|STAT\(1),
	datad => \SHIFT_OUT_MODULE|INDEX\(4),
	combout => \SHIFT_OUT_MODULE|Mux106~0_combout\);

-- Location: FF_X17_Y5_N17
\SHIFT_OUT_MODULE|STAT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|Mux106~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|STAT\(1));

-- Location: LCCOMB_X17_Y5_N20
\SHIFT_OUT_MODULE|RST_ARDUINO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|RST_ARDUINO~0_combout\ = (\SHIFT_OUT_MODULE|STAT\(1) & ((\SHIFT_OUT_MODULE|RST_ARDUINO~q\))) # (!\SHIFT_OUT_MODULE|STAT\(1) & (\SHIFT_OUT_MODULE|STAT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|STAT\(0),
	datac => \SHIFT_OUT_MODULE|RST_ARDUINO~q\,
	datad => \SHIFT_OUT_MODULE|STAT\(1),
	combout => \SHIFT_OUT_MODULE|RST_ARDUINO~0_combout\);

-- Location: FF_X17_Y5_N21
\SHIFT_OUT_MODULE|RST_ARDUINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|RST_ARDUINO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|RST_ARDUINO~q\);

-- Location: LCCOMB_X17_Y5_N30
\SHIFT_OUT_MODULE|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux100~0_combout\ = (\SHIFT_OUT_MODULE|STAT\(0) & ((\SHIFT_OUT_MODULE|CLK_ARDUINO~q\) # (\SHIFT_OUT_MODULE|STAT\(1)))) # (!\SHIFT_OUT_MODULE|STAT\(0) & ((!\SHIFT_OUT_MODULE|STAT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|STAT\(0),
	datac => \SHIFT_OUT_MODULE|CLK_ARDUINO~q\,
	datad => \SHIFT_OUT_MODULE|STAT\(1),
	combout => \SHIFT_OUT_MODULE|Mux100~0_combout\);

-- Location: FF_X17_Y5_N31
\SHIFT_OUT_MODULE|CLK_ARDUINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|Mux100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|CLK_ARDUINO~q\);

-- Location: IOIBUF_X13_Y0_N22
\CLK_SYNC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_SYNC,
	o => \CLK_SYNC~input_o\);

-- Location: LCCOMB_X13_Y11_N26
\CTRL_MODULE|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_MODULE|C~0_combout\ = !\CTRL_MODULE|C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_MODULE|C~q\,
	combout => \CTRL_MODULE|C~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\CTRL_MODULE|C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_MODULE|C~feeder_combout\ = \CTRL_MODULE|C~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_MODULE|C~0_combout\,
	combout => \CTRL_MODULE|C~feeder_combout\);

-- Location: FF_X13_Y11_N19
\CTRL_MODULE|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SYNC~input_o\,
	d => \CTRL_MODULE|C~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_MODULE|C~q\);

-- Location: CLKCTRL_G2
\CTRL_MODULE|C~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CTRL_MODULE|C~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CTRL_MODULE|C~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y12_N0
\M_CNT_MODULE|Q_TEMP[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[0]~32_combout\ = \M_CNT_MODULE|Q_TEMP\(0) $ (VCC)
-- \M_CNT_MODULE|Q_TEMP[0]~33\ = CARRY(\M_CNT_MODULE|Q_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(0),
	datad => VCC,
	combout => \M_CNT_MODULE|Q_TEMP[0]~32_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[0]~33\);

-- Location: LCCOMB_X13_Y11_N20
\CTRL_MODULE|CLR\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_MODULE|CLR~combout\ = (!\CTRL_MODULE|C~q\ & !\CLK_SYNC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_MODULE|C~q\,
	datad => \CLK_SYNC~input_o\,
	combout => \CTRL_MODULE|CLR~combout\);

-- Location: LCCOMB_X14_Y11_N6
\M_CNT_MODULE|Q_TEMP[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[19]~70_combout\ = (\M_CNT_MODULE|Q_TEMP\(19) & (!\M_CNT_MODULE|Q_TEMP[18]~69\)) # (!\M_CNT_MODULE|Q_TEMP\(19) & ((\M_CNT_MODULE|Q_TEMP[18]~69\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[19]~71\ = CARRY((!\M_CNT_MODULE|Q_TEMP[18]~69\) # (!\M_CNT_MODULE|Q_TEMP\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(19),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[18]~69\,
	combout => \M_CNT_MODULE|Q_TEMP[19]~70_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[19]~71\);

-- Location: LCCOMB_X14_Y11_N8
\M_CNT_MODULE|Q_TEMP[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[20]~72_combout\ = (\M_CNT_MODULE|Q_TEMP\(20) & (\M_CNT_MODULE|Q_TEMP[19]~71\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(20) & (!\M_CNT_MODULE|Q_TEMP[19]~71\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[20]~73\ = CARRY((\M_CNT_MODULE|Q_TEMP\(20) & !\M_CNT_MODULE|Q_TEMP[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(20),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[19]~71\,
	combout => \M_CNT_MODULE|Q_TEMP[20]~72_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[20]~73\);

-- Location: FF_X14_Y11_N9
\M_CNT_MODULE|Q_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[20]~72_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(20));

-- Location: LCCOMB_X14_Y11_N10
\M_CNT_MODULE|Q_TEMP[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[21]~74_combout\ = (\M_CNT_MODULE|Q_TEMP\(21) & (!\M_CNT_MODULE|Q_TEMP[20]~73\)) # (!\M_CNT_MODULE|Q_TEMP\(21) & ((\M_CNT_MODULE|Q_TEMP[20]~73\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[21]~75\ = CARRY((!\M_CNT_MODULE|Q_TEMP[20]~73\) # (!\M_CNT_MODULE|Q_TEMP\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(21),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[20]~73\,
	combout => \M_CNT_MODULE|Q_TEMP[21]~74_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[21]~75\);

-- Location: FF_X14_Y11_N11
\M_CNT_MODULE|Q_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[21]~74_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(21));

-- Location: LCCOMB_X14_Y11_N12
\M_CNT_MODULE|Q_TEMP[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[22]~76_combout\ = (\M_CNT_MODULE|Q_TEMP\(22) & (\M_CNT_MODULE|Q_TEMP[21]~75\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(22) & (!\M_CNT_MODULE|Q_TEMP[21]~75\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[22]~77\ = CARRY((\M_CNT_MODULE|Q_TEMP\(22) & !\M_CNT_MODULE|Q_TEMP[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(22),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[21]~75\,
	combout => \M_CNT_MODULE|Q_TEMP[22]~76_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[22]~77\);

-- Location: FF_X14_Y11_N13
\M_CNT_MODULE|Q_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[22]~76_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(22));

-- Location: LCCOMB_X14_Y11_N14
\M_CNT_MODULE|Q_TEMP[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[23]~78_combout\ = (\M_CNT_MODULE|Q_TEMP\(23) & (!\M_CNT_MODULE|Q_TEMP[22]~77\)) # (!\M_CNT_MODULE|Q_TEMP\(23) & ((\M_CNT_MODULE|Q_TEMP[22]~77\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[23]~79\ = CARRY((!\M_CNT_MODULE|Q_TEMP[22]~77\) # (!\M_CNT_MODULE|Q_TEMP\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(23),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[22]~77\,
	combout => \M_CNT_MODULE|Q_TEMP[23]~78_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[23]~79\);

-- Location: FF_X14_Y11_N15
\M_CNT_MODULE|Q_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[23]~78_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(23));

-- Location: LCCOMB_X14_Y11_N16
\M_CNT_MODULE|Q_TEMP[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[24]~80_combout\ = (\M_CNT_MODULE|Q_TEMP\(24) & (\M_CNT_MODULE|Q_TEMP[23]~79\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(24) & (!\M_CNT_MODULE|Q_TEMP[23]~79\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[24]~81\ = CARRY((\M_CNT_MODULE|Q_TEMP\(24) & !\M_CNT_MODULE|Q_TEMP[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(24),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[23]~79\,
	combout => \M_CNT_MODULE|Q_TEMP[24]~80_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[24]~81\);

-- Location: FF_X14_Y11_N17
\M_CNT_MODULE|Q_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[24]~80_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(24));

-- Location: LCCOMB_X14_Y11_N18
\M_CNT_MODULE|Q_TEMP[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[25]~82_combout\ = (\M_CNT_MODULE|Q_TEMP\(25) & (!\M_CNT_MODULE|Q_TEMP[24]~81\)) # (!\M_CNT_MODULE|Q_TEMP\(25) & ((\M_CNT_MODULE|Q_TEMP[24]~81\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[25]~83\ = CARRY((!\M_CNT_MODULE|Q_TEMP[24]~81\) # (!\M_CNT_MODULE|Q_TEMP\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(25),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[24]~81\,
	combout => \M_CNT_MODULE|Q_TEMP[25]~82_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[25]~83\);

-- Location: FF_X14_Y11_N19
\M_CNT_MODULE|Q_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[25]~82_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(25));

-- Location: LCCOMB_X14_Y11_N20
\M_CNT_MODULE|Q_TEMP[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[26]~84_combout\ = (\M_CNT_MODULE|Q_TEMP\(26) & (\M_CNT_MODULE|Q_TEMP[25]~83\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(26) & (!\M_CNT_MODULE|Q_TEMP[25]~83\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[26]~85\ = CARRY((\M_CNT_MODULE|Q_TEMP\(26) & !\M_CNT_MODULE|Q_TEMP[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(26),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[25]~83\,
	combout => \M_CNT_MODULE|Q_TEMP[26]~84_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[26]~85\);

-- Location: FF_X14_Y11_N21
\M_CNT_MODULE|Q_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[26]~84_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(26));

-- Location: LCCOMB_X13_Y8_N20
\M_CNT_MODULE|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~3_combout\ = (!\M_CNT_MODULE|Q_TEMP\(18) & (!\M_CNT_MODULE|Q_TEMP\(12) & (!\M_CNT_MODULE|Q_TEMP\(16) & !\M_CNT_MODULE|Q_TEMP\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(18),
	datab => \M_CNT_MODULE|Q_TEMP\(12),
	datac => \M_CNT_MODULE|Q_TEMP\(16),
	datad => \M_CNT_MODULE|Q_TEMP\(13),
	combout => \M_CNT_MODULE|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y12_N4
\M_CNT_MODULE|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~4_combout\ = (((!\M_CNT_MODULE|Q_TEMP\(5)) # (!\M_CNT_MODULE|Q_TEMP\(4))) # (!\M_CNT_MODULE|Q_TEMP\(6))) # (!\M_CNT_MODULE|Q_TEMP\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(8),
	datab => \M_CNT_MODULE|Q_TEMP\(6),
	datac => \M_CNT_MODULE|Q_TEMP\(4),
	datad => \M_CNT_MODULE|Q_TEMP\(5),
	combout => \M_CNT_MODULE|LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y8_N24
\M_CNT_MODULE|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~5_combout\ = (((!\M_CNT_MODULE|Q_TEMP\(1)) # (!\M_CNT_MODULE|Q_TEMP\(7))) # (!\M_CNT_MODULE|Q_TEMP\(2))) # (!\M_CNT_MODULE|Q_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(0),
	datab => \M_CNT_MODULE|Q_TEMP\(2),
	datac => \M_CNT_MODULE|Q_TEMP\(7),
	datad => \M_CNT_MODULE|Q_TEMP\(1),
	combout => \M_CNT_MODULE|LessThan0~5_combout\);

-- Location: LCCOMB_X13_Y8_N14
\M_CNT_MODULE|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~6_combout\ = (\M_CNT_MODULE|LessThan0~3_combout\ & (((\M_CNT_MODULE|LessThan0~4_combout\) # (\M_CNT_MODULE|LessThan0~5_combout\)) # (!\M_CNT_MODULE|Q_TEMP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(3),
	datab => \M_CNT_MODULE|LessThan0~3_combout\,
	datac => \M_CNT_MODULE|LessThan0~4_combout\,
	datad => \M_CNT_MODULE|LessThan0~5_combout\,
	combout => \M_CNT_MODULE|LessThan0~6_combout\);

-- Location: LCCOMB_X13_Y8_N22
\M_CNT_MODULE|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~0_combout\ = (\M_CNT_MODULE|Q_TEMP\(14) & ((\M_CNT_MODULE|Q_TEMP\(12)) # ((\M_CNT_MODULE|Q_TEMP\(11)) # (\M_CNT_MODULE|Q_TEMP\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(14),
	datab => \M_CNT_MODULE|Q_TEMP\(12),
	datac => \M_CNT_MODULE|Q_TEMP\(11),
	datad => \M_CNT_MODULE|Q_TEMP\(13),
	combout => \M_CNT_MODULE|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y8_N26
\M_CNT_MODULE|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~1_combout\ = (\M_CNT_MODULE|Q_TEMP\(17) & ((\M_CNT_MODULE|Q_TEMP\(16)) # ((\M_CNT_MODULE|LessThan0~0_combout\ & \M_CNT_MODULE|Q_TEMP\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|LessThan0~0_combout\,
	datab => \M_CNT_MODULE|Q_TEMP\(16),
	datac => \M_CNT_MODULE|Q_TEMP\(15),
	datad => \M_CNT_MODULE|Q_TEMP\(17),
	combout => \M_CNT_MODULE|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y8_N6
\M_CNT_MODULE|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~2_combout\ = (((!\M_CNT_MODULE|LessThan0~1_combout\ & !\M_CNT_MODULE|Q_TEMP\(18))) # (!\M_CNT_MODULE|Q_TEMP\(19))) # (!\M_CNT_MODULE|Q_TEMP\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|LessThan0~1_combout\,
	datab => \M_CNT_MODULE|Q_TEMP\(18),
	datac => \M_CNT_MODULE|Q_TEMP\(20),
	datad => \M_CNT_MODULE|Q_TEMP\(19),
	combout => \M_CNT_MODULE|LessThan0~2_combout\);

-- Location: LCCOMB_X13_Y8_N2
\M_CNT_MODULE|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~7_combout\ = (\M_CNT_MODULE|LessThan0~2_combout\) # ((!\M_CNT_MODULE|Q_TEMP\(10) & (!\M_CNT_MODULE|Q_TEMP\(9) & \M_CNT_MODULE|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(10),
	datab => \M_CNT_MODULE|Q_TEMP\(9),
	datac => \M_CNT_MODULE|LessThan0~6_combout\,
	datad => \M_CNT_MODULE|LessThan0~2_combout\,
	combout => \M_CNT_MODULE|LessThan0~7_combout\);

-- Location: LCCOMB_X14_Y8_N10
\M_CNT_MODULE|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~8_combout\ = (!\M_CNT_MODULE|Q_TEMP\(26) & (!\M_CNT_MODULE|Q_TEMP\(21) & (!\M_CNT_MODULE|Q_TEMP\(22) & \M_CNT_MODULE|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(26),
	datab => \M_CNT_MODULE|Q_TEMP\(21),
	datac => \M_CNT_MODULE|Q_TEMP\(22),
	datad => \M_CNT_MODULE|LessThan0~7_combout\,
	combout => \M_CNT_MODULE|LessThan0~8_combout\);

-- Location: LCCOMB_X14_Y11_N22
\M_CNT_MODULE|Q_TEMP[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[27]~86_combout\ = (\M_CNT_MODULE|Q_TEMP\(27) & (!\M_CNT_MODULE|Q_TEMP[26]~85\)) # (!\M_CNT_MODULE|Q_TEMP\(27) & ((\M_CNT_MODULE|Q_TEMP[26]~85\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[27]~87\ = CARRY((!\M_CNT_MODULE|Q_TEMP[26]~85\) # (!\M_CNT_MODULE|Q_TEMP\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(27),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[26]~85\,
	combout => \M_CNT_MODULE|Q_TEMP[27]~86_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[27]~87\);

-- Location: FF_X14_Y11_N23
\M_CNT_MODULE|Q_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[27]~86_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(27));

-- Location: LCCOMB_X14_Y11_N24
\M_CNT_MODULE|Q_TEMP[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[28]~88_combout\ = (\M_CNT_MODULE|Q_TEMP\(28) & (\M_CNT_MODULE|Q_TEMP[27]~87\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(28) & (!\M_CNT_MODULE|Q_TEMP[27]~87\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[28]~89\ = CARRY((\M_CNT_MODULE|Q_TEMP\(28) & !\M_CNT_MODULE|Q_TEMP[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(28),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[27]~87\,
	combout => \M_CNT_MODULE|Q_TEMP[28]~88_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[28]~89\);

-- Location: FF_X14_Y11_N25
\M_CNT_MODULE|Q_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[28]~88_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(28));

-- Location: LCCOMB_X14_Y11_N26
\M_CNT_MODULE|Q_TEMP[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[29]~90_combout\ = (\M_CNT_MODULE|Q_TEMP\(29) & (!\M_CNT_MODULE|Q_TEMP[28]~89\)) # (!\M_CNT_MODULE|Q_TEMP\(29) & ((\M_CNT_MODULE|Q_TEMP[28]~89\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[29]~91\ = CARRY((!\M_CNT_MODULE|Q_TEMP[28]~89\) # (!\M_CNT_MODULE|Q_TEMP\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(29),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[28]~89\,
	combout => \M_CNT_MODULE|Q_TEMP[29]~90_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[29]~91\);

-- Location: FF_X14_Y11_N27
\M_CNT_MODULE|Q_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[29]~90_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(29));

-- Location: LCCOMB_X14_Y11_N28
\M_CNT_MODULE|Q_TEMP[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[30]~92_combout\ = (\M_CNT_MODULE|Q_TEMP\(30) & (\M_CNT_MODULE|Q_TEMP[29]~91\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(30) & (!\M_CNT_MODULE|Q_TEMP[29]~91\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[30]~93\ = CARRY((\M_CNT_MODULE|Q_TEMP\(30) & !\M_CNT_MODULE|Q_TEMP[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(30),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[29]~91\,
	combout => \M_CNT_MODULE|Q_TEMP[30]~92_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[30]~93\);

-- Location: FF_X14_Y11_N29
\M_CNT_MODULE|Q_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[30]~92_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(30));

-- Location: LCCOMB_X14_Y11_N30
\M_CNT_MODULE|Q_TEMP[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[31]~94_combout\ = \M_CNT_MODULE|Q_TEMP\(31) $ (\M_CNT_MODULE|Q_TEMP[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(31),
	cin => \M_CNT_MODULE|Q_TEMP[30]~93\,
	combout => \M_CNT_MODULE|Q_TEMP[31]~94_combout\);

-- Location: FF_X14_Y11_N31
\M_CNT_MODULE|Q_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[31]~94_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(31));

-- Location: LCCOMB_X14_Y8_N22
\M_CNT_MODULE|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~9_combout\ = (!\M_CNT_MODULE|Q_TEMP\(26) & (((!\M_CNT_MODULE|Q_TEMP\(23)) # (!\M_CNT_MODULE|Q_TEMP\(24))) # (!\M_CNT_MODULE|Q_TEMP\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(25),
	datab => \M_CNT_MODULE|Q_TEMP\(24),
	datac => \M_CNT_MODULE|Q_TEMP\(26),
	datad => \M_CNT_MODULE|Q_TEMP\(23),
	combout => \M_CNT_MODULE|LessThan0~9_combout\);

-- Location: LCCOMB_X14_Y8_N2
\M_CNT_MODULE|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~10_combout\ = (\M_CNT_MODULE|LessThan0~9_combout\) # (((!\M_CNT_MODULE|Q_TEMP\(27)) # (!\M_CNT_MODULE|Q_TEMP\(28))) # (!\M_CNT_MODULE|Q_TEMP\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|LessThan0~9_combout\,
	datab => \M_CNT_MODULE|Q_TEMP\(29),
	datac => \M_CNT_MODULE|Q_TEMP\(28),
	datad => \M_CNT_MODULE|Q_TEMP\(27),
	combout => \M_CNT_MODULE|LessThan0~10_combout\);

-- Location: LCCOMB_X14_Y8_N8
\M_CNT_MODULE|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|LessThan0~11_combout\ = (\M_CNT_MODULE|Q_TEMP\(31)) # ((\M_CNT_MODULE|Q_TEMP\(30)) # ((!\M_CNT_MODULE|LessThan0~8_combout\ & !\M_CNT_MODULE|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|LessThan0~8_combout\,
	datab => \M_CNT_MODULE|Q_TEMP\(31),
	datac => \M_CNT_MODULE|Q_TEMP\(30),
	datad => \M_CNT_MODULE|LessThan0~10_combout\,
	combout => \M_CNT_MODULE|LessThan0~11_combout\);

-- Location: FF_X14_Y12_N1
\M_CNT_MODULE|Q_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[0]~32_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(0));

-- Location: LCCOMB_X14_Y12_N2
\M_CNT_MODULE|Q_TEMP[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[1]~34_combout\ = (\M_CNT_MODULE|Q_TEMP\(1) & (!\M_CNT_MODULE|Q_TEMP[0]~33\)) # (!\M_CNT_MODULE|Q_TEMP\(1) & ((\M_CNT_MODULE|Q_TEMP[0]~33\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[1]~35\ = CARRY((!\M_CNT_MODULE|Q_TEMP[0]~33\) # (!\M_CNT_MODULE|Q_TEMP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(1),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[0]~33\,
	combout => \M_CNT_MODULE|Q_TEMP[1]~34_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[1]~35\);

-- Location: FF_X14_Y12_N3
\M_CNT_MODULE|Q_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[1]~34_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(1));

-- Location: LCCOMB_X14_Y12_N4
\M_CNT_MODULE|Q_TEMP[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[2]~36_combout\ = (\M_CNT_MODULE|Q_TEMP\(2) & (\M_CNT_MODULE|Q_TEMP[1]~35\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(2) & (!\M_CNT_MODULE|Q_TEMP[1]~35\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[2]~37\ = CARRY((\M_CNT_MODULE|Q_TEMP\(2) & !\M_CNT_MODULE|Q_TEMP[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(2),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[1]~35\,
	combout => \M_CNT_MODULE|Q_TEMP[2]~36_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[2]~37\);

-- Location: FF_X14_Y12_N5
\M_CNT_MODULE|Q_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[2]~36_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(2));

-- Location: LCCOMB_X14_Y12_N6
\M_CNT_MODULE|Q_TEMP[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[3]~38_combout\ = (\M_CNT_MODULE|Q_TEMP\(3) & (!\M_CNT_MODULE|Q_TEMP[2]~37\)) # (!\M_CNT_MODULE|Q_TEMP\(3) & ((\M_CNT_MODULE|Q_TEMP[2]~37\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[3]~39\ = CARRY((!\M_CNT_MODULE|Q_TEMP[2]~37\) # (!\M_CNT_MODULE|Q_TEMP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(3),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[2]~37\,
	combout => \M_CNT_MODULE|Q_TEMP[3]~38_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[3]~39\);

-- Location: FF_X14_Y12_N7
\M_CNT_MODULE|Q_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[3]~38_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(3));

-- Location: LCCOMB_X14_Y12_N8
\M_CNT_MODULE|Q_TEMP[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[4]~40_combout\ = (\M_CNT_MODULE|Q_TEMP\(4) & (\M_CNT_MODULE|Q_TEMP[3]~39\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(4) & (!\M_CNT_MODULE|Q_TEMP[3]~39\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[4]~41\ = CARRY((\M_CNT_MODULE|Q_TEMP\(4) & !\M_CNT_MODULE|Q_TEMP[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(4),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[3]~39\,
	combout => \M_CNT_MODULE|Q_TEMP[4]~40_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[4]~41\);

-- Location: FF_X14_Y12_N9
\M_CNT_MODULE|Q_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[4]~40_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(4));

-- Location: LCCOMB_X14_Y12_N10
\M_CNT_MODULE|Q_TEMP[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[5]~42_combout\ = (\M_CNT_MODULE|Q_TEMP\(5) & (!\M_CNT_MODULE|Q_TEMP[4]~41\)) # (!\M_CNT_MODULE|Q_TEMP\(5) & ((\M_CNT_MODULE|Q_TEMP[4]~41\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[5]~43\ = CARRY((!\M_CNT_MODULE|Q_TEMP[4]~41\) # (!\M_CNT_MODULE|Q_TEMP\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(5),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[4]~41\,
	combout => \M_CNT_MODULE|Q_TEMP[5]~42_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[5]~43\);

-- Location: FF_X14_Y12_N11
\M_CNT_MODULE|Q_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[5]~42_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(5));

-- Location: LCCOMB_X14_Y12_N12
\M_CNT_MODULE|Q_TEMP[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[6]~44_combout\ = (\M_CNT_MODULE|Q_TEMP\(6) & (\M_CNT_MODULE|Q_TEMP[5]~43\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(6) & (!\M_CNT_MODULE|Q_TEMP[5]~43\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[6]~45\ = CARRY((\M_CNT_MODULE|Q_TEMP\(6) & !\M_CNT_MODULE|Q_TEMP[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(6),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[5]~43\,
	combout => \M_CNT_MODULE|Q_TEMP[6]~44_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[6]~45\);

-- Location: FF_X14_Y12_N13
\M_CNT_MODULE|Q_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[6]~44_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(6));

-- Location: LCCOMB_X14_Y12_N14
\M_CNT_MODULE|Q_TEMP[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[7]~46_combout\ = (\M_CNT_MODULE|Q_TEMP\(7) & (!\M_CNT_MODULE|Q_TEMP[6]~45\)) # (!\M_CNT_MODULE|Q_TEMP\(7) & ((\M_CNT_MODULE|Q_TEMP[6]~45\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[7]~47\ = CARRY((!\M_CNT_MODULE|Q_TEMP[6]~45\) # (!\M_CNT_MODULE|Q_TEMP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(7),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[6]~45\,
	combout => \M_CNT_MODULE|Q_TEMP[7]~46_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[7]~47\);

-- Location: FF_X14_Y12_N15
\M_CNT_MODULE|Q_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[7]~46_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(7));

-- Location: LCCOMB_X14_Y12_N16
\M_CNT_MODULE|Q_TEMP[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[8]~48_combout\ = (\M_CNT_MODULE|Q_TEMP\(8) & (\M_CNT_MODULE|Q_TEMP[7]~47\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(8) & (!\M_CNT_MODULE|Q_TEMP[7]~47\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[8]~49\ = CARRY((\M_CNT_MODULE|Q_TEMP\(8) & !\M_CNT_MODULE|Q_TEMP[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(8),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[7]~47\,
	combout => \M_CNT_MODULE|Q_TEMP[8]~48_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[8]~49\);

-- Location: FF_X14_Y12_N17
\M_CNT_MODULE|Q_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[8]~48_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(8));

-- Location: LCCOMB_X14_Y12_N18
\M_CNT_MODULE|Q_TEMP[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[9]~50_combout\ = (\M_CNT_MODULE|Q_TEMP\(9) & (!\M_CNT_MODULE|Q_TEMP[8]~49\)) # (!\M_CNT_MODULE|Q_TEMP\(9) & ((\M_CNT_MODULE|Q_TEMP[8]~49\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[9]~51\ = CARRY((!\M_CNT_MODULE|Q_TEMP[8]~49\) # (!\M_CNT_MODULE|Q_TEMP\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(9),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[8]~49\,
	combout => \M_CNT_MODULE|Q_TEMP[9]~50_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[9]~51\);

-- Location: FF_X14_Y12_N19
\M_CNT_MODULE|Q_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[9]~50_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(9));

-- Location: LCCOMB_X14_Y12_N20
\M_CNT_MODULE|Q_TEMP[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[10]~52_combout\ = (\M_CNT_MODULE|Q_TEMP\(10) & (\M_CNT_MODULE|Q_TEMP[9]~51\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(10) & (!\M_CNT_MODULE|Q_TEMP[9]~51\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[10]~53\ = CARRY((\M_CNT_MODULE|Q_TEMP\(10) & !\M_CNT_MODULE|Q_TEMP[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(10),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[9]~51\,
	combout => \M_CNT_MODULE|Q_TEMP[10]~52_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[10]~53\);

-- Location: FF_X14_Y12_N21
\M_CNT_MODULE|Q_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[10]~52_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(10));

-- Location: LCCOMB_X14_Y12_N22
\M_CNT_MODULE|Q_TEMP[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[11]~54_combout\ = (\M_CNT_MODULE|Q_TEMP\(11) & (!\M_CNT_MODULE|Q_TEMP[10]~53\)) # (!\M_CNT_MODULE|Q_TEMP\(11) & ((\M_CNT_MODULE|Q_TEMP[10]~53\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[11]~55\ = CARRY((!\M_CNT_MODULE|Q_TEMP[10]~53\) # (!\M_CNT_MODULE|Q_TEMP\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(11),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[10]~53\,
	combout => \M_CNT_MODULE|Q_TEMP[11]~54_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[11]~55\);

-- Location: FF_X14_Y12_N23
\M_CNT_MODULE|Q_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[11]~54_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(11));

-- Location: LCCOMB_X14_Y12_N24
\M_CNT_MODULE|Q_TEMP[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[12]~56_combout\ = (\M_CNT_MODULE|Q_TEMP\(12) & (\M_CNT_MODULE|Q_TEMP[11]~55\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(12) & (!\M_CNT_MODULE|Q_TEMP[11]~55\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[12]~57\ = CARRY((\M_CNT_MODULE|Q_TEMP\(12) & !\M_CNT_MODULE|Q_TEMP[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(12),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[11]~55\,
	combout => \M_CNT_MODULE|Q_TEMP[12]~56_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[12]~57\);

-- Location: FF_X14_Y12_N25
\M_CNT_MODULE|Q_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[12]~56_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(12));

-- Location: LCCOMB_X14_Y12_N26
\M_CNT_MODULE|Q_TEMP[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[13]~58_combout\ = (\M_CNT_MODULE|Q_TEMP\(13) & (!\M_CNT_MODULE|Q_TEMP[12]~57\)) # (!\M_CNT_MODULE|Q_TEMP\(13) & ((\M_CNT_MODULE|Q_TEMP[12]~57\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[13]~59\ = CARRY((!\M_CNT_MODULE|Q_TEMP[12]~57\) # (!\M_CNT_MODULE|Q_TEMP\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(13),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[12]~57\,
	combout => \M_CNT_MODULE|Q_TEMP[13]~58_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[13]~59\);

-- Location: FF_X14_Y12_N27
\M_CNT_MODULE|Q_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[13]~58_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(13));

-- Location: LCCOMB_X14_Y12_N28
\M_CNT_MODULE|Q_TEMP[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[14]~60_combout\ = (\M_CNT_MODULE|Q_TEMP\(14) & (\M_CNT_MODULE|Q_TEMP[13]~59\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(14) & (!\M_CNT_MODULE|Q_TEMP[13]~59\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[14]~61\ = CARRY((\M_CNT_MODULE|Q_TEMP\(14) & !\M_CNT_MODULE|Q_TEMP[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(14),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[13]~59\,
	combout => \M_CNT_MODULE|Q_TEMP[14]~60_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[14]~61\);

-- Location: FF_X14_Y12_N29
\M_CNT_MODULE|Q_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[14]~60_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(14));

-- Location: LCCOMB_X14_Y12_N30
\M_CNT_MODULE|Q_TEMP[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[15]~62_combout\ = (\M_CNT_MODULE|Q_TEMP\(15) & (!\M_CNT_MODULE|Q_TEMP[14]~61\)) # (!\M_CNT_MODULE|Q_TEMP\(15) & ((\M_CNT_MODULE|Q_TEMP[14]~61\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[15]~63\ = CARRY((!\M_CNT_MODULE|Q_TEMP[14]~61\) # (!\M_CNT_MODULE|Q_TEMP\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(15),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[14]~61\,
	combout => \M_CNT_MODULE|Q_TEMP[15]~62_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[15]~63\);

-- Location: FF_X14_Y12_N31
\M_CNT_MODULE|Q_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[15]~62_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(15));

-- Location: LCCOMB_X14_Y11_N0
\M_CNT_MODULE|Q_TEMP[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[16]~64_combout\ = (\M_CNT_MODULE|Q_TEMP\(16) & (\M_CNT_MODULE|Q_TEMP[15]~63\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(16) & (!\M_CNT_MODULE|Q_TEMP[15]~63\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[16]~65\ = CARRY((\M_CNT_MODULE|Q_TEMP\(16) & !\M_CNT_MODULE|Q_TEMP[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(16),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[15]~63\,
	combout => \M_CNT_MODULE|Q_TEMP[16]~64_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[16]~65\);

-- Location: FF_X14_Y11_N1
\M_CNT_MODULE|Q_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[16]~64_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(16));

-- Location: LCCOMB_X14_Y11_N2
\M_CNT_MODULE|Q_TEMP[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[17]~66_combout\ = (\M_CNT_MODULE|Q_TEMP\(17) & (!\M_CNT_MODULE|Q_TEMP[16]~65\)) # (!\M_CNT_MODULE|Q_TEMP\(17) & ((\M_CNT_MODULE|Q_TEMP[16]~65\) # (GND)))
-- \M_CNT_MODULE|Q_TEMP[17]~67\ = CARRY((!\M_CNT_MODULE|Q_TEMP[16]~65\) # (!\M_CNT_MODULE|Q_TEMP\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(17),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[16]~65\,
	combout => \M_CNT_MODULE|Q_TEMP[17]~66_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[17]~67\);

-- Location: FF_X14_Y11_N3
\M_CNT_MODULE|Q_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[17]~66_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(17));

-- Location: LCCOMB_X14_Y11_N4
\M_CNT_MODULE|Q_TEMP[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \M_CNT_MODULE|Q_TEMP[18]~68_combout\ = (\M_CNT_MODULE|Q_TEMP\(18) & (\M_CNT_MODULE|Q_TEMP[17]~67\ $ (GND))) # (!\M_CNT_MODULE|Q_TEMP\(18) & (!\M_CNT_MODULE|Q_TEMP[17]~67\ & VCC))
-- \M_CNT_MODULE|Q_TEMP[18]~69\ = CARRY((\M_CNT_MODULE|Q_TEMP\(18) & !\M_CNT_MODULE|Q_TEMP[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(18),
	datad => VCC,
	cin => \M_CNT_MODULE|Q_TEMP[17]~67\,
	combout => \M_CNT_MODULE|Q_TEMP[18]~68_combout\,
	cout => \M_CNT_MODULE|Q_TEMP[18]~69\);

-- Location: FF_X14_Y11_N5
\M_CNT_MODULE|Q_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[18]~68_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(18));

-- Location: FF_X14_Y11_N7
\M_CNT_MODULE|Q_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \M_CNT_MODULE|Q_TEMP[19]~70_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \M_CNT_MODULE|LessThan0~11_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M_CNT_MODULE|Q_TEMP\(19));

-- Location: LCCOMB_X16_Y7_N8
\M[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[19]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(19),
	combout => \M[19]~feeder_combout\);

-- Location: FF_X16_Y7_N9
\M[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(19));

-- Location: LCCOMB_X17_Y5_N18
\SHIFT_OUT_MODULE|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux3~0_combout\ = (!\SHIFT_OUT_MODULE|STAT\(0) & !\SHIFT_OUT_MODULE|STAT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIFT_OUT_MODULE|STAT\(0),
	datad => \SHIFT_OUT_MODULE|STAT\(1),
	combout => \SHIFT_OUT_MODULE|Mux3~0_combout\);

-- Location: FF_X16_Y7_N27
\SHIFT_OUT_MODULE|M_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(19),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(19));

-- Location: LCCOMB_X14_Y8_N20
\M[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[23]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(23),
	combout => \M[23]~feeder_combout\);

-- Location: FF_X14_Y8_N21
\M[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(23));

-- Location: LCCOMB_X14_Y8_N30
\SHIFT_OUT_MODULE|M_TEMP[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[23]~feeder_combout\ = M(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(23),
	combout => \SHIFT_OUT_MODULE|M_TEMP[23]~feeder_combout\);

-- Location: FF_X14_Y8_N31
\SHIFT_OUT_MODULE|M_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[23]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(23));

-- Location: LCCOMB_X16_Y7_N26
\SHIFT_OUT_MODULE|Mux107~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~7_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (\SHIFT_OUT_MODULE|INDEX\(2))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|M_TEMP\(23)))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (\SHIFT_OUT_MODULE|M_TEMP\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(19),
	datad => \SHIFT_OUT_MODULE|M_TEMP\(23),
	combout => \SHIFT_OUT_MODULE|Mux107~7_combout\);

-- Location: LCCOMB_X16_Y7_N14
\M[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[31]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(31),
	combout => \M[31]~feeder_combout\);

-- Location: FF_X16_Y7_N15
\M[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(31));

-- Location: FF_X16_Y7_N29
\SHIFT_OUT_MODULE|M_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(31),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(31));

-- Location: LCCOMB_X16_Y7_N24
\M[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[27]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M_CNT_MODULE|Q_TEMP\(27),
	combout => \M[27]~feeder_combout\);

-- Location: FF_X16_Y7_N25
\M[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(27));

-- Location: LCCOMB_X16_Y7_N18
\SHIFT_OUT_MODULE|M_TEMP[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[27]~feeder_combout\ = M(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(27),
	combout => \SHIFT_OUT_MODULE|M_TEMP[27]~feeder_combout\);

-- Location: FF_X16_Y7_N19
\SHIFT_OUT_MODULE|M_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[27]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(27));

-- Location: LCCOMB_X16_Y7_N28
\SHIFT_OUT_MODULE|Mux107~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~8_combout\ = (\SHIFT_OUT_MODULE|Mux107~7_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(31))) # (!\SHIFT_OUT_MODULE|INDEX\(3)))) # (!\SHIFT_OUT_MODULE|Mux107~7_combout\ & (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|M_TEMP\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~7_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(3),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(31),
	datad => \SHIFT_OUT_MODULE|M_TEMP\(27),
	combout => \SHIFT_OUT_MODULE|Mux107~8_combout\);

-- Location: LCCOMB_X16_Y7_N6
\M[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[30]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(30),
	combout => \M[30]~feeder_combout\);

-- Location: FF_X16_Y7_N7
\M[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(30));

-- Location: LCCOMB_X16_Y7_N12
\SHIFT_OUT_MODULE|M_TEMP[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[30]~feeder_combout\ = M(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(30),
	combout => \SHIFT_OUT_MODULE|M_TEMP[30]~feeder_combout\);

-- Location: FF_X16_Y7_N13
\SHIFT_OUT_MODULE|M_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[30]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(30));

-- Location: LCCOMB_X16_Y7_N4
\M[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[22]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(22),
	combout => \M[22]~feeder_combout\);

-- Location: FF_X16_Y7_N5
\M[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(22));

-- Location: FF_X16_Y7_N31
\SHIFT_OUT_MODULE|M_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(22),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(22));

-- Location: LCCOMB_X16_Y7_N22
\M[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[18]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(18),
	combout => \M[18]~feeder_combout\);

-- Location: FF_X16_Y7_N23
\M[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(18));

-- Location: FF_X16_Y7_N17
\SHIFT_OUT_MODULE|M_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(18),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(18));

-- Location: LCCOMB_X16_Y7_N10
\M[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[26]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(26),
	combout => \M[26]~feeder_combout\);

-- Location: FF_X16_Y7_N11
\M[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(26));

-- Location: LCCOMB_X16_Y7_N20
\SHIFT_OUT_MODULE|M_TEMP[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[26]~feeder_combout\ = M(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(26),
	combout => \SHIFT_OUT_MODULE|M_TEMP[26]~feeder_combout\);

-- Location: FF_X16_Y7_N21
\SHIFT_OUT_MODULE|M_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[26]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(26));

-- Location: LCCOMB_X16_Y7_N16
\SHIFT_OUT_MODULE|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~0_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2)) # ((\SHIFT_OUT_MODULE|M_TEMP\(26))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & (!\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|M_TEMP\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(18),
	datad => \SHIFT_OUT_MODULE|M_TEMP\(26),
	combout => \SHIFT_OUT_MODULE|Mux107~0_combout\);

-- Location: LCCOMB_X16_Y7_N30
\SHIFT_OUT_MODULE|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~1_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|Mux107~0_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(30))) # (!\SHIFT_OUT_MODULE|Mux107~0_combout\ & ((\SHIFT_OUT_MODULE|M_TEMP\(22)))))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (((\SHIFT_OUT_MODULE|Mux107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|M_TEMP\(30),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(22),
	datad => \SHIFT_OUT_MODULE|Mux107~0_combout\,
	combout => \SHIFT_OUT_MODULE|Mux107~1_combout\);

-- Location: LCCOMB_X14_Y8_N28
\M[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[21]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M_CNT_MODULE|Q_TEMP\(21),
	combout => \M[21]~feeder_combout\);

-- Location: FF_X14_Y8_N29
\M[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(21));

-- Location: LCCOMB_X14_Y8_N0
\SHIFT_OUT_MODULE|M_TEMP[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[21]~feeder_combout\ = M(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(21),
	combout => \SHIFT_OUT_MODULE|M_TEMP[21]~feeder_combout\);

-- Location: FF_X14_Y8_N1
\SHIFT_OUT_MODULE|M_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[21]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(21));

-- Location: FF_X14_Y10_N15
\M[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	asdata => \M_CNT_MODULE|Q_TEMP\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(17));

-- Location: FF_X14_Y10_N17
\SHIFT_OUT_MODULE|M_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(17),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(17));

-- Location: LCCOMB_X14_Y10_N16
\SHIFT_OUT_MODULE|Mux107~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~2_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|M_TEMP\(21))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- ((\SHIFT_OUT_MODULE|M_TEMP\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|M_TEMP\(21),
	datab => \SHIFT_OUT_MODULE|INDEX\(3),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(17),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux107~2_combout\);

-- Location: LCCOMB_X14_Y8_N6
\M[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[25]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(25),
	combout => \M[25]~feeder_combout\);

-- Location: FF_X14_Y8_N7
\M[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(25));

-- Location: LCCOMB_X14_Y8_N18
\SHIFT_OUT_MODULE|M_TEMP[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[25]~feeder_combout\ = M(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(25),
	combout => \SHIFT_OUT_MODULE|M_TEMP[25]~feeder_combout\);

-- Location: FF_X14_Y8_N19
\SHIFT_OUT_MODULE|M_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[25]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(25));

-- Location: LCCOMB_X14_Y8_N4
\M[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[29]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M_CNT_MODULE|Q_TEMP\(29),
	combout => \M[29]~feeder_combout\);

-- Location: FF_X14_Y8_N5
\M[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(29));

-- Location: FF_X14_Y8_N27
\SHIFT_OUT_MODULE|M_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(29),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(29));

-- Location: LCCOMB_X14_Y8_N26
\SHIFT_OUT_MODULE|Mux107~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~3_combout\ = (\SHIFT_OUT_MODULE|Mux107~2_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(29)) # (!\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|Mux107~2_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(25) & ((\SHIFT_OUT_MODULE|INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~2_combout\,
	datab => \SHIFT_OUT_MODULE|M_TEMP\(25),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(29),
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux107~3_combout\);

-- Location: LCCOMB_X14_Y8_N16
\M[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[24]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(24),
	combout => \M[24]~feeder_combout\);

-- Location: FF_X14_Y8_N17
\M[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(24));

-- Location: LCCOMB_X14_Y8_N14
\SHIFT_OUT_MODULE|M_TEMP[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[24]~feeder_combout\ = M(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(24),
	combout => \SHIFT_OUT_MODULE|M_TEMP[24]~feeder_combout\);

-- Location: FF_X14_Y8_N15
\SHIFT_OUT_MODULE|M_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[24]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(24));

-- Location: LCCOMB_X17_Y8_N8
\M[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[16]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(16),
	combout => \M[16]~feeder_combout\);

-- Location: FF_X17_Y8_N9
\M[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(16));

-- Location: FF_X17_Y8_N25
\SHIFT_OUT_MODULE|M_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(16),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(16));

-- Location: LCCOMB_X17_Y8_N24
\SHIFT_OUT_MODULE|Mux107~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~4_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|M_TEMP\(24)) # ((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|M_TEMP\(16) & !\SHIFT_OUT_MODULE|INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|M_TEMP\(24),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(16),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux107~4_combout\);

-- Location: LCCOMB_X17_Y8_N30
\M[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[28]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(28),
	combout => \M[28]~feeder_combout\);

-- Location: FF_X17_Y8_N31
\M[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(28));

-- Location: FF_X17_Y8_N5
\SHIFT_OUT_MODULE|M_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(28),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(28));

-- Location: LCCOMB_X17_Y8_N20
\M[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[20]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(20),
	combout => \M[20]~feeder_combout\);

-- Location: FF_X17_Y8_N21
\M[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(20));

-- Location: LCCOMB_X17_Y8_N18
\SHIFT_OUT_MODULE|M_TEMP[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[20]~feeder_combout\ = M(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(20),
	combout => \SHIFT_OUT_MODULE|M_TEMP[20]~feeder_combout\);

-- Location: FF_X17_Y8_N19
\SHIFT_OUT_MODULE|M_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[20]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(20));

-- Location: LCCOMB_X17_Y8_N4
\SHIFT_OUT_MODULE|Mux107~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~5_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|Mux107~4_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(28))) # (!\SHIFT_OUT_MODULE|Mux107~4_combout\ & ((\SHIFT_OUT_MODULE|M_TEMP\(20)))))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (\SHIFT_OUT_MODULE|Mux107~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(2),
	datab => \SHIFT_OUT_MODULE|Mux107~4_combout\,
	datac => \SHIFT_OUT_MODULE|M_TEMP\(28),
	datad => \SHIFT_OUT_MODULE|M_TEMP\(20),
	combout => \SHIFT_OUT_MODULE|Mux107~5_combout\);

-- Location: LCCOMB_X17_Y6_N4
\SHIFT_OUT_MODULE|Mux107~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~6_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1)) # ((\SHIFT_OUT_MODULE|Mux107~3_combout\)))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|Mux107~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|Mux107~3_combout\,
	datad => \SHIFT_OUT_MODULE|Mux107~5_combout\,
	combout => \SHIFT_OUT_MODULE|Mux107~6_combout\);

-- Location: LCCOMB_X16_Y6_N10
\SHIFT_OUT_MODULE|Mux107~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~9_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|Mux107~6_combout\ & (\SHIFT_OUT_MODULE|Mux107~8_combout\)) # (!\SHIFT_OUT_MODULE|Mux107~6_combout\ & ((\SHIFT_OUT_MODULE|Mux107~1_combout\))))) # 
-- (!\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|Mux107~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|Mux107~8_combout\,
	datac => \SHIFT_OUT_MODULE|Mux107~1_combout\,
	datad => \SHIFT_OUT_MODULE|Mux107~6_combout\,
	combout => \SHIFT_OUT_MODULE|Mux107~9_combout\);

-- Location: LCCOMB_X16_Y9_N16
\M[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[11]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(11),
	combout => \M[11]~feeder_combout\);

-- Location: FF_X16_Y9_N17
\M[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(11));

-- Location: LCCOMB_X16_Y9_N10
\SHIFT_OUT_MODULE|M_TEMP[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[11]~feeder_combout\ = M(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(11),
	combout => \SHIFT_OUT_MODULE|M_TEMP[11]~feeder_combout\);

-- Location: FF_X16_Y9_N11
\SHIFT_OUT_MODULE|M_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[11]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(11));

-- Location: LCCOMB_X16_Y9_N2
\M[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[9]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(9),
	combout => \M[9]~feeder_combout\);

-- Location: FF_X16_Y9_N3
\M[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(9));

-- Location: LCCOMB_X16_Y9_N18
\SHIFT_OUT_MODULE|M_TEMP[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[9]~feeder_combout\ = M(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(9),
	combout => \SHIFT_OUT_MODULE|M_TEMP[9]~feeder_combout\);

-- Location: FF_X16_Y9_N19
\SHIFT_OUT_MODULE|M_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[9]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(9));

-- Location: LCCOMB_X16_Y9_N22
\M[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[8]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(8),
	combout => \M[8]~feeder_combout\);

-- Location: FF_X16_Y9_N23
\M[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(8));

-- Location: FF_X16_Y9_N21
\SHIFT_OUT_MODULE|M_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(8),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(8));

-- Location: LCCOMB_X16_Y9_N20
\SHIFT_OUT_MODULE|Mux107~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~10_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|M_TEMP\(9))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- ((\SHIFT_OUT_MODULE|M_TEMP\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|M_TEMP\(9),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(8),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~10_combout\);

-- Location: LCCOMB_X16_Y9_N8
\M[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[10]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(10),
	combout => \M[10]~feeder_combout\);

-- Location: FF_X16_Y9_N9
\M[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(10));

-- Location: FF_X16_Y9_N13
\SHIFT_OUT_MODULE|M_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(10),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(10));

-- Location: LCCOMB_X16_Y9_N12
\SHIFT_OUT_MODULE|Mux107~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~11_combout\ = (\SHIFT_OUT_MODULE|Mux107~10_combout\ & ((\SHIFT_OUT_MODULE|M_TEMP\(11)) # ((!\SHIFT_OUT_MODULE|INDEX\(1))))) # (!\SHIFT_OUT_MODULE|Mux107~10_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(10) & 
-- \SHIFT_OUT_MODULE|INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|M_TEMP\(11),
	datab => \SHIFT_OUT_MODULE|Mux107~10_combout\,
	datac => \SHIFT_OUT_MODULE|M_TEMP\(10),
	datad => \SHIFT_OUT_MODULE|INDEX\(1),
	combout => \SHIFT_OUT_MODULE|Mux107~11_combout\);

-- Location: LCCOMB_X13_Y8_N0
\M[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[14]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(14),
	combout => \M[14]~feeder_combout\);

-- Location: FF_X13_Y8_N1
\M[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(14));

-- Location: LCCOMB_X13_Y8_N16
\SHIFT_OUT_MODULE|M_TEMP[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[14]~feeder_combout\ = M(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(14),
	combout => \SHIFT_OUT_MODULE|M_TEMP[14]~feeder_combout\);

-- Location: FF_X13_Y8_N17
\SHIFT_OUT_MODULE|M_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[14]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(14));

-- Location: LCCOMB_X13_Y8_N8
\M[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[12]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(12),
	combout => \M[12]~feeder_combout\);

-- Location: FF_X13_Y8_N9
\M[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(12));

-- Location: FF_X13_Y8_N11
\SHIFT_OUT_MODULE|M_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(12),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(12));

-- Location: LCCOMB_X13_Y8_N10
\SHIFT_OUT_MODULE|Mux107~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~17_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|M_TEMP\(14)) # ((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|M_TEMP\(12) & !\SHIFT_OUT_MODULE|INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|M_TEMP\(14),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(12),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~17_combout\);

-- Location: LCCOMB_X13_Y8_N12
\M[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[13]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M_CNT_MODULE|Q_TEMP\(13),
	combout => \M[13]~feeder_combout\);

-- Location: FF_X13_Y8_N13
\M[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(13));

-- Location: LCCOMB_X13_Y8_N18
\SHIFT_OUT_MODULE|M_TEMP[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[13]~feeder_combout\ = M(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(13),
	combout => \SHIFT_OUT_MODULE|M_TEMP[13]~feeder_combout\);

-- Location: FF_X13_Y8_N19
\SHIFT_OUT_MODULE|M_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[13]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(13));

-- Location: FF_X13_Y8_N5
\M[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	asdata => \M_CNT_MODULE|Q_TEMP\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(15));

-- Location: FF_X13_Y8_N25
\SHIFT_OUT_MODULE|M_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(15),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(15));

-- Location: LCCOMB_X13_Y8_N24
\SHIFT_OUT_MODULE|Mux107~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~18_combout\ = (\SHIFT_OUT_MODULE|Mux107~17_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(15)) # (!\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|Mux107~17_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(13) & 
-- ((\SHIFT_OUT_MODULE|INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~17_combout\,
	datab => \SHIFT_OUT_MODULE|M_TEMP\(13),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(15),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~18_combout\);

-- Location: LCCOMB_X16_Y8_N10
\M[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[1]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(1),
	combout => \M[1]~feeder_combout\);

-- Location: FF_X16_Y8_N11
\M[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(1));

-- Location: LCCOMB_X16_Y8_N18
\SHIFT_OUT_MODULE|M_TEMP[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[1]~feeder_combout\ = M(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(1),
	combout => \SHIFT_OUT_MODULE|M_TEMP[1]~feeder_combout\);

-- Location: FF_X16_Y8_N19
\SHIFT_OUT_MODULE|M_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[1]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(1));

-- Location: LCCOMB_X16_Y8_N8
\M[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[0]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M_CNT_MODULE|Q_TEMP\(0),
	combout => \M[0]~feeder_combout\);

-- Location: FF_X16_Y8_N9
\M[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(0));

-- Location: FF_X16_Y8_N27
\SHIFT_OUT_MODULE|M_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(0),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(0));

-- Location: LCCOMB_X16_Y8_N26
\SHIFT_OUT_MODULE|Mux107~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~14_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|M_TEMP\(1))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- ((\SHIFT_OUT_MODULE|M_TEMP\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|M_TEMP\(1),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(0),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~14_combout\);

-- Location: FF_X16_Y8_N21
\M[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	asdata => \M_CNT_MODULE|Q_TEMP\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(2));

-- Location: LCCOMB_X16_Y8_N28
\SHIFT_OUT_MODULE|M_TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[2]~feeder_combout\ = M(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(2),
	combout => \SHIFT_OUT_MODULE|M_TEMP[2]~feeder_combout\);

-- Location: FF_X16_Y8_N29
\SHIFT_OUT_MODULE|M_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[2]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(2));

-- Location: LCCOMB_X16_Y8_N4
\M[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[3]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(3),
	combout => \M[3]~feeder_combout\);

-- Location: FF_X16_Y8_N5
\M[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(3));

-- Location: FF_X16_Y8_N31
\SHIFT_OUT_MODULE|M_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(3),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(3));

-- Location: LCCOMB_X16_Y8_N30
\SHIFT_OUT_MODULE|Mux107~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~15_combout\ = (\SHIFT_OUT_MODULE|Mux107~14_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(3)) # (!\SHIFT_OUT_MODULE|INDEX\(1))))) # (!\SHIFT_OUT_MODULE|Mux107~14_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(2) & 
-- ((\SHIFT_OUT_MODULE|INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~14_combout\,
	datab => \SHIFT_OUT_MODULE|M_TEMP\(2),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(3),
	datad => \SHIFT_OUT_MODULE|INDEX\(1),
	combout => \SHIFT_OUT_MODULE|Mux107~15_combout\);

-- Location: LCCOMB_X16_Y9_N6
\M[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[6]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(6),
	combout => \M[6]~feeder_combout\);

-- Location: FF_X16_Y9_N7
\M[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(6));

-- Location: LCCOMB_X16_Y9_N0
\SHIFT_OUT_MODULE|M_TEMP[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[6]~feeder_combout\ = M(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(6),
	combout => \SHIFT_OUT_MODULE|M_TEMP[6]~feeder_combout\);

-- Location: FF_X16_Y9_N1
\SHIFT_OUT_MODULE|M_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[6]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(6));

-- Location: LCCOMB_X16_Y9_N4
\M[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[4]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(4),
	combout => \M[4]~feeder_combout\);

-- Location: FF_X16_Y9_N5
\M[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(4));

-- Location: FF_X16_Y9_N31
\SHIFT_OUT_MODULE|M_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(4),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(4));

-- Location: LCCOMB_X16_Y9_N30
\SHIFT_OUT_MODULE|Mux107~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~12_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|M_TEMP\(6)) # ((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|M_TEMP\(4) & !\SHIFT_OUT_MODULE|INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|M_TEMP\(6),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(4),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~12_combout\);

-- Location: LCCOMB_X13_Y8_N28
\M[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[5]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_CNT_MODULE|Q_TEMP\(5),
	combout => \M[5]~feeder_combout\);

-- Location: FF_X13_Y8_N29
\M[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(5));

-- Location: LCCOMB_X13_Y8_N30
\SHIFT_OUT_MODULE|M_TEMP[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|M_TEMP[5]~feeder_combout\ = M(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => M(5),
	combout => \SHIFT_OUT_MODULE|M_TEMP[5]~feeder_combout\);

-- Location: FF_X13_Y8_N31
\SHIFT_OUT_MODULE|M_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|M_TEMP[5]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(5));

-- Location: LCCOMB_X16_Y8_N22
\M[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M[7]~feeder_combout\ = \M_CNT_MODULE|Q_TEMP\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_CNT_MODULE|Q_TEMP\(7),
	combout => \M[7]~feeder_combout\);

-- Location: FF_X16_Y8_N23
\M[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \M[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(7));

-- Location: FF_X16_Y8_N17
\SHIFT_OUT_MODULE|M_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => M(7),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_TEMP\(7));

-- Location: LCCOMB_X16_Y8_N16
\SHIFT_OUT_MODULE|Mux107~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~13_combout\ = (\SHIFT_OUT_MODULE|Mux107~12_combout\ & (((\SHIFT_OUT_MODULE|M_TEMP\(7)) # (!\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|Mux107~12_combout\ & (\SHIFT_OUT_MODULE|M_TEMP\(5) & 
-- ((\SHIFT_OUT_MODULE|INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~12_combout\,
	datab => \SHIFT_OUT_MODULE|M_TEMP\(5),
	datac => \SHIFT_OUT_MODULE|M_TEMP\(7),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux107~13_combout\);

-- Location: LCCOMB_X17_Y8_N22
\SHIFT_OUT_MODULE|Mux107~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~16_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|Mux107~13_combout\))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (\SHIFT_OUT_MODULE|Mux107~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|Mux107~15_combout\,
	datac => \SHIFT_OUT_MODULE|Mux107~13_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux107~16_combout\);

-- Location: LCCOMB_X17_Y6_N2
\SHIFT_OUT_MODULE|Mux107~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~19_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|Mux107~16_combout\ & ((\SHIFT_OUT_MODULE|Mux107~18_combout\))) # (!\SHIFT_OUT_MODULE|Mux107~16_combout\ & (\SHIFT_OUT_MODULE|Mux107~11_combout\)))) # 
-- (!\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|Mux107~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|Mux107~11_combout\,
	datac => \SHIFT_OUT_MODULE|Mux107~18_combout\,
	datad => \SHIFT_OUT_MODULE|Mux107~16_combout\,
	combout => \SHIFT_OUT_MODULE|Mux107~19_combout\);

-- Location: LCCOMB_X16_Y6_N20
\SHIFT_OUT_MODULE|Mux107~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~20_combout\ = (\SHIFT_OUT_MODULE|INDEX\(4) & (\SHIFT_OUT_MODULE|Mux107~9_combout\)) # (!\SHIFT_OUT_MODULE|INDEX\(4) & ((\SHIFT_OUT_MODULE|Mux107~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux107~9_combout\,
	datac => \SHIFT_OUT_MODULE|INDEX\(4),
	datad => \SHIFT_OUT_MODULE|Mux107~19_combout\,
	combout => \SHIFT_OUT_MODULE|Mux107~20_combout\);

-- Location: LCCOMB_X17_Y5_N26
\SHIFT_OUT_MODULE|Mux107~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux107~21_combout\ = (!\SHIFT_OUT_MODULE|STAT\(0) & \SHIFT_OUT_MODULE|STAT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIFT_OUT_MODULE|STAT\(0),
	datad => \SHIFT_OUT_MODULE|STAT\(1),
	combout => \SHIFT_OUT_MODULE|Mux107~21_combout\);

-- Location: FF_X16_Y6_N21
\SHIFT_OUT_MODULE|M_ARDUINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|Mux107~20_combout\,
	ena => \SHIFT_OUT_MODULE|Mux107~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|M_ARDUINO~q\);

-- Location: IOIBUF_X0_Y11_N15
\CLK_SIGNAL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_SIGNAL,
	o => \CLK_SIGNAL~input_o\);

-- Location: CLKCTRL_G1
\CLK_SIGNAL~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_SIGNAL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_SIGNAL~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y11_N0
\N_CNT_MODULE|Q_TEMP[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[0]~32_combout\ = \N_CNT_MODULE|Q_TEMP\(0) $ (VCC)
-- \N_CNT_MODULE|Q_TEMP[0]~33\ = CARRY(\N_CNT_MODULE|Q_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(0),
	datad => VCC,
	combout => \N_CNT_MODULE|Q_TEMP[0]~32_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[0]~33\);

-- Location: LCCOMB_X16_Y11_N2
\N_CNT_MODULE|Q_TEMP[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[1]~34_combout\ = (\N_CNT_MODULE|Q_TEMP\(1) & (!\N_CNT_MODULE|Q_TEMP[0]~33\)) # (!\N_CNT_MODULE|Q_TEMP\(1) & ((\N_CNT_MODULE|Q_TEMP[0]~33\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[1]~35\ = CARRY((!\N_CNT_MODULE|Q_TEMP[0]~33\) # (!\N_CNT_MODULE|Q_TEMP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(1),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[0]~33\,
	combout => \N_CNT_MODULE|Q_TEMP[1]~34_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[1]~35\);

-- Location: FF_X16_Y11_N3
\N_CNT_MODULE|Q_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[1]~34_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(1));

-- Location: LCCOMB_X16_Y11_N4
\N_CNT_MODULE|Q_TEMP[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[2]~36_combout\ = (\N_CNT_MODULE|Q_TEMP\(2) & (\N_CNT_MODULE|Q_TEMP[1]~35\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(2) & (!\N_CNT_MODULE|Q_TEMP[1]~35\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[2]~37\ = CARRY((\N_CNT_MODULE|Q_TEMP\(2) & !\N_CNT_MODULE|Q_TEMP[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(2),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[1]~35\,
	combout => \N_CNT_MODULE|Q_TEMP[2]~36_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[2]~37\);

-- Location: FF_X16_Y11_N5
\N_CNT_MODULE|Q_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[2]~36_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(2));

-- Location: LCCOMB_X16_Y11_N6
\N_CNT_MODULE|Q_TEMP[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[3]~38_combout\ = (\N_CNT_MODULE|Q_TEMP\(3) & (!\N_CNT_MODULE|Q_TEMP[2]~37\)) # (!\N_CNT_MODULE|Q_TEMP\(3) & ((\N_CNT_MODULE|Q_TEMP[2]~37\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[3]~39\ = CARRY((!\N_CNT_MODULE|Q_TEMP[2]~37\) # (!\N_CNT_MODULE|Q_TEMP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(3),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[2]~37\,
	combout => \N_CNT_MODULE|Q_TEMP[3]~38_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[3]~39\);

-- Location: FF_X16_Y11_N7
\N_CNT_MODULE|Q_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[3]~38_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(3));

-- Location: LCCOMB_X16_Y11_N8
\N_CNT_MODULE|Q_TEMP[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[4]~40_combout\ = (\N_CNT_MODULE|Q_TEMP\(4) & (\N_CNT_MODULE|Q_TEMP[3]~39\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(4) & (!\N_CNT_MODULE|Q_TEMP[3]~39\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[4]~41\ = CARRY((\N_CNT_MODULE|Q_TEMP\(4) & !\N_CNT_MODULE|Q_TEMP[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(4),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[3]~39\,
	combout => \N_CNT_MODULE|Q_TEMP[4]~40_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[4]~41\);

-- Location: FF_X16_Y11_N9
\N_CNT_MODULE|Q_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[4]~40_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(4));

-- Location: LCCOMB_X16_Y11_N10
\N_CNT_MODULE|Q_TEMP[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[5]~42_combout\ = (\N_CNT_MODULE|Q_TEMP\(5) & (!\N_CNT_MODULE|Q_TEMP[4]~41\)) # (!\N_CNT_MODULE|Q_TEMP\(5) & ((\N_CNT_MODULE|Q_TEMP[4]~41\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[5]~43\ = CARRY((!\N_CNT_MODULE|Q_TEMP[4]~41\) # (!\N_CNT_MODULE|Q_TEMP\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(5),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[4]~41\,
	combout => \N_CNT_MODULE|Q_TEMP[5]~42_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[5]~43\);

-- Location: FF_X16_Y11_N11
\N_CNT_MODULE|Q_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[5]~42_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(5));

-- Location: LCCOMB_X16_Y11_N12
\N_CNT_MODULE|Q_TEMP[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[6]~44_combout\ = (\N_CNT_MODULE|Q_TEMP\(6) & (\N_CNT_MODULE|Q_TEMP[5]~43\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(6) & (!\N_CNT_MODULE|Q_TEMP[5]~43\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[6]~45\ = CARRY((\N_CNT_MODULE|Q_TEMP\(6) & !\N_CNT_MODULE|Q_TEMP[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(6),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[5]~43\,
	combout => \N_CNT_MODULE|Q_TEMP[6]~44_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[6]~45\);

-- Location: FF_X16_Y11_N13
\N_CNT_MODULE|Q_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[6]~44_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(6));

-- Location: LCCOMB_X16_Y11_N14
\N_CNT_MODULE|Q_TEMP[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[7]~46_combout\ = (\N_CNT_MODULE|Q_TEMP\(7) & (!\N_CNT_MODULE|Q_TEMP[6]~45\)) # (!\N_CNT_MODULE|Q_TEMP\(7) & ((\N_CNT_MODULE|Q_TEMP[6]~45\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[7]~47\ = CARRY((!\N_CNT_MODULE|Q_TEMP[6]~45\) # (!\N_CNT_MODULE|Q_TEMP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(7),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[6]~45\,
	combout => \N_CNT_MODULE|Q_TEMP[7]~46_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[7]~47\);

-- Location: FF_X16_Y11_N15
\N_CNT_MODULE|Q_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[7]~46_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(7));

-- Location: LCCOMB_X16_Y11_N16
\N_CNT_MODULE|Q_TEMP[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[8]~48_combout\ = (\N_CNT_MODULE|Q_TEMP\(8) & (\N_CNT_MODULE|Q_TEMP[7]~47\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(8) & (!\N_CNT_MODULE|Q_TEMP[7]~47\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[8]~49\ = CARRY((\N_CNT_MODULE|Q_TEMP\(8) & !\N_CNT_MODULE|Q_TEMP[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(8),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[7]~47\,
	combout => \N_CNT_MODULE|Q_TEMP[8]~48_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[8]~49\);

-- Location: FF_X16_Y11_N17
\N_CNT_MODULE|Q_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[8]~48_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(8));

-- Location: LCCOMB_X16_Y11_N18
\N_CNT_MODULE|Q_TEMP[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[9]~50_combout\ = (\N_CNT_MODULE|Q_TEMP\(9) & (!\N_CNT_MODULE|Q_TEMP[8]~49\)) # (!\N_CNT_MODULE|Q_TEMP\(9) & ((\N_CNT_MODULE|Q_TEMP[8]~49\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[9]~51\ = CARRY((!\N_CNT_MODULE|Q_TEMP[8]~49\) # (!\N_CNT_MODULE|Q_TEMP\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(9),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[8]~49\,
	combout => \N_CNT_MODULE|Q_TEMP[9]~50_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[9]~51\);

-- Location: FF_X16_Y11_N19
\N_CNT_MODULE|Q_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[9]~50_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(9));

-- Location: LCCOMB_X16_Y11_N20
\N_CNT_MODULE|Q_TEMP[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[10]~52_combout\ = (\N_CNT_MODULE|Q_TEMP\(10) & (\N_CNT_MODULE|Q_TEMP[9]~51\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(10) & (!\N_CNT_MODULE|Q_TEMP[9]~51\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[10]~53\ = CARRY((\N_CNT_MODULE|Q_TEMP\(10) & !\N_CNT_MODULE|Q_TEMP[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(10),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[9]~51\,
	combout => \N_CNT_MODULE|Q_TEMP[10]~52_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[10]~53\);

-- Location: FF_X16_Y11_N21
\N_CNT_MODULE|Q_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[10]~52_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(10));

-- Location: LCCOMB_X16_Y11_N22
\N_CNT_MODULE|Q_TEMP[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[11]~54_combout\ = (\N_CNT_MODULE|Q_TEMP\(11) & (!\N_CNT_MODULE|Q_TEMP[10]~53\)) # (!\N_CNT_MODULE|Q_TEMP\(11) & ((\N_CNT_MODULE|Q_TEMP[10]~53\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[11]~55\ = CARRY((!\N_CNT_MODULE|Q_TEMP[10]~53\) # (!\N_CNT_MODULE|Q_TEMP\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(11),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[10]~53\,
	combout => \N_CNT_MODULE|Q_TEMP[11]~54_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[11]~55\);

-- Location: FF_X16_Y11_N23
\N_CNT_MODULE|Q_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[11]~54_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(11));

-- Location: LCCOMB_X16_Y11_N24
\N_CNT_MODULE|Q_TEMP[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[12]~56_combout\ = (\N_CNT_MODULE|Q_TEMP\(12) & (\N_CNT_MODULE|Q_TEMP[11]~55\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(12) & (!\N_CNT_MODULE|Q_TEMP[11]~55\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[12]~57\ = CARRY((\N_CNT_MODULE|Q_TEMP\(12) & !\N_CNT_MODULE|Q_TEMP[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(12),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[11]~55\,
	combout => \N_CNT_MODULE|Q_TEMP[12]~56_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[12]~57\);

-- Location: FF_X16_Y11_N25
\N_CNT_MODULE|Q_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[12]~56_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(12));

-- Location: LCCOMB_X16_Y11_N26
\N_CNT_MODULE|Q_TEMP[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[13]~58_combout\ = (\N_CNT_MODULE|Q_TEMP\(13) & (!\N_CNT_MODULE|Q_TEMP[12]~57\)) # (!\N_CNT_MODULE|Q_TEMP\(13) & ((\N_CNT_MODULE|Q_TEMP[12]~57\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[13]~59\ = CARRY((!\N_CNT_MODULE|Q_TEMP[12]~57\) # (!\N_CNT_MODULE|Q_TEMP\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(13),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[12]~57\,
	combout => \N_CNT_MODULE|Q_TEMP[13]~58_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[13]~59\);

-- Location: FF_X16_Y11_N27
\N_CNT_MODULE|Q_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[13]~58_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(13));

-- Location: LCCOMB_X16_Y11_N28
\N_CNT_MODULE|Q_TEMP[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[14]~60_combout\ = (\N_CNT_MODULE|Q_TEMP\(14) & (\N_CNT_MODULE|Q_TEMP[13]~59\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(14) & (!\N_CNT_MODULE|Q_TEMP[13]~59\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[14]~61\ = CARRY((\N_CNT_MODULE|Q_TEMP\(14) & !\N_CNT_MODULE|Q_TEMP[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(14),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[13]~59\,
	combout => \N_CNT_MODULE|Q_TEMP[14]~60_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[14]~61\);

-- Location: FF_X16_Y11_N29
\N_CNT_MODULE|Q_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[14]~60_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(14));

-- Location: LCCOMB_X16_Y11_N30
\N_CNT_MODULE|Q_TEMP[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[15]~62_combout\ = (\N_CNT_MODULE|Q_TEMP\(15) & (!\N_CNT_MODULE|Q_TEMP[14]~61\)) # (!\N_CNT_MODULE|Q_TEMP\(15) & ((\N_CNT_MODULE|Q_TEMP[14]~61\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[15]~63\ = CARRY((!\N_CNT_MODULE|Q_TEMP[14]~61\) # (!\N_CNT_MODULE|Q_TEMP\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(15),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[14]~61\,
	combout => \N_CNT_MODULE|Q_TEMP[15]~62_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[15]~63\);

-- Location: FF_X16_Y11_N31
\N_CNT_MODULE|Q_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[15]~62_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(15));

-- Location: LCCOMB_X16_Y10_N0
\N_CNT_MODULE|Q_TEMP[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[16]~64_combout\ = (\N_CNT_MODULE|Q_TEMP\(16) & (\N_CNT_MODULE|Q_TEMP[15]~63\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(16) & (!\N_CNT_MODULE|Q_TEMP[15]~63\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[16]~65\ = CARRY((\N_CNT_MODULE|Q_TEMP\(16) & !\N_CNT_MODULE|Q_TEMP[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(16),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[15]~63\,
	combout => \N_CNT_MODULE|Q_TEMP[16]~64_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[16]~65\);

-- Location: FF_X16_Y10_N1
\N_CNT_MODULE|Q_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[16]~64_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(16));

-- Location: LCCOMB_X16_Y10_N2
\N_CNT_MODULE|Q_TEMP[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[17]~66_combout\ = (\N_CNT_MODULE|Q_TEMP\(17) & (!\N_CNT_MODULE|Q_TEMP[16]~65\)) # (!\N_CNT_MODULE|Q_TEMP\(17) & ((\N_CNT_MODULE|Q_TEMP[16]~65\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[17]~67\ = CARRY((!\N_CNT_MODULE|Q_TEMP[16]~65\) # (!\N_CNT_MODULE|Q_TEMP\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(17),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[16]~65\,
	combout => \N_CNT_MODULE|Q_TEMP[17]~66_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[17]~67\);

-- Location: FF_X16_Y10_N3
\N_CNT_MODULE|Q_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[17]~66_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(17));

-- Location: LCCOMB_X16_Y10_N4
\N_CNT_MODULE|Q_TEMP[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[18]~68_combout\ = (\N_CNT_MODULE|Q_TEMP\(18) & (\N_CNT_MODULE|Q_TEMP[17]~67\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(18) & (!\N_CNT_MODULE|Q_TEMP[17]~67\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[18]~69\ = CARRY((\N_CNT_MODULE|Q_TEMP\(18) & !\N_CNT_MODULE|Q_TEMP[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(18),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[17]~67\,
	combout => \N_CNT_MODULE|Q_TEMP[18]~68_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[18]~69\);

-- Location: FF_X16_Y10_N5
\N_CNT_MODULE|Q_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[18]~68_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(18));

-- Location: LCCOMB_X16_Y10_N6
\N_CNT_MODULE|Q_TEMP[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[19]~70_combout\ = (\N_CNT_MODULE|Q_TEMP\(19) & (!\N_CNT_MODULE|Q_TEMP[18]~69\)) # (!\N_CNT_MODULE|Q_TEMP\(19) & ((\N_CNT_MODULE|Q_TEMP[18]~69\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[19]~71\ = CARRY((!\N_CNT_MODULE|Q_TEMP[18]~69\) # (!\N_CNT_MODULE|Q_TEMP\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(19),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[18]~69\,
	combout => \N_CNT_MODULE|Q_TEMP[19]~70_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[19]~71\);

-- Location: FF_X16_Y10_N7
\N_CNT_MODULE|Q_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[19]~70_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(19));

-- Location: LCCOMB_X16_Y10_N8
\N_CNT_MODULE|Q_TEMP[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[20]~72_combout\ = (\N_CNT_MODULE|Q_TEMP\(20) & (\N_CNT_MODULE|Q_TEMP[19]~71\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(20) & (!\N_CNT_MODULE|Q_TEMP[19]~71\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[20]~73\ = CARRY((\N_CNT_MODULE|Q_TEMP\(20) & !\N_CNT_MODULE|Q_TEMP[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(20),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[19]~71\,
	combout => \N_CNT_MODULE|Q_TEMP[20]~72_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[20]~73\);

-- Location: FF_X16_Y10_N9
\N_CNT_MODULE|Q_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[20]~72_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(20));

-- Location: LCCOMB_X16_Y10_N10
\N_CNT_MODULE|Q_TEMP[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[21]~74_combout\ = (\N_CNT_MODULE|Q_TEMP\(21) & (!\N_CNT_MODULE|Q_TEMP[20]~73\)) # (!\N_CNT_MODULE|Q_TEMP\(21) & ((\N_CNT_MODULE|Q_TEMP[20]~73\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[21]~75\ = CARRY((!\N_CNT_MODULE|Q_TEMP[20]~73\) # (!\N_CNT_MODULE|Q_TEMP\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(21),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[20]~73\,
	combout => \N_CNT_MODULE|Q_TEMP[21]~74_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[21]~75\);

-- Location: FF_X16_Y10_N11
\N_CNT_MODULE|Q_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[21]~74_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(21));

-- Location: LCCOMB_X16_Y10_N12
\N_CNT_MODULE|Q_TEMP[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[22]~76_combout\ = (\N_CNT_MODULE|Q_TEMP\(22) & (\N_CNT_MODULE|Q_TEMP[21]~75\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(22) & (!\N_CNT_MODULE|Q_TEMP[21]~75\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[22]~77\ = CARRY((\N_CNT_MODULE|Q_TEMP\(22) & !\N_CNT_MODULE|Q_TEMP[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(22),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[21]~75\,
	combout => \N_CNT_MODULE|Q_TEMP[22]~76_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[22]~77\);

-- Location: FF_X16_Y10_N13
\N_CNT_MODULE|Q_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[22]~76_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(22));

-- Location: LCCOMB_X16_Y10_N14
\N_CNT_MODULE|Q_TEMP[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[23]~78_combout\ = (\N_CNT_MODULE|Q_TEMP\(23) & (!\N_CNT_MODULE|Q_TEMP[22]~77\)) # (!\N_CNT_MODULE|Q_TEMP\(23) & ((\N_CNT_MODULE|Q_TEMP[22]~77\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[23]~79\ = CARRY((!\N_CNT_MODULE|Q_TEMP[22]~77\) # (!\N_CNT_MODULE|Q_TEMP\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(23),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[22]~77\,
	combout => \N_CNT_MODULE|Q_TEMP[23]~78_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[23]~79\);

-- Location: FF_X16_Y10_N15
\N_CNT_MODULE|Q_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[23]~78_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(23));

-- Location: LCCOMB_X16_Y10_N16
\N_CNT_MODULE|Q_TEMP[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[24]~80_combout\ = (\N_CNT_MODULE|Q_TEMP\(24) & (\N_CNT_MODULE|Q_TEMP[23]~79\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(24) & (!\N_CNT_MODULE|Q_TEMP[23]~79\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[24]~81\ = CARRY((\N_CNT_MODULE|Q_TEMP\(24) & !\N_CNT_MODULE|Q_TEMP[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(24),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[23]~79\,
	combout => \N_CNT_MODULE|Q_TEMP[24]~80_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[24]~81\);

-- Location: FF_X16_Y10_N17
\N_CNT_MODULE|Q_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[24]~80_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(24));

-- Location: LCCOMB_X16_Y10_N18
\N_CNT_MODULE|Q_TEMP[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[25]~82_combout\ = (\N_CNT_MODULE|Q_TEMP\(25) & (!\N_CNT_MODULE|Q_TEMP[24]~81\)) # (!\N_CNT_MODULE|Q_TEMP\(25) & ((\N_CNT_MODULE|Q_TEMP[24]~81\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[25]~83\ = CARRY((!\N_CNT_MODULE|Q_TEMP[24]~81\) # (!\N_CNT_MODULE|Q_TEMP\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(25),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[24]~81\,
	combout => \N_CNT_MODULE|Q_TEMP[25]~82_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[25]~83\);

-- Location: FF_X16_Y10_N19
\N_CNT_MODULE|Q_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[25]~82_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(25));

-- Location: LCCOMB_X16_Y10_N20
\N_CNT_MODULE|Q_TEMP[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[26]~84_combout\ = (\N_CNT_MODULE|Q_TEMP\(26) & (\N_CNT_MODULE|Q_TEMP[25]~83\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(26) & (!\N_CNT_MODULE|Q_TEMP[25]~83\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[26]~85\ = CARRY((\N_CNT_MODULE|Q_TEMP\(26) & !\N_CNT_MODULE|Q_TEMP[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(26),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[25]~83\,
	combout => \N_CNT_MODULE|Q_TEMP[26]~84_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[26]~85\);

-- Location: FF_X16_Y10_N21
\N_CNT_MODULE|Q_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[26]~84_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(26));

-- Location: LCCOMB_X16_Y10_N22
\N_CNT_MODULE|Q_TEMP[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[27]~86_combout\ = (\N_CNT_MODULE|Q_TEMP\(27) & (!\N_CNT_MODULE|Q_TEMP[26]~85\)) # (!\N_CNT_MODULE|Q_TEMP\(27) & ((\N_CNT_MODULE|Q_TEMP[26]~85\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[27]~87\ = CARRY((!\N_CNT_MODULE|Q_TEMP[26]~85\) # (!\N_CNT_MODULE|Q_TEMP\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(27),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[26]~85\,
	combout => \N_CNT_MODULE|Q_TEMP[27]~86_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[27]~87\);

-- Location: FF_X16_Y10_N23
\N_CNT_MODULE|Q_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[27]~86_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(27));

-- Location: LCCOMB_X16_Y10_N24
\N_CNT_MODULE|Q_TEMP[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[28]~88_combout\ = (\N_CNT_MODULE|Q_TEMP\(28) & (\N_CNT_MODULE|Q_TEMP[27]~87\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(28) & (!\N_CNT_MODULE|Q_TEMP[27]~87\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[28]~89\ = CARRY((\N_CNT_MODULE|Q_TEMP\(28) & !\N_CNT_MODULE|Q_TEMP[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(28),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[27]~87\,
	combout => \N_CNT_MODULE|Q_TEMP[28]~88_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[28]~89\);

-- Location: FF_X16_Y10_N25
\N_CNT_MODULE|Q_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[28]~88_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(28));

-- Location: LCCOMB_X16_Y10_N26
\N_CNT_MODULE|Q_TEMP[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[29]~90_combout\ = (\N_CNT_MODULE|Q_TEMP\(29) & (!\N_CNT_MODULE|Q_TEMP[28]~89\)) # (!\N_CNT_MODULE|Q_TEMP\(29) & ((\N_CNT_MODULE|Q_TEMP[28]~89\) # (GND)))
-- \N_CNT_MODULE|Q_TEMP[29]~91\ = CARRY((!\N_CNT_MODULE|Q_TEMP[28]~89\) # (!\N_CNT_MODULE|Q_TEMP\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(29),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[28]~89\,
	combout => \N_CNT_MODULE|Q_TEMP[29]~90_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[29]~91\);

-- Location: FF_X16_Y10_N27
\N_CNT_MODULE|Q_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[29]~90_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(29));

-- Location: LCCOMB_X16_Y10_N28
\N_CNT_MODULE|Q_TEMP[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[30]~92_combout\ = (\N_CNT_MODULE|Q_TEMP\(30) & (\N_CNT_MODULE|Q_TEMP[29]~91\ $ (GND))) # (!\N_CNT_MODULE|Q_TEMP\(30) & (!\N_CNT_MODULE|Q_TEMP[29]~91\ & VCC))
-- \N_CNT_MODULE|Q_TEMP[30]~93\ = CARRY((\N_CNT_MODULE|Q_TEMP\(30) & !\N_CNT_MODULE|Q_TEMP[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(30),
	datad => VCC,
	cin => \N_CNT_MODULE|Q_TEMP[29]~91\,
	combout => \N_CNT_MODULE|Q_TEMP[30]~92_combout\,
	cout => \N_CNT_MODULE|Q_TEMP[30]~93\);

-- Location: FF_X16_Y10_N29
\N_CNT_MODULE|Q_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[30]~92_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(30));

-- Location: LCCOMB_X16_Y10_N30
\N_CNT_MODULE|Q_TEMP[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|Q_TEMP[31]~94_combout\ = \N_CNT_MODULE|Q_TEMP\(31) $ (\N_CNT_MODULE|Q_TEMP[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(31),
	cin => \N_CNT_MODULE|Q_TEMP[30]~93\,
	combout => \N_CNT_MODULE|Q_TEMP[31]~94_combout\);

-- Location: FF_X16_Y10_N31
\N_CNT_MODULE|Q_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[31]~94_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(31));

-- Location: LCCOMB_X17_Y11_N24
\N_CNT_MODULE|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~10_combout\ = (!\N_CNT_MODULE|Q_TEMP\(26) & (((!\N_CNT_MODULE|Q_TEMP\(25)) # (!\N_CNT_MODULE|Q_TEMP\(23))) # (!\N_CNT_MODULE|Q_TEMP\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(26),
	datab => \N_CNT_MODULE|Q_TEMP\(24),
	datac => \N_CNT_MODULE|Q_TEMP\(23),
	datad => \N_CNT_MODULE|Q_TEMP\(25),
	combout => \N_CNT_MODULE|LessThan0~10_combout\);

-- Location: LCCOMB_X17_Y11_N8
\N_CNT_MODULE|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~11_combout\ = (((\N_CNT_MODULE|LessThan0~10_combout\) # (!\N_CNT_MODULE|Q_TEMP\(27))) # (!\N_CNT_MODULE|Q_TEMP\(29))) # (!\N_CNT_MODULE|Q_TEMP\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(28),
	datab => \N_CNT_MODULE|Q_TEMP\(29),
	datac => \N_CNT_MODULE|Q_TEMP\(27),
	datad => \N_CNT_MODULE|LessThan0~10_combout\,
	combout => \N_CNT_MODULE|LessThan0~11_combout\);

-- Location: LCCOMB_X17_Y11_N10
\N_CNT_MODULE|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~0_combout\ = (!\N_CNT_MODULE|Q_TEMP\(10) & !\N_CNT_MODULE|Q_TEMP\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N_CNT_MODULE|Q_TEMP\(10),
	datad => \N_CNT_MODULE|Q_TEMP\(9),
	combout => \N_CNT_MODULE|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\N_CNT_MODULE|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~5_combout\ = (!\N_CNT_MODULE|Q_TEMP\(22) & (!\N_CNT_MODULE|Q_TEMP\(26) & !\N_CNT_MODULE|Q_TEMP\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(22),
	datab => \N_CNT_MODULE|Q_TEMP\(26),
	datad => \N_CNT_MODULE|Q_TEMP\(21),
	combout => \N_CNT_MODULE|LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y11_N14
\N_CNT_MODULE|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~2_combout\ = (((!\N_CNT_MODULE|Q_TEMP\(4)) # (!\N_CNT_MODULE|Q_TEMP\(7))) # (!\N_CNT_MODULE|Q_TEMP\(5))) # (!\N_CNT_MODULE|Q_TEMP\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(6),
	datab => \N_CNT_MODULE|Q_TEMP\(5),
	datac => \N_CNT_MODULE|Q_TEMP\(7),
	datad => \N_CNT_MODULE|Q_TEMP\(4),
	combout => \N_CNT_MODULE|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y11_N26
\N_CNT_MODULE|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~3_combout\ = (((!\N_CNT_MODULE|Q_TEMP\(1)) # (!\N_CNT_MODULE|Q_TEMP\(0))) # (!\N_CNT_MODULE|Q_TEMP\(2))) # (!\N_CNT_MODULE|Q_TEMP\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(8),
	datab => \N_CNT_MODULE|Q_TEMP\(2),
	datac => \N_CNT_MODULE|Q_TEMP\(0),
	datad => \N_CNT_MODULE|Q_TEMP\(1),
	combout => \N_CNT_MODULE|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y11_N28
\N_CNT_MODULE|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~1_combout\ = (!\N_CNT_MODULE|Q_TEMP\(13) & (!\N_CNT_MODULE|Q_TEMP\(16) & (!\N_CNT_MODULE|Q_TEMP\(12) & !\N_CNT_MODULE|Q_TEMP\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(13),
	datab => \N_CNT_MODULE|Q_TEMP\(16),
	datac => \N_CNT_MODULE|Q_TEMP\(12),
	datad => \N_CNT_MODULE|Q_TEMP\(18),
	combout => \N_CNT_MODULE|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y11_N4
\N_CNT_MODULE|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~4_combout\ = (\N_CNT_MODULE|LessThan0~1_combout\ & (((\N_CNT_MODULE|LessThan0~2_combout\) # (\N_CNT_MODULE|LessThan0~3_combout\)) # (!\N_CNT_MODULE|Q_TEMP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(3),
	datab => \N_CNT_MODULE|LessThan0~2_combout\,
	datac => \N_CNT_MODULE|LessThan0~3_combout\,
	datad => \N_CNT_MODULE|LessThan0~1_combout\,
	combout => \N_CNT_MODULE|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y11_N2
\N_CNT_MODULE|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~6_combout\ = (\N_CNT_MODULE|Q_TEMP\(14) & ((\N_CNT_MODULE|Q_TEMP\(13)) # ((\N_CNT_MODULE|Q_TEMP\(11)) # (\N_CNT_MODULE|Q_TEMP\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(13),
	datab => \N_CNT_MODULE|Q_TEMP\(11),
	datac => \N_CNT_MODULE|Q_TEMP\(14),
	datad => \N_CNT_MODULE|Q_TEMP\(12),
	combout => \N_CNT_MODULE|LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y11_N20
\N_CNT_MODULE|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~7_combout\ = (\N_CNT_MODULE|Q_TEMP\(17) & ((\N_CNT_MODULE|Q_TEMP\(16)) # ((\N_CNT_MODULE|Q_TEMP\(15) & \N_CNT_MODULE|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(15),
	datab => \N_CNT_MODULE|Q_TEMP\(16),
	datac => \N_CNT_MODULE|Q_TEMP\(17),
	datad => \N_CNT_MODULE|LessThan0~6_combout\,
	combout => \N_CNT_MODULE|LessThan0~7_combout\);

-- Location: LCCOMB_X17_Y11_N16
\N_CNT_MODULE|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~8_combout\ = (((!\N_CNT_MODULE|Q_TEMP\(18) & !\N_CNT_MODULE|LessThan0~7_combout\)) # (!\N_CNT_MODULE|Q_TEMP\(20))) # (!\N_CNT_MODULE|Q_TEMP\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(18),
	datab => \N_CNT_MODULE|Q_TEMP\(19),
	datac => \N_CNT_MODULE|Q_TEMP\(20),
	datad => \N_CNT_MODULE|LessThan0~7_combout\,
	combout => \N_CNT_MODULE|LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y11_N18
\N_CNT_MODULE|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~9_combout\ = (\N_CNT_MODULE|LessThan0~5_combout\ & ((\N_CNT_MODULE|LessThan0~8_combout\) # ((\N_CNT_MODULE|LessThan0~0_combout\ & \N_CNT_MODULE|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|LessThan0~0_combout\,
	datab => \N_CNT_MODULE|LessThan0~5_combout\,
	datac => \N_CNT_MODULE|LessThan0~4_combout\,
	datad => \N_CNT_MODULE|LessThan0~8_combout\,
	combout => \N_CNT_MODULE|LessThan0~9_combout\);

-- Location: LCCOMB_X17_Y11_N0
\N_CNT_MODULE|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \N_CNT_MODULE|LessThan0~12_combout\ = (\N_CNT_MODULE|Q_TEMP\(31)) # ((\N_CNT_MODULE|Q_TEMP\(30)) # ((!\N_CNT_MODULE|LessThan0~11_combout\ & !\N_CNT_MODULE|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N_CNT_MODULE|Q_TEMP\(31),
	datab => \N_CNT_MODULE|Q_TEMP\(30),
	datac => \N_CNT_MODULE|LessThan0~11_combout\,
	datad => \N_CNT_MODULE|LessThan0~9_combout\,
	combout => \N_CNT_MODULE|LessThan0~12_combout\);

-- Location: FF_X16_Y11_N1
\N_CNT_MODULE|Q_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_SIGNAL~inputclkctrl_outclk\,
	d => \N_CNT_MODULE|Q_TEMP[0]~32_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \N_CNT_MODULE|LessThan0~12_combout\,
	ena => \CTRL_MODULE|C~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \N_CNT_MODULE|Q_TEMP\(0));

-- Location: LCCOMB_X18_Y11_N26
\N[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[0]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(0),
	combout => \N[0]~feeder_combout\);

-- Location: FF_X18_Y11_N27
\N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(0));

-- Location: FF_X18_Y11_N1
\SHIFT_OUT_MODULE|N_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(0),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(0));

-- Location: LCCOMB_X18_Y11_N18
\N[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[2]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(2),
	combout => \N[2]~feeder_combout\);

-- Location: FF_X18_Y11_N19
\N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(2));

-- Location: LCCOMB_X18_Y11_N6
\SHIFT_OUT_MODULE|N_TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[2]~feeder_combout\ = N(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(2),
	combout => \SHIFT_OUT_MODULE|N_TEMP[2]~feeder_combout\);

-- Location: FF_X18_Y11_N7
\SHIFT_OUT_MODULE|N_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[2]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(2));

-- Location: LCCOMB_X18_Y11_N0
\SHIFT_OUT_MODULE|Mux108~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~14_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|INDEX\(1))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|N_TEMP\(2)))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & 
-- (\SHIFT_OUT_MODULE|N_TEMP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(0),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(2),
	combout => \SHIFT_OUT_MODULE|Mux108~14_combout\);

-- Location: LCCOMB_X18_Y11_N30
\N[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[3]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(3),
	combout => \N[3]~feeder_combout\);

-- Location: FF_X18_Y11_N31
\N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(3));

-- Location: FF_X18_Y11_N23
\SHIFT_OUT_MODULE|N_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(3),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(3));

-- Location: LCCOMB_X18_Y11_N24
\N[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[1]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(1),
	combout => \N[1]~feeder_combout\);

-- Location: FF_X18_Y11_N25
\N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(1));

-- Location: LCCOMB_X18_Y11_N16
\SHIFT_OUT_MODULE|N_TEMP[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[1]~feeder_combout\ = N(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(1),
	combout => \SHIFT_OUT_MODULE|N_TEMP[1]~feeder_combout\);

-- Location: FF_X18_Y11_N17
\SHIFT_OUT_MODULE|N_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[1]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(1));

-- Location: LCCOMB_X18_Y11_N22
\SHIFT_OUT_MODULE|Mux108~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~15_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|Mux108~14_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(3))) # (!\SHIFT_OUT_MODULE|Mux108~14_combout\ & ((\SHIFT_OUT_MODULE|N_TEMP\(1)))))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- (\SHIFT_OUT_MODULE|Mux108~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|Mux108~14_combout\,
	datac => \SHIFT_OUT_MODULE|N_TEMP\(3),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(1),
	combout => \SHIFT_OUT_MODULE|Mux108~15_combout\);

-- Location: LCCOMB_X18_Y11_N12
\N[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[9]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(9),
	combout => \N[9]~feeder_combout\);

-- Location: FF_X18_Y11_N13
\N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(9));

-- Location: LCCOMB_X18_Y11_N14
\SHIFT_OUT_MODULE|N_TEMP[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[9]~feeder_combout\ = N(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(9),
	combout => \SHIFT_OUT_MODULE|N_TEMP[9]~feeder_combout\);

-- Location: FF_X18_Y11_N15
\SHIFT_OUT_MODULE|N_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[9]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(9));

-- Location: LCCOMB_X18_Y11_N8
\N[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[11]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(11),
	combout => \N[11]~feeder_combout\);

-- Location: FF_X18_Y11_N9
\N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(11));

-- Location: FF_X18_Y11_N11
\SHIFT_OUT_MODULE|N_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(11),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(11));

-- Location: LCCOMB_X18_Y11_N4
\N[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[8]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(8),
	combout => \N[8]~feeder_combout\);

-- Location: FF_X18_Y11_N5
\N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(8));

-- Location: FF_X18_Y11_N3
\SHIFT_OUT_MODULE|N_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(8),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(8));

-- Location: LCCOMB_X18_Y11_N28
\N[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[10]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(10),
	combout => \N[10]~feeder_combout\);

-- Location: FF_X18_Y11_N29
\N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(10));

-- Location: LCCOMB_X18_Y11_N20
\SHIFT_OUT_MODULE|N_TEMP[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[10]~feeder_combout\ = N(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(10),
	combout => \SHIFT_OUT_MODULE|N_TEMP[10]~feeder_combout\);

-- Location: FF_X18_Y11_N21
\SHIFT_OUT_MODULE|N_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[10]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(10));

-- Location: LCCOMB_X18_Y11_N2
\SHIFT_OUT_MODULE|Mux108~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~12_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|INDEX\(1))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|N_TEMP\(10)))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & 
-- (\SHIFT_OUT_MODULE|N_TEMP\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(8),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(10),
	combout => \SHIFT_OUT_MODULE|Mux108~12_combout\);

-- Location: LCCOMB_X18_Y11_N10
\SHIFT_OUT_MODULE|Mux108~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~13_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|Mux108~12_combout\ & ((\SHIFT_OUT_MODULE|N_TEMP\(11)))) # (!\SHIFT_OUT_MODULE|Mux108~12_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(9))))) # (!\SHIFT_OUT_MODULE|INDEX\(0) 
-- & (((\SHIFT_OUT_MODULE|Mux108~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|N_TEMP\(9),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(11),
	datad => \SHIFT_OUT_MODULE|Mux108~12_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~13_combout\);

-- Location: LCCOMB_X17_Y8_N28
\SHIFT_OUT_MODULE|Mux108~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~16_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & (((\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|Mux108~13_combout\))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & 
-- (\SHIFT_OUT_MODULE|Mux108~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(2),
	datab => \SHIFT_OUT_MODULE|Mux108~15_combout\,
	datac => \SHIFT_OUT_MODULE|Mux108~13_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux108~16_combout\);

-- Location: LCCOMB_X17_Y8_N10
\N[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[7]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(7),
	combout => \N[7]~feeder_combout\);

-- Location: FF_X17_Y8_N11
\N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(7));

-- Location: LCCOMB_X17_Y8_N6
\SHIFT_OUT_MODULE|N_TEMP[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[7]~feeder_combout\ = N(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(7),
	combout => \SHIFT_OUT_MODULE|N_TEMP[7]~feeder_combout\);

-- Location: FF_X17_Y8_N7
\SHIFT_OUT_MODULE|N_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[7]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(7));

-- Location: LCCOMB_X17_Y8_N14
\N[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[6]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(6),
	combout => \N[6]~feeder_combout\);

-- Location: FF_X17_Y8_N15
\N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(6));

-- Location: FF_X17_Y8_N3
\SHIFT_OUT_MODULE|N_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(6),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(6));

-- Location: LCCOMB_X17_Y8_N26
\N[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[4]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(4),
	combout => \N[4]~feeder_combout\);

-- Location: FF_X17_Y8_N27
\N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(4));

-- Location: FF_X17_Y8_N17
\SHIFT_OUT_MODULE|N_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(4),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(4));

-- Location: LCCOMB_X17_Y8_N12
\N[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[5]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(5),
	combout => \N[5]~feeder_combout\);

-- Location: FF_X17_Y8_N13
\N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(5));

-- Location: LCCOMB_X17_Y8_N0
\SHIFT_OUT_MODULE|N_TEMP[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[5]~feeder_combout\ = N(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(5),
	combout => \SHIFT_OUT_MODULE|N_TEMP[5]~feeder_combout\);

-- Location: FF_X17_Y8_N1
\SHIFT_OUT_MODULE|N_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[5]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(5));

-- Location: LCCOMB_X17_Y8_N16
\SHIFT_OUT_MODULE|Mux108~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~10_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1)) # ((\SHIFT_OUT_MODULE|N_TEMP\(5))))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & (!\SHIFT_OUT_MODULE|INDEX\(1) & (\SHIFT_OUT_MODULE|N_TEMP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(4),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(5),
	combout => \SHIFT_OUT_MODULE|Mux108~10_combout\);

-- Location: LCCOMB_X17_Y8_N2
\SHIFT_OUT_MODULE|Mux108~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~11_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|Mux108~10_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(7))) # (!\SHIFT_OUT_MODULE|Mux108~10_combout\ & ((\SHIFT_OUT_MODULE|N_TEMP\(6)))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & 
-- (((\SHIFT_OUT_MODULE|Mux108~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|N_TEMP\(7),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(6),
	datad => \SHIFT_OUT_MODULE|Mux108~10_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~11_combout\);

-- Location: LCCOMB_X16_Y9_N24
\N[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[13]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(13),
	combout => \N[13]~feeder_combout\);

-- Location: FF_X16_Y9_N25
\N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(13));

-- Location: LCCOMB_X16_Y9_N28
\SHIFT_OUT_MODULE|N_TEMP[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[13]~feeder_combout\ = N(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(13),
	combout => \SHIFT_OUT_MODULE|N_TEMP[13]~feeder_combout\);

-- Location: FF_X16_Y9_N29
\SHIFT_OUT_MODULE|N_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[13]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(13));

-- Location: LCCOMB_X16_Y9_N14
\N[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[12]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(12),
	combout => \N[12]~feeder_combout\);

-- Location: FF_X16_Y9_N15
\N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(12));

-- Location: FF_X16_Y9_N27
\SHIFT_OUT_MODULE|N_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(12),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(12));

-- Location: LCCOMB_X16_Y9_N26
\SHIFT_OUT_MODULE|Mux108~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~17_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|N_TEMP\(13))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- ((\SHIFT_OUT_MODULE|N_TEMP\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|N_TEMP\(13),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(12),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux108~17_combout\);

-- Location: LCCOMB_X17_Y10_N14
\N[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[15]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(15),
	combout => \N[15]~feeder_combout\);

-- Location: FF_X17_Y10_N15
\N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(15));

-- Location: FF_X17_Y10_N19
\SHIFT_OUT_MODULE|N_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(15),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(15));

-- Location: LCCOMB_X16_Y8_N12
\N[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[14]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(14),
	combout => \N[14]~feeder_combout\);

-- Location: FF_X16_Y8_N13
\N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(14));

-- Location: LCCOMB_X16_Y8_N2
\SHIFT_OUT_MODULE|N_TEMP[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[14]~feeder_combout\ = N(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(14),
	combout => \SHIFT_OUT_MODULE|N_TEMP[14]~feeder_combout\);

-- Location: FF_X16_Y8_N3
\SHIFT_OUT_MODULE|N_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[14]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(14));

-- Location: LCCOMB_X17_Y10_N18
\SHIFT_OUT_MODULE|Mux108~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~18_combout\ = (\SHIFT_OUT_MODULE|Mux108~17_combout\ & (((\SHIFT_OUT_MODULE|N_TEMP\(15))) # (!\SHIFT_OUT_MODULE|INDEX\(1)))) # (!\SHIFT_OUT_MODULE|Mux108~17_combout\ & (\SHIFT_OUT_MODULE|INDEX\(1) & 
-- ((\SHIFT_OUT_MODULE|N_TEMP\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux108~17_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(15),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(14),
	combout => \SHIFT_OUT_MODULE|Mux108~18_combout\);

-- Location: LCCOMB_X16_Y6_N12
\SHIFT_OUT_MODULE|Mux108~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~19_combout\ = (\SHIFT_OUT_MODULE|Mux108~16_combout\ & (((\SHIFT_OUT_MODULE|Mux108~18_combout\) # (!\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|Mux108~16_combout\ & (\SHIFT_OUT_MODULE|Mux108~11_combout\ & 
-- (\SHIFT_OUT_MODULE|INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux108~16_combout\,
	datab => \SHIFT_OUT_MODULE|Mux108~11_combout\,
	datac => \SHIFT_OUT_MODULE|INDEX\(2),
	datad => \SHIFT_OUT_MODULE|Mux108~18_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~19_combout\);

-- Location: LCCOMB_X17_Y9_N14
\N[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[17]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(17),
	combout => \N[17]~feeder_combout\);

-- Location: FF_X17_Y9_N15
\N[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(17));

-- Location: FF_X17_Y9_N23
\SHIFT_OUT_MODULE|N_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(17),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(17));

-- Location: LCCOMB_X17_Y9_N10
\N[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[25]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(25),
	combout => \N[25]~feeder_combout\);

-- Location: FF_X17_Y9_N11
\N[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(25));

-- Location: LCCOMB_X17_Y9_N18
\SHIFT_OUT_MODULE|N_TEMP[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[25]~feeder_combout\ = N(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(25),
	combout => \SHIFT_OUT_MODULE|N_TEMP[25]~feeder_combout\);

-- Location: FF_X17_Y9_N19
\SHIFT_OUT_MODULE|N_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[25]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(25));

-- Location: LCCOMB_X17_Y9_N22
\SHIFT_OUT_MODULE|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~0_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2)) # ((\SHIFT_OUT_MODULE|N_TEMP\(25))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & (!\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|N_TEMP\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(17),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(25),
	combout => \SHIFT_OUT_MODULE|Mux108~0_combout\);

-- Location: LCCOMB_X17_Y9_N4
\N[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[21]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(21),
	combout => \N[21]~feeder_combout\);

-- Location: FF_X17_Y9_N5
\N[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(21));

-- Location: FF_X17_Y9_N21
\SHIFT_OUT_MODULE|N_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(21),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(21));

-- Location: LCCOMB_X17_Y9_N2
\N[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[29]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(29),
	combout => \N[29]~feeder_combout\);

-- Location: FF_X17_Y9_N3
\N[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(29));

-- Location: LCCOMB_X17_Y9_N16
\SHIFT_OUT_MODULE|N_TEMP[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[29]~feeder_combout\ = N(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(29),
	combout => \SHIFT_OUT_MODULE|N_TEMP[29]~feeder_combout\);

-- Location: FF_X17_Y9_N17
\SHIFT_OUT_MODULE|N_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[29]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(29));

-- Location: LCCOMB_X17_Y9_N20
\SHIFT_OUT_MODULE|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~1_combout\ = (\SHIFT_OUT_MODULE|Mux108~0_combout\ & (((\SHIFT_OUT_MODULE|N_TEMP\(29))) # (!\SHIFT_OUT_MODULE|INDEX\(2)))) # (!\SHIFT_OUT_MODULE|Mux108~0_combout\ & (\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|N_TEMP\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux108~0_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(21),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(29),
	combout => \SHIFT_OUT_MODULE|Mux108~1_combout\);

-- Location: LCCOMB_X17_Y9_N12
\N[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[23]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(23),
	combout => \N[23]~feeder_combout\);

-- Location: FF_X17_Y9_N13
\N[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(23));

-- Location: LCCOMB_X17_Y9_N6
\SHIFT_OUT_MODULE|N_TEMP[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[23]~feeder_combout\ = N(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(23),
	combout => \SHIFT_OUT_MODULE|N_TEMP[23]~feeder_combout\);

-- Location: FF_X17_Y9_N7
\SHIFT_OUT_MODULE|N_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[23]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(23));

-- Location: LCCOMB_X17_Y9_N30
\N[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[31]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(31),
	combout => \N[31]~feeder_combout\);

-- Location: FF_X17_Y9_N31
\N[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(31));

-- Location: FF_X17_Y9_N27
\SHIFT_OUT_MODULE|N_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(31),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(31));

-- Location: LCCOMB_X17_Y10_N28
\N[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[19]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(19),
	combout => \N[19]~feeder_combout\);

-- Location: FF_X17_Y10_N29
\N[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(19));

-- Location: LCCOMB_X17_Y10_N30
\SHIFT_OUT_MODULE|N_TEMP[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[19]~feeder_combout\ = N(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(19),
	combout => \SHIFT_OUT_MODULE|N_TEMP[19]~feeder_combout\);

-- Location: FF_X17_Y10_N31
\SHIFT_OUT_MODULE|N_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[19]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(19));

-- Location: LCCOMB_X17_Y9_N28
\N[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[27]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(27),
	combout => \N[27]~feeder_combout\);

-- Location: FF_X17_Y9_N29
\N[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(27));

-- Location: LCCOMB_X17_Y9_N8
\SHIFT_OUT_MODULE|N_TEMP[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[27]~feeder_combout\ = N(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(27),
	combout => \SHIFT_OUT_MODULE|N_TEMP[27]~feeder_combout\);

-- Location: FF_X17_Y9_N9
\SHIFT_OUT_MODULE|N_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[27]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(27));

-- Location: LCCOMB_X17_Y9_N24
\SHIFT_OUT_MODULE|Mux108~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~7_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & (((\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|N_TEMP\(27)))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & 
-- (\SHIFT_OUT_MODULE|N_TEMP\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|N_TEMP\(19),
	datab => \SHIFT_OUT_MODULE|N_TEMP\(27),
	datac => \SHIFT_OUT_MODULE|INDEX\(2),
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux108~7_combout\);

-- Location: LCCOMB_X17_Y9_N26
\SHIFT_OUT_MODULE|Mux108~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~8_combout\ = (\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|Mux108~7_combout\ & ((\SHIFT_OUT_MODULE|N_TEMP\(31)))) # (!\SHIFT_OUT_MODULE|Mux108~7_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(23))))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (((\SHIFT_OUT_MODULE|Mux108~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|N_TEMP\(23),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(31),
	datad => \SHIFT_OUT_MODULE|Mux108~7_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~8_combout\);

-- Location: LCCOMB_X17_Y11_N12
\N[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[26]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(26),
	combout => \N[26]~feeder_combout\);

-- Location: FF_X17_Y11_N13
\N[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(26));

-- Location: LCCOMB_X17_Y11_N30
\SHIFT_OUT_MODULE|N_TEMP[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[26]~feeder_combout\ = N(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(26),
	combout => \SHIFT_OUT_MODULE|N_TEMP[26]~feeder_combout\);

-- Location: FF_X17_Y11_N31
\SHIFT_OUT_MODULE|N_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[26]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(26));

-- Location: LCCOMB_X17_Y11_N22
\N[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[18]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(18),
	combout => \N[18]~feeder_combout\);

-- Location: FF_X17_Y11_N23
\N[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(18));

-- Location: FF_X17_Y11_N7
\SHIFT_OUT_MODULE|N_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(18),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(18));

-- Location: LCCOMB_X17_Y10_N6
\N[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[22]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(22),
	combout => \N[22]~feeder_combout\);

-- Location: FF_X17_Y10_N7
\N[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(22));

-- Location: LCCOMB_X17_Y10_N26
\SHIFT_OUT_MODULE|N_TEMP[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[22]~feeder_combout\ = N(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(22),
	combout => \SHIFT_OUT_MODULE|N_TEMP[22]~feeder_combout\);

-- Location: FF_X17_Y10_N27
\SHIFT_OUT_MODULE|N_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[22]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(22));

-- Location: LCCOMB_X17_Y11_N6
\SHIFT_OUT_MODULE|Mux108~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~2_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (\SHIFT_OUT_MODULE|INDEX\(2))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|N_TEMP\(22)))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (\SHIFT_OUT_MODULE|N_TEMP\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(18),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(22),
	combout => \SHIFT_OUT_MODULE|Mux108~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\N[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[30]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(30),
	combout => \N[30]~feeder_combout\);

-- Location: FF_X14_Y10_N5
\N[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(30));

-- Location: FF_X14_Y10_N25
\SHIFT_OUT_MODULE|N_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(30),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(30));

-- Location: LCCOMB_X14_Y10_N24
\SHIFT_OUT_MODULE|Mux108~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~3_combout\ = (\SHIFT_OUT_MODULE|Mux108~2_combout\ & (((\SHIFT_OUT_MODULE|N_TEMP\(30)) # (!\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|Mux108~2_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(26) & ((\SHIFT_OUT_MODULE|INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|N_TEMP\(26),
	datab => \SHIFT_OUT_MODULE|Mux108~2_combout\,
	datac => \SHIFT_OUT_MODULE|N_TEMP\(30),
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux108~3_combout\);

-- Location: LCCOMB_X17_Y10_N4
\N[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[16]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(16),
	combout => \N[16]~feeder_combout\);

-- Location: FF_X17_Y10_N5
\N[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(16));

-- Location: FF_X17_Y10_N17
\SHIFT_OUT_MODULE|N_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(16),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(16));

-- Location: LCCOMB_X17_Y10_N12
\N[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[20]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(20),
	combout => \N[20]~feeder_combout\);

-- Location: FF_X17_Y10_N13
\N[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(20));

-- Location: LCCOMB_X17_Y10_N20
\SHIFT_OUT_MODULE|N_TEMP[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[20]~feeder_combout\ = N(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(20),
	combout => \SHIFT_OUT_MODULE|N_TEMP[20]~feeder_combout\);

-- Location: FF_X17_Y10_N21
\SHIFT_OUT_MODULE|N_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[20]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(20));

-- Location: LCCOMB_X17_Y10_N16
\SHIFT_OUT_MODULE|Mux108~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~4_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (\SHIFT_OUT_MODULE|INDEX\(2))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & ((\SHIFT_OUT_MODULE|N_TEMP\(20)))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- (\SHIFT_OUT_MODULE|N_TEMP\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|INDEX\(2),
	datac => \SHIFT_OUT_MODULE|N_TEMP\(16),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(20),
	combout => \SHIFT_OUT_MODULE|Mux108~4_combout\);

-- Location: LCCOMB_X17_Y10_N8
\N[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[28]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_CNT_MODULE|Q_TEMP\(28),
	combout => \N[28]~feeder_combout\);

-- Location: FF_X17_Y10_N9
\N[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(28));

-- Location: FF_X17_Y10_N11
\SHIFT_OUT_MODULE|N_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => N(28),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(28));

-- Location: LCCOMB_X17_Y10_N2
\N[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \N[24]~feeder_combout\ = \N_CNT_MODULE|Q_TEMP\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_CNT_MODULE|Q_TEMP\(24),
	combout => \N[24]~feeder_combout\);

-- Location: FF_X17_Y10_N3
\N[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \N[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => N(24));

-- Location: LCCOMB_X17_Y10_N24
\SHIFT_OUT_MODULE|N_TEMP[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|N_TEMP[24]~feeder_combout\ = N(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => N(24),
	combout => \SHIFT_OUT_MODULE|N_TEMP[24]~feeder_combout\);

-- Location: FF_X17_Y10_N25
\SHIFT_OUT_MODULE|N_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|N_TEMP[24]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_TEMP\(24));

-- Location: LCCOMB_X17_Y10_N10
\SHIFT_OUT_MODULE|Mux108~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~5_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|Mux108~4_combout\ & (\SHIFT_OUT_MODULE|N_TEMP\(28))) # (!\SHIFT_OUT_MODULE|Mux108~4_combout\ & ((\SHIFT_OUT_MODULE|N_TEMP\(24)))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & 
-- (\SHIFT_OUT_MODULE|Mux108~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|Mux108~4_combout\,
	datac => \SHIFT_OUT_MODULE|N_TEMP\(28),
	datad => \SHIFT_OUT_MODULE|N_TEMP\(24),
	combout => \SHIFT_OUT_MODULE|Mux108~5_combout\);

-- Location: LCCOMB_X17_Y10_N22
\SHIFT_OUT_MODULE|Mux108~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~6_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|INDEX\(1))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1) & (\SHIFT_OUT_MODULE|Mux108~3_combout\)) # (!\SHIFT_OUT_MODULE|INDEX\(1) & 
-- ((\SHIFT_OUT_MODULE|Mux108~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|Mux108~3_combout\,
	datad => \SHIFT_OUT_MODULE|Mux108~5_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~6_combout\);

-- Location: LCCOMB_X17_Y6_N24
\SHIFT_OUT_MODULE|Mux108~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~9_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|Mux108~6_combout\ & ((\SHIFT_OUT_MODULE|Mux108~8_combout\))) # (!\SHIFT_OUT_MODULE|Mux108~6_combout\ & (\SHIFT_OUT_MODULE|Mux108~1_combout\)))) # 
-- (!\SHIFT_OUT_MODULE|INDEX\(0) & (((\SHIFT_OUT_MODULE|Mux108~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|Mux108~1_combout\,
	datac => \SHIFT_OUT_MODULE|Mux108~8_combout\,
	datad => \SHIFT_OUT_MODULE|Mux108~6_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~9_combout\);

-- Location: LCCOMB_X16_Y6_N18
\SHIFT_OUT_MODULE|Mux108~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux108~20_combout\ = (\SHIFT_OUT_MODULE|INDEX\(4) & ((\SHIFT_OUT_MODULE|Mux108~9_combout\))) # (!\SHIFT_OUT_MODULE|INDEX\(4) & (\SHIFT_OUT_MODULE|Mux108~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux108~19_combout\,
	datac => \SHIFT_OUT_MODULE|INDEX\(4),
	datad => \SHIFT_OUT_MODULE|Mux108~9_combout\,
	combout => \SHIFT_OUT_MODULE|Mux108~20_combout\);

-- Location: FF_X16_Y6_N19
\SHIFT_OUT_MODULE|N_ARDUINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|Mux108~20_combout\,
	ena => \SHIFT_OUT_MODULE|Mux107~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|N_ARDUINO~q\);

-- Location: LCCOMB_X12_Y11_N0
\H_CNT_MODULE|Q_TEMP[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[0]~32_combout\ = \H_CNT_MODULE|Q_TEMP\(0) $ (VCC)
-- \H_CNT_MODULE|Q_TEMP[0]~33\ = CARRY(\H_CNT_MODULE|Q_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(0),
	datad => VCC,
	combout => \H_CNT_MODULE|Q_TEMP[0]~32_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[0]~33\);

-- Location: LCCOMB_X11_Y10_N28
\H_CNT_MODULE|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~0_combout\ = (\H_CNT_MODULE|Q_TEMP\(14) & ((\H_CNT_MODULE|Q_TEMP\(11)) # ((\H_CNT_MODULE|Q_TEMP\(13)) # (\H_CNT_MODULE|Q_TEMP\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(11),
	datab => \H_CNT_MODULE|Q_TEMP\(13),
	datac => \H_CNT_MODULE|Q_TEMP\(14),
	datad => \H_CNT_MODULE|Q_TEMP\(12),
	combout => \H_CNT_MODULE|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\H_CNT_MODULE|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~1_combout\ = (\H_CNT_MODULE|Q_TEMP\(17) & ((\H_CNT_MODULE|Q_TEMP\(16)) # ((\H_CNT_MODULE|Q_TEMP\(15) & \H_CNT_MODULE|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(17),
	datab => \H_CNT_MODULE|Q_TEMP\(15),
	datac => \H_CNT_MODULE|Q_TEMP\(16),
	datad => \H_CNT_MODULE|LessThan0~0_combout\,
	combout => \H_CNT_MODULE|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y10_N6
\H_CNT_MODULE|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~2_combout\ = (((!\H_CNT_MODULE|LessThan0~1_combout\ & !\H_CNT_MODULE|Q_TEMP\(18))) # (!\H_CNT_MODULE|Q_TEMP\(20))) # (!\H_CNT_MODULE|Q_TEMP\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(19),
	datab => \H_CNT_MODULE|LessThan0~1_combout\,
	datac => \H_CNT_MODULE|Q_TEMP\(20),
	datad => \H_CNT_MODULE|Q_TEMP\(18),
	combout => \H_CNT_MODULE|LessThan0~2_combout\);

-- Location: LCCOMB_X13_Y10_N26
\H_CNT_MODULE|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~5_combout\ = (((!\H_CNT_MODULE|Q_TEMP\(1)) # (!\H_CNT_MODULE|Q_TEMP\(2))) # (!\H_CNT_MODULE|Q_TEMP\(0))) # (!\H_CNT_MODULE|Q_TEMP\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(7),
	datab => \H_CNT_MODULE|Q_TEMP\(0),
	datac => \H_CNT_MODULE|Q_TEMP\(2),
	datad => \H_CNT_MODULE|Q_TEMP\(1),
	combout => \H_CNT_MODULE|LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y10_N20
\H_CNT_MODULE|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~3_combout\ = (!\H_CNT_MODULE|Q_TEMP\(18) & (!\H_CNT_MODULE|Q_TEMP\(13) & (!\H_CNT_MODULE|Q_TEMP\(16) & !\H_CNT_MODULE|Q_TEMP\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(18),
	datab => \H_CNT_MODULE|Q_TEMP\(13),
	datac => \H_CNT_MODULE|Q_TEMP\(16),
	datad => \H_CNT_MODULE|Q_TEMP\(12),
	combout => \H_CNT_MODULE|LessThan0~3_combout\);

-- Location: LCCOMB_X13_Y10_N18
\H_CNT_MODULE|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~4_combout\ = (((!\H_CNT_MODULE|Q_TEMP\(6)) # (!\H_CNT_MODULE|Q_TEMP\(4))) # (!\H_CNT_MODULE|Q_TEMP\(8))) # (!\H_CNT_MODULE|Q_TEMP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(5),
	datab => \H_CNT_MODULE|Q_TEMP\(8),
	datac => \H_CNT_MODULE|Q_TEMP\(4),
	datad => \H_CNT_MODULE|Q_TEMP\(6),
	combout => \H_CNT_MODULE|LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y10_N24
\H_CNT_MODULE|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~6_combout\ = (\H_CNT_MODULE|LessThan0~3_combout\ & ((\H_CNT_MODULE|LessThan0~5_combout\) # ((\H_CNT_MODULE|LessThan0~4_combout\) # (!\H_CNT_MODULE|Q_TEMP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|LessThan0~5_combout\,
	datab => \H_CNT_MODULE|LessThan0~3_combout\,
	datac => \H_CNT_MODULE|Q_TEMP\(3),
	datad => \H_CNT_MODULE|LessThan0~4_combout\,
	combout => \H_CNT_MODULE|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y10_N2
\H_CNT_MODULE|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~7_combout\ = (\H_CNT_MODULE|LessThan0~2_combout\) # ((\H_CNT_MODULE|LessThan0~6_combout\ & (!\H_CNT_MODULE|Q_TEMP\(9) & !\H_CNT_MODULE|Q_TEMP\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|LessThan0~2_combout\,
	datab => \H_CNT_MODULE|LessThan0~6_combout\,
	datac => \H_CNT_MODULE|Q_TEMP\(9),
	datad => \H_CNT_MODULE|Q_TEMP\(10),
	combout => \H_CNT_MODULE|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y10_N26
\H_CNT_MODULE|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~8_combout\ = (!\H_CNT_MODULE|Q_TEMP\(22) & (!\H_CNT_MODULE|Q_TEMP\(26) & (!\H_CNT_MODULE|Q_TEMP\(21) & \H_CNT_MODULE|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(22),
	datab => \H_CNT_MODULE|Q_TEMP\(26),
	datac => \H_CNT_MODULE|Q_TEMP\(21),
	datad => \H_CNT_MODULE|LessThan0~7_combout\,
	combout => \H_CNT_MODULE|LessThan0~8_combout\);

-- Location: LCCOMB_X12_Y10_N20
\H_CNT_MODULE|Q_TEMP[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[26]~84_combout\ = (\H_CNT_MODULE|Q_TEMP\(26) & (\H_CNT_MODULE|Q_TEMP[25]~83\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(26) & (!\H_CNT_MODULE|Q_TEMP[25]~83\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[26]~85\ = CARRY((\H_CNT_MODULE|Q_TEMP\(26) & !\H_CNT_MODULE|Q_TEMP[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(26),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[25]~83\,
	combout => \H_CNT_MODULE|Q_TEMP[26]~84_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[26]~85\);

-- Location: LCCOMB_X12_Y10_N22
\H_CNT_MODULE|Q_TEMP[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[27]~86_combout\ = (\H_CNT_MODULE|Q_TEMP\(27) & (!\H_CNT_MODULE|Q_TEMP[26]~85\)) # (!\H_CNT_MODULE|Q_TEMP\(27) & ((\H_CNT_MODULE|Q_TEMP[26]~85\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[27]~87\ = CARRY((!\H_CNT_MODULE|Q_TEMP[26]~85\) # (!\H_CNT_MODULE|Q_TEMP\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(27),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[26]~85\,
	combout => \H_CNT_MODULE|Q_TEMP[27]~86_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[27]~87\);

-- Location: LCCOMB_X13_Y11_N30
\H_CNT_MODULE|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|process_0~0_combout\ = (\CLK_SIGNAL~input_o\ & \CTRL_MODULE|C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_SIGNAL~input_o\,
	datad => \CTRL_MODULE|C~q\,
	combout => \H_CNT_MODULE|process_0~0_combout\);

-- Location: FF_X13_Y11_N17
\H_CNT_MODULE|Q_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[27]~86_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(27));

-- Location: LCCOMB_X12_Y10_N24
\H_CNT_MODULE|Q_TEMP[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[28]~88_combout\ = (\H_CNT_MODULE|Q_TEMP\(28) & (\H_CNT_MODULE|Q_TEMP[27]~87\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(28) & (!\H_CNT_MODULE|Q_TEMP[27]~87\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[28]~89\ = CARRY((\H_CNT_MODULE|Q_TEMP\(28) & !\H_CNT_MODULE|Q_TEMP[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(28),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[27]~87\,
	combout => \H_CNT_MODULE|Q_TEMP[28]~88_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[28]~89\);

-- Location: FF_X13_Y11_N25
\H_CNT_MODULE|Q_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[28]~88_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(28));

-- Location: LCCOMB_X12_Y10_N26
\H_CNT_MODULE|Q_TEMP[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[29]~90_combout\ = (\H_CNT_MODULE|Q_TEMP\(29) & (!\H_CNT_MODULE|Q_TEMP[28]~89\)) # (!\H_CNT_MODULE|Q_TEMP\(29) & ((\H_CNT_MODULE|Q_TEMP[28]~89\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[29]~91\ = CARRY((!\H_CNT_MODULE|Q_TEMP[28]~89\) # (!\H_CNT_MODULE|Q_TEMP\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(29),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[28]~89\,
	combout => \H_CNT_MODULE|Q_TEMP[29]~90_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[29]~91\);

-- Location: FF_X13_Y11_N29
\H_CNT_MODULE|Q_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[29]~90_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(29));

-- Location: LCCOMB_X12_Y10_N28
\H_CNT_MODULE|Q_TEMP[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[30]~92_combout\ = (\H_CNT_MODULE|Q_TEMP\(30) & (\H_CNT_MODULE|Q_TEMP[29]~91\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(30) & (!\H_CNT_MODULE|Q_TEMP[29]~91\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[30]~93\ = CARRY((\H_CNT_MODULE|Q_TEMP\(30) & !\H_CNT_MODULE|Q_TEMP[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(30),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[29]~91\,
	combout => \H_CNT_MODULE|Q_TEMP[30]~92_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[30]~93\);

-- Location: FF_X12_Y10_N29
\H_CNT_MODULE|Q_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[30]~92_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(30));

-- Location: LCCOMB_X12_Y10_N30
\H_CNT_MODULE|Q_TEMP[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[31]~94_combout\ = \H_CNT_MODULE|Q_TEMP\(31) $ (\H_CNT_MODULE|Q_TEMP[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(31),
	cin => \H_CNT_MODULE|Q_TEMP[30]~93\,
	combout => \H_CNT_MODULE|Q_TEMP[31]~94_combout\);

-- Location: FF_X13_Y11_N7
\H_CNT_MODULE|Q_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[31]~94_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(31));

-- Location: LCCOMB_X14_Y10_N30
\H_CNT_MODULE|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~9_combout\ = (!\H_CNT_MODULE|Q_TEMP\(26) & (((!\H_CNT_MODULE|Q_TEMP\(25)) # (!\H_CNT_MODULE|Q_TEMP\(23))) # (!\H_CNT_MODULE|Q_TEMP\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(24),
	datab => \H_CNT_MODULE|Q_TEMP\(23),
	datac => \H_CNT_MODULE|Q_TEMP\(26),
	datad => \H_CNT_MODULE|Q_TEMP\(25),
	combout => \H_CNT_MODULE|LessThan0~9_combout\);

-- Location: LCCOMB_X14_Y10_N8
\H_CNT_MODULE|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~10_combout\ = (((\H_CNT_MODULE|LessThan0~9_combout\) # (!\H_CNT_MODULE|Q_TEMP\(28))) # (!\H_CNT_MODULE|Q_TEMP\(27))) # (!\H_CNT_MODULE|Q_TEMP\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(29),
	datab => \H_CNT_MODULE|Q_TEMP\(27),
	datac => \H_CNT_MODULE|LessThan0~9_combout\,
	datad => \H_CNT_MODULE|Q_TEMP\(28),
	combout => \H_CNT_MODULE|LessThan0~10_combout\);

-- Location: LCCOMB_X11_Y10_N8
\H_CNT_MODULE|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|LessThan0~11_combout\ = (\H_CNT_MODULE|Q_TEMP\(30)) # ((\H_CNT_MODULE|Q_TEMP\(31)) # ((!\H_CNT_MODULE|LessThan0~8_combout\ & !\H_CNT_MODULE|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|LessThan0~8_combout\,
	datab => \H_CNT_MODULE|Q_TEMP\(30),
	datac => \H_CNT_MODULE|Q_TEMP\(31),
	datad => \H_CNT_MODULE|LessThan0~10_combout\,
	combout => \H_CNT_MODULE|LessThan0~11_combout\);

-- Location: FF_X13_Y11_N27
\H_CNT_MODULE|Q_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[0]~32_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(0));

-- Location: LCCOMB_X12_Y11_N2
\H_CNT_MODULE|Q_TEMP[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[1]~34_combout\ = (\H_CNT_MODULE|Q_TEMP\(1) & (!\H_CNT_MODULE|Q_TEMP[0]~33\)) # (!\H_CNT_MODULE|Q_TEMP\(1) & ((\H_CNT_MODULE|Q_TEMP[0]~33\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[1]~35\ = CARRY((!\H_CNT_MODULE|Q_TEMP[0]~33\) # (!\H_CNT_MODULE|Q_TEMP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(1),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[0]~33\,
	combout => \H_CNT_MODULE|Q_TEMP[1]~34_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[1]~35\);

-- Location: FF_X12_Y11_N3
\H_CNT_MODULE|Q_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[1]~34_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(1));

-- Location: LCCOMB_X12_Y11_N4
\H_CNT_MODULE|Q_TEMP[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[2]~36_combout\ = (\H_CNT_MODULE|Q_TEMP\(2) & (\H_CNT_MODULE|Q_TEMP[1]~35\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(2) & (!\H_CNT_MODULE|Q_TEMP[1]~35\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[2]~37\ = CARRY((\H_CNT_MODULE|Q_TEMP\(2) & !\H_CNT_MODULE|Q_TEMP[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(2),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[1]~35\,
	combout => \H_CNT_MODULE|Q_TEMP[2]~36_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[2]~37\);

-- Location: FF_X12_Y11_N5
\H_CNT_MODULE|Q_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[2]~36_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(2));

-- Location: LCCOMB_X12_Y11_N6
\H_CNT_MODULE|Q_TEMP[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[3]~38_combout\ = (\H_CNT_MODULE|Q_TEMP\(3) & (!\H_CNT_MODULE|Q_TEMP[2]~37\)) # (!\H_CNT_MODULE|Q_TEMP\(3) & ((\H_CNT_MODULE|Q_TEMP[2]~37\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[3]~39\ = CARRY((!\H_CNT_MODULE|Q_TEMP[2]~37\) # (!\H_CNT_MODULE|Q_TEMP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(3),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[2]~37\,
	combout => \H_CNT_MODULE|Q_TEMP[3]~38_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[3]~39\);

-- Location: FF_X12_Y11_N7
\H_CNT_MODULE|Q_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[3]~38_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(3));

-- Location: LCCOMB_X12_Y11_N8
\H_CNT_MODULE|Q_TEMP[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[4]~40_combout\ = (\H_CNT_MODULE|Q_TEMP\(4) & (\H_CNT_MODULE|Q_TEMP[3]~39\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(4) & (!\H_CNT_MODULE|Q_TEMP[3]~39\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[4]~41\ = CARRY((\H_CNT_MODULE|Q_TEMP\(4) & !\H_CNT_MODULE|Q_TEMP[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(4),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[3]~39\,
	combout => \H_CNT_MODULE|Q_TEMP[4]~40_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[4]~41\);

-- Location: FF_X12_Y11_N9
\H_CNT_MODULE|Q_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[4]~40_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(4));

-- Location: LCCOMB_X12_Y11_N10
\H_CNT_MODULE|Q_TEMP[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[5]~42_combout\ = (\H_CNT_MODULE|Q_TEMP\(5) & (!\H_CNT_MODULE|Q_TEMP[4]~41\)) # (!\H_CNT_MODULE|Q_TEMP\(5) & ((\H_CNT_MODULE|Q_TEMP[4]~41\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[5]~43\ = CARRY((!\H_CNT_MODULE|Q_TEMP[4]~41\) # (!\H_CNT_MODULE|Q_TEMP\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(5),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[4]~41\,
	combout => \H_CNT_MODULE|Q_TEMP[5]~42_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[5]~43\);

-- Location: FF_X12_Y11_N11
\H_CNT_MODULE|Q_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[5]~42_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(5));

-- Location: LCCOMB_X12_Y11_N12
\H_CNT_MODULE|Q_TEMP[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[6]~44_combout\ = (\H_CNT_MODULE|Q_TEMP\(6) & (\H_CNT_MODULE|Q_TEMP[5]~43\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(6) & (!\H_CNT_MODULE|Q_TEMP[5]~43\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[6]~45\ = CARRY((\H_CNT_MODULE|Q_TEMP\(6) & !\H_CNT_MODULE|Q_TEMP[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(6),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[5]~43\,
	combout => \H_CNT_MODULE|Q_TEMP[6]~44_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[6]~45\);

-- Location: FF_X12_Y11_N13
\H_CNT_MODULE|Q_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[6]~44_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(6));

-- Location: LCCOMB_X12_Y11_N14
\H_CNT_MODULE|Q_TEMP[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[7]~46_combout\ = (\H_CNT_MODULE|Q_TEMP\(7) & (!\H_CNT_MODULE|Q_TEMP[6]~45\)) # (!\H_CNT_MODULE|Q_TEMP\(7) & ((\H_CNT_MODULE|Q_TEMP[6]~45\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[7]~47\ = CARRY((!\H_CNT_MODULE|Q_TEMP[6]~45\) # (!\H_CNT_MODULE|Q_TEMP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(7),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[6]~45\,
	combout => \H_CNT_MODULE|Q_TEMP[7]~46_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[7]~47\);

-- Location: FF_X12_Y11_N15
\H_CNT_MODULE|Q_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[7]~46_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(7));

-- Location: LCCOMB_X12_Y11_N16
\H_CNT_MODULE|Q_TEMP[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[8]~48_combout\ = (\H_CNT_MODULE|Q_TEMP\(8) & (\H_CNT_MODULE|Q_TEMP[7]~47\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(8) & (!\H_CNT_MODULE|Q_TEMP[7]~47\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[8]~49\ = CARRY((\H_CNT_MODULE|Q_TEMP\(8) & !\H_CNT_MODULE|Q_TEMP[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(8),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[7]~47\,
	combout => \H_CNT_MODULE|Q_TEMP[8]~48_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[8]~49\);

-- Location: FF_X12_Y11_N17
\H_CNT_MODULE|Q_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[8]~48_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(8));

-- Location: LCCOMB_X12_Y11_N18
\H_CNT_MODULE|Q_TEMP[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[9]~50_combout\ = (\H_CNT_MODULE|Q_TEMP\(9) & (!\H_CNT_MODULE|Q_TEMP[8]~49\)) # (!\H_CNT_MODULE|Q_TEMP\(9) & ((\H_CNT_MODULE|Q_TEMP[8]~49\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[9]~51\ = CARRY((!\H_CNT_MODULE|Q_TEMP[8]~49\) # (!\H_CNT_MODULE|Q_TEMP\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(9),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[8]~49\,
	combout => \H_CNT_MODULE|Q_TEMP[9]~50_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[9]~51\);

-- Location: FF_X12_Y11_N19
\H_CNT_MODULE|Q_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[9]~50_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(9));

-- Location: LCCOMB_X12_Y11_N20
\H_CNT_MODULE|Q_TEMP[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[10]~52_combout\ = (\H_CNT_MODULE|Q_TEMP\(10) & (\H_CNT_MODULE|Q_TEMP[9]~51\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(10) & (!\H_CNT_MODULE|Q_TEMP[9]~51\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[10]~53\ = CARRY((\H_CNT_MODULE|Q_TEMP\(10) & !\H_CNT_MODULE|Q_TEMP[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(10),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[9]~51\,
	combout => \H_CNT_MODULE|Q_TEMP[10]~52_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[10]~53\);

-- Location: FF_X12_Y11_N21
\H_CNT_MODULE|Q_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[10]~52_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(10));

-- Location: LCCOMB_X12_Y11_N22
\H_CNT_MODULE|Q_TEMP[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[11]~54_combout\ = (\H_CNT_MODULE|Q_TEMP\(11) & (!\H_CNT_MODULE|Q_TEMP[10]~53\)) # (!\H_CNT_MODULE|Q_TEMP\(11) & ((\H_CNT_MODULE|Q_TEMP[10]~53\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[11]~55\ = CARRY((!\H_CNT_MODULE|Q_TEMP[10]~53\) # (!\H_CNT_MODULE|Q_TEMP\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(11),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[10]~53\,
	combout => \H_CNT_MODULE|Q_TEMP[11]~54_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[11]~55\);

-- Location: FF_X12_Y11_N23
\H_CNT_MODULE|Q_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[11]~54_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(11));

-- Location: LCCOMB_X12_Y11_N24
\H_CNT_MODULE|Q_TEMP[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[12]~56_combout\ = (\H_CNT_MODULE|Q_TEMP\(12) & (\H_CNT_MODULE|Q_TEMP[11]~55\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(12) & (!\H_CNT_MODULE|Q_TEMP[11]~55\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[12]~57\ = CARRY((\H_CNT_MODULE|Q_TEMP\(12) & !\H_CNT_MODULE|Q_TEMP[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(12),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[11]~55\,
	combout => \H_CNT_MODULE|Q_TEMP[12]~56_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[12]~57\);

-- Location: FF_X12_Y11_N25
\H_CNT_MODULE|Q_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[12]~56_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(12));

-- Location: LCCOMB_X12_Y11_N26
\H_CNT_MODULE|Q_TEMP[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[13]~58_combout\ = (\H_CNT_MODULE|Q_TEMP\(13) & (!\H_CNT_MODULE|Q_TEMP[12]~57\)) # (!\H_CNT_MODULE|Q_TEMP\(13) & ((\H_CNT_MODULE|Q_TEMP[12]~57\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[13]~59\ = CARRY((!\H_CNT_MODULE|Q_TEMP[12]~57\) # (!\H_CNT_MODULE|Q_TEMP\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(13),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[12]~57\,
	combout => \H_CNT_MODULE|Q_TEMP[13]~58_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[13]~59\);

-- Location: FF_X12_Y11_N27
\H_CNT_MODULE|Q_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[13]~58_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(13));

-- Location: LCCOMB_X12_Y11_N28
\H_CNT_MODULE|Q_TEMP[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[14]~60_combout\ = (\H_CNT_MODULE|Q_TEMP\(14) & (\H_CNT_MODULE|Q_TEMP[13]~59\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(14) & (!\H_CNT_MODULE|Q_TEMP[13]~59\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[14]~61\ = CARRY((\H_CNT_MODULE|Q_TEMP\(14) & !\H_CNT_MODULE|Q_TEMP[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(14),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[13]~59\,
	combout => \H_CNT_MODULE|Q_TEMP[14]~60_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[14]~61\);

-- Location: FF_X12_Y11_N29
\H_CNT_MODULE|Q_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[14]~60_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(14));

-- Location: LCCOMB_X12_Y11_N30
\H_CNT_MODULE|Q_TEMP[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[15]~62_combout\ = (\H_CNT_MODULE|Q_TEMP\(15) & (!\H_CNT_MODULE|Q_TEMP[14]~61\)) # (!\H_CNT_MODULE|Q_TEMP\(15) & ((\H_CNT_MODULE|Q_TEMP[14]~61\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[15]~63\ = CARRY((!\H_CNT_MODULE|Q_TEMP[14]~61\) # (!\H_CNT_MODULE|Q_TEMP\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(15),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[14]~61\,
	combout => \H_CNT_MODULE|Q_TEMP[15]~62_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[15]~63\);

-- Location: FF_X12_Y11_N31
\H_CNT_MODULE|Q_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[15]~62_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(15));

-- Location: LCCOMB_X12_Y10_N0
\H_CNT_MODULE|Q_TEMP[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[16]~64_combout\ = (\H_CNT_MODULE|Q_TEMP\(16) & (\H_CNT_MODULE|Q_TEMP[15]~63\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(16) & (!\H_CNT_MODULE|Q_TEMP[15]~63\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[16]~65\ = CARRY((\H_CNT_MODULE|Q_TEMP\(16) & !\H_CNT_MODULE|Q_TEMP[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(16),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[15]~63\,
	combout => \H_CNT_MODULE|Q_TEMP[16]~64_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[16]~65\);

-- Location: FF_X13_Y11_N15
\H_CNT_MODULE|Q_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[16]~64_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(16));

-- Location: LCCOMB_X12_Y10_N2
\H_CNT_MODULE|Q_TEMP[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[17]~66_combout\ = (\H_CNT_MODULE|Q_TEMP\(17) & (!\H_CNT_MODULE|Q_TEMP[16]~65\)) # (!\H_CNT_MODULE|Q_TEMP\(17) & ((\H_CNT_MODULE|Q_TEMP[16]~65\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[17]~67\ = CARRY((!\H_CNT_MODULE|Q_TEMP[16]~65\) # (!\H_CNT_MODULE|Q_TEMP\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(17),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[16]~65\,
	combout => \H_CNT_MODULE|Q_TEMP[17]~66_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[17]~67\);

-- Location: FF_X13_Y11_N5
\H_CNT_MODULE|Q_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[17]~66_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(17));

-- Location: LCCOMB_X12_Y10_N4
\H_CNT_MODULE|Q_TEMP[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[18]~68_combout\ = (\H_CNT_MODULE|Q_TEMP\(18) & (\H_CNT_MODULE|Q_TEMP[17]~67\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(18) & (!\H_CNT_MODULE|Q_TEMP[17]~67\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[18]~69\ = CARRY((\H_CNT_MODULE|Q_TEMP\(18) & !\H_CNT_MODULE|Q_TEMP[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(18),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[17]~67\,
	combout => \H_CNT_MODULE|Q_TEMP[18]~68_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[18]~69\);

-- Location: FF_X12_Y10_N5
\H_CNT_MODULE|Q_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[18]~68_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(18));

-- Location: LCCOMB_X12_Y10_N6
\H_CNT_MODULE|Q_TEMP[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[19]~70_combout\ = (\H_CNT_MODULE|Q_TEMP\(19) & (!\H_CNT_MODULE|Q_TEMP[18]~69\)) # (!\H_CNT_MODULE|Q_TEMP\(19) & ((\H_CNT_MODULE|Q_TEMP[18]~69\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[19]~71\ = CARRY((!\H_CNT_MODULE|Q_TEMP[18]~69\) # (!\H_CNT_MODULE|Q_TEMP\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(19),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[18]~69\,
	combout => \H_CNT_MODULE|Q_TEMP[19]~70_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[19]~71\);

-- Location: FF_X12_Y10_N7
\H_CNT_MODULE|Q_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[19]~70_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(19));

-- Location: LCCOMB_X12_Y10_N8
\H_CNT_MODULE|Q_TEMP[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[20]~72_combout\ = (\H_CNT_MODULE|Q_TEMP\(20) & (\H_CNT_MODULE|Q_TEMP[19]~71\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(20) & (!\H_CNT_MODULE|Q_TEMP[19]~71\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[20]~73\ = CARRY((\H_CNT_MODULE|Q_TEMP\(20) & !\H_CNT_MODULE|Q_TEMP[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(20),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[19]~71\,
	combout => \H_CNT_MODULE|Q_TEMP[20]~72_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[20]~73\);

-- Location: FF_X13_Y11_N11
\H_CNT_MODULE|Q_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[20]~72_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(20));

-- Location: LCCOMB_X12_Y10_N10
\H_CNT_MODULE|Q_TEMP[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[21]~74_combout\ = (\H_CNT_MODULE|Q_TEMP\(21) & (!\H_CNT_MODULE|Q_TEMP[20]~73\)) # (!\H_CNT_MODULE|Q_TEMP\(21) & ((\H_CNT_MODULE|Q_TEMP[20]~73\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[21]~75\ = CARRY((!\H_CNT_MODULE|Q_TEMP[20]~73\) # (!\H_CNT_MODULE|Q_TEMP\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(21),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[20]~73\,
	combout => \H_CNT_MODULE|Q_TEMP[21]~74_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[21]~75\);

-- Location: FF_X12_Y10_N11
\H_CNT_MODULE|Q_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \H_CNT_MODULE|Q_TEMP[21]~74_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(21));

-- Location: LCCOMB_X12_Y10_N12
\H_CNT_MODULE|Q_TEMP[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[22]~76_combout\ = (\H_CNT_MODULE|Q_TEMP\(22) & (\H_CNT_MODULE|Q_TEMP[21]~75\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(22) & (!\H_CNT_MODULE|Q_TEMP[21]~75\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[22]~77\ = CARRY((\H_CNT_MODULE|Q_TEMP\(22) & !\H_CNT_MODULE|Q_TEMP[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(22),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[21]~75\,
	combout => \H_CNT_MODULE|Q_TEMP[22]~76_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[22]~77\);

-- Location: FF_X13_Y11_N13
\H_CNT_MODULE|Q_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[22]~76_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(22));

-- Location: LCCOMB_X12_Y10_N14
\H_CNT_MODULE|Q_TEMP[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[23]~78_combout\ = (\H_CNT_MODULE|Q_TEMP\(23) & (!\H_CNT_MODULE|Q_TEMP[22]~77\)) # (!\H_CNT_MODULE|Q_TEMP\(23) & ((\H_CNT_MODULE|Q_TEMP[22]~77\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[23]~79\ = CARRY((!\H_CNT_MODULE|Q_TEMP[22]~77\) # (!\H_CNT_MODULE|Q_TEMP\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(23),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[22]~77\,
	combout => \H_CNT_MODULE|Q_TEMP[23]~78_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[23]~79\);

-- Location: FF_X13_Y11_N21
\H_CNT_MODULE|Q_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[23]~78_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(23));

-- Location: LCCOMB_X12_Y10_N16
\H_CNT_MODULE|Q_TEMP[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[24]~80_combout\ = (\H_CNT_MODULE|Q_TEMP\(24) & (\H_CNT_MODULE|Q_TEMP[23]~79\ $ (GND))) # (!\H_CNT_MODULE|Q_TEMP\(24) & (!\H_CNT_MODULE|Q_TEMP[23]~79\ & VCC))
-- \H_CNT_MODULE|Q_TEMP[24]~81\ = CARRY((\H_CNT_MODULE|Q_TEMP\(24) & !\H_CNT_MODULE|Q_TEMP[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(24),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[23]~79\,
	combout => \H_CNT_MODULE|Q_TEMP[24]~80_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[24]~81\);

-- Location: FF_X13_Y11_N3
\H_CNT_MODULE|Q_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[24]~80_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(24));

-- Location: LCCOMB_X12_Y10_N18
\H_CNT_MODULE|Q_TEMP[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \H_CNT_MODULE|Q_TEMP[25]~82_combout\ = (\H_CNT_MODULE|Q_TEMP\(25) & (!\H_CNT_MODULE|Q_TEMP[24]~81\)) # (!\H_CNT_MODULE|Q_TEMP\(25) & ((\H_CNT_MODULE|Q_TEMP[24]~81\) # (GND)))
-- \H_CNT_MODULE|Q_TEMP[25]~83\ = CARRY((!\H_CNT_MODULE|Q_TEMP[24]~81\) # (!\H_CNT_MODULE|Q_TEMP\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(25),
	datad => VCC,
	cin => \H_CNT_MODULE|Q_TEMP[24]~81\,
	combout => \H_CNT_MODULE|Q_TEMP[25]~82_combout\,
	cout => \H_CNT_MODULE|Q_TEMP[25]~83\);

-- Location: FF_X13_Y11_N1
\H_CNT_MODULE|Q_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[25]~82_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(25));

-- Location: FF_X13_Y11_N23
\H_CNT_MODULE|Q_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP[26]~84_combout\,
	clrn => \CTRL_MODULE|ALT_INV_CLR~combout\,
	sclr => \H_CNT_MODULE|LessThan0~11_combout\,
	sload => VCC,
	ena => \H_CNT_MODULE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \H_CNT_MODULE|Q_TEMP\(26));

-- Location: LCCOMB_X11_Y10_N0
\H[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[26]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(26),
	combout => \H[26]~feeder_combout\);

-- Location: FF_X11_Y10_N1
\H[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(26));

-- Location: LCCOMB_X11_Y10_N12
\SHIFT_OUT_MODULE|H_TEMP[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[26]~feeder_combout\ = H(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(26),
	combout => \SHIFT_OUT_MODULE|H_TEMP[26]~feeder_combout\);

-- Location: FF_X11_Y10_N13
\SHIFT_OUT_MODULE|H_TEMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[26]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(26));

-- Location: LCCOMB_X11_Y10_N14
\H[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[18]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(18),
	combout => \H[18]~feeder_combout\);

-- Location: FF_X11_Y10_N15
\H[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(18));

-- Location: FF_X11_Y10_N5
\SHIFT_OUT_MODULE|H_TEMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(18),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(18));

-- Location: LCCOMB_X11_Y10_N4
\SHIFT_OUT_MODULE|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~0_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|H_TEMP\(26)) # ((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|H_TEMP\(18) & !\SHIFT_OUT_MODULE|INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|H_TEMP\(26),
	datab => \SHIFT_OUT_MODULE|INDEX\(3),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(18),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~0_combout\);

-- Location: LCCOMB_X11_Y10_N10
\H[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[30]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(30),
	combout => \H[30]~feeder_combout\);

-- Location: FF_X11_Y10_N11
\H[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(30));

-- Location: LCCOMB_X11_Y10_N16
\SHIFT_OUT_MODULE|H_TEMP[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[30]~feeder_combout\ = H(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(30),
	combout => \SHIFT_OUT_MODULE|H_TEMP[30]~feeder_combout\);

-- Location: FF_X11_Y10_N17
\SHIFT_OUT_MODULE|H_TEMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[30]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(30));

-- Location: LCCOMB_X11_Y10_N22
\H[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[22]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(22),
	combout => \H[22]~feeder_combout\);

-- Location: FF_X11_Y10_N23
\H[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(22));

-- Location: FF_X11_Y10_N31
\SHIFT_OUT_MODULE|H_TEMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(22),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(22));

-- Location: LCCOMB_X11_Y10_N30
\SHIFT_OUT_MODULE|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~1_combout\ = (\SHIFT_OUT_MODULE|Mux109~0_combout\ & ((\SHIFT_OUT_MODULE|H_TEMP\(30)) # ((!\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|Mux109~0_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(22) & \SHIFT_OUT_MODULE|INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~0_combout\,
	datab => \SHIFT_OUT_MODULE|H_TEMP\(30),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(22),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~1_combout\);

-- Location: LCCOMB_X11_Y9_N0
\H[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[25]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(25),
	combout => \H[25]~feeder_combout\);

-- Location: FF_X11_Y9_N1
\H[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(25));

-- Location: LCCOMB_X11_Y9_N20
\SHIFT_OUT_MODULE|H_TEMP[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[25]~feeder_combout\ = H(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(25),
	combout => \SHIFT_OUT_MODULE|H_TEMP[25]~feeder_combout\);

-- Location: FF_X11_Y9_N21
\SHIFT_OUT_MODULE|H_TEMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[25]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(25));

-- Location: LCCOMB_X11_Y9_N8
\H[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[29]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(29),
	combout => \H[29]~feeder_combout\);

-- Location: FF_X11_Y9_N9
\H[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(29));

-- Location: FF_X11_Y9_N7
\SHIFT_OUT_MODULE|H_TEMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(29),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(29));

-- Location: FF_X11_Y9_N11
\H[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	asdata => \H_CNT_MODULE|Q_TEMP\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(21));

-- Location: LCCOMB_X11_Y9_N18
\SHIFT_OUT_MODULE|H_TEMP[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[21]~feeder_combout\ = H(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(21),
	combout => \SHIFT_OUT_MODULE|H_TEMP[21]~feeder_combout\);

-- Location: FF_X11_Y9_N19
\SHIFT_OUT_MODULE|H_TEMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[21]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(21));

-- Location: LCCOMB_X11_Y9_N30
\H[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[17]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(17),
	combout => \H[17]~feeder_combout\);

-- Location: FF_X11_Y9_N31
\H[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(17));

-- Location: FF_X11_Y9_N29
\SHIFT_OUT_MODULE|H_TEMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(17),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(17));

-- Location: LCCOMB_X11_Y9_N28
\SHIFT_OUT_MODULE|Mux109~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~2_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|H_TEMP\(21))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- ((\SHIFT_OUT_MODULE|H_TEMP\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|H_TEMP\(21),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(17),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~2_combout\);

-- Location: LCCOMB_X11_Y9_N6
\SHIFT_OUT_MODULE|Mux109~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~3_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|Mux109~2_combout\ & ((\SHIFT_OUT_MODULE|H_TEMP\(29)))) # (!\SHIFT_OUT_MODULE|Mux109~2_combout\ & (\SHIFT_OUT_MODULE|H_TEMP\(25))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & 
-- (((\SHIFT_OUT_MODULE|Mux109~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|H_TEMP\(25),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(29),
	datad => \SHIFT_OUT_MODULE|Mux109~2_combout\,
	combout => \SHIFT_OUT_MODULE|Mux109~3_combout\);

-- Location: LCCOMB_X11_Y9_N12
\H[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[20]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(20),
	combout => \H[20]~feeder_combout\);

-- Location: FF_X11_Y9_N13
\H[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(20));

-- Location: LCCOMB_X11_Y9_N22
\SHIFT_OUT_MODULE|H_TEMP[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[20]~feeder_combout\ = H(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(20),
	combout => \SHIFT_OUT_MODULE|H_TEMP[20]~feeder_combout\);

-- Location: FF_X11_Y9_N23
\SHIFT_OUT_MODULE|H_TEMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[20]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(20));

-- Location: LCCOMB_X11_Y9_N24
\H[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[24]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(24),
	combout => \H[24]~feeder_combout\);

-- Location: FF_X11_Y9_N25
\H[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(24));

-- Location: LCCOMB_X11_Y9_N16
\SHIFT_OUT_MODULE|H_TEMP[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[24]~feeder_combout\ = H(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(24),
	combout => \SHIFT_OUT_MODULE|H_TEMP[24]~feeder_combout\);

-- Location: FF_X11_Y9_N17
\SHIFT_OUT_MODULE|H_TEMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[24]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(24));

-- Location: LCCOMB_X11_Y9_N14
\H[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[16]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(16),
	combout => \H[16]~feeder_combout\);

-- Location: FF_X11_Y9_N15
\H[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(16));

-- Location: FF_X11_Y9_N3
\SHIFT_OUT_MODULE|H_TEMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(16),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(16));

-- Location: LCCOMB_X11_Y9_N2
\SHIFT_OUT_MODULE|Mux109~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~4_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|H_TEMP\(24)) # ((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|H_TEMP\(16) & !\SHIFT_OUT_MODULE|INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(3),
	datab => \SHIFT_OUT_MODULE|H_TEMP\(24),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(16),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~4_combout\);

-- Location: LCCOMB_X11_Y9_N26
\H[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[28]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(28),
	combout => \H[28]~feeder_combout\);

-- Location: FF_X11_Y9_N27
\H[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(28));

-- Location: FF_X11_Y9_N5
\SHIFT_OUT_MODULE|H_TEMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(28),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(28));

-- Location: LCCOMB_X11_Y9_N4
\SHIFT_OUT_MODULE|Mux109~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~5_combout\ = (\SHIFT_OUT_MODULE|Mux109~4_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(28)) # (!\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|Mux109~4_combout\ & (\SHIFT_OUT_MODULE|H_TEMP\(20) & ((\SHIFT_OUT_MODULE|INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|H_TEMP\(20),
	datab => \SHIFT_OUT_MODULE|Mux109~4_combout\,
	datac => \SHIFT_OUT_MODULE|H_TEMP\(28),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~5_combout\);

-- Location: LCCOMB_X14_Y9_N28
\SHIFT_OUT_MODULE|Mux109~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~6_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|Mux109~3_combout\)) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- ((\SHIFT_OUT_MODULE|Mux109~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|Mux109~3_combout\,
	datac => \SHIFT_OUT_MODULE|Mux109~5_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux109~6_combout\);

-- Location: LCCOMB_X14_Y10_N6
\H[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[23]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(23),
	combout => \H[23]~feeder_combout\);

-- Location: FF_X14_Y10_N7
\H[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(23));

-- Location: LCCOMB_X14_Y10_N12
\SHIFT_OUT_MODULE|H_TEMP[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[23]~feeder_combout\ = H(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(23),
	combout => \SHIFT_OUT_MODULE|H_TEMP[23]~feeder_combout\);

-- Location: FF_X14_Y10_N13
\SHIFT_OUT_MODULE|H_TEMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[23]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(23));

-- Location: LCCOMB_X14_Y10_N22
\H[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[19]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(19),
	combout => \H[19]~feeder_combout\);

-- Location: FF_X14_Y10_N23
\H[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(19));

-- Location: FF_X14_Y10_N11
\SHIFT_OUT_MODULE|H_TEMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(19),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(19));

-- Location: LCCOMB_X14_Y10_N10
\SHIFT_OUT_MODULE|Mux109~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~7_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|H_TEMP\(23))) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- ((\SHIFT_OUT_MODULE|H_TEMP\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|H_TEMP\(23),
	datab => \SHIFT_OUT_MODULE|INDEX\(3),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(19),
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~7_combout\);

-- Location: LCCOMB_X14_Y10_N2
\H[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[27]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(27),
	combout => \H[27]~feeder_combout\);

-- Location: FF_X14_Y10_N3
\H[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(27));

-- Location: LCCOMB_X14_Y10_N18
\SHIFT_OUT_MODULE|H_TEMP[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[27]~feeder_combout\ = H(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(27),
	combout => \SHIFT_OUT_MODULE|H_TEMP[27]~feeder_combout\);

-- Location: FF_X14_Y10_N19
\SHIFT_OUT_MODULE|H_TEMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[27]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(27));

-- Location: LCCOMB_X14_Y10_N26
\H[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[31]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(31),
	combout => \H[31]~feeder_combout\);

-- Location: FF_X14_Y10_N27
\H[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(31));

-- Location: FF_X14_Y10_N21
\SHIFT_OUT_MODULE|H_TEMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(31),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(31));

-- Location: LCCOMB_X14_Y10_N20
\SHIFT_OUT_MODULE|Mux109~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~8_combout\ = (\SHIFT_OUT_MODULE|Mux109~7_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(31)) # (!\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|Mux109~7_combout\ & (\SHIFT_OUT_MODULE|H_TEMP\(27) & ((\SHIFT_OUT_MODULE|INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~7_combout\,
	datab => \SHIFT_OUT_MODULE|H_TEMP\(27),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(31),
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux109~8_combout\);

-- Location: LCCOMB_X14_Y9_N10
\SHIFT_OUT_MODULE|Mux109~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~9_combout\ = (\SHIFT_OUT_MODULE|Mux109~6_combout\ & (((\SHIFT_OUT_MODULE|Mux109~8_combout\) # (!\SHIFT_OUT_MODULE|INDEX\(1))))) # (!\SHIFT_OUT_MODULE|Mux109~6_combout\ & (\SHIFT_OUT_MODULE|Mux109~1_combout\ & 
-- ((\SHIFT_OUT_MODULE|INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~1_combout\,
	datab => \SHIFT_OUT_MODULE|Mux109~6_combout\,
	datac => \SHIFT_OUT_MODULE|Mux109~8_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(1),
	combout => \SHIFT_OUT_MODULE|Mux109~9_combout\);

-- Location: LCCOMB_X12_Y9_N8
\H[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[12]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(12),
	combout => \H[12]~feeder_combout\);

-- Location: FF_X12_Y9_N9
\H[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(12));

-- Location: FF_X12_Y9_N13
\SHIFT_OUT_MODULE|H_TEMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(12),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(12));

-- Location: LCCOMB_X12_Y9_N10
\H[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[14]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(14),
	combout => \H[14]~feeder_combout\);

-- Location: FF_X12_Y9_N11
\H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(14));

-- Location: LCCOMB_X12_Y9_N16
\SHIFT_OUT_MODULE|H_TEMP[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[14]~feeder_combout\ = H(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(14),
	combout => \SHIFT_OUT_MODULE|H_TEMP[14]~feeder_combout\);

-- Location: FF_X12_Y9_N17
\SHIFT_OUT_MODULE|H_TEMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[14]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(14));

-- Location: LCCOMB_X12_Y9_N12
\SHIFT_OUT_MODULE|Mux109~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~17_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0)) # ((\SHIFT_OUT_MODULE|H_TEMP\(14))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & (!\SHIFT_OUT_MODULE|INDEX\(0) & (\SHIFT_OUT_MODULE|H_TEMP\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|INDEX\(0),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(12),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(14),
	combout => \SHIFT_OUT_MODULE|Mux109~17_combout\);

-- Location: LCCOMB_X12_Y9_N30
\H[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[15]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(15),
	combout => \H[15]~feeder_combout\);

-- Location: FF_X12_Y9_N31
\H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(15));

-- Location: FF_X12_Y9_N15
\SHIFT_OUT_MODULE|H_TEMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(15),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(15));

-- Location: LCCOMB_X12_Y9_N24
\H[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[13]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(13),
	combout => \H[13]~feeder_combout\);

-- Location: FF_X12_Y9_N25
\H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(13));

-- Location: LCCOMB_X12_Y9_N18
\SHIFT_OUT_MODULE|H_TEMP[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[13]~feeder_combout\ = H(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(13),
	combout => \SHIFT_OUT_MODULE|H_TEMP[13]~feeder_combout\);

-- Location: FF_X12_Y9_N19
\SHIFT_OUT_MODULE|H_TEMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[13]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(13));

-- Location: LCCOMB_X12_Y9_N14
\SHIFT_OUT_MODULE|Mux109~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~18_combout\ = (\SHIFT_OUT_MODULE|Mux109~17_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(15))) # (!\SHIFT_OUT_MODULE|INDEX\(0)))) # (!\SHIFT_OUT_MODULE|Mux109~17_combout\ & (\SHIFT_OUT_MODULE|INDEX\(0) & 
-- ((\SHIFT_OUT_MODULE|H_TEMP\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~17_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(0),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(15),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(13),
	combout => \SHIFT_OUT_MODULE|Mux109~18_combout\);

-- Location: LCCOMB_X14_Y8_N12
\H[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[6]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(6),
	combout => \H[6]~feeder_combout\);

-- Location: FF_X14_Y8_N13
\H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(6));

-- Location: LCCOMB_X14_Y8_N24
\SHIFT_OUT_MODULE|H_TEMP[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[6]~feeder_combout\ = H(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(6),
	combout => \SHIFT_OUT_MODULE|H_TEMP[6]~feeder_combout\);

-- Location: FF_X14_Y8_N25
\SHIFT_OUT_MODULE|H_TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[6]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(6));

-- Location: LCCOMB_X13_Y10_N22
\H[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[4]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(4),
	combout => \H[4]~feeder_combout\);

-- Location: FF_X13_Y10_N23
\H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(4));

-- Location: FF_X13_Y10_N25
\SHIFT_OUT_MODULE|H_TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(4),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(4));

-- Location: LCCOMB_X13_Y10_N24
\SHIFT_OUT_MODULE|Mux109~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~12_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|H_TEMP\(6)) # ((\SHIFT_OUT_MODULE|INDEX\(0))))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & (((\SHIFT_OUT_MODULE|H_TEMP\(4) & !\SHIFT_OUT_MODULE|INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|H_TEMP\(6),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(4),
	datad => \SHIFT_OUT_MODULE|INDEX\(0),
	combout => \SHIFT_OUT_MODULE|Mux109~12_combout\);

-- Location: LCCOMB_X13_Y10_N8
\H[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[7]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(7),
	combout => \H[7]~feeder_combout\);

-- Location: FF_X13_Y10_N9
\H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(7));

-- Location: FF_X13_Y10_N17
\SHIFT_OUT_MODULE|H_TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(7),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(7));

-- Location: LCCOMB_X13_Y10_N12
\H[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[5]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(5),
	combout => \H[5]~feeder_combout\);

-- Location: FF_X13_Y10_N13
\H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(5));

-- Location: LCCOMB_X13_Y10_N2
\SHIFT_OUT_MODULE|H_TEMP[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[5]~feeder_combout\ = H(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(5),
	combout => \SHIFT_OUT_MODULE|H_TEMP[5]~feeder_combout\);

-- Location: FF_X13_Y10_N3
\SHIFT_OUT_MODULE|H_TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[5]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(5));

-- Location: LCCOMB_X13_Y10_N16
\SHIFT_OUT_MODULE|Mux109~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~13_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|Mux109~12_combout\ & (\SHIFT_OUT_MODULE|H_TEMP\(7))) # (!\SHIFT_OUT_MODULE|Mux109~12_combout\ & ((\SHIFT_OUT_MODULE|H_TEMP\(5)))))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- (\SHIFT_OUT_MODULE|Mux109~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|Mux109~12_combout\,
	datac => \SHIFT_OUT_MODULE|H_TEMP\(7),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(5),
	combout => \SHIFT_OUT_MODULE|Mux109~13_combout\);

-- Location: LCCOMB_X13_Y10_N30
\H[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[0]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(0),
	combout => \H[0]~feeder_combout\);

-- Location: FF_X13_Y10_N31
\H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(0));

-- Location: FF_X13_Y10_N11
\SHIFT_OUT_MODULE|H_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(0),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(0));

-- Location: LCCOMB_X13_Y10_N28
\H[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[1]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(1),
	combout => \H[1]~feeder_combout\);

-- Location: FF_X13_Y10_N29
\H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(1));

-- Location: LCCOMB_X13_Y10_N6
\SHIFT_OUT_MODULE|H_TEMP[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[1]~feeder_combout\ = H(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(1),
	combout => \SHIFT_OUT_MODULE|H_TEMP[1]~feeder_combout\);

-- Location: FF_X13_Y10_N7
\SHIFT_OUT_MODULE|H_TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[1]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(1));

-- Location: LCCOMB_X13_Y10_N10
\SHIFT_OUT_MODULE|Mux109~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~14_combout\ = (\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|INDEX\(1)) # ((\SHIFT_OUT_MODULE|H_TEMP\(1))))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & (!\SHIFT_OUT_MODULE|INDEX\(1) & (\SHIFT_OUT_MODULE|H_TEMP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(0),
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(0),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(1),
	combout => \SHIFT_OUT_MODULE|Mux109~14_combout\);

-- Location: LCCOMB_X13_Y10_N14
\H[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[3]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(3),
	combout => \H[3]~feeder_combout\);

-- Location: FF_X13_Y10_N15
\H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(3));

-- Location: FF_X13_Y10_N5
\SHIFT_OUT_MODULE|H_TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(3),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(3));

-- Location: LCCOMB_X13_Y10_N0
\H[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[2]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H_CNT_MODULE|Q_TEMP\(2),
	combout => \H[2]~feeder_combout\);

-- Location: FF_X13_Y10_N1
\H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(2));

-- Location: LCCOMB_X13_Y10_N20
\SHIFT_OUT_MODULE|H_TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[2]~feeder_combout\ = H(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(2),
	combout => \SHIFT_OUT_MODULE|H_TEMP[2]~feeder_combout\);

-- Location: FF_X13_Y10_N21
\SHIFT_OUT_MODULE|H_TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[2]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(2));

-- Location: LCCOMB_X13_Y10_N4
\SHIFT_OUT_MODULE|Mux109~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~15_combout\ = (\SHIFT_OUT_MODULE|Mux109~14_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(3))) # (!\SHIFT_OUT_MODULE|INDEX\(1)))) # (!\SHIFT_OUT_MODULE|Mux109~14_combout\ & (\SHIFT_OUT_MODULE|INDEX\(1) & 
-- ((\SHIFT_OUT_MODULE|H_TEMP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~14_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(1),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(3),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~15_combout\);

-- Location: LCCOMB_X14_Y10_N28
\SHIFT_OUT_MODULE|Mux109~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~16_combout\ = (\SHIFT_OUT_MODULE|INDEX\(3) & (((\SHIFT_OUT_MODULE|INDEX\(2))))) # (!\SHIFT_OUT_MODULE|INDEX\(3) & ((\SHIFT_OUT_MODULE|INDEX\(2) & (\SHIFT_OUT_MODULE|Mux109~13_combout\)) # (!\SHIFT_OUT_MODULE|INDEX\(2) & 
-- ((\SHIFT_OUT_MODULE|Mux109~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~13_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(3),
	datac => \SHIFT_OUT_MODULE|Mux109~15_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(2),
	combout => \SHIFT_OUT_MODULE|Mux109~16_combout\);

-- Location: LCCOMB_X12_Y9_N28
\H[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[11]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H_CNT_MODULE|Q_TEMP\(11),
	combout => \H[11]~feeder_combout\);

-- Location: FF_X12_Y9_N29
\H[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(11));

-- Location: LCCOMB_X12_Y9_N6
\SHIFT_OUT_MODULE|H_TEMP[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[11]~feeder_combout\ = H(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(11),
	combout => \SHIFT_OUT_MODULE|H_TEMP[11]~feeder_combout\);

-- Location: FF_X12_Y9_N7
\SHIFT_OUT_MODULE|H_TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[11]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(11));

-- Location: LCCOMB_X12_Y9_N22
\H[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[8]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(8),
	combout => \H[8]~feeder_combout\);

-- Location: FF_X12_Y9_N23
\H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(8));

-- Location: FF_X12_Y9_N3
\SHIFT_OUT_MODULE|H_TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(8),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(8));

-- Location: LCCOMB_X12_Y9_N0
\H[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[9]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H_CNT_MODULE|Q_TEMP\(9),
	combout => \H[9]~feeder_combout\);

-- Location: FF_X12_Y9_N1
\H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(9));

-- Location: LCCOMB_X12_Y9_N20
\SHIFT_OUT_MODULE|H_TEMP[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|H_TEMP[9]~feeder_combout\ = H(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => H(9),
	combout => \SHIFT_OUT_MODULE|H_TEMP[9]~feeder_combout\);

-- Location: FF_X12_Y9_N21
\SHIFT_OUT_MODULE|H_TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|H_TEMP[9]~feeder_combout\,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(9));

-- Location: LCCOMB_X12_Y9_N2
\SHIFT_OUT_MODULE|Mux109~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~10_combout\ = (\SHIFT_OUT_MODULE|INDEX\(1) & (\SHIFT_OUT_MODULE|INDEX\(0))) # (!\SHIFT_OUT_MODULE|INDEX\(1) & ((\SHIFT_OUT_MODULE|INDEX\(0) & ((\SHIFT_OUT_MODULE|H_TEMP\(9)))) # (!\SHIFT_OUT_MODULE|INDEX\(0) & 
-- (\SHIFT_OUT_MODULE|H_TEMP\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|INDEX\(1),
	datab => \SHIFT_OUT_MODULE|INDEX\(0),
	datac => \SHIFT_OUT_MODULE|H_TEMP\(8),
	datad => \SHIFT_OUT_MODULE|H_TEMP\(9),
	combout => \SHIFT_OUT_MODULE|Mux109~10_combout\);

-- Location: LCCOMB_X12_Y9_N4
\H[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \H[10]~feeder_combout\ = \H_CNT_MODULE|Q_TEMP\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H_CNT_MODULE|Q_TEMP\(10),
	combout => \H[10]~feeder_combout\);

-- Location: FF_X12_Y9_N5
\H[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CTRL_MODULE|ALT_INV_C~clkctrl_outclk\,
	d => \H[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => H(10));

-- Location: FF_X12_Y9_N27
\SHIFT_OUT_MODULE|H_TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => H(10),
	sload => VCC,
	ena => \SHIFT_OUT_MODULE|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_TEMP\(10));

-- Location: LCCOMB_X12_Y9_N26
\SHIFT_OUT_MODULE|Mux109~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~11_combout\ = (\SHIFT_OUT_MODULE|Mux109~10_combout\ & ((\SHIFT_OUT_MODULE|H_TEMP\(11)) # ((!\SHIFT_OUT_MODULE|INDEX\(1))))) # (!\SHIFT_OUT_MODULE|Mux109~10_combout\ & (((\SHIFT_OUT_MODULE|H_TEMP\(10) & 
-- \SHIFT_OUT_MODULE|INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|H_TEMP\(11),
	datab => \SHIFT_OUT_MODULE|Mux109~10_combout\,
	datac => \SHIFT_OUT_MODULE|H_TEMP\(10),
	datad => \SHIFT_OUT_MODULE|INDEX\(1),
	combout => \SHIFT_OUT_MODULE|Mux109~11_combout\);

-- Location: LCCOMB_X13_Y9_N8
\SHIFT_OUT_MODULE|Mux109~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~19_combout\ = (\SHIFT_OUT_MODULE|Mux109~16_combout\ & ((\SHIFT_OUT_MODULE|Mux109~18_combout\) # ((!\SHIFT_OUT_MODULE|INDEX\(3))))) # (!\SHIFT_OUT_MODULE|Mux109~16_combout\ & (((\SHIFT_OUT_MODULE|Mux109~11_combout\ & 
-- \SHIFT_OUT_MODULE|INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~18_combout\,
	datab => \SHIFT_OUT_MODULE|Mux109~16_combout\,
	datac => \SHIFT_OUT_MODULE|Mux109~11_combout\,
	datad => \SHIFT_OUT_MODULE|INDEX\(3),
	combout => \SHIFT_OUT_MODULE|Mux109~19_combout\);

-- Location: LCCOMB_X16_Y6_N28
\SHIFT_OUT_MODULE|Mux109~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT_OUT_MODULE|Mux109~20_combout\ = (\SHIFT_OUT_MODULE|INDEX\(4) & (\SHIFT_OUT_MODULE|Mux109~9_combout\)) # (!\SHIFT_OUT_MODULE|INDEX\(4) & ((\SHIFT_OUT_MODULE|Mux109~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFT_OUT_MODULE|Mux109~9_combout\,
	datab => \SHIFT_OUT_MODULE|INDEX\(4),
	datac => \SHIFT_OUT_MODULE|Mux109~19_combout\,
	combout => \SHIFT_OUT_MODULE|Mux109~20_combout\);

-- Location: FF_X16_Y6_N29
\SHIFT_OUT_MODULE|H_ARDUINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_MODULE|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \SHIFT_OUT_MODULE|Mux109~20_combout\,
	ena => \SHIFT_OUT_MODULE|Mux107~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT_OUT_MODULE|H_ARDUINO~q\);
END structure;


