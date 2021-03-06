--数字频率计顶层设计文件 2017/05/23
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DIGITAL_FREQUENCY_METER IS
	PORT (CLK_50MHZ : IN STD_LOGIC;	--50MHz标准时钟
	      CLK_SIGNAL : IN STD_LOGIC;	--待测信号
	      CLK_SYNC : IN STD_LOGIC;	--同步信号
	      CLK_PLL : OUT STD_LOGIC;	--锁相环100MHz时钟信号引出
	      RST_ARDUINO : OUT STD_LOGIC;	--Arduino复位信号
	      CLK_ARDUINO : OUT STD_LOGIC;	--Arduino时钟信号
	      M_ARDUINO : OUT STD_LOGIC;	--Arduino M数据信号
	      N_ARDUINO : OUT STD_LOGIC;	--Arduino N数据信号
	      H_ARDUINO : OUT STD_LOGIC);	--Arduino H数据信号
END DIGITAL_FREQUENCY_METER;

ARCHITECTURE BEHAV OF DIGITAL_FREQUENCY_METER IS
	COMPONENT PLL IS
		PORT (INCLK0 : IN STD_LOGIC;
		      C0 : OUT STD_LOGIC;	--100MHz
		      C1 : OUT STD_LOGIC);	--1MHz
	END COMPONENT;
	
	COMPONENT CTRL IS
		PORT (CLK_SYNC : IN STD_LOGIC;	--同步信号
		      CREG : BUFFER STD_LOGIC;	--锁存信号
		      CLR : OUT STD_LOGIC;	--清零信号
		      CP : OUT STD_LOGIC);	--计数使能信号
	END COMPONENT;
	
	COMPONENT CNT IS
		PORT (CLK : IN STD_LOGIC;
		      CLR : IN STD_LOGIC;
		      ENA : IN STD_LOGIC;
		      Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT CNT_EX IS
		PORT (CLK : IN STD_LOGIC;
		      CLK_EX : IN STD_LOGIC;
		      CLR : IN STD_LOGIC;
		      ENA : IN STD_LOGIC;
		      Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT SHIFT_OUT IS
	PORT (M : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      N : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      H : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      CLK_1MHZ : IN STD_LOGIC;
	      RST_ARDUINO : OUT STD_LOGIC;
	      CLK_ARDUINO : OUT STD_LOGIC;
	      M_ARDUINO : OUT STD_LOGIC;
	      N_ARDUINO : OUT STD_LOGIC;
	      H_ARDUINO : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL CLK_100MHZ : STD_LOGIC;	--PLL产生的100MHz时钟
	SIGNAL CLK_1MHZ : STD_LOGIC;	--PLL产生的1MHz时钟
	SIGNAL CLR : STD_LOGIC;	--全局清零信号
	SIGNAL CP : STD_LOGIC;	--计数使能信号
	SIGNAL CREG : STD_LOGIC;	--锁存信号
	SIGNAL M_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时标准时钟上升沿次数
	SIGNAL N_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时待测信号上升沿次数
	SIGNAL H_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时标准时钟上升沿且待测信号高电平次数
	SIGNAL M : STD_LOGIC_VECTOR(31 DOWNTO 0);	--标准时钟上升沿次数
	SIGNAL N : STD_LOGIC_VECTOR(31 DOWNTO 0);	--待测信号上升沿次数
	SIGNAL H : STD_LOGIC_VECTOR(31 DOWNTO 0);	--标准时钟上升沿且待测信号高电平次数
BEGIN
	PLL_MODULE : PLL PORT MAP (INCLK0 => CLK_50MHZ,
	                           C0 => CLK_100MHZ,
	                           C1 => CLK_1MHZ);
										
	CTRL_MODULE : CTRL PORT MAP (CLK_SYNC => CLK_SYNC,
	                             CREG => CREG,
	                             CLR => CLR,
	                             CP => CP);
										  
	M_CNT_MODULE : CNT PORT MAP (CLK => CLK_100MHZ,
	                             CLR => CLR,
	                             ENA => CP,
	                             Q => M_TEMP);
										  
	N_CNT_MODULE : CNT PORT MAP (CLK => CLK_SIGNAL,
	                             CLR => CLR,
	                             ENA => CP,
	                             Q => N_TEMP);
										  
	H_CNT_MODULE : CNT_EX PORT MAP (CLK => CLK_100MHZ,
	                                CLK_EX => CLK_SIGNAL,
	                                CLR => CLR,
	                                ENA => CP,
	                                Q => H_TEMP);
											  
	SHIFT_OUT_MODULE : SHIFT_OUT PORT MAP (M => M,
	                                       N => N,
	                                       H => H,
	                                       CLK_1MHZ => CLK_1MHZ,
	                                       RST_ARDUINO => RST_ARDUINO,
	                                       CLK_ARDUINO => CLK_ARDUINO,
	                                       M_ARDUINO => M_ARDUINO,
	                                       N_ARDUINO => N_ARDUINO,
	                                       H_ARDUINO => H_ARDUINO);
														
	PROCESS (CREG)
	BEGIN
		IF RISING_EDGE(CREG) THEN
			N <= N_TEMP;
			M <= M_TEMP;
			H <= H_TEMP;
		END IF;
	END PROCESS;
	
	CLK_PLL <= CLK_100MHZ;
END ARCHITECTURE;