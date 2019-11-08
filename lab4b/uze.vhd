LIBRARY ieee;            
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL;            

	ENTITY uze IS 
   PORT(            
		a		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		a_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
            END            uze;    

				
ARCHITECTURE description OF uze IS  
  		
BEGIN		

a_out(31 DOWNTO 16) <=a(15 DOWNTO 0); 
a_out(15 DOWNTO 0) <=x"0000";				
 END  description;            