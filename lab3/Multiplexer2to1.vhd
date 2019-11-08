Library ieee;
use ieee.std_logic_1164.all;

ENTITY Multiplexer2to1 IS
		PORT (w0, w1	   :IN STD_LOGIC_VECTOR(31 downto 0);
			s 		   :IN STD_LOGIC;
			f		   :OUT STD_LOGIC_Vector(31 downto 0));
END Multiplexer2to1;

ARCHITECTURE Behavior OF Multiplexer2to1 IS
BEGIN
	WITH s SELECT
		f<= w0 WHEN '0',
		    w1 WHEN '1';
END Behavior;
	
	