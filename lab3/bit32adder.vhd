library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit32Adder is
	port (a: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (31 DOWNTO 0);
			cin: in STD_LOGIC;
			result: out STD_LOGIC_VECTOR (31 DOWNTO 0);
			carry: out STD_LOGIC);
end  bit32Adder;

architecture description of bit32Adder is  

component bit4Adder is 
	port (a: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			cin: in STD_LOGIC;
			sum: out STD_LOGIC_VECTOR (3 DOWNTO 0);
			carry: out STD_LOGIC);
end component;

signal sig:STD_LOGIC_VECTOR(6 downto 0);
begin

s1:bit4Adder port map (a(3 downto 0), b( 3 downto 0), cin,result (3 downto 0),sig(0));
s2:bit4Adder port map (a(7 downto 4), b( 7 downto 4), sig(0),result (7 downto 4),sig(1));
s3:bit4Adder port map (a(11 downto 8), b( 11 downto 8), sig(1),result (11 downto 8),sig(2));
s4:bit4Adder port map (a(15 downto 12), b( 15 downto 12), sig(2),result (15 downto 12),sig(3));
s5:bit4Adder port map (a(19 downto 16), b( 19 downto 16), sig(3),result (19 downto 16),sig(4));
s6:bit4Adder port map (a(23 downto 20), b( 23 downto 20), sig(4),result (23 downto 20),sig(5));
s7:bit4Adder port map (a(27 downto 24), b( 27 downto 24), sig(5),result (27 downto 24),sig(6));
s8:bit4Adder port map (a(31 downto 28), b( 31 downto 28), sig(6),result (31 downto 28),carry);


end description;
