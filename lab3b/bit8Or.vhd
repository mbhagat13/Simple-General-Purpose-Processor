library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit8Or is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  bit8Or;


architecture behaviour of bit8Or is

begin

result(7 downto 0)<=a(7 downto 0) or b(7 downto 0);

end behaviour;