library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit8ROR is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  bit8ROR;


architecture behaviour of bit8ROR is

begin
			result (6 downto 0) <= a(7 downto 1);
			result (7)<='0';
end behaviour;