library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit8Adder is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			cin: in STD_LOGIC;
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0);
			carry: out STD_LOGIC);
end  bit8Adder;

architecture description of bit8Adder is  

component bit4Adder is 
	port (a: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			cin: in STD_LOGIC;
			sum: out STD_LOGIC_VECTOR (3 DOWNTO 0);
			carry: out STD_LOGIC);
end component;

signal sig:STD_LOGIC;
begin

s1:bit4Adder port map (a(3 downto 0), b( 3 downto 0), cin,result (3 downto 0),sig);
s2:bit4Adder port map (a(7 downto 4), b( 7 downto 4), sig,result (7 downto 4),carry);

end description;