LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL; 

ENTITY Multiplexer8to1 IS
		PORT (w0, w1, w2, w3, w4,w5	   :IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			s 		   :IN STD_LOGIC_VECTOR(2 Downto 0);
			f		   :OUT STD_LOGIC_Vector (7 DOWNTO 0));
END Multiplexer8to1 ;

ARCHITECTURE Behavior OF Multiplexer8to1  IS
BEGIN
	WITH s SELECT
		f<= w0 WHEN "000",
		    w1 WHEN "001",
		    w2 WHEN "010",
		    w3 WHEN "110",
			 w4 WHEN "100",
			 w5 WHEN "101",
			 "ZZZZZZZZ" WHEN OTHERS;
END Behavior;