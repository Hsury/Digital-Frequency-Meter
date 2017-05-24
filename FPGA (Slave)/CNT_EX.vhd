--计数器(高级)模块 2017/05/23
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CNT_EX IS
	PORT (CLK : IN STD_LOGIC;
	      CLK_EX : IN STD_LOGIC;
	      CLR : IN STD_LOGIC;
	      ENA : IN STD_LOGIC;
	      Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END CNT_EX;

ARCHITECTURE BEHAV OF CNT_EX IS
	SIGNAL Q_TEMP : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	PROCESS(CLK, CLK_EX, CLR, ENA)
	BEGIN
	IF CLR = '1' THEN
		Q_TEMP <= (OTHERS => '0');
	ELSE 
		IF RISING_EDGE (CLK) THEN
			IF ENA = '1' AND CLK_EX = '1' THEN
				IF Q_TEMP < "00111011100110101100100111111111" THEN	--十进制为999,999,999
					Q_TEMP <= Q_TEMP + 1;
				ELSE
					Q_TEMP <= (OTHERS => '0');
				END IF;
			END IF;
		END IF;
	END IF;
	END PROCESS;
	
	Q <= Q_TEMP;
END BEHAV;