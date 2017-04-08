LIBRARY IEEE; --数码管段选控制器
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SEG8 IS
	PORT(DATA : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	     DOT : IN STD_LOGIC;
	     DUAN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END SEG8;
ARCHITECTURE behav OF SEG8 IS
BEGIN
	WITH DATA SELECT
	DUAN <= (NOT DOT) & "1000000" WHEN "0000",
	        (NOT DOT) & "1111001" WHEN "0001",
			  (NOT DOT) & "0100100" WHEN "0010",
			  (NOT DOT) & "0110000" WHEN "0011",
			  (NOT DOT) & "0011001" WHEN "0100",
			  (NOT DOT) & "0010010" WHEN "0101",
			  (NOT DOT) & "0000010" WHEN "0110",
			  (NOT DOT) & "1111000" WHEN "0111",
			  (NOT DOT) & "0000000" WHEN "1000",
			  (NOT DOT) & "0010000" WHEN "1001",
			  "11111111" WHEN OTHERS;
END behav;