LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY data_mem IS
PORT(
	clk		:IN STD_LOGIC;
	addr	:IN UNSIGNED(7 DOWNTO 0);
	data_in :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	wen		:IN STD_LOGIC;
	en		:IN STD_LOGIC;
	data_out :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END data_mem;

ARCHITECTURE description OF data_mem IS
type Memory_array is array (255 downto 0) of STD_LOGIC_VECTOR (31 DOWNTO 0);
signal Memory: Memory_array;

BEGIN
	PROCESS(clk,en,wen)
		BEGIN
		IF (falling_edge(clk)) then
			IF (en = '0') then
			data_out<= x"00000000";	
			ELSIF (en = '1')then 
				IF (wen = '0') then
					  data_out <= Memory(to_integer(addr));
					ELSIF (wen = '1') then
					data_out<=x"00000000";
					Memory(to_integer(addr)) <= data_in;
				END IF;
			END IF;
		END IF;	
		

		END PROCESS;
END description;