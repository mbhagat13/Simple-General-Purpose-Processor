LIBRARY ieee;  
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL; 
ENTITY reset_circuit IS 

PORT 
( 
	Reset :IN STD_LOGIC; 
	Clk 	:IN STD_LOGIC;  
	Enable_PD :OUT STD_LOGIC;  
	Clr_PC 	 :OUT STD_LOGIC 
);  
END reset_circuit; 

ARCHITECTURE description OF reset_circuit IS 
signal state: integer;
BEGIN 

	process(clk, Reset)
	begin
		if (rising_edge (clk)) then
			if Reset ='1' then
				state <= 0;
				Enable_PD <='0';
				Clr_PC <= '1';
			elsif state >=3 then
				Enable_PD <='1';
				Clr_PC <='0';
			else 
				state <= state+1;
		end if;
		end if;
	end process;
			
 

END description;