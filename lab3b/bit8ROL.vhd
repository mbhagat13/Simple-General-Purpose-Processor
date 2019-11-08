library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit8ROL is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  bit8ROL;


architecture behaviour of bit8ROL is

begin
result (7 downto 1) <= a(6 downto 0);
			result (0)<='0';
end behaviour;