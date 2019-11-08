LIBRARY ieee;  
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL; 
ENTITY cpu1 IS 
		PORT ( 
			clk		: in	std_logic;
			mem_clk	: in	std_logic;
			rst		: in	std_logic;
			dataIn	: in	std_logic_vector(31 downto 0);
			-- Output ports
			dataOut		: out	std_logic_vector(31 downto 0);
			addrOut		: out	std_logic_vector(31 downto 0);
			wEn 			: out	std_logic;
			-- Debug data.
			dOutA, dOutB	: out	std_logic_vector(31 downto 0);
			dOutC, dOutZ	: out	std_logic;
			dOutIR			: out	std_logic_vector(31 downto 0);
			dOutPC			: out	std_logic_vector(31 downto 0);
			outT				: out	std_logic_vector(2 downto 0);
			wen_mem, en_mem : out std_logic);  
END cpu1; 

ARCHITECTURE description OF cpu1 IS 

COMPONENT reset_circuit IS 
PORT ( 
			Reset :  IN STD_LOGIC; 
			Clk :   	IN STD_LOGIC;  
			Enable_PD :   OUT STD_LOGIC;  
			Clr_PC :     OUT STD_LOGIC );  
END COMPONENT; 

COMPONENT control IS 
PORT( 
			clk, mclk  :		 IN STD_LOGIC; 
			enable :				 IN STD_LOGIC; 
			statusC, statusZ : IN STD_LOGIC; 
			INST  : 				IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
			A_Mux, B_Mux      : 				OUT STD_LOGIC; 
			IM_MUX1, REG_Mux : 				OUT STD_LOGIC; 
			IM_MUX2, DATA_Mux : 				OUT STD_LOGIC_VECTOR(1 DOWNTO 0); 
			ALU_op   : 							OUT STD_LOGIC_VECTOR(2 DOWNTO 0); 
			inc_PC, ld_PC : 					OUT STD_LOGIC; 
			clr_IR : 							OUT STD_LOGIC; 
			ld_IR : 								OUT STD_LOGIC; 
			clr_A, clr_B, clr_C, clr_Z : 	OUT STD_LOGIC; 
			ld_A, ld_B, ld_C, ld_Z : 		OUT STD_LOGIC; 
			T : 									OUT STD_LOGIC_VECTOR(2 DOWNTO 0); 
			wen, en    : 						OUT STD_LOGIC); 
END COMPONENT;


COMPONENT datapath IS 
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
-- Address and dOutCData Bus signals for debugging. 
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
END COMPONENT; 

signal Clr_PC_signal :std_LOGIC;
signal Enable_PD_signal:std_LOGIC;
signal statusC_signal:std_LOGIC;
signal statusZ_signal:std_LOGIC;
signal A_Mux_signal:std_LOGIC;
signal B_Mux_signal:std_LOGIC;
signal IM_MUX1_signal:std_LOGIC;
signal REG_MUX_signal:std_LOGIC;
signal IM_MUX2_signal:std_LOGIC_VECTOR(1 DOWNTO 0);
signal DATA_Mux_signal:std_LOGIC_VECTOR(1 DOWNTO 0);
signal ALU_op_signal:std_LOGIC_VECTOR(2 DOWNTO 0);
signal inc_PC_signal:std_LOGIC;
signal ld_PC_signal:std_LOGIC;
signal clr_IR_signal:std_LOGIC;
signal ld_IR_signal:std_LOGIC;
signal clr_A_signal:std_LOGIC;
signal clr_B_signal:std_LOGIC;
signal clr_C_signal:std_LOGIC;
signal clr_Z_signal:std_LOGIC;
signal ld_A_signal:std_LOGIC;
signal ld_B_signal:std_LOGIC;
signal ld_C_signal:std_LOGIC;
signal ld_Z_signal:std_LOGIC;
signal wen_signal:std_LOGIC;
signal en_signal:std_LOGIC;
signal DATA_IN_signal:std_LOGIC_VECTOR(31 DOWNTO 0);
signal DATA_OUT_signal:std_LOGIC_VECTOR(31 DOWNTO 0);
signal MEM_OUT_signal:std_LOGIC_VECTOR(31 DOWNTO 0);
signal MEM_IN_signal:std_LOGIC_VECTOR(31 DOWNTO 0);
signal MEM_ADDR_signal:std_LOGIC_VECTOR(7 DOWNTO 0);
signal dOutIR_signal:std_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
			RC:	reset_circuit port map(
			Reset =>rst, 
			Clk=>clk,
			Enable_PD=> Enable_PD_signal,								
			Clr_PC=> clr_PC_signal);
			
			
			
			CONTROL_UNIT: control port map( 
			clk=>clk,
			mclk=>mem_clk,
			enable=>Enable_PD_signal,
			statusC=>statusC_signal,
			statusZ=>statusZ_signal,
			INST =>dOutIR_signal,
			A_Mux=> A_Mux_signal,
			B_Mux=> B_Mux_signal, 
			IM_MUX1=> IM_MUX1_signal,
			REG_Mux=> REG_MUX_signal,
			IM_MUX2=>IM_MUX2_signal,
			DATA_Mux=>DATA_Mux_signal,
			ALU_op=>ALU_op_signal,
			inc_PC=>inc_PC_signal,
			ld_PC=>ld_PC_signal,
			clr_IR=>clr_IR_signal,
			ld_IR=>ld_IR_signal,
			clr_A=>clr_A_signal,
			clr_B=>clr_B_signal,
			clr_C=>clr_C_signal,
			clr_Z=>clr_Z_signal, 
			ld_A=>ld_A_signal,
			ld_B=>ld_B_signal,
			ld_C=>ld_C_signal,
			ld_Z=>ld_Z_signal,
			T=>outT,
			wen=>wen_signal,
			en =>en_signal );

			
			DP: datapath port map(
			Clk=>clk,
			mClk=>clk,
			WEN=>wen_signal,
			EN=>en_signal,
			Clr_A=>clr_A_signal,
			Ld_A=>ld_A_signal,
			Clr_B=>clr_B_signal,
			Ld_B=>ld_B_signal,
			Clr_C=>clr_C_signal,
			Ld_C=>ld_C_signal,
			Clr_Z=>clr_Z_signal,
			Ld_Z=>ld_Z_signal,
			Clr_PC=>clr_PC_signal,
			Ld_PC=>ld_PC_signal,
			Clr_IR=>clr_IR_signal,
			Ld_IR=>ld_IR_signal,
-- Register outputs (Some needed to feed back to control unit. Others pulled out for testing. 
			Out_A=>dOutA,  
			Out_B=>dOutB, 
			Out_C=>dOutC,
			Out_Z=>dOutZ,
			Out_PC=>dOutPC,
			Out_IR=>dOutIR_signal,
-- Special inputs to PC. 
			Inc_PC=>inc_PC_signal,
-- Address and dOutCData Bus signals for debugging. 
			ADDR_OUT=>addrOut,
			DATA_IN=>dataIn, --CHECK THIS AGAIN LATER
			DATA_OUT=>DATA_OUT_signal,--
			MEM_OUT=>MEM_OUT_signal,--
			MEM_IN=>MEM_IN_signal,--
			MEM_ADDR=>MEM_ADDR_signal,-- 
-- Various MUX controls. 
			DATA_Mux=>DATA_Mux_signal,
			REG_Mux=> REG_MUX_signal,
			A_MUX=>A_Mux_signal,
			B_MUX=>b_Mux_signal,
			IM_MUX1=>IM_MUX1_signal,
			IM_MUX2=>IM_MUX2_signal,
-- ALU Operations. 
			ALU_Op=>ALU_op_signal);
			
			dOutIR<=dOutIR_signal;																		

END description; 