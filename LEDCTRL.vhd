LIBRARY IEEE; --数码管总控制器
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY LEDCTRL IS
	PORT(CLK : IN STD_LOGIC;
	     DATA : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
	     CURSOR : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
		  NUM : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END LEDCTRL;
ARCHITECTURE behav OF LEDCTRL IS
BEGIN
	PROCESS(CLK)
		VARIABLE COUNTER : INTEGER RANGE 0 TO 5;
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE COUNTER IS
				WHEN 0 => CURSOR<="000"; NUM<=DATA(23 DOWNTO 20);
				WHEN 1 => CURSOR<="001"; NUM<=DATA(19 DOWNTO 16);
				WHEN 2 => CURSOR<="010"; NUM<=DATA(15 DOWNTO 12);
				WHEN 3 => CURSOR<="011"; NUM<=DATA(11 DOWNTO 8);
				WHEN 4 => CURSOR<="100"; NUM<=DATA(7 DOWNTO 4);
				WHEN 5 => CURSOR<="101"; NUM<=DATA(3 DOWNTO 0);
				WHEN OTHERS => CURSOR<="000"; NUM<="0000";
			END CASE;
			IF COUNTER=5 THEN
				COUNTER:=0;
			ELSE
				COUNTER:=COUNTER+1;
			END IF;
		END IF;
	END PROCESS;
END behav;