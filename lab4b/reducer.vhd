LIBRARY ieee;            
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL;            

	ENTITY reducer IS 
   PORT(            
		a		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		a_out		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); -- output.  
            END            reducer;    

				
ARCHITECTURE description OF reducer IS  
  		
BEGIN		
a_out(7 DOWNTO 0) <=a(7 DOWNTO 0); 
 END  description;            