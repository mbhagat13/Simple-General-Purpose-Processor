LIBRARY ieee;            
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL;            

ENTITY lze IS 
PORT(            
a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
a_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END    lze;    

				
ARCHITECTURE description OF lze IS  
  		
BEGIN		

a_out(31 DOWNTO 16) <=x"0000"; 
a_out(15 DOWNTO 0) <=a(15 DOWNTO 0);				
 END  description;            