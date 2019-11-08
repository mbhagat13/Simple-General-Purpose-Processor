LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_unsigned.ALL; 
ENTITY datapath IS 
PORT(
 --Clock Signals 
Clk, mClk  : IN STD_LOGIC; 
--Memory Signals 
WEN, EN :    IN STD_LOGIC;
 
-- Register Control Signals (CLR and LD). 
Clr_A , Ld_A :       IN STD_LOGIC; 
Clr_B , Ld_B :  		IN STD_LOGIC; 
Clr_C , Ld_C :  		IN STD_LOGIC; 
Clr_Z , Ld_Z :  		IN STD_LOGIC; 
Clr_PC , Ld_PC :     IN STD_LOGIC; 
Clr_IR , Ld_IR :     IN STD_LOGIC;
 
-- Register outputs (Some needed to feed back to control unit. Others pulled out for testing. 
Out_A :       OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_B : 		  OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_C :       OUT STD_LOGIC; 
Out_Z : 		  OUT STD_LOGIC; 
Out_PC :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
Out_IR :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 

-- Special inputs to PC. 
Inc_PC :      IN STD_LOGIC; 
-- Address and Data Bus signals for debugging. 
ADDR_OUT :  						  OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
DATA_IN  : 							  IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
DATA_OUT, MEM_OUT, MEM_IN :     OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
MEM_ADDR:       					  OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
-- Various MUX controls. 
DATA_Mux:   	  IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
REG_Mux :  		  IN STD_LOGIC; 
A_MUX, B_MUX :   IN STD_LOGIC; 
IM_MUX1 :    	  IN STD_LOGIC; 
IM_MUX2 :    	  IN STD_LOGIC_VECTOR(1 DOWNTO 0); 

-- ALU Operations. 
ALU_Op :     IN STD_LOGIC_VECTOR(2 DOWNTO 0));
END datapath; 
--------------------------------------------------------------------------------------------------------------------------- 
ARCHITECTURE description OF datapath IS 

COMPONENT Multiplexer4to1 IS
		PORT (w0, w1,w2,w3	   :IN STD_LOGIC_VECTOR(31 downto 0);
			s 		   :IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			f		   :OUT STD_LOGIC_Vector(31 downto 0));
END COMPONENT;

COMPONENT register32 IS 
   PORT(            
		d		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		ld 	: IN STD_LOGIC;     -- load/enable.  
		clr	: IN STD_LOGIC;     -- async. clear.  
		clk  	: IN STD_LOGIC; -- clock. 
		Q		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END COMPONENT;  

COMPONENT lze IS 
PORT(            
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		a_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END  COMPONENT; 

COMPONENT uze IS 
PORT(            
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		a_out		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END  COMPONENT; 

COMPONENT pc IS 
PORT( 
		clr: 	 IN STD_LOGIC;  
		clk: 	 IN STD_LOGIC;  
		ld: 	 IN STD_LOGIC;  
		inc: 	 IN STD_LOGIC;  
		d:		 IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
		q: 	 INOUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END COMPONENT ; 
   
COMPONENT reducer IS 
 PORT(            
		a		:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
		a_out		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); -- output.  
END COMPONENT;  


COMPONENT Multiplexer2to1 IS
		PORT (w0, w1	   :IN STD_LOGIC_VECTOR(31 downto 0);
			s 		   :IN STD_LOGIC;
			f		   :OUT STD_LOGIC_Vector(31 downto 0));
END COMPONENT;  

COMPONENT data_mem IS
PORT(
	clk		:IN STD_LOGIC;
	addr	:IN UNSIGNED(7 DOWNTO 0);
	data_in :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	wen		:IN STD_LOGIC;
	en		:IN STD_LOGIC;
	data_out :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
COMPONENT alu IS 
PORT(
a      : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
b     : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
op     : IN STD_LOGIC_VECTOR( 2 DOWNTO 0);  
result   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  
cout   : OUT STD_LOGIC;  
zero   : OUT STD_LOGIC);  
END COMPONENT; 

signal DATA_OUT_signal :std_LOGIC_VECTOR(31 downto 0);
signal MEM_OUT_signal :std_LOGIC_VECTOR(31 downto 0);
signal ALU_OUT_signal :std_LOGIC_VECTOR(31 downto 0);
signal Out_IR_signal :std_LOGIC_VECTOR(31 downto 0);
signal lze_1_signal :std_LOGIC_VECTOR(31 downto 0);
signal uze_1_signal :std_LOGIC_VECTOR(31 downto 0);
signal ADDR_OUT_signal :std_LOGIC_VECTOR(31 downto 0);
signal addr_data_mem_signal :STD_LOGIC_VECTOR(7 DOWNTO 0);
signal A_Mult_signal :std_LOGIC_VECTOR(31 downto 0);
signal A_register_signal :std_LOGIC_VECTOR(31 downto 0);
signal B_Mult_signal :std_LOGIC_VECTOR(31 downto 0);
signal B_register_signal :std_LOGIC_VECTOR(31 downto 0);
signal MEM_IN_signal :std_LOGIC_VECTOR(31 downto 0);
signal ALU_1st_signal :std_LOGIC_VECTOR(31 downto 0);
signal ALU_2nd_signal :std_LOGIC_VECTOR(31 downto 0);

BEGIN 
		mux_data:	Multiplexer4to1 port map(w0 =>DATA_IN,
											w1 =>MEM_OUT_signal,
											w2 => ALU_OUT_signal,
											w3 => x"00000000",
											s => DATA_Mux,
											f => DATA_OUT_signal); --Final data bus
		
		DATA_OUT<=DATA_OUT_signal;
		
-------------------------------------------------------------------------------------		
		ir_register: register32 port map (d =>DATA_OUT_signal,
										ld=>LD_IR,
										clr=>CLR_IR,
										clk => CLK,
										Q =>Out_IR_signal);
		Out_IR<=Out_IR_signal; --IR OUTPUT
		
-------------------------------------------------------------------------------------
--first part of code to end of pc
		lze_1: lze port map (a=>OUT_IR_signal,
									a_out=> lze_1_signal);
	
		pc_component: pc port map (clr=> CLR_PC,  
										clk=> CLK,  
										ld=>LD_PC,  
										inc=>INC_PC,  
										d=>lze_1_signal,  
										q=>ADDR_OUT_signal);
		
		ADDR_OUT<=ADDR_OUT_signal;
		Out_PC<=ADDR_OUT_signal;
-------------------------------------------------------------------------------------
--second part of the code// till end of reducer block

		red: reducer port map (a => Out_IR_signal,
									  a_out=>addr_data_mem_signal);

		MEM_ADDR<=addr_data_mem_signal;				
-------------------------------------------------------------------------------------
--third part of code// till end of A register									  
--output of the LZE in this sequence is the same as lze_1 
--therefore same signal is used
	A_multiplexer: Multiplexer2to1 port map (w0 =>DATA_OUT_signal, 
														  w1 =>lze_1_signal,
														  s =>A_MUX,
														  f => A_Mult_signal);
														  
	A_register: register32 port map (d =>A_Mult_signal,
										ld=>LD_A,
										clr=>CLR_A,
										clk => CLK,
										Q =>A_register_signal);
	Out_A<=A_register_signal;
-------------------------------------------------------------------------------------
--fourth part of code// till end of B register									  
--output of the LZE in this sequence is the same as lze_1 
--therefore same signal is used

	B_multiplexer: Multiplexer2to1 port map (w0 =>DATA_OUT_signal, 
														  w1 =>lze_1_signal,
														  s =>B_MUX,
														  f => B_Mult_signal);										
	B_register: register32 port map (d =>B_Mult_signal,
										ld=>LD_B,
										clr=>CLR_B,
										clk => CLK,
										Q =>B_register_signal);
		Out_B<=B_register_signal;
									
-------------------------------------------------------------------------------------
--fifth part of code//Data memory module
--includes multiplexer2to1 before the data mem module

	Data_memory_multiplexer: Multiplexer2to1 port map (w0 =>A_register_signal, 
														  w1 =>B_register_signal,
														  s =>Reg_Mux,
														  f => MEM_IN_signal);
	MEM_IN<= MEM_IN_signal;

	Data_Memory_Module: data_mem port map(clk	=>mClk,
										  addr=> (unsigned(addr_data_mem_signal)),
										  data_in=>MEM_IN_signal,
										  wen=>WEN,
										  en=>EN,
										  data_out=>MEM_OUT_signal);
	MEM_OUT<=MEM_OUT_signal;			  
-------------------------------------------------------------------------------------
--sixth part of code// Multiplexers Before the ALU Unit
--contains the code for the UZE
	uze_1: uze port map (a=>OUT_IR_signal,
								a_out=> uze_1_signal);
								
								
	im_mux1_component: Multiplexer2to1 port map (w0 =>A_Register_signal, 
														  w1 =>uze_1_signal,
														  s =>IM_MUX1,
														  f => ALU_1st_signal);		
														  
	im_mux2_component: Multiplexer4to1 port map(w0 =>B_register_signal,
											w1 =>lze_1_signal,
											w2 => x"00000001",
											w3 => x"00000000",
											s => IM_MUX2,
											f => ALU_2nd_signal);
-------------------------------------------------------------------------------------
--7th part of the codeALU Component		

	alu_component: alu port map(a=>ALU_1st_signal,
								b=>ALU_2nd_signal,
								op=>ALU_Op,
								result=>ALU_OUT_signal,  
								cout=> OUT_C,  
								zero=>OUT_Z); 


END description;
----------------------------------------------------------------------------------------------------------