library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit32Inverse is
	port (a: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (31 DOWNTO 0));
end  bit32Inverse;


architecture behaviour of bit32Inverse is

begin

result(31 downto 0)<=not (a(31 downto 0));

end behaviour;