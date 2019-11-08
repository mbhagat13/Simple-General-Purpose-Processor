library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit32ROR is
	port (a: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (31 DOWNTO 0));
end  bit32ROR;


architecture behaviour of bit32ROR is

begin
			result (30 downto 0) <= a(31 downto 1);
			result (31)<='0';
end behaviour;