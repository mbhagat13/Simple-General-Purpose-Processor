library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit32ROL is
	port (a: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (31 DOWNTO 0));
end  bit32ROL;


architecture behaviour of bit32ROL is

begin
result (31 downto 1) <= a(30 downto 0);
			result (0)<='0';
end behaviour;