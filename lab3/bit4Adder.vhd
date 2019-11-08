library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit4Adder is
	port (a: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (3 DOWNTO 0);
			cin: in STD_LOGIC;
			sum: out STD_LOGIC_VECTOR (3 DOWNTO 0);
			carry: out STD_LOGIC);
end  bit4Adder;

architecture description of bit4Adder is  

component fullAdder is 
 port(a    : in  std_logic;
       b    : in  std_logic;
       cin  : in  std_logic;
       s    : out std_logic;
       cout : out std_logic);
end component;

signal sig:STD_LOGIC_VECTOR(2 downto 0);
begin

p1: fullAdder port map (a(0),b(0),cin,sum(0),sig(0));
p2: fullAdder port map (a(1),b(1),sig(0),sum(1),sig(1));
p3: fullAdder port map (a(2),b(2),sig(1),sum(2),sig(2));
p4: fullAdder port map (a(3),b(3),sig(2),sum(3),carry);

end description;
