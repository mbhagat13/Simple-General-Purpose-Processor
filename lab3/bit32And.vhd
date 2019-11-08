library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit32And is
	port (a: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (31 DOWNTO 0));
end  bit32And;


architecture behaviour of bit32And is

begin

result(31 downto 0)<=a(31 downto 0) and b(31 downto 0);

end behaviour;