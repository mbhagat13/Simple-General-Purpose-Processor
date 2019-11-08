library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit8Inverse is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  bit8Inverse;


architecture behaviour of bit8Inverse is

begin

result(7 downto 0)<=not (a(7 downto 0));

end behaviour;