library IEEE;
use IEEE.std_logic_1164.all;

entity fullAdder is              
  port(a    : in  std_logic;
       b    : in  std_logic;
       cin  : in  std_logic;
       s    : out std_logic;
       cout : out std_logic);
end entity fullAdder;

architecture description of fullAdder is  -- full adder stage, body
begin  -- circuits of fadd
  s <= a XOR b XOR cin;
  cout <= (A AND B) OR (Cin AND A) OR (Cin AND B);
end description; -- of fadd