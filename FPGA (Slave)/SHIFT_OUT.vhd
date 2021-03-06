--移位输出模块 2017/05/23
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SHIFT_OUT IS
	PORT (M : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      N : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      H : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	      CLK_1MHZ : IN STD_LOGIC;
	      RST_ARDUINO : OUT STD_LOGIC;
	      CLK_ARDUINO : OUT STD_LOGIC;
	      M_ARDUINO : OUT STD_LOGIC;
	      N_ARDUINO : OUT STD_LOGIC;
	      H_ARDUINO : OUT STD_LOGIC);
END SHIFT_OUT;

ARCHITECTURE BEHAV OF SHIFT_OUT IS
	SIGNAL M_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时标准时钟上升沿次数
	SIGNAL N_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时待测信号上升沿次数
	SIGNAL H_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);	--实时标准时钟上升沿且待测信号高电平次数
	SIGNAL STAT : INTEGER RANGE 0 TO 3;
BEGIN
	PROCESS (CLK_1MHZ, STAT)
		VARIABLE INDEX : INTEGER RANGE 0 TO 31;
	BEGIN
		IF RISING_EDGE(CLK_1MHZ) THEN
			CASE STAT IS
				WHEN 0 => M_TEMP <= M;	--装载数据且复位相关寄存器
				          N_TEMP <= N;
				          H_TEMP <= H;
				          RST_ARDUINO <= '0';
				          CLK_ARDUINO <= '1';
				          INDEX := 0;
				          STAT <= 1;
				WHEN 1 => RST_ARDUINO <= '1';	--解除复位
				          STAT <= 2;
				WHEN 2 => M_ARDUINO <= M_TEMP(INDEX);	--顺序移出数据
				          N_ARDUINO <= N_TEMP(INDEX);
				          H_ARDUINO <= H_TEMP(INDEX);
				          CLK_ARDUINO <= '0';
				          STAT <= 3;
				WHEN 3 => CLK_ARDUINO <= '1';	--时钟信号线电平拉高
				          IF INDEX < 31 THEN
								INDEX := INDEX + 1;
								STAT <= 2;
				          ELSE
								STAT <= 0;
				          END IF;
				WHEN OTHERS => STAT <= 0;
			END CASE;
		END IF;
	END PROCESS;
END BEHAV;