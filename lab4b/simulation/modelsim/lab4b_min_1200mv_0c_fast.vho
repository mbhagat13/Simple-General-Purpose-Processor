-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/13/2018 19:25:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	Clk : IN std_logic;
	mClk : IN std_logic;
	WEN : IN std_logic;
	EN : IN std_logic;
	Clr_A : IN std_logic;
	Ld_A : IN std_logic;
	Clr_B : IN std_logic;
	Ld_B : IN std_logic;
	Clr_C : IN std_logic;
	Ld_C : IN std_logic;
	Clr_Z : IN std_logic;
	Ld_Z : IN std_logic;
	Clr_PC : IN std_logic;
	Ld_PC : IN std_logic;
	Clr_IR : IN std_logic;
	Ld_IR : IN std_logic;
	Out_A : OUT std_logic_vector(31 DOWNTO 0);
	Out_B : OUT std_logic_vector(31 DOWNTO 0);
	Out_C : OUT std_logic;
	Out_Z : OUT std_logic;
	Out_PC : OUT std_logic_vector(31 DOWNTO 0);
	Out_IR : OUT std_logic_vector(31 DOWNTO 0);
	Inc_PC : IN std_logic;
	ADDR_OUT : OUT std_logic_vector(31 DOWNTO 0);
	DATA_IN : IN std_logic_vector(31 DOWNTO 0);
	DATA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	MEM_OUT : OUT std_logic_vector(31 DOWNTO 0);
	MEM_IN : OUT std_logic_vector(31 DOWNTO 0);
	MEM_ADDR : OUT std_logic_vector(7 DOWNTO 0);
	DATA_Mux : IN std_logic_vector(1 DOWNTO 0);
	REG_Mux : IN std_logic;
	A_MUX : IN std_logic;
	B_MUX : IN std_logic;
	IM_MUX1 : IN std_logic;
	IM_MUX2 : IN std_logic_vector(1 DOWNTO 0);
	ALU_Op : IN std_logic_vector(2 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- Clr_C	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_C	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_Z	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_Z	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[10]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[15]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[16]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[17]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[18]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[19]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[20]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[21]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[22]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[23]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[24]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[25]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[26]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[27]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[28]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[29]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[30]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[1]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[9]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[13]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[14]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[15]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[16]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[17]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[18]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[19]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[20]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[21]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[22]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[23]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[24]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[27]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[28]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[29]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[30]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_C	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_Z	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[9]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[10]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[16]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[17]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[18]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[19]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[20]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[21]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[22]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[23]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[25]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[26]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[27]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[29]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[30]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[11]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[16]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[17]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[18]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[19]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[20]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[21]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[22]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[23]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[24]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[25]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[26]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[27]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[28]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[29]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[30]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[31]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[2]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[7]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[11]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[13]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[14]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[16]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[17]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[19]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[20]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[21]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[22]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[23]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[24]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[25]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[26]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[27]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[30]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_OUT[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[9]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[10]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[11]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[12]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[13]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[15]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[16]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[18]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[19]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[20]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[21]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[22]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[23]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[24]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[26]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[27]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[28]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[29]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[31]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[3]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[5]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[8]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[9]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[11]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[12]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[13]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[16]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[17]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[19]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[22]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[23]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[24]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[25]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[26]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[27]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[28]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[29]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[30]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_OUT[31]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[12]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[13]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[14]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[16]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[18]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[19]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[21]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[22]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[23]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[24]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[25]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[26]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[27]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[28]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[30]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_IN[31]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[4]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDR[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Op[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[8]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[9]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[11]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[17]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[18]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[19]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[20]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[21]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[22]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[23]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[24]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[25]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[26]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[27]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[28]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[29]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[30]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[31]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_Mux	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_MUX	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_A	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_A	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_MUX	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_B	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_B	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_IR	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_IR	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_PC	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc_PC	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_PC	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WEN	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mClk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_mClk : std_logic;
SIGNAL ww_WEN : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_Clr_A : std_logic;
SIGNAL ww_Ld_A : std_logic;
SIGNAL ww_Clr_B : std_logic;
SIGNAL ww_Ld_B : std_logic;
SIGNAL ww_Clr_C : std_logic;
SIGNAL ww_Ld_C : std_logic;
SIGNAL ww_Clr_Z : std_logic;
SIGNAL ww_Ld_Z : std_logic;
SIGNAL ww_Clr_PC : std_logic;
SIGNAL ww_Ld_PC : std_logic;
SIGNAL ww_Clr_IR : std_logic;
SIGNAL ww_Ld_IR : std_logic;
SIGNAL ww_Out_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_C : std_logic;
SIGNAL ww_Out_Z : std_logic;
SIGNAL ww_Out_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_IR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Inc_PC : std_logic;
SIGNAL ww_ADDR_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MEM_ADDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_REG_Mux : std_logic;
SIGNAL ww_A_MUX : std_logic;
SIGNAL ww_B_MUX : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_IR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_A~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_PC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_C~input_o\ : std_logic;
SIGNAL \Ld_C~input_o\ : std_logic;
SIGNAL \Clr_Z~input_o\ : std_logic;
SIGNAL \Ld_Z~input_o\ : std_logic;
SIGNAL \Out_A[0]~output_o\ : std_logic;
SIGNAL \Out_A[1]~output_o\ : std_logic;
SIGNAL \Out_A[2]~output_o\ : std_logic;
SIGNAL \Out_A[3]~output_o\ : std_logic;
SIGNAL \Out_A[4]~output_o\ : std_logic;
SIGNAL \Out_A[5]~output_o\ : std_logic;
SIGNAL \Out_A[6]~output_o\ : std_logic;
SIGNAL \Out_A[7]~output_o\ : std_logic;
SIGNAL \Out_A[8]~output_o\ : std_logic;
SIGNAL \Out_A[9]~output_o\ : std_logic;
SIGNAL \Out_A[10]~output_o\ : std_logic;
SIGNAL \Out_A[11]~output_o\ : std_logic;
SIGNAL \Out_A[12]~output_o\ : std_logic;
SIGNAL \Out_A[13]~output_o\ : std_logic;
SIGNAL \Out_A[14]~output_o\ : std_logic;
SIGNAL \Out_A[15]~output_o\ : std_logic;
SIGNAL \Out_A[16]~output_o\ : std_logic;
SIGNAL \Out_A[17]~output_o\ : std_logic;
SIGNAL \Out_A[18]~output_o\ : std_logic;
SIGNAL \Out_A[19]~output_o\ : std_logic;
SIGNAL \Out_A[20]~output_o\ : std_logic;
SIGNAL \Out_A[21]~output_o\ : std_logic;
SIGNAL \Out_A[22]~output_o\ : std_logic;
SIGNAL \Out_A[23]~output_o\ : std_logic;
SIGNAL \Out_A[24]~output_o\ : std_logic;
SIGNAL \Out_A[25]~output_o\ : std_logic;
SIGNAL \Out_A[26]~output_o\ : std_logic;
SIGNAL \Out_A[27]~output_o\ : std_logic;
SIGNAL \Out_A[28]~output_o\ : std_logic;
SIGNAL \Out_A[29]~output_o\ : std_logic;
SIGNAL \Out_A[30]~output_o\ : std_logic;
SIGNAL \Out_A[31]~output_o\ : std_logic;
SIGNAL \Out_B[0]~output_o\ : std_logic;
SIGNAL \Out_B[1]~output_o\ : std_logic;
SIGNAL \Out_B[2]~output_o\ : std_logic;
SIGNAL \Out_B[3]~output_o\ : std_logic;
SIGNAL \Out_B[4]~output_o\ : std_logic;
SIGNAL \Out_B[5]~output_o\ : std_logic;
SIGNAL \Out_B[6]~output_o\ : std_logic;
SIGNAL \Out_B[7]~output_o\ : std_logic;
SIGNAL \Out_B[8]~output_o\ : std_logic;
SIGNAL \Out_B[9]~output_o\ : std_logic;
SIGNAL \Out_B[10]~output_o\ : std_logic;
SIGNAL \Out_B[11]~output_o\ : std_logic;
SIGNAL \Out_B[12]~output_o\ : std_logic;
SIGNAL \Out_B[13]~output_o\ : std_logic;
SIGNAL \Out_B[14]~output_o\ : std_logic;
SIGNAL \Out_B[15]~output_o\ : std_logic;
SIGNAL \Out_B[16]~output_o\ : std_logic;
SIGNAL \Out_B[17]~output_o\ : std_logic;
SIGNAL \Out_B[18]~output_o\ : std_logic;
SIGNAL \Out_B[19]~output_o\ : std_logic;
SIGNAL \Out_B[20]~output_o\ : std_logic;
SIGNAL \Out_B[21]~output_o\ : std_logic;
SIGNAL \Out_B[22]~output_o\ : std_logic;
SIGNAL \Out_B[23]~output_o\ : std_logic;
SIGNAL \Out_B[24]~output_o\ : std_logic;
SIGNAL \Out_B[25]~output_o\ : std_logic;
SIGNAL \Out_B[26]~output_o\ : std_logic;
SIGNAL \Out_B[27]~output_o\ : std_logic;
SIGNAL \Out_B[28]~output_o\ : std_logic;
SIGNAL \Out_B[29]~output_o\ : std_logic;
SIGNAL \Out_B[30]~output_o\ : std_logic;
SIGNAL \Out_B[31]~output_o\ : std_logic;
SIGNAL \Out_C~output_o\ : std_logic;
SIGNAL \Out_Z~output_o\ : std_logic;
SIGNAL \Out_PC[0]~output_o\ : std_logic;
SIGNAL \Out_PC[1]~output_o\ : std_logic;
SIGNAL \Out_PC[2]~output_o\ : std_logic;
SIGNAL \Out_PC[3]~output_o\ : std_logic;
SIGNAL \Out_PC[4]~output_o\ : std_logic;
SIGNAL \Out_PC[5]~output_o\ : std_logic;
SIGNAL \Out_PC[6]~output_o\ : std_logic;
SIGNAL \Out_PC[7]~output_o\ : std_logic;
SIGNAL \Out_PC[8]~output_o\ : std_logic;
SIGNAL \Out_PC[9]~output_o\ : std_logic;
SIGNAL \Out_PC[10]~output_o\ : std_logic;
SIGNAL \Out_PC[11]~output_o\ : std_logic;
SIGNAL \Out_PC[12]~output_o\ : std_logic;
SIGNAL \Out_PC[13]~output_o\ : std_logic;
SIGNAL \Out_PC[14]~output_o\ : std_logic;
SIGNAL \Out_PC[15]~output_o\ : std_logic;
SIGNAL \Out_PC[16]~output_o\ : std_logic;
SIGNAL \Out_PC[17]~output_o\ : std_logic;
SIGNAL \Out_PC[18]~output_o\ : std_logic;
SIGNAL \Out_PC[19]~output_o\ : std_logic;
SIGNAL \Out_PC[20]~output_o\ : std_logic;
SIGNAL \Out_PC[21]~output_o\ : std_logic;
SIGNAL \Out_PC[22]~output_o\ : std_logic;
SIGNAL \Out_PC[23]~output_o\ : std_logic;
SIGNAL \Out_PC[24]~output_o\ : std_logic;
SIGNAL \Out_PC[25]~output_o\ : std_logic;
SIGNAL \Out_PC[26]~output_o\ : std_logic;
SIGNAL \Out_PC[27]~output_o\ : std_logic;
SIGNAL \Out_PC[28]~output_o\ : std_logic;
SIGNAL \Out_PC[29]~output_o\ : std_logic;
SIGNAL \Out_PC[30]~output_o\ : std_logic;
SIGNAL \Out_PC[31]~output_o\ : std_logic;
SIGNAL \Out_IR[0]~output_o\ : std_logic;
SIGNAL \Out_IR[1]~output_o\ : std_logic;
SIGNAL \Out_IR[2]~output_o\ : std_logic;
SIGNAL \Out_IR[3]~output_o\ : std_logic;
SIGNAL \Out_IR[4]~output_o\ : std_logic;
SIGNAL \Out_IR[5]~output_o\ : std_logic;
SIGNAL \Out_IR[6]~output_o\ : std_logic;
SIGNAL \Out_IR[7]~output_o\ : std_logic;
SIGNAL \Out_IR[8]~output_o\ : std_logic;
SIGNAL \Out_IR[9]~output_o\ : std_logic;
SIGNAL \Out_IR[10]~output_o\ : std_logic;
SIGNAL \Out_IR[11]~output_o\ : std_logic;
SIGNAL \Out_IR[12]~output_o\ : std_logic;
SIGNAL \Out_IR[13]~output_o\ : std_logic;
SIGNAL \Out_IR[14]~output_o\ : std_logic;
SIGNAL \Out_IR[15]~output_o\ : std_logic;
SIGNAL \Out_IR[16]~output_o\ : std_logic;
SIGNAL \Out_IR[17]~output_o\ : std_logic;
SIGNAL \Out_IR[18]~output_o\ : std_logic;
SIGNAL \Out_IR[19]~output_o\ : std_logic;
SIGNAL \Out_IR[20]~output_o\ : std_logic;
SIGNAL \Out_IR[21]~output_o\ : std_logic;
SIGNAL \Out_IR[22]~output_o\ : std_logic;
SIGNAL \Out_IR[23]~output_o\ : std_logic;
SIGNAL \Out_IR[24]~output_o\ : std_logic;
SIGNAL \Out_IR[25]~output_o\ : std_logic;
SIGNAL \Out_IR[26]~output_o\ : std_logic;
SIGNAL \Out_IR[27]~output_o\ : std_logic;
SIGNAL \Out_IR[28]~output_o\ : std_logic;
SIGNAL \Out_IR[29]~output_o\ : std_logic;
SIGNAL \Out_IR[30]~output_o\ : std_logic;
SIGNAL \Out_IR[31]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[0]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[1]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[2]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[3]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[4]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[5]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[6]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[7]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[8]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[9]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[10]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[11]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[12]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[13]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[14]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[15]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[16]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[17]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[18]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[19]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[20]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[21]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[22]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[23]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[24]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[25]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[26]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[27]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[28]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[29]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[30]~output_o\ : std_logic;
SIGNAL \ADDR_OUT[31]~output_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \DATA_OUT[16]~output_o\ : std_logic;
SIGNAL \DATA_OUT[17]~output_o\ : std_logic;
SIGNAL \DATA_OUT[18]~output_o\ : std_logic;
SIGNAL \DATA_OUT[19]~output_o\ : std_logic;
SIGNAL \DATA_OUT[20]~output_o\ : std_logic;
SIGNAL \DATA_OUT[21]~output_o\ : std_logic;
SIGNAL \DATA_OUT[22]~output_o\ : std_logic;
SIGNAL \DATA_OUT[23]~output_o\ : std_logic;
SIGNAL \DATA_OUT[24]~output_o\ : std_logic;
SIGNAL \DATA_OUT[25]~output_o\ : std_logic;
SIGNAL \DATA_OUT[26]~output_o\ : std_logic;
SIGNAL \DATA_OUT[27]~output_o\ : std_logic;
SIGNAL \DATA_OUT[28]~output_o\ : std_logic;
SIGNAL \DATA_OUT[29]~output_o\ : std_logic;
SIGNAL \DATA_OUT[30]~output_o\ : std_logic;
SIGNAL \DATA_OUT[31]~output_o\ : std_logic;
SIGNAL \MEM_OUT[0]~output_o\ : std_logic;
SIGNAL \MEM_OUT[1]~output_o\ : std_logic;
SIGNAL \MEM_OUT[2]~output_o\ : std_logic;
SIGNAL \MEM_OUT[3]~output_o\ : std_logic;
SIGNAL \MEM_OUT[4]~output_o\ : std_logic;
SIGNAL \MEM_OUT[5]~output_o\ : std_logic;
SIGNAL \MEM_OUT[6]~output_o\ : std_logic;
SIGNAL \MEM_OUT[7]~output_o\ : std_logic;
SIGNAL \MEM_OUT[8]~output_o\ : std_logic;
SIGNAL \MEM_OUT[9]~output_o\ : std_logic;
SIGNAL \MEM_OUT[10]~output_o\ : std_logic;
SIGNAL \MEM_OUT[11]~output_o\ : std_logic;
SIGNAL \MEM_OUT[12]~output_o\ : std_logic;
SIGNAL \MEM_OUT[13]~output_o\ : std_logic;
SIGNAL \MEM_OUT[14]~output_o\ : std_logic;
SIGNAL \MEM_OUT[15]~output_o\ : std_logic;
SIGNAL \MEM_OUT[16]~output_o\ : std_logic;
SIGNAL \MEM_OUT[17]~output_o\ : std_logic;
SIGNAL \MEM_OUT[18]~output_o\ : std_logic;
SIGNAL \MEM_OUT[19]~output_o\ : std_logic;
SIGNAL \MEM_OUT[20]~output_o\ : std_logic;
SIGNAL \MEM_OUT[21]~output_o\ : std_logic;
SIGNAL \MEM_OUT[22]~output_o\ : std_logic;
SIGNAL \MEM_OUT[23]~output_o\ : std_logic;
SIGNAL \MEM_OUT[24]~output_o\ : std_logic;
SIGNAL \MEM_OUT[25]~output_o\ : std_logic;
SIGNAL \MEM_OUT[26]~output_o\ : std_logic;
SIGNAL \MEM_OUT[27]~output_o\ : std_logic;
SIGNAL \MEM_OUT[28]~output_o\ : std_logic;
SIGNAL \MEM_OUT[29]~output_o\ : std_logic;
SIGNAL \MEM_OUT[30]~output_o\ : std_logic;
SIGNAL \MEM_OUT[31]~output_o\ : std_logic;
SIGNAL \MEM_IN[0]~output_o\ : std_logic;
SIGNAL \MEM_IN[1]~output_o\ : std_logic;
SIGNAL \MEM_IN[2]~output_o\ : std_logic;
SIGNAL \MEM_IN[3]~output_o\ : std_logic;
SIGNAL \MEM_IN[4]~output_o\ : std_logic;
SIGNAL \MEM_IN[5]~output_o\ : std_logic;
SIGNAL \MEM_IN[6]~output_o\ : std_logic;
SIGNAL \MEM_IN[7]~output_o\ : std_logic;
SIGNAL \MEM_IN[8]~output_o\ : std_logic;
SIGNAL \MEM_IN[9]~output_o\ : std_logic;
SIGNAL \MEM_IN[10]~output_o\ : std_logic;
SIGNAL \MEM_IN[11]~output_o\ : std_logic;
SIGNAL \MEM_IN[12]~output_o\ : std_logic;
SIGNAL \MEM_IN[13]~output_o\ : std_logic;
SIGNAL \MEM_IN[14]~output_o\ : std_logic;
SIGNAL \MEM_IN[15]~output_o\ : std_logic;
SIGNAL \MEM_IN[16]~output_o\ : std_logic;
SIGNAL \MEM_IN[17]~output_o\ : std_logic;
SIGNAL \MEM_IN[18]~output_o\ : std_logic;
SIGNAL \MEM_IN[19]~output_o\ : std_logic;
SIGNAL \MEM_IN[20]~output_o\ : std_logic;
SIGNAL \MEM_IN[21]~output_o\ : std_logic;
SIGNAL \MEM_IN[22]~output_o\ : std_logic;
SIGNAL \MEM_IN[23]~output_o\ : std_logic;
SIGNAL \MEM_IN[24]~output_o\ : std_logic;
SIGNAL \MEM_IN[25]~output_o\ : std_logic;
SIGNAL \MEM_IN[26]~output_o\ : std_logic;
SIGNAL \MEM_IN[27]~output_o\ : std_logic;
SIGNAL \MEM_IN[28]~output_o\ : std_logic;
SIGNAL \MEM_IN[29]~output_o\ : std_logic;
SIGNAL \MEM_IN[30]~output_o\ : std_logic;
SIGNAL \MEM_IN[31]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[0]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[1]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[2]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[3]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[4]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[5]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[6]~output_o\ : std_logic;
SIGNAL \MEM_ADDR[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_Mux[0]~input_o\ : std_logic;
SIGNAL \DATA_Mux[1]~input_o\ : std_logic;
SIGNAL \ALU_Op[0]~input_o\ : std_logic;
SIGNAL \ALU_Op[1]~input_o\ : std_logic;
SIGNAL \IM_MUX2[1]~input_o\ : std_logic;
SIGNAL \IM_MUX2[0]~input_o\ : std_logic;
SIGNAL \B_MUX~input_o\ : std_logic;
SIGNAL \B_multiplexer|f[0]~2_combout\ : std_logic;
SIGNAL \Clr_B~input_o\ : std_logic;
SIGNAL \Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_B~input_o\ : std_logic;
SIGNAL \im_mux2_component|Mux31~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux31~2_combout\ : std_logic;
SIGNAL \ALU_Op[2]~input_o\ : std_logic;
SIGNAL \IM_MUX1~input_o\ : std_logic;
SIGNAL \im_mux1_component|f[0]~20_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux0~2_combout\ : std_logic;
SIGNAL \B_multiplexer|f[1]~3_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux30~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux30~2_combout\ : std_logic;
SIGNAL \im_mux1_component|f[1]~19_combout\ : std_logic;
SIGNAL \alu_component|adder1|s1|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux1~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux1~3_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux1~4_combout\ : std_logic;
SIGNAL \A_MUX~input_o\ : std_logic;
SIGNAL \B_multiplexer|f[2]~4_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux29~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux29~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux2~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux2~9_combout\ : std_logic;
SIGNAL \alu_component|adder1|s1|p2|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s1|p2|cout~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux2~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[3]~5_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux28~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux28~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux3~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux3~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[2]~35_combout\ : std_logic;
SIGNAL \alu_component|adder1|s1|p3|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux3~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[4]~6_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux27~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux27~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux4~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux4~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[3]~36_combout\ : std_logic;
SIGNAL \alu_component|adder1|s1|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux4~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[5]~7_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux26~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux26~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux5~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux5~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[4]~37_combout\ : std_logic;
SIGNAL \alu_component|adder1|s2|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux5~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[6]~8_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux25~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux25~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux6~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux6~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[5]~38_combout\ : std_logic;
SIGNAL \alu_component|adder1|s2|p2|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux6~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[7]~9_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux24~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux24~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux7~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux7~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[6]~39_combout\ : std_logic;
SIGNAL \alu_component|adder1|s2|p3|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux7~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[8]~10_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux23~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux23~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux8~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux8~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[7]~40_combout\ : std_logic;
SIGNAL \alu_component|adder1|s2|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux8~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[9]~11_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux22~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux22~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux9~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux9~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[8]~41_combout\ : std_logic;
SIGNAL \alu_component|adder1|s3|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux9~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[10]~12_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux21~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux21~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux10~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux10~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[9]~42_combout\ : std_logic;
SIGNAL \alu_component|adder1|s3|p2|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux10~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[11]~13_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux20~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux20~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux11~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux11~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[10]~43_combout\ : std_logic;
SIGNAL \alu_component|adder1|s3|p3|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux11~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[12]~14_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux19~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux19~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux12~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux12~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[11]~44_combout\ : std_logic;
SIGNAL \alu_component|adder1|s3|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux12~10_combout\ : std_logic;
SIGNAL \B_multiplexer|f[13]~15_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux18~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux18~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux13~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux13~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[12]~45_combout\ : std_logic;
SIGNAL \alu_component|adder1|s4|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux13~10_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux15~2_combout\ : std_logic;
SIGNAL \B_multiplexer|f[15]~17_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux16~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux16~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux15~3_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[13]~46_combout\ : std_logic;
SIGNAL \alu_component|adder1|s4|p2|cout~0_combout\ : std_logic;
SIGNAL \B_multiplexer|f[14]~16_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux17~1_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux17~2_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[14]~47_combout\ : std_logic;
SIGNAL \alu_component|adder1|s4|p3|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux15~4_combout\ : std_logic;
SIGNAL \mux_data|Mux31~2_combout\ : std_logic;
SIGNAL \DATA_IN[16]~input_o\ : std_logic;
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \WEN~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|data_out[0]~0_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~41feeder_combout\ : std_logic;
SIGNAL \Clr_IR~input_o\ : std_logic;
SIGNAL \Clr_IR~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_IR~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~41_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~74_combout\ : std_logic;
SIGNAL \REG_Mux~input_o\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[0]~0_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[1]~1_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[2]~2_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[3]~3_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[4]~4_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[5]~5_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[6]~6_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[7]~7_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[8]~8_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[9]~9_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[10]~10_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[11]~11_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[12]~12_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[13]~13_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[14]~14_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[15]~15_combout\ : std_logic;
SIGNAL \A_multiplexer|f[16]~16_combout\ : std_logic;
SIGNAL \Clr_A~input_o\ : std_logic;
SIGNAL \Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_A~input_o\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[16]~16_combout\ : std_logic;
SIGNAL \DATA_IN[17]~input_o\ : std_logic;
SIGNAL \im_mux2_component|Mux13~1_combout\ : std_logic;
SIGNAL \DATA_IN[18]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~75_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~76_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~77_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~60_q\ : std_logic;
SIGNAL \DATA_IN[19]~input_o\ : std_logic;
SIGNAL \im_mux2_component|Mux11~1_combout\ : std_logic;
SIGNAL \mux_data|Mux12~2_combout\ : std_logic;
SIGNAL \mux_data|Mux12~4_combout\ : std_logic;
SIGNAL \im_mux1_component|f[19]~11_combout\ : std_logic;
SIGNAL \DATA_IN[21]~input_o\ : std_logic;
SIGNAL \A_multiplexer|f[21]~22_combout\ : std_logic;
SIGNAL \A_multiplexer|f[21]~23_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[21]~21_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux9~1_combout\ : std_logic;
SIGNAL \DATA_IN[22]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~64_q\ : std_logic;
SIGNAL \im_mux2_component|Mux8~1_combout\ : std_logic;
SIGNAL \DATA_IN[24]~input_o\ : std_logic;
SIGNAL \mux_data|Mux7~2_combout\ : std_logic;
SIGNAL \A_multiplexer|f[24]~26_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[24]~24_combout\ : std_logic;
SIGNAL \DATA_IN[25]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~67_q\ : std_logic;
SIGNAL \DATA_IN[26]~input_o\ : std_logic;
SIGNAL \DATA_IN[27]~input_o\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~5_combout\ : std_logic;
SIGNAL \DATA_IN[28]~input_o\ : std_logic;
SIGNAL \DATA_IN[30]~input_o\ : std_logic;
SIGNAL \B_multiplexer|f[30]~36_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux1~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p3|s~0_combout\ : std_logic;
SIGNAL \DATA_IN[31]~input_o\ : std_logic;
SIGNAL \im_mux2_component|Mux0~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p4|s~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux31~1_combout\ : std_logic;
SIGNAL \A_multiplexer|f[26]~28_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[26]~32_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p3|s~0_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux6~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p2|s~0_combout\ : std_logic;
SIGNAL \mux_data|Mux6~2_combout\ : std_logic;
SIGNAL \A_multiplexer|f[25]~27_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux25~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux25~2_combout\ : std_logic;
SIGNAL \DATA_IN[20]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~62feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~62_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~21_combout\ : std_logic;
SIGNAL \A_multiplexer|f[20]~20_combout\ : std_logic;
SIGNAL \A_multiplexer|f[20]~21_combout\ : std_logic;
SIGNAL \mux_data|Mux11~2_combout\ : std_logic;
SIGNAL \mux_data|Mux11~3_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|cout~10_combout\ : std_logic;
SIGNAL \mux_data|Mux13~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[18]~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~3_combout\ : std_logic;
SIGNAL \mux_data|Mux14~2_combout\ : std_logic;
SIGNAL \mux_data|Mux14~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~7_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[15]~48_combout\ : std_logic;
SIGNAL \alu_component|adder1|s4|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~5_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux17~6_combout\ : std_logic;
SIGNAL \B_multiplexer|f[17]~19_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux14~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p3|cout~10_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[16]~34_combout\ : std_logic;
SIGNAL \im_mux1_component|f[17]~14_combout\ : std_logic;
SIGNAL \im_mux1_component|f[17]~13_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p2|cout~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p2|cout~3_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p3|cout~8_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p3|cout~9_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[19]~33_combout\ : std_logic;
SIGNAL \im_mux1_component|f[20]~9_combout\ : std_logic;
SIGNAL \im_mux1_component|f[20]~10_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p1|cout~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|cout~8_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|cout~9_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p4|s~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p4|s~1_combout\ : std_logic;
SIGNAL \mux_data|Mux8~3_combout\ : std_logic;
SIGNAL \DATA_IN[23]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~65_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~24_combout\ : std_logic;
SIGNAL \mux_data|Mux8~2_combout\ : std_logic;
SIGNAL \mux_data|Mux8~5_combout\ : std_logic;
SIGNAL \mux_data|Mux8~4_combout\ : std_logic;
SIGNAL \A_multiplexer|f[23]~25_combout\ : std_logic;
SIGNAL \im_mux1_component|f[23]~6_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p4|cout~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p4|cout~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p1|cout~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux25~3_combout\ : std_logic;
SIGNAL \mux_data|Mux6~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[25]~5_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p2|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~3_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux5~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p3|cout~0_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux4~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p4|s~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux27~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[27]~29_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux27~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux27~2_combout\ : std_logic;
SIGNAL \mux_data|Mux4~3_combout\ : std_logic;
SIGNAL \mux_data|Mux4~4_combout\ : std_logic;
SIGNAL \im_mux1_component|f[27]~3_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~5_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux26~4_combout\ : std_logic;
SIGNAL \mux_data|Mux5~1_combout\ : std_logic;
SIGNAL \im_mux1_component|f[26]~4_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p4|cout~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p4|cout~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s7|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p1|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p1|cout~1_combout\ : std_logic;
SIGNAL \A_multiplexer|f[29]~31_combout\ : std_logic;
SIGNAL \im_mux1_component|f[29]~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p2|cout~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p3|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux31~2_combout\ : std_logic;
SIGNAL \B_multiplexer|f[31]~37_combout\ : std_logic;
SIGNAL \A_multiplexer|f[31]~33_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[31]~31_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~73_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~32_combout\ : std_logic;
SIGNAL \mux_data|Mux0~2_combout\ : std_logic;
SIGNAL \mux_data|Mux0~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[31]~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux30~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux30~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux30~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[30]~32_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[30]~30_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~72_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~31_combout\ : std_logic;
SIGNAL \mux_data|Mux1~2_combout\ : std_logic;
SIGNAL \mux_data|Mux1~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[30]~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~3_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~5_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux2~1_combout\ : std_logic;
SIGNAL \alu_component|negMux|f[29]~49_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \DATA_IN[29]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~71feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~71_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~30_combout\ : std_logic;
SIGNAL \mux_data|Mux2~0_combout\ : std_logic;
SIGNAL \mux_data|Mux2~1_combout\ : std_logic;
SIGNAL \B_multiplexer|f[29]~35_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[29]~29_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~70feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~70_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~29_combout\ : std_logic;
SIGNAL \mux_data|Mux3~0_combout\ : std_logic;
SIGNAL \mux_data|Mux3~1_combout\ : std_logic;
SIGNAL \A_multiplexer|f[28]~30_combout\ : std_logic;
SIGNAL \im_mux1_component|f[28]~17_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p1|s~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~4_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux3~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux28~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[28]~38_combout\ : std_logic;
SIGNAL \B_multiplexer|f[28]~34_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[28]~28_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~69_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~28_combout\ : std_logic;
SIGNAL \mux_data|Mux4~2_combout\ : std_logic;
SIGNAL \B_multiplexer|f[27]~33_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[27]~27_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~68feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~68_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~27_combout\ : std_logic;
SIGNAL \mux_data|Mux5~0_combout\ : std_logic;
SIGNAL \B_multiplexer|f[26]~32_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[26]~26_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~26_combout\ : std_logic;
SIGNAL \B_multiplexer|f[25]~30_combout\ : std_logic;
SIGNAL \B_multiplexer|f[25]~31_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[25]~25_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~66_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~25_combout\ : std_logic;
SIGNAL \B_multiplexer|f[24]~28_combout\ : std_logic;
SIGNAL \B_multiplexer|f[24]~29_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux7~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux24~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux24~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux24~3_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux24~4_combout\ : std_logic;
SIGNAL \mux_data|Mux7~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[24]~16_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux23~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux23~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux23~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[23]~27_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[23]~23_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~23_combout\ : std_logic;
SIGNAL \mux_data|Mux9~2_combout\ : std_logic;
SIGNAL \mux_data|Mux9~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[22]~24_combout\ : std_logic;
SIGNAL \im_mux1_component|f[22]~7_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p3|s~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux22~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux22~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux22~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[22]~25_combout\ : std_logic;
SIGNAL \B_multiplexer|f[22]~26_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[22]~22_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~63_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~22_combout\ : std_logic;
SIGNAL \mux_data|Mux10~2_combout\ : std_logic;
SIGNAL \B_multiplexer|f[21]~24_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux10~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|s~3_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|s~4_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|s~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p2|s~combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \im_mux1_component|f[20]~23_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux21~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux21~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux21~3_combout\ : std_logic;
SIGNAL \mux_data|Mux10~3_combout\ : std_logic;
SIGNAL \im_mux1_component|f[21]~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux20~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux20~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s6|p1|s~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux20~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[20]~23_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[20]~20_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~61_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~20_combout\ : std_logic;
SIGNAL \mux_data|Mux12~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[19]~22_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux12~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux19~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux19~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p4|s~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux19~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[19]~19_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[19]~19_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~19_combout\ : std_logic;
SIGNAL \mux_data|Mux13~2_combout\ : std_logic;
SIGNAL \A_multiplexer|f[18]~18_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \im_mux1_component|f[17]~18_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux18~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux18~2_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p3|s~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p2|cout~6_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p2|cout~4_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p2|cout~5_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux18~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[18]~20_combout\ : std_logic;
SIGNAL \B_multiplexer|f[18]~21_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[18]~18_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~59feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~59_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~18_combout\ : std_logic;
SIGNAL \mux_data|Mux14~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[17]~17_combout\ : std_logic;
SIGNAL \Data_memory_multiplexer|f[17]~17_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~58_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~17_combout\ : std_logic;
SIGNAL \mux_data|Mux15~3_combout\ : std_logic;
SIGNAL \B_multiplexer|f[16]~18_combout\ : std_logic;
SIGNAL \im_mux2_component|Mux15~1_combout\ : std_logic;
SIGNAL \alu_component|adder1|s5|p1|s~0_combout\ : std_logic;
SIGNAL \im_mux1_component|f[15]~21_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux16~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux16~2_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux16~3_combout\ : std_logic;
SIGNAL \mux_data|Mux15~2_combout\ : std_logic;
SIGNAL \mux_data|Mux15~4_combout\ : std_logic;
SIGNAL \im_mux1_component|f[16]~15_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux15~6_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux15~5_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~57_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~16_combout\ : std_logic;
SIGNAL \DATA_IN[15]~input_o\ : std_logic;
SIGNAL \mux_data|Mux16~2_combout\ : std_logic;
SIGNAL \mux_data|Mux16~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[15]~15_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux14~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux14~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux14~9_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux14~10_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux14~11_combout\ : std_logic;
SIGNAL \DATA_IN[14]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~56_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~15_combout\ : std_logic;
SIGNAL \mux_data|Mux17~2_combout\ : std_logic;
SIGNAL \mux_data|Mux17~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[14]~14_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux13~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux13~11_combout\ : std_logic;
SIGNAL \DATA_IN[13]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~55_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~14_combout\ : std_logic;
SIGNAL \mux_data|Mux18~2_combout\ : std_logic;
SIGNAL \mux_data|Mux18~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[13]~13_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux12~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux12~11_combout\ : std_logic;
SIGNAL \DATA_IN[12]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~54_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~13_combout\ : std_logic;
SIGNAL \mux_data|Mux19~2_combout\ : std_logic;
SIGNAL \mux_data|Mux19~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[12]~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux11~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux11~11_combout\ : std_logic;
SIGNAL \DATA_IN[11]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~53feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~53_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~12_combout\ : std_logic;
SIGNAL \mux_data|Mux20~2_combout\ : std_logic;
SIGNAL \mux_data|Mux20~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[11]~11_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux10~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux10~11_combout\ : std_logic;
SIGNAL \DATA_IN[10]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~52_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~11_combout\ : std_logic;
SIGNAL \mux_data|Mux21~2_combout\ : std_logic;
SIGNAL \mux_data|Mux21~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[10]~10_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux9~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux9~11_combout\ : std_logic;
SIGNAL \DATA_IN[9]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~51_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~10_combout\ : std_logic;
SIGNAL \mux_data|Mux22~2_combout\ : std_logic;
SIGNAL \mux_data|Mux22~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[9]~9_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux8~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux8~11_combout\ : std_logic;
SIGNAL \DATA_IN[8]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~50_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~9_combout\ : std_logic;
SIGNAL \mux_data|Mux23~2_combout\ : std_logic;
SIGNAL \mux_data|Mux23~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[8]~8_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux7~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux7~11_combout\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~49_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~8_combout\ : std_logic;
SIGNAL \mux_data|Mux24~2_combout\ : std_logic;
SIGNAL \mux_data|Mux24~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[7]~7_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux6~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux6~11_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~48_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~7_combout\ : std_logic;
SIGNAL \mux_data|Mux25~2_combout\ : std_logic;
SIGNAL \mux_data|Mux25~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[6]~6_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux5~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux5~11_combout\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~47_q\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~6_combout\ : std_logic;
SIGNAL \mux_data|Mux26~2_combout\ : std_logic;
SIGNAL \mux_data|Mux26~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[5]~5_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux4~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux4~11_combout\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~46_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~5_combout\ : std_logic;
SIGNAL \mux_data|Mux27~2_combout\ : std_logic;
SIGNAL \mux_data|Mux27~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[4]~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux3~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux3~11_combout\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~45feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~45_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~4_combout\ : std_logic;
SIGNAL \mux_data|Mux28~2_combout\ : std_logic;
SIGNAL \mux_data|Mux28~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[3]~3_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux2~12_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux2~11_combout\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~44feeder_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~44_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~3_combout\ : std_logic;
SIGNAL \mux_data|Mux29~2_combout\ : std_logic;
SIGNAL \mux_data|Mux29~3_combout\ : std_logic;
SIGNAL \A_multiplexer|f[2]~2_combout\ : std_logic;
SIGNAL \im_mux1_component|f[2]~22_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux1~6_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux1~5_combout\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~43_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~2_combout\ : std_logic;
SIGNAL \mux_data|Mux30~2_combout\ : std_logic;
SIGNAL \mux_data|Mux30~3_combout\ : std_logic;
SIGNAL \ir_register|Q[1]~feeder_combout\ : std_logic;
SIGNAL \A_multiplexer|f[1]~1_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux0~4_combout\ : std_logic;
SIGNAL \alu_component|mux1|Mux0~3_combout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Data_Memory_Module|Memory~42_q\ : std_logic;
SIGNAL \Data_Memory_Module|data_out~1_combout\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \mux_data|Mux31~3_combout\ : std_logic;
SIGNAL \mux_data|Mux31~4_combout\ : std_logic;
SIGNAL \A_multiplexer|f[0]~0_combout\ : std_logic;
SIGNAL \alu_component|adder1|s8|p4|cout~0_combout\ : std_logic;
SIGNAL \alu_component|Equal0~1_combout\ : std_logic;
SIGNAL \alu_component|Equal0~2_combout\ : std_logic;
SIGNAL \alu_component|Equal0~0_combout\ : std_logic;
SIGNAL \alu_component|Equal0~4_combout\ : std_logic;
SIGNAL \alu_component|Equal0~3_combout\ : std_logic;
SIGNAL \alu_component|Equal0~5_combout\ : std_logic;
SIGNAL \alu_component|Equal0~6_combout\ : std_logic;
SIGNAL \alu_component|Equal0~7_combout\ : std_logic;
SIGNAL \alu_component|Equal0~8_combout\ : std_logic;
SIGNAL \alu_component|Equal0~9_combout\ : std_logic;
SIGNAL \alu_component|Equal0~10_combout\ : std_logic;
SIGNAL \Inc_PC~input_o\ : std_logic;
SIGNAL \Ld_PC~input_o\ : std_logic;
SIGNAL \pc_component|q~14_combout\ : std_logic;
SIGNAL \Clr_PC~input_o\ : std_logic;
SIGNAL \Clr_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc_component|q[0]~reg0_q\ : std_logic;
SIGNAL \pc_component|q~15_combout\ : std_logic;
SIGNAL \pc_component|q[1]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[2]~0_combout\ : std_logic;
SIGNAL \pc_component|Add0~0_combout\ : std_logic;
SIGNAL \pc_component|q[2]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[3]~1_combout\ : std_logic;
SIGNAL \pc_component|Add0~1\ : std_logic;
SIGNAL \pc_component|Add0~2_combout\ : std_logic;
SIGNAL \pc_component|q[3]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[4]~2_combout\ : std_logic;
SIGNAL \pc_component|Add0~3\ : std_logic;
SIGNAL \pc_component|Add0~4_combout\ : std_logic;
SIGNAL \pc_component|q[4]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[5]~3_combout\ : std_logic;
SIGNAL \pc_component|Add0~5\ : std_logic;
SIGNAL \pc_component|Add0~6_combout\ : std_logic;
SIGNAL \pc_component|q[5]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[6]~4_combout\ : std_logic;
SIGNAL \pc_component|Add0~7\ : std_logic;
SIGNAL \pc_component|Add0~8_combout\ : std_logic;
SIGNAL \pc_component|q[6]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[7]~5_combout\ : std_logic;
SIGNAL \pc_component|Add0~9\ : std_logic;
SIGNAL \pc_component|Add0~10_combout\ : std_logic;
SIGNAL \pc_component|q[7]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[8]~6_combout\ : std_logic;
SIGNAL \pc_component|Add0~11\ : std_logic;
SIGNAL \pc_component|Add0~12_combout\ : std_logic;
SIGNAL \pc_component|q[8]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[9]~7_combout\ : std_logic;
SIGNAL \pc_component|Add0~13\ : std_logic;
SIGNAL \pc_component|Add0~14_combout\ : std_logic;
SIGNAL \pc_component|q[9]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[10]~8_combout\ : std_logic;
SIGNAL \pc_component|Add0~15\ : std_logic;
SIGNAL \pc_component|Add0~16_combout\ : std_logic;
SIGNAL \pc_component|q[10]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[11]~9_combout\ : std_logic;
SIGNAL \pc_component|Add0~17\ : std_logic;
SIGNAL \pc_component|Add0~18_combout\ : std_logic;
SIGNAL \pc_component|q[11]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[12]~10_combout\ : std_logic;
SIGNAL \pc_component|Add0~19\ : std_logic;
SIGNAL \pc_component|Add0~20_combout\ : std_logic;
SIGNAL \pc_component|q[12]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[13]~11_combout\ : std_logic;
SIGNAL \pc_component|Add0~21\ : std_logic;
SIGNAL \pc_component|Add0~22_combout\ : std_logic;
SIGNAL \pc_component|q[13]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[14]~12_combout\ : std_logic;
SIGNAL \pc_component|Add0~23\ : std_logic;
SIGNAL \pc_component|Add0~24_combout\ : std_logic;
SIGNAL \pc_component|q[14]~reg0_q\ : std_logic;
SIGNAL \pc_component|q[15]~13_combout\ : std_logic;
SIGNAL \pc_component|Add0~25\ : std_logic;
SIGNAL \pc_component|Add0~26_combout\ : std_logic;
SIGNAL \pc_component|q[15]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~27\ : std_logic;
SIGNAL \pc_component|Add0~28_combout\ : std_logic;
SIGNAL \pc_component|q~16_combout\ : std_logic;
SIGNAL \pc_component|q[16]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~29\ : std_logic;
SIGNAL \pc_component|Add0~30_combout\ : std_logic;
SIGNAL \pc_component|q~17_combout\ : std_logic;
SIGNAL \pc_component|q[17]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~31\ : std_logic;
SIGNAL \pc_component|Add0~32_combout\ : std_logic;
SIGNAL \pc_component|q~18_combout\ : std_logic;
SIGNAL \pc_component|q[18]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~33\ : std_logic;
SIGNAL \pc_component|Add0~34_combout\ : std_logic;
SIGNAL \pc_component|q~19_combout\ : std_logic;
SIGNAL \pc_component|q[19]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~35\ : std_logic;
SIGNAL \pc_component|Add0~36_combout\ : std_logic;
SIGNAL \pc_component|q~20_combout\ : std_logic;
SIGNAL \pc_component|q[20]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~37\ : std_logic;
SIGNAL \pc_component|Add0~38_combout\ : std_logic;
SIGNAL \pc_component|q~21_combout\ : std_logic;
SIGNAL \pc_component|q[21]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~39\ : std_logic;
SIGNAL \pc_component|Add0~40_combout\ : std_logic;
SIGNAL \pc_component|q~22_combout\ : std_logic;
SIGNAL \pc_component|q[22]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~41\ : std_logic;
SIGNAL \pc_component|Add0~42_combout\ : std_logic;
SIGNAL \pc_component|q~23_combout\ : std_logic;
SIGNAL \pc_component|q[23]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~43\ : std_logic;
SIGNAL \pc_component|Add0~44_combout\ : std_logic;
SIGNAL \pc_component|q~24_combout\ : std_logic;
SIGNAL \pc_component|q[24]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~45\ : std_logic;
SIGNAL \pc_component|Add0~46_combout\ : std_logic;
SIGNAL \pc_component|q~25_combout\ : std_logic;
SIGNAL \pc_component|q[25]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~47\ : std_logic;
SIGNAL \pc_component|Add0~48_combout\ : std_logic;
SIGNAL \pc_component|q~26_combout\ : std_logic;
SIGNAL \pc_component|q[26]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~49\ : std_logic;
SIGNAL \pc_component|Add0~50_combout\ : std_logic;
SIGNAL \pc_component|q~27_combout\ : std_logic;
SIGNAL \pc_component|q[27]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~51\ : std_logic;
SIGNAL \pc_component|Add0~52_combout\ : std_logic;
SIGNAL \pc_component|q~28_combout\ : std_logic;
SIGNAL \pc_component|q[28]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~53\ : std_logic;
SIGNAL \pc_component|Add0~54_combout\ : std_logic;
SIGNAL \pc_component|q~29_combout\ : std_logic;
SIGNAL \pc_component|q[29]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~55\ : std_logic;
SIGNAL \pc_component|Add0~56_combout\ : std_logic;
SIGNAL \pc_component|q~30_combout\ : std_logic;
SIGNAL \pc_component|q[30]~reg0_q\ : std_logic;
SIGNAL \pc_component|Add0~57\ : std_logic;
SIGNAL \pc_component|Add0~58_combout\ : std_logic;
SIGNAL \pc_component|q~31_combout\ : std_logic;
SIGNAL \pc_component|q[31]~reg0_q\ : std_logic;
SIGNAL \A_register|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B_register|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ir_register|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Data_Memory_Module|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Clr_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_IR~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Ld_IR~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_mClk <= mClk;
ww_WEN <= WEN;
ww_EN <= EN;
ww_Clr_A <= Clr_A;
ww_Ld_A <= Ld_A;
ww_Clr_B <= Clr_B;
ww_Ld_B <= Ld_B;
ww_Clr_C <= Clr_C;
ww_Ld_C <= Ld_C;
ww_Clr_Z <= Clr_Z;
ww_Ld_Z <= Ld_Z;
ww_Clr_PC <= Clr_PC;
ww_Ld_PC <= Ld_PC;
ww_Clr_IR <= Clr_IR;
ww_Ld_IR <= Ld_IR;
Out_A <= ww_Out_A;
Out_B <= ww_Out_B;
Out_C <= ww_Out_C;
Out_Z <= ww_Out_Z;
Out_PC <= ww_Out_PC;
Out_IR <= ww_Out_IR;
ww_Inc_PC <= Inc_PC;
ADDR_OUT <= ww_ADDR_OUT;
ww_DATA_IN <= DATA_IN;
DATA_OUT <= ww_DATA_OUT;
MEM_OUT <= ww_MEM_OUT;
MEM_IN <= ww_MEM_IN;
MEM_ADDR <= ww_MEM_ADDR;
ww_DATA_Mux <= DATA_Mux;
ww_REG_Mux <= REG_Mux;
ww_A_MUX <= A_MUX;
ww_B_MUX <= B_MUX;
ww_IM_MUX1 <= IM_MUX1;
ww_IM_MUX2 <= IM_MUX2;
ww_ALU_Op <= ALU_Op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Data_memory_multiplexer|f[31]~31_combout\ & \Data_memory_multiplexer|f[30]~30_combout\ & \Data_memory_multiplexer|f[29]~29_combout\ & 
\Data_memory_multiplexer|f[28]~28_combout\ & \Data_memory_multiplexer|f[27]~27_combout\ & \Data_memory_multiplexer|f[26]~26_combout\ & \Data_memory_multiplexer|f[25]~25_combout\ & \Data_memory_multiplexer|f[24]~24_combout\ & 
\Data_memory_multiplexer|f[23]~23_combout\ & \Data_memory_multiplexer|f[22]~22_combout\ & \Data_memory_multiplexer|f[21]~21_combout\ & \Data_memory_multiplexer|f[20]~20_combout\ & \Data_memory_multiplexer|f[19]~19_combout\ & 
\Data_memory_multiplexer|f[18]~18_combout\ & \Data_memory_multiplexer|f[17]~17_combout\ & \Data_memory_multiplexer|f[16]~16_combout\ & \Data_memory_multiplexer|f[15]~15_combout\ & \Data_memory_multiplexer|f[14]~14_combout\ & 
\Data_memory_multiplexer|f[13]~13_combout\ & \Data_memory_multiplexer|f[12]~12_combout\ & \Data_memory_multiplexer|f[11]~11_combout\ & \Data_memory_multiplexer|f[10]~10_combout\ & \Data_memory_multiplexer|f[9]~9_combout\ & 
\Data_memory_multiplexer|f[8]~8_combout\ & \Data_memory_multiplexer|f[7]~7_combout\ & \Data_memory_multiplexer|f[6]~6_combout\ & \Data_memory_multiplexer|f[5]~5_combout\ & \Data_memory_multiplexer|f[4]~4_combout\ & \Data_memory_multiplexer|f[3]~3_combout\
& \Data_memory_multiplexer|f[2]~2_combout\ & \Data_memory_multiplexer|f[1]~1_combout\ & \Data_memory_multiplexer|f[0]~0_combout\);

\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ir_register|Q\(7) & \ir_register|Q\(6) & \ir_register|Q\(5) & \ir_register|Q\(4) & \ir_register|Q\(3) & \ir_register|Q\(2) & \ir_register|Q\(1) & 
\ir_register|Q\(0));

\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mux_data|Mux24~3_combout\ & \mux_data|Mux25~3_combout\ & \mux_data|Mux26~3_combout\ & \mux_data|Mux27~3_combout\ & \mux_data|Mux28~3_combout\ & \mux_data|Mux29~3_combout\ & 
\mux_data|Mux30~3_combout\ & \mux_data|Mux31~4_combout\);

\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a1\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a2\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a3\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a4\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a5\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a6\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a7\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a8\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a9\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a10\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a11\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a12\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a13\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a14\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a15\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a16\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a17\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a18\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a19\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a20\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a21\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a22\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a23\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a24\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a25\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a26\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a27\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a28\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a29\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a30\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a31\ <= \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\mClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mClk~input_o\);

\Clr_IR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_IR~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Clr_A~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_A~input_o\);

\Clr_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_B~input_o\);

\Clr_PC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_PC~input_o\);
\ALT_INV_Clr_PC~inputclkctrl_outclk\ <= NOT \Clr_PC~inputclkctrl_outclk\;
\ALT_INV_Clr_B~inputclkctrl_outclk\ <= NOT \Clr_B~inputclkctrl_outclk\;
\ALT_INV_Clr_A~inputclkctrl_outclk\ <= NOT \Clr_A~inputclkctrl_outclk\;
\ALT_INV_Clr_IR~inputclkctrl_outclk\ <= NOT \Clr_IR~inputclkctrl_outclk\;
\ALT_INV_mClk~inputclkctrl_outclk\ <= NOT \mClk~inputclkctrl_outclk\;
\ALT_INV_Ld_IR~input_o\ <= NOT \Ld_IR~input_o\;

-- Location: IOOBUF_X0_Y45_N16
\Out_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(0),
	devoe => ww_devoe,
	o => \Out_A[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Out_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(1),
	devoe => ww_devoe,
	o => \Out_A[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Out_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(2),
	devoe => ww_devoe,
	o => \Out_A[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Out_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(3),
	devoe => ww_devoe,
	o => \Out_A[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Out_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(4),
	devoe => ww_devoe,
	o => \Out_A[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Out_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(5),
	devoe => ww_devoe,
	o => \Out_A[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Out_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(6),
	devoe => ww_devoe,
	o => \Out_A[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Out_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(7),
	devoe => ww_devoe,
	o => \Out_A[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\Out_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(8),
	devoe => ww_devoe,
	o => \Out_A[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Out_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(9),
	devoe => ww_devoe,
	o => \Out_A[9]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Out_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(10),
	devoe => ww_devoe,
	o => \Out_A[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\Out_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(11),
	devoe => ww_devoe,
	o => \Out_A[11]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Out_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(12),
	devoe => ww_devoe,
	o => \Out_A[12]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Out_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(13),
	devoe => ww_devoe,
	o => \Out_A[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\Out_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(14),
	devoe => ww_devoe,
	o => \Out_A[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Out_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(15),
	devoe => ww_devoe,
	o => \Out_A[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Out_A[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(16),
	devoe => ww_devoe,
	o => \Out_A[16]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Out_A[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(17),
	devoe => ww_devoe,
	o => \Out_A[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Out_A[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(18),
	devoe => ww_devoe,
	o => \Out_A[18]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Out_A[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(19),
	devoe => ww_devoe,
	o => \Out_A[19]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\Out_A[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(20),
	devoe => ww_devoe,
	o => \Out_A[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Out_A[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(21),
	devoe => ww_devoe,
	o => \Out_A[21]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Out_A[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(22),
	devoe => ww_devoe,
	o => \Out_A[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\Out_A[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(23),
	devoe => ww_devoe,
	o => \Out_A[23]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Out_A[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(24),
	devoe => ww_devoe,
	o => \Out_A[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Out_A[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(25),
	devoe => ww_devoe,
	o => \Out_A[25]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Out_A[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(26),
	devoe => ww_devoe,
	o => \Out_A[26]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Out_A[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(27),
	devoe => ww_devoe,
	o => \Out_A[27]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Out_A[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(28),
	devoe => ww_devoe,
	o => \Out_A[28]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\Out_A[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(29),
	devoe => ww_devoe,
	o => \Out_A[29]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Out_A[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(30),
	devoe => ww_devoe,
	o => \Out_A[30]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Out_A[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_register|Q\(31),
	devoe => ww_devoe,
	o => \Out_A[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Out_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(0),
	devoe => ww_devoe,
	o => \Out_B[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\Out_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(1),
	devoe => ww_devoe,
	o => \Out_B[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\Out_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(2),
	devoe => ww_devoe,
	o => \Out_B[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Out_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(3),
	devoe => ww_devoe,
	o => \Out_B[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Out_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(4),
	devoe => ww_devoe,
	o => \Out_B[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Out_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(5),
	devoe => ww_devoe,
	o => \Out_B[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Out_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(6),
	devoe => ww_devoe,
	o => \Out_B[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Out_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(7),
	devoe => ww_devoe,
	o => \Out_B[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Out_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(8),
	devoe => ww_devoe,
	o => \Out_B[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Out_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(9),
	devoe => ww_devoe,
	o => \Out_B[9]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Out_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(10),
	devoe => ww_devoe,
	o => \Out_B[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Out_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(11),
	devoe => ww_devoe,
	o => \Out_B[11]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Out_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(12),
	devoe => ww_devoe,
	o => \Out_B[12]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Out_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(13),
	devoe => ww_devoe,
	o => \Out_B[13]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Out_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(14),
	devoe => ww_devoe,
	o => \Out_B[14]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Out_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(15),
	devoe => ww_devoe,
	o => \Out_B[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Out_B[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(16),
	devoe => ww_devoe,
	o => \Out_B[16]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Out_B[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(17),
	devoe => ww_devoe,
	o => \Out_B[17]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Out_B[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(18),
	devoe => ww_devoe,
	o => \Out_B[18]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Out_B[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(19),
	devoe => ww_devoe,
	o => \Out_B[19]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Out_B[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(20),
	devoe => ww_devoe,
	o => \Out_B[20]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Out_B[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(21),
	devoe => ww_devoe,
	o => \Out_B[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\Out_B[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(22),
	devoe => ww_devoe,
	o => \Out_B[22]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Out_B[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(23),
	devoe => ww_devoe,
	o => \Out_B[23]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Out_B[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(24),
	devoe => ww_devoe,
	o => \Out_B[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Out_B[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(25),
	devoe => ww_devoe,
	o => \Out_B[25]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Out_B[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(26),
	devoe => ww_devoe,
	o => \Out_B[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Out_B[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(27),
	devoe => ww_devoe,
	o => \Out_B[27]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\Out_B[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(28),
	devoe => ww_devoe,
	o => \Out_B[28]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Out_B[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(29),
	devoe => ww_devoe,
	o => \Out_B[29]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Out_B[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(30),
	devoe => ww_devoe,
	o => \Out_B[30]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Out_B[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_register|Q\(31),
	devoe => ww_devoe,
	o => \Out_B[31]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Out_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_component|adder1|s8|p4|cout~0_combout\,
	devoe => ww_devoe,
	o => \Out_C~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\Out_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_component|Equal0~10_combout\,
	devoe => ww_devoe,
	o => \Out_Z~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Out_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\Out_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Out_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Out_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Out_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Out_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Out_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[6]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Out_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[7]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Out_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[8]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\Out_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[9]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\Out_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Out_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Out_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\Out_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Out_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Out_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[15]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\Out_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[16]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[16]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Out_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[17]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[17]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\Out_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[18]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[18]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Out_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[19]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Out_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[20]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[20]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Out_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[21]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[21]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Out_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[22]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Out_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[23]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Out_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[24]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[24]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\Out_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[25]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[25]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Out_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[26]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[26]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Out_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[27]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[27]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Out_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[28]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[28]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\Out_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[29]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[29]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Out_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[30]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[30]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Out_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[31]~reg0_q\,
	devoe => ww_devoe,
	o => \Out_PC[31]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Out_IR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(0),
	devoe => ww_devoe,
	o => \Out_IR[0]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\Out_IR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(1),
	devoe => ww_devoe,
	o => \Out_IR[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\Out_IR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(2),
	devoe => ww_devoe,
	o => \Out_IR[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Out_IR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(3),
	devoe => ww_devoe,
	o => \Out_IR[3]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\Out_IR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(4),
	devoe => ww_devoe,
	o => \Out_IR[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Out_IR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(5),
	devoe => ww_devoe,
	o => \Out_IR[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Out_IR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(6),
	devoe => ww_devoe,
	o => \Out_IR[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Out_IR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(7),
	devoe => ww_devoe,
	o => \Out_IR[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Out_IR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(8),
	devoe => ww_devoe,
	o => \Out_IR[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Out_IR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(9),
	devoe => ww_devoe,
	o => \Out_IR[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Out_IR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(10),
	devoe => ww_devoe,
	o => \Out_IR[10]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Out_IR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(11),
	devoe => ww_devoe,
	o => \Out_IR[11]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Out_IR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(12),
	devoe => ww_devoe,
	o => \Out_IR[12]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Out_IR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(13),
	devoe => ww_devoe,
	o => \Out_IR[13]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Out_IR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(14),
	devoe => ww_devoe,
	o => \Out_IR[14]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Out_IR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(15),
	devoe => ww_devoe,
	o => \Out_IR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Out_IR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(16),
	devoe => ww_devoe,
	o => \Out_IR[16]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\Out_IR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(17),
	devoe => ww_devoe,
	o => \Out_IR[17]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Out_IR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(18),
	devoe => ww_devoe,
	o => \Out_IR[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\Out_IR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(19),
	devoe => ww_devoe,
	o => \Out_IR[19]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Out_IR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(20),
	devoe => ww_devoe,
	o => \Out_IR[20]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\Out_IR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(21),
	devoe => ww_devoe,
	o => \Out_IR[21]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Out_IR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(22),
	devoe => ww_devoe,
	o => \Out_IR[22]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Out_IR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(23),
	devoe => ww_devoe,
	o => \Out_IR[23]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Out_IR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(24),
	devoe => ww_devoe,
	o => \Out_IR[24]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Out_IR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(25),
	devoe => ww_devoe,
	o => \Out_IR[25]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\Out_IR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(26),
	devoe => ww_devoe,
	o => \Out_IR[26]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\Out_IR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(27),
	devoe => ww_devoe,
	o => \Out_IR[27]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\Out_IR[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(28),
	devoe => ww_devoe,
	o => \Out_IR[28]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Out_IR[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(29),
	devoe => ww_devoe,
	o => \Out_IR[29]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Out_IR[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(30),
	devoe => ww_devoe,
	o => \Out_IR[30]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Out_IR[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(31),
	devoe => ww_devoe,
	o => \Out_IR[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\ADDR_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\ADDR_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ADDR_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\ADDR_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\ADDR_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\ADDR_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\ADDR_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[6]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\ADDR_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\ADDR_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[8]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\ADDR_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[9]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\ADDR_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\ADDR_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\ADDR_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\ADDR_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\ADDR_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ADDR_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[15]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\ADDR_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[16]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[16]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\ADDR_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[17]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[17]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\ADDR_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[18]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[18]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\ADDR_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[19]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\ADDR_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[20]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[20]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\ADDR_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[21]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[21]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\ADDR_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[22]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[22]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\ADDR_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[23]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\ADDR_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[24]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[24]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\ADDR_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[25]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[25]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\ADDR_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[26]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[26]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ADDR_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[27]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[27]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\ADDR_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[28]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[28]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\ADDR_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[29]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[29]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\ADDR_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[30]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[30]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\ADDR_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|q[31]~reg0_q\,
	devoe => ww_devoe,
	o => \ADDR_OUT[31]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\DATA_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DATA_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\DATA_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DATA_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DATA_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\DATA_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DATA_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DATA_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\DATA_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\DATA_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\DATA_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\DATA_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[16]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\DATA_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux14~4_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[17]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\DATA_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[18]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DATA_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[19]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\DATA_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[20]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DATA_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\DATA_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[22]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\DATA_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux8~5_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[23]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\DATA_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\DATA_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[25]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\DATA_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\DATA_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[27]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\DATA_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[28]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\DATA_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[29]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\DATA_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[30]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\DATA_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_data|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \DATA_OUT[31]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\MEM_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(0),
	devoe => ww_devoe,
	o => \MEM_OUT[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\MEM_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(1),
	devoe => ww_devoe,
	o => \MEM_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\MEM_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(2),
	devoe => ww_devoe,
	o => \MEM_OUT[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\MEM_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(3),
	devoe => ww_devoe,
	o => \MEM_OUT[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\MEM_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(4),
	devoe => ww_devoe,
	o => \MEM_OUT[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\MEM_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(5),
	devoe => ww_devoe,
	o => \MEM_OUT[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\MEM_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(6),
	devoe => ww_devoe,
	o => \MEM_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\MEM_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(7),
	devoe => ww_devoe,
	o => \MEM_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\MEM_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(8),
	devoe => ww_devoe,
	o => \MEM_OUT[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\MEM_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(9),
	devoe => ww_devoe,
	o => \MEM_OUT[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\MEM_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(10),
	devoe => ww_devoe,
	o => \MEM_OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\MEM_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(11),
	devoe => ww_devoe,
	o => \MEM_OUT[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\MEM_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(12),
	devoe => ww_devoe,
	o => \MEM_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\MEM_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(13),
	devoe => ww_devoe,
	o => \MEM_OUT[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\MEM_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(14),
	devoe => ww_devoe,
	o => \MEM_OUT[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\MEM_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(15),
	devoe => ww_devoe,
	o => \MEM_OUT[15]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\MEM_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(16),
	devoe => ww_devoe,
	o => \MEM_OUT[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\MEM_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(17),
	devoe => ww_devoe,
	o => \MEM_OUT[17]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\MEM_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(18),
	devoe => ww_devoe,
	o => \MEM_OUT[18]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\MEM_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(19),
	devoe => ww_devoe,
	o => \MEM_OUT[19]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\MEM_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(20),
	devoe => ww_devoe,
	o => \MEM_OUT[20]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\MEM_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(21),
	devoe => ww_devoe,
	o => \MEM_OUT[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\MEM_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(22),
	devoe => ww_devoe,
	o => \MEM_OUT[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\MEM_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(23),
	devoe => ww_devoe,
	o => \MEM_OUT[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\MEM_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(24),
	devoe => ww_devoe,
	o => \MEM_OUT[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\MEM_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(25),
	devoe => ww_devoe,
	o => \MEM_OUT[25]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\MEM_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(26),
	devoe => ww_devoe,
	o => \MEM_OUT[26]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\MEM_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(27),
	devoe => ww_devoe,
	o => \MEM_OUT[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\MEM_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(28),
	devoe => ww_devoe,
	o => \MEM_OUT[28]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\MEM_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(29),
	devoe => ww_devoe,
	o => \MEM_OUT[29]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\MEM_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(30),
	devoe => ww_devoe,
	o => \MEM_OUT[30]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\MEM_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Memory_Module|data_out\(31),
	devoe => ww_devoe,
	o => \MEM_OUT[31]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\MEM_IN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[0]~0_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\MEM_IN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\MEM_IN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[2]~2_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\MEM_IN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[3]~3_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\MEM_IN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[4]~4_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[4]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\MEM_IN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[5]~5_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\MEM_IN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[6]~6_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\MEM_IN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[7]~7_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\MEM_IN[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[8]~8_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\MEM_IN[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[9]~9_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[9]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\MEM_IN[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[10]~10_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\MEM_IN[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[11]~11_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[11]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\MEM_IN[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[12]~12_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\MEM_IN[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[13]~13_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\MEM_IN[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[14]~14_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[14]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\MEM_IN[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[15]~15_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\MEM_IN[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[16]~16_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\MEM_IN[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[17]~17_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[17]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\MEM_IN[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[18]~18_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\MEM_IN[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[19]~19_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[19]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\MEM_IN[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[20]~20_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[20]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\MEM_IN[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[21]~21_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[21]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\MEM_IN[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[22]~22_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[22]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\MEM_IN[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[23]~23_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[23]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\MEM_IN[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[24]~24_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\MEM_IN[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[25]~25_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\MEM_IN[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[26]~26_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[26]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\MEM_IN[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[27]~27_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[27]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\MEM_IN[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[28]~28_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\MEM_IN[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[29]~29_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[29]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\MEM_IN[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[30]~30_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[30]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\MEM_IN[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_memory_multiplexer|f[31]~31_combout\,
	devoe => ww_devoe,
	o => \MEM_IN[31]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\MEM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(0),
	devoe => ww_devoe,
	o => \MEM_ADDR[0]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\MEM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(1),
	devoe => ww_devoe,
	o => \MEM_ADDR[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\MEM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(2),
	devoe => ww_devoe,
	o => \MEM_ADDR[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\MEM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(3),
	devoe => ww_devoe,
	o => \MEM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\MEM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(4),
	devoe => ww_devoe,
	o => \MEM_ADDR[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\MEM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(5),
	devoe => ww_devoe,
	o => \MEM_ADDR[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\MEM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(6),
	devoe => ww_devoe,
	o => \MEM_ADDR[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\MEM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_register|Q\(7),
	devoe => ww_devoe,
	o => \MEM_ADDR[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y30_N8
\DATA_Mux[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_Mux(0),
	o => \DATA_Mux[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\DATA_Mux[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_Mux(1),
	o => \DATA_Mux[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\ALU_Op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(0),
	o => \ALU_Op[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\ALU_Op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(1),
	o => \ALU_Op[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\IM_MUX2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX2(1),
	o => \IM_MUX2[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\IM_MUX2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX2(0),
	o => \IM_MUX2[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\B_MUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_MUX,
	o => \B_MUX~input_o\);

-- Location: LCCOMB_X39_Y32_N8
\B_multiplexer|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[0]~2_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(0))) # (!\B_MUX~input_o\ & ((\mux_data|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(0),
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux31~4_combout\,
	combout => \B_multiplexer|f[0]~2_combout\);

-- Location: IOIBUF_X58_Y0_N22
\Clr_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_B,
	o => \Clr_B~input_o\);

-- Location: CLKCTRL_G18
\Clr_B~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_B~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_B~inputclkctrl_outclk\);

-- Location: IOIBUF_X42_Y0_N15
\Ld_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_B,
	o => \Ld_B~input_o\);

-- Location: FF_X39_Y32_N9
\B_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[0]~2_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(0));

-- Location: LCCOMB_X39_Y32_N28
\im_mux2_component|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux31~1_combout\ = (\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\) # ((\ir_register|Q\(0))))) # (!\IM_MUX2[0]~input_o\ & (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \B_register|Q\(0),
	datad => \ir_register|Q\(0),
	combout => \im_mux2_component|Mux31~1_combout\);

-- Location: LCCOMB_X42_Y32_N20
\im_mux2_component|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux31~2_combout\ = (\im_mux2_component|Mux31~1_combout\) # ((\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \alu_component|mux1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux0~3_combout\,
	datad => \im_mux2_component|Mux31~1_combout\,
	combout => \im_mux2_component|Mux31~2_combout\);

-- Location: IOIBUF_X45_Y0_N22
\ALU_Op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Op(2),
	o => \ALU_Op[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\IM_MUX1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IM_MUX1,
	o => \IM_MUX1~input_o\);

-- Location: LCCOMB_X41_Y32_N18
\im_mux1_component|f[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[0]~20_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(0),
	combout => \im_mux1_component|f[0]~20_combout\);

-- Location: LCCOMB_X41_Y32_N4
\alu_component|mux1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux0~2_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux31~2_combout\ $ (((\im_mux1_component|f[0]~20_combout\))))) # (!\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux31~2_combout\ & (!\ALU_Op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux31~2_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \im_mux1_component|f[0]~20_combout\,
	combout => \alu_component|mux1|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y32_N26
\B_multiplexer|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[1]~3_combout\ = (\B_MUX~input_o\ & ((\ir_register|Q\(1)))) # (!\B_MUX~input_o\ & (\mux_data|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux30~3_combout\,
	datad => \ir_register|Q\(1),
	combout => \B_multiplexer|f[1]~3_combout\);

-- Location: FF_X39_Y32_N27
\B_register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[1]~3_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(1));

-- Location: LCCOMB_X39_Y32_N22
\im_mux2_component|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux30~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\ir_register|Q\(1)))) # (!\IM_MUX2[0]~input_o\ & (\B_register|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \B_register|Q\(1),
	datad => \ir_register|Q\(1),
	combout => \im_mux2_component|Mux30~1_combout\);

-- Location: LCCOMB_X42_Y32_N10
\im_mux2_component|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux30~2_combout\ = (\im_mux2_component|Mux30~1_combout\) # ((\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \alu_component|mux1|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux1~5_combout\,
	datad => \im_mux2_component|Mux30~1_combout\,
	combout => \im_mux2_component|Mux30~2_combout\);

-- Location: LCCOMB_X42_Y32_N16
\im_mux1_component|f[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[1]~19_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \A_register|Q\(1),
	combout => \im_mux1_component|f[1]~19_combout\);

-- Location: LCCOMB_X42_Y32_N14
\alu_component|adder1|s1|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s1|p1|cout~0_combout\ = (\im_mux2_component|Mux31~2_combout\ & (\A_register|Q\(0) & ((!\IM_MUX1~input_o\)))) # (!\im_mux2_component|Mux31~2_combout\ & (((\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(0),
	datab => \ALU_Op[2]~input_o\,
	datac => \IM_MUX1~input_o\,
	datad => \im_mux2_component|Mux31~2_combout\,
	combout => \alu_component|adder1|s1|p1|cout~0_combout\);

-- Location: LCCOMB_X43_Y32_N24
\alu_component|mux1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux1~2_combout\ = (\ALU_Op[1]~input_o\ & ((\im_mux1_component|f[1]~19_combout\ $ (\alu_component|adder1|s1|p1|cout~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\ALU_Op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \im_mux1_component|f[1]~19_combout\,
	datad => \alu_component|adder1|s1|p1|cout~0_combout\,
	combout => \alu_component|mux1|Mux1~2_combout\);

-- Location: LCCOMB_X43_Y32_N26
\alu_component|mux1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux1~3_combout\ = (!\ALU_Op[1]~input_o\ & ((\ALU_Op[2]~input_o\) # (\im_mux2_component|Mux30~2_combout\ $ (\alu_component|mux1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux2_component|Mux30~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux1~2_combout\,
	combout => \alu_component|mux1|Mux1~3_combout\);

-- Location: LCCOMB_X43_Y32_N8
\alu_component|mux1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux1~4_combout\ = (\ALU_Op[1]~input_o\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux30~2_combout\ $ (\alu_component|mux1|Mux1~2_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux1~2_combout\ & ((\ALU_Op[2]~input_o\) # 
-- (\im_mux2_component|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux2_component|Mux30~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux1~2_combout\,
	combout => \alu_component|mux1|Mux1~4_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A_MUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_MUX,
	o => \A_MUX~input_o\);

-- Location: LCCOMB_X39_Y32_N16
\B_multiplexer|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[2]~4_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(2))) # (!\B_MUX~input_o\ & ((\mux_data|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(2),
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux29~3_combout\,
	combout => \B_multiplexer|f[2]~4_combout\);

-- Location: FF_X39_Y32_N17
\B_register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[2]~4_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(2));

-- Location: LCCOMB_X41_Y32_N2
\im_mux2_component|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux29~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\ir_register|Q\(2)))) # (!\IM_MUX2[0]~input_o\ & (\B_register|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(2),
	datad => \ir_register|Q\(2),
	combout => \im_mux2_component|Mux29~1_combout\);

-- Location: LCCOMB_X42_Y32_N24
\im_mux2_component|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux29~2_combout\ = (\im_mux2_component|Mux29~1_combout\) # ((\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \alu_component|mux1|Mux2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux2~11_combout\,
	datad => \im_mux2_component|Mux29~1_combout\,
	combout => \im_mux2_component|Mux29~2_combout\);

-- Location: LCCOMB_X43_Y33_N28
\alu_component|mux1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux2~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \A_register|Q\(2),
	combout => \alu_component|mux1|Mux2~8_combout\);

-- Location: LCCOMB_X43_Y33_N26
\alu_component|mux1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux2~9_combout\ = (\im_mux2_component|Mux29~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux2~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux2~8_combout\))))) # 
-- (!\im_mux2_component|Mux29~2_combout\ & (\alu_component|mux1|Mux2~8_combout\ & ((\ALU_Op[1]~input_o\) # (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux29~2_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \ALU_Op[0]~input_o\,
	datad => \alu_component|mux1|Mux2~8_combout\,
	combout => \alu_component|mux1|Mux2~9_combout\);

-- Location: LCCOMB_X42_Y32_N0
\alu_component|adder1|s1|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s1|p2|cout~0_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux30~2_combout\,
	combout => \alu_component|adder1|s1|p2|cout~0_combout\);

-- Location: LCCOMB_X42_Y32_N6
\alu_component|adder1|s1|p2|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s1|p2|cout~1_combout\ = (\alu_component|adder1|s1|p1|cout~0_combout\ & ((\alu_component|adder1|s1|p2|cout~0_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(1))))) # (!\alu_component|adder1|s1|p1|cout~0_combout\ & 
-- (!\IM_MUX1~input_o\ & (\A_register|Q\(1) & \alu_component|adder1|s1|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(1),
	datac => \alu_component|adder1|s1|p1|cout~0_combout\,
	datad => \alu_component|adder1|s1|p2|cout~0_combout\,
	combout => \alu_component|adder1|s1|p2|cout~1_combout\);

-- Location: LCCOMB_X42_Y32_N26
\alu_component|mux1|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux2~10_combout\ = \alu_component|mux1|Mux2~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s1|p2|cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux2~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s1|p2|cout~1_combout\,
	combout => \alu_component|mux1|Mux2~10_combout\);

-- Location: LCCOMB_X39_Y32_N10
\B_multiplexer|f[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[3]~5_combout\ = (\B_MUX~input_o\ & ((\ir_register|Q\(3)))) # (!\B_MUX~input_o\ & (\mux_data|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux28~3_combout\,
	datad => \ir_register|Q\(3),
	combout => \B_multiplexer|f[3]~5_combout\);

-- Location: FF_X39_Y32_N11
\B_register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[3]~5_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(3));

-- Location: LCCOMB_X41_Y32_N28
\im_mux2_component|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux28~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\ir_register|Q\(3)))) # (!\IM_MUX2[0]~input_o\ & (\B_register|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(3),
	datad => \ir_register|Q\(3),
	combout => \im_mux2_component|Mux28~1_combout\);

-- Location: LCCOMB_X42_Y32_N2
\im_mux2_component|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux28~2_combout\ = (\im_mux2_component|Mux28~1_combout\) # ((\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \alu_component|mux1|Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux3~11_combout\,
	datad => \im_mux2_component|Mux28~1_combout\,
	combout => \im_mux2_component|Mux28~2_combout\);

-- Location: LCCOMB_X43_Y32_N2
\alu_component|mux1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux3~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(3),
	combout => \alu_component|mux1|Mux3~8_combout\);

-- Location: LCCOMB_X43_Y32_N20
\alu_component|mux1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux3~9_combout\ = (\im_mux2_component|Mux28~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux3~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux3~8_combout\))))) # 
-- (!\im_mux2_component|Mux28~2_combout\ & (\alu_component|mux1|Mux3~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux28~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux3~8_combout\,
	combout => \alu_component|mux1|Mux3~9_combout\);

-- Location: LCCOMB_X42_Y32_N28
\alu_component|negMux|f[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[2]~35_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux29~2_combout\,
	combout => \alu_component|negMux|f[2]~35_combout\);

-- Location: LCCOMB_X42_Y32_N30
\alu_component|adder1|s1|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s1|p3|cout~0_combout\ = (\alu_component|adder1|s1|p2|cout~1_combout\ & ((\alu_component|negMux|f[2]~35_combout\) # ((\A_register|Q\(2) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s1|p2|cout~1_combout\ & (\A_register|Q\(2) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(2),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s1|p2|cout~1_combout\,
	datad => \alu_component|negMux|f[2]~35_combout\,
	combout => \alu_component|adder1|s1|p3|cout~0_combout\);

-- Location: LCCOMB_X42_Y32_N8
\alu_component|mux1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux3~10_combout\ = \alu_component|mux1|Mux3~9_combout\ $ (((\alu_component|adder1|s1|p3|cout~0_combout\ & \ALU_Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|mux1|Mux3~9_combout\,
	datac => \alu_component|adder1|s1|p3|cout~0_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \alu_component|mux1|Mux3~10_combout\);

-- Location: LCCOMB_X38_Y32_N0
\B_multiplexer|f[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[4]~6_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(4))) # (!\B_MUX~input_o\ & ((\mux_data|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datac => \ir_register|Q\(4),
	datad => \mux_data|Mux27~3_combout\,
	combout => \B_multiplexer|f[4]~6_combout\);

-- Location: FF_X39_Y32_N25
\B_register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \B_multiplexer|f[4]~6_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(4));

-- Location: LCCOMB_X39_Y32_N0
\im_mux2_component|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux27~1_combout\ = (\IM_MUX2[1]~input_o\ & (((\IM_MUX2[0]~input_o\)))) # (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(4))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(4),
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \B_register|Q\(4),
	combout => \im_mux2_component|Mux27~1_combout\);

-- Location: LCCOMB_X43_Y33_N18
\im_mux2_component|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux27~2_combout\ = (\im_mux2_component|Mux27~1_combout\) # ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux4~11_combout\ & !\IM_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux4~11_combout\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \im_mux2_component|Mux27~1_combout\,
	combout => \im_mux2_component|Mux27~2_combout\);

-- Location: LCCOMB_X43_Y33_N6
\alu_component|mux1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux4~8_combout\ = (\A_register|Q\(4) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_register|Q\(4),
	datad => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux4~8_combout\);

-- Location: LCCOMB_X43_Y33_N16
\alu_component|mux1|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux4~9_combout\ = (\im_mux2_component|Mux27~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux4~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux4~8_combout\))))) # 
-- (!\im_mux2_component|Mux27~2_combout\ & (\alu_component|mux1|Mux4~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux27~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux4~8_combout\,
	combout => \alu_component|mux1|Mux4~9_combout\);

-- Location: LCCOMB_X42_Y32_N12
\alu_component|negMux|f[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[3]~36_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux28~2_combout\,
	combout => \alu_component|negMux|f[3]~36_combout\);

-- Location: LCCOMB_X42_Y32_N18
\alu_component|adder1|s1|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s1|p4|cout~0_combout\ = (\alu_component|adder1|s1|p3|cout~0_combout\ & ((\alu_component|negMux|f[3]~36_combout\) # ((\A_register|Q\(3) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s1|p3|cout~0_combout\ & (\A_register|Q\(3) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s1|p3|cout~0_combout\,
	datab => \A_register|Q\(3),
	datac => \IM_MUX1~input_o\,
	datad => \alu_component|negMux|f[3]~36_combout\,
	combout => \alu_component|adder1|s1|p4|cout~0_combout\);

-- Location: LCCOMB_X42_Y32_N22
\alu_component|mux1|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux4~10_combout\ = \alu_component|mux1|Mux4~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s1|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux4~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s1|p4|cout~0_combout\,
	combout => \alu_component|mux1|Mux4~10_combout\);

-- Location: LCCOMB_X42_Y33_N0
\B_multiplexer|f[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[5]~7_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(5))) # (!\B_MUX~input_o\ & ((\mux_data|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \ir_register|Q\(5),
	datac => \mux_data|Mux26~3_combout\,
	combout => \B_multiplexer|f[5]~7_combout\);

-- Location: FF_X42_Y33_N1
\B_register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[5]~7_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(5));

-- Location: LCCOMB_X42_Y33_N26
\im_mux2_component|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux26~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(5))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \ir_register|Q\(5),
	datad => \B_register|Q\(5),
	combout => \im_mux2_component|Mux26~1_combout\);

-- Location: LCCOMB_X42_Y33_N20
\im_mux2_component|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux26~2_combout\ = (\im_mux2_component|Mux26~1_combout\) # ((!\IM_MUX2[0]~input_o\ & (\IM_MUX2[1]~input_o\ & \alu_component|mux1|Mux5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \im_mux2_component|Mux26~1_combout\,
	datad => \alu_component|mux1|Mux5~11_combout\,
	combout => \im_mux2_component|Mux26~2_combout\);

-- Location: LCCOMB_X43_Y32_N10
\alu_component|mux1|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux5~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \A_register|Q\(5),
	combout => \alu_component|mux1|Mux5~8_combout\);

-- Location: LCCOMB_X43_Y32_N4
\alu_component|mux1|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux5~9_combout\ = (\im_mux2_component|Mux26~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux5~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux5~8_combout\))))) # 
-- (!\im_mux2_component|Mux26~2_combout\ & (\alu_component|mux1|Mux5~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux26~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux5~8_combout\,
	combout => \alu_component|mux1|Mux5~9_combout\);

-- Location: LCCOMB_X43_Y33_N10
\alu_component|negMux|f[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[4]~37_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux27~2_combout\,
	combout => \alu_component|negMux|f[4]~37_combout\);

-- Location: LCCOMB_X43_Y33_N0
\alu_component|adder1|s2|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s2|p1|cout~0_combout\ = (\alu_component|adder1|s1|p4|cout~0_combout\ & ((\alu_component|negMux|f[4]~37_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(4))))) # (!\alu_component|adder1|s1|p4|cout~0_combout\ & (!\IM_MUX1~input_o\ & 
-- (\A_register|Q\(4) & \alu_component|negMux|f[4]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(4),
	datac => \alu_component|adder1|s1|p4|cout~0_combout\,
	datad => \alu_component|negMux|f[4]~37_combout\,
	combout => \alu_component|adder1|s2|p1|cout~0_combout\);

-- Location: LCCOMB_X43_Y33_N22
\alu_component|mux1|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux5~10_combout\ = \alu_component|mux1|Mux5~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s2|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|mux1|Mux5~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s2|p1|cout~0_combout\,
	combout => \alu_component|mux1|Mux5~10_combout\);

-- Location: LCCOMB_X40_Y31_N8
\B_multiplexer|f[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[6]~8_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(6))) # (!\B_MUX~input_o\ & ((\mux_data|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(6),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux25~3_combout\,
	combout => \B_multiplexer|f[6]~8_combout\);

-- Location: FF_X40_Y31_N9
\B_register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[6]~8_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(6));

-- Location: LCCOMB_X41_Y32_N8
\im_mux2_component|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux25~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(6))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \ir_register|Q\(6),
	datad => \B_register|Q\(6),
	combout => \im_mux2_component|Mux25~1_combout\);

-- Location: LCCOMB_X42_Y33_N6
\im_mux2_component|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux25~2_combout\ = (\im_mux2_component|Mux25~1_combout\) # ((!\IM_MUX2[0]~input_o\ & (\alu_component|mux1|Mux6~11_combout\ & \IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \alu_component|mux1|Mux6~11_combout\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \im_mux2_component|Mux25~1_combout\,
	combout => \im_mux2_component|Mux25~2_combout\);

-- Location: LCCOMB_X45_Y33_N6
\alu_component|mux1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux6~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \A_register|Q\(6),
	combout => \alu_component|mux1|Mux6~8_combout\);

-- Location: LCCOMB_X45_Y33_N4
\alu_component|mux1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux6~9_combout\ = (\im_mux2_component|Mux25~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux6~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux6~8_combout\))))) # 
-- (!\im_mux2_component|Mux25~2_combout\ & (\alu_component|mux1|Mux6~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux2_component|Mux25~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux6~8_combout\,
	combout => \alu_component|mux1|Mux6~9_combout\);

-- Location: LCCOMB_X42_Y33_N16
\alu_component|negMux|f[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[5]~38_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux26~2_combout\,
	combout => \alu_component|negMux|f[5]~38_combout\);

-- Location: LCCOMB_X42_Y33_N18
\alu_component|adder1|s2|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s2|p2|cout~0_combout\ = (\alu_component|adder1|s2|p1|cout~0_combout\ & ((\alu_component|negMux|f[5]~38_combout\) # ((\A_register|Q\(5) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s2|p1|cout~0_combout\ & (\A_register|Q\(5) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(5),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s2|p1|cout~0_combout\,
	datad => \alu_component|negMux|f[5]~38_combout\,
	combout => \alu_component|adder1|s2|p2|cout~0_combout\);

-- Location: LCCOMB_X42_Y33_N12
\alu_component|mux1|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux6~10_combout\ = \alu_component|mux1|Mux6~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s2|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|mux1|Mux6~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s2|p2|cout~0_combout\,
	combout => \alu_component|mux1|Mux6~10_combout\);

-- Location: LCCOMB_X39_Y32_N14
\B_multiplexer|f[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[7]~9_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(7))) # (!\B_MUX~input_o\ & ((\mux_data|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datac => \ir_register|Q\(7),
	datad => \mux_data|Mux24~3_combout\,
	combout => \B_multiplexer|f[7]~9_combout\);

-- Location: FF_X39_Y32_N15
\B_register|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[7]~9_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(7));

-- Location: LCCOMB_X41_Y32_N26
\im_mux2_component|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux24~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(7))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \ir_register|Q\(7),
	datad => \B_register|Q\(7),
	combout => \im_mux2_component|Mux24~1_combout\);

-- Location: LCCOMB_X41_Y33_N16
\im_mux2_component|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux24~2_combout\ = (\im_mux2_component|Mux24~1_combout\) # ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux7~11_combout\ & !\IM_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux7~11_combout\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \im_mux2_component|Mux24~1_combout\,
	combout => \im_mux2_component|Mux24~2_combout\);

-- Location: LCCOMB_X43_Y32_N18
\alu_component|mux1|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux7~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datad => \A_register|Q\(7),
	combout => \alu_component|mux1|Mux7~8_combout\);

-- Location: LCCOMB_X43_Y32_N16
\alu_component|mux1|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux7~9_combout\ = (\im_mux2_component|Mux24~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux7~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux7~8_combout\))))) # 
-- (!\im_mux2_component|Mux24~2_combout\ & (\alu_component|mux1|Mux7~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux24~2_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux7~8_combout\,
	combout => \alu_component|mux1|Mux7~9_combout\);

-- Location: LCCOMB_X42_Y33_N24
\alu_component|negMux|f[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[6]~39_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux25~2_combout\,
	combout => \alu_component|negMux|f[6]~39_combout\);

-- Location: LCCOMB_X42_Y33_N10
\alu_component|adder1|s2|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s2|p3|cout~0_combout\ = (\alu_component|adder1|s2|p2|cout~0_combout\ & ((\alu_component|negMux|f[6]~39_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(6))))) # (!\alu_component|adder1|s2|p2|cout~0_combout\ & (!\IM_MUX1~input_o\ & 
-- (\A_register|Q\(6) & \alu_component|negMux|f[6]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \alu_component|adder1|s2|p2|cout~0_combout\,
	datac => \A_register|Q\(6),
	datad => \alu_component|negMux|f[6]~39_combout\,
	combout => \alu_component|adder1|s2|p3|cout~0_combout\);

-- Location: LCCOMB_X42_Y33_N8
\alu_component|mux1|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux7~10_combout\ = \alu_component|mux1|Mux7~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s2|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|mux1|Mux7~9_combout\,
	datad => \alu_component|adder1|s2|p3|cout~0_combout\,
	combout => \alu_component|mux1|Mux7~10_combout\);

-- Location: LCCOMB_X38_Y33_N20
\B_multiplexer|f[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[8]~10_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(8))) # (!\B_MUX~input_o\ & ((\mux_data|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(8),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux23~3_combout\,
	combout => \B_multiplexer|f[8]~10_combout\);

-- Location: FF_X38_Y33_N21
\B_register|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[8]~10_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(8));

-- Location: LCCOMB_X38_Y33_N8
\im_mux2_component|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux23~1_combout\ = (\IM_MUX2[0]~input_o\ & ((\ir_register|Q\(8)) # ((\IM_MUX2[1]~input_o\)))) # (!\IM_MUX2[0]~input_o\ & (((\B_register|Q\(8) & !\IM_MUX2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(8),
	datab => \B_register|Q\(8),
	datac => \IM_MUX2[0]~input_o\,
	datad => \IM_MUX2[1]~input_o\,
	combout => \im_mux2_component|Mux23~1_combout\);

-- Location: LCCOMB_X41_Y33_N6
\im_mux2_component|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux23~2_combout\ = (\im_mux2_component|Mux23~1_combout\) # ((\alu_component|mux1|Mux8~11_combout\ & (!\IM_MUX2[0]~input_o\ & \IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux8~11_combout\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \im_mux2_component|Mux23~1_combout\,
	combout => \im_mux2_component|Mux23~2_combout\);

-- Location: LCCOMB_X45_Y33_N16
\alu_component|mux1|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux8~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \A_register|Q\(8),
	combout => \alu_component|mux1|Mux8~8_combout\);

-- Location: LCCOMB_X45_Y33_N26
\alu_component|mux1|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux8~9_combout\ = (\im_mux2_component|Mux23~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux8~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux8~8_combout\))))) # 
-- (!\im_mux2_component|Mux23~2_combout\ & (\alu_component|mux1|Mux8~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux2_component|Mux23~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux8~8_combout\,
	combout => \alu_component|mux1|Mux8~9_combout\);

-- Location: LCCOMB_X41_Y33_N0
\alu_component|negMux|f[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[7]~40_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux24~2_combout\,
	combout => \alu_component|negMux|f[7]~40_combout\);

-- Location: LCCOMB_X41_Y33_N2
\alu_component|adder1|s2|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s2|p4|cout~0_combout\ = (\alu_component|adder1|s2|p3|cout~0_combout\ & ((\alu_component|negMux|f[7]~40_combout\) # ((\A_register|Q\(7) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s2|p3|cout~0_combout\ & (\A_register|Q\(7) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[7]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(7),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s2|p3|cout~0_combout\,
	datad => \alu_component|negMux|f[7]~40_combout\,
	combout => \alu_component|adder1|s2|p4|cout~0_combout\);

-- Location: LCCOMB_X41_Y33_N4
\alu_component|mux1|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux8~10_combout\ = \alu_component|mux1|Mux8~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s2|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux8~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s2|p4|cout~0_combout\,
	combout => \alu_component|mux1|Mux8~10_combout\);

-- Location: LCCOMB_X42_Y33_N30
\B_multiplexer|f[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[9]~11_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(9))) # (!\B_MUX~input_o\ & ((\mux_data|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \ir_register|Q\(9),
	datac => \mux_data|Mux22~3_combout\,
	combout => \B_multiplexer|f[9]~11_combout\);

-- Location: FF_X42_Y33_N31
\B_register|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[9]~11_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(9));

-- Location: LCCOMB_X42_Y33_N4
\im_mux2_component|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux22~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(9))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \ir_register|Q\(9),
	datac => \IM_MUX2[1]~input_o\,
	datad => \B_register|Q\(9),
	combout => \im_mux2_component|Mux22~1_combout\);

-- Location: LCCOMB_X41_Y33_N20
\im_mux2_component|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux22~2_combout\ = (\im_mux2_component|Mux22~1_combout\) # ((\alu_component|mux1|Mux9~11_combout\ & (!\IM_MUX2[0]~input_o\ & \IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux9~11_combout\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \im_mux2_component|Mux22~1_combout\,
	combout => \im_mux2_component|Mux22~2_combout\);

-- Location: LCCOMB_X41_Y33_N24
\alu_component|mux1|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux9~8_combout\ = (\A_register|Q\(9) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(9),
	datac => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux9~8_combout\);

-- Location: LCCOMB_X41_Y33_N30
\alu_component|mux1|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux9~9_combout\ = (\im_mux2_component|Mux22~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux9~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux9~8_combout\))))) # 
-- (!\im_mux2_component|Mux22~2_combout\ & (\alu_component|mux1|Mux9~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux2_component|Mux22~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux9~8_combout\,
	combout => \alu_component|mux1|Mux9~9_combout\);

-- Location: LCCOMB_X41_Y33_N28
\alu_component|negMux|f[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[8]~41_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux23~2_combout\,
	combout => \alu_component|negMux|f[8]~41_combout\);

-- Location: LCCOMB_X41_Y33_N18
\alu_component|adder1|s3|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s3|p1|cout~0_combout\ = (\alu_component|adder1|s2|p4|cout~0_combout\ & ((\alu_component|negMux|f[8]~41_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(8))))) # (!\alu_component|adder1|s2|p4|cout~0_combout\ & (!\IM_MUX1~input_o\ & 
-- (\A_register|Q\(8) & \alu_component|negMux|f[8]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(8),
	datac => \alu_component|adder1|s2|p4|cout~0_combout\,
	datad => \alu_component|negMux|f[8]~41_combout\,
	combout => \alu_component|adder1|s3|p1|cout~0_combout\);

-- Location: LCCOMB_X41_Y33_N8
\alu_component|mux1|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux9~10_combout\ = \alu_component|mux1|Mux9~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s3|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux9~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s3|p1|cout~0_combout\,
	combout => \alu_component|mux1|Mux9~10_combout\);

-- Location: LCCOMB_X38_Y33_N2
\B_multiplexer|f[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[10]~12_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(10))) # (!\B_MUX~input_o\ & ((\mux_data|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datac => \ir_register|Q\(10),
	datad => \mux_data|Mux21~3_combout\,
	combout => \B_multiplexer|f[10]~12_combout\);

-- Location: FF_X38_Y33_N3
\B_register|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[10]~12_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(10));

-- Location: LCCOMB_X38_Y33_N30
\im_mux2_component|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux21~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(10))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \ir_register|Q\(10),
	datad => \B_register|Q\(10),
	combout => \im_mux2_component|Mux21~1_combout\);

-- Location: LCCOMB_X40_Y33_N10
\im_mux2_component|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux21~2_combout\ = (\im_mux2_component|Mux21~1_combout\) # ((\alu_component|mux1|Mux10~11_combout\ & (\IM_MUX2[1]~input_o\ & !\IM_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux10~11_combout\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \im_mux2_component|Mux21~1_combout\,
	combout => \im_mux2_component|Mux21~2_combout\);

-- Location: LCCOMB_X40_Y33_N14
\alu_component|mux1|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux10~8_combout\ = (\A_register|Q\(10) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(10),
	datac => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux10~8_combout\);

-- Location: LCCOMB_X40_Y33_N8
\alu_component|mux1|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux10~9_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux21~2_combout\ $ ((\alu_component|mux1|Mux10~8_combout\)))) # (!\ALU_Op[1]~input_o\ & ((\im_mux2_component|Mux21~2_combout\ & ((\alu_component|mux1|Mux10~8_combout\) # 
-- (\ALU_Op[0]~input_o\))) # (!\im_mux2_component|Mux21~2_combout\ & (\alu_component|mux1|Mux10~8_combout\ & \ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \im_mux2_component|Mux21~2_combout\,
	datac => \alu_component|mux1|Mux10~8_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux10~9_combout\);

-- Location: LCCOMB_X41_Y33_N12
\alu_component|negMux|f[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[9]~42_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux22~2_combout\,
	combout => \alu_component|negMux|f[9]~42_combout\);

-- Location: LCCOMB_X41_Y33_N10
\alu_component|adder1|s3|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s3|p2|cout~0_combout\ = (\alu_component|adder1|s3|p1|cout~0_combout\ & ((\alu_component|negMux|f[9]~42_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(9))))) # (!\alu_component|adder1|s3|p1|cout~0_combout\ & (!\IM_MUX1~input_o\ & 
-- (\A_register|Q\(9) & \alu_component|negMux|f[9]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(9),
	datac => \alu_component|adder1|s3|p1|cout~0_combout\,
	datad => \alu_component|negMux|f[9]~42_combout\,
	combout => \alu_component|adder1|s3|p2|cout~0_combout\);

-- Location: LCCOMB_X41_Y33_N14
\alu_component|mux1|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux10~10_combout\ = \alu_component|mux1|Mux10~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s3|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux10~9_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s3|p2|cout~0_combout\,
	combout => \alu_component|mux1|Mux10~10_combout\);

-- Location: LCCOMB_X38_Y33_N28
\B_multiplexer|f[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[11]~13_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(11))) # (!\B_MUX~input_o\ & ((\mux_data|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(11),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux20~3_combout\,
	combout => \B_multiplexer|f[11]~13_combout\);

-- Location: FF_X38_Y33_N29
\B_register|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[11]~13_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(11));

-- Location: LCCOMB_X38_Y33_N4
\im_mux2_component|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux20~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(11))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \ir_register|Q\(11),
	datad => \B_register|Q\(11),
	combout => \im_mux2_component|Mux20~1_combout\);

-- Location: LCCOMB_X39_Y33_N18
\im_mux2_component|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux20~2_combout\ = (\im_mux2_component|Mux20~1_combout\) # ((\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & \alu_component|mux1|Mux11~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \im_mux2_component|Mux20~1_combout\,
	datad => \alu_component|mux1|Mux11~11_combout\,
	combout => \im_mux2_component|Mux20~2_combout\);

-- Location: LCCOMB_X36_Y33_N0
\alu_component|mux1|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux11~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(11),
	combout => \alu_component|mux1|Mux11~8_combout\);

-- Location: LCCOMB_X36_Y33_N22
\alu_component|mux1|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux11~9_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux20~2_combout\ $ (((\alu_component|mux1|Mux11~8_combout\))))) # (!\ALU_Op[1]~input_o\ & ((\im_mux2_component|Mux20~2_combout\ & ((\ALU_Op[0]~input_o\) # 
-- (\alu_component|mux1|Mux11~8_combout\))) # (!\im_mux2_component|Mux20~2_combout\ & (\ALU_Op[0]~input_o\ & \alu_component|mux1|Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \im_mux2_component|Mux20~2_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \alu_component|mux1|Mux11~8_combout\,
	combout => \alu_component|mux1|Mux11~9_combout\);

-- Location: LCCOMB_X40_Y33_N2
\alu_component|negMux|f[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[10]~43_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux21~2_combout\,
	combout => \alu_component|negMux|f[10]~43_combout\);

-- Location: LCCOMB_X40_Y33_N20
\alu_component|adder1|s3|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s3|p3|cout~0_combout\ = (\alu_component|adder1|s3|p2|cout~0_combout\ & ((\alu_component|negMux|f[10]~43_combout\) # ((\A_register|Q\(10) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s3|p2|cout~0_combout\ & (\A_register|Q\(10) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[10]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(10),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s3|p2|cout~0_combout\,
	datad => \alu_component|negMux|f[10]~43_combout\,
	combout => \alu_component|adder1|s3|p3|cout~0_combout\);

-- Location: LCCOMB_X40_Y33_N26
\alu_component|mux1|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux11~10_combout\ = \alu_component|mux1|Mux11~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s3|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|mux1|Mux11~9_combout\,
	datad => \alu_component|adder1|s3|p3|cout~0_combout\,
	combout => \alu_component|mux1|Mux11~10_combout\);

-- Location: LCCOMB_X38_Y33_N14
\B_multiplexer|f[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[12]~14_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(12))) # (!\B_MUX~input_o\ & ((\mux_data|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(12),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux19~3_combout\,
	combout => \B_multiplexer|f[12]~14_combout\);

-- Location: FF_X38_Y33_N15
\B_register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[12]~14_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(12));

-- Location: LCCOMB_X38_Y33_N22
\im_mux2_component|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux19~1_combout\ = (\IM_MUX2[1]~input_o\ & (\IM_MUX2[0]~input_o\)) # (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & ((\ir_register|Q\(12)))) # (!\IM_MUX2[0]~input_o\ & (\B_register|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(12),
	datad => \ir_register|Q\(12),
	combout => \im_mux2_component|Mux19~1_combout\);

-- Location: LCCOMB_X39_Y33_N24
\im_mux2_component|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux19~2_combout\ = (\im_mux2_component|Mux19~1_combout\) # ((\alu_component|mux1|Mux12~11_combout\ & (!\IM_MUX2[0]~input_o\ & \IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux12~11_combout\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \im_mux2_component|Mux19~1_combout\,
	combout => \im_mux2_component|Mux19~2_combout\);

-- Location: LCCOMB_X40_Y33_N6
\alu_component|mux1|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux12~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \A_register|Q\(12),
	combout => \alu_component|mux1|Mux12~8_combout\);

-- Location: LCCOMB_X40_Y33_N4
\alu_component|mux1|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux12~9_combout\ = (\im_mux2_component|Mux19~2_combout\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux12~8_combout\))) # (!\ALU_Op[1]~input_o\ & ((\ALU_Op[0]~input_o\) # (\alu_component|mux1|Mux12~8_combout\))))) # 
-- (!\im_mux2_component|Mux19~2_combout\ & (\alu_component|mux1|Mux12~8_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux2_component|Mux19~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux12~8_combout\,
	combout => \alu_component|mux1|Mux12~9_combout\);

-- Location: LCCOMB_X39_Y33_N12
\alu_component|negMux|f[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[11]~44_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux20~2_combout\,
	combout => \alu_component|negMux|f[11]~44_combout\);

-- Location: LCCOMB_X39_Y33_N14
\alu_component|adder1|s3|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s3|p4|cout~0_combout\ = (\alu_component|adder1|s3|p3|cout~0_combout\ & ((\alu_component|negMux|f[11]~44_combout\) # ((\A_register|Q\(11) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s3|p3|cout~0_combout\ & (\A_register|Q\(11) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[11]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(11),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s3|p3|cout~0_combout\,
	datad => \alu_component|negMux|f[11]~44_combout\,
	combout => \alu_component|adder1|s3|p4|cout~0_combout\);

-- Location: LCCOMB_X39_Y33_N8
\alu_component|mux1|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux12~10_combout\ = \alu_component|mux1|Mux12~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s3|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux12~9_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|adder1|s3|p4|cout~0_combout\,
	combout => \alu_component|mux1|Mux12~10_combout\);

-- Location: LCCOMB_X40_Y33_N12
\B_multiplexer|f[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[13]~15_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(13))) # (!\B_MUX~input_o\ & ((\mux_data|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(13),
	datac => \mux_data|Mux18~3_combout\,
	datad => \B_MUX~input_o\,
	combout => \B_multiplexer|f[13]~15_combout\);

-- Location: FF_X40_Y33_N13
\B_register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[13]~15_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(13));

-- Location: LCCOMB_X40_Y33_N16
\im_mux2_component|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux18~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(13))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \ir_register|Q\(13),
	datad => \B_register|Q\(13),
	combout => \im_mux2_component|Mux18~1_combout\);

-- Location: LCCOMB_X39_Y33_N6
\im_mux2_component|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux18~2_combout\ = (\im_mux2_component|Mux18~1_combout\) # ((\alu_component|mux1|Mux13~11_combout\ & (\IM_MUX2[1]~input_o\ & !\IM_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux13~11_combout\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \im_mux2_component|Mux18~1_combout\,
	combout => \im_mux2_component|Mux18~2_combout\);

-- Location: LCCOMB_X36_Y33_N6
\alu_component|mux1|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux13~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(13),
	combout => \alu_component|mux1|Mux13~8_combout\);

-- Location: LCCOMB_X36_Y33_N24
\alu_component|mux1|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux13~9_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux18~2_combout\ $ (((\alu_component|mux1|Mux13~8_combout\))))) # (!\ALU_Op[1]~input_o\ & ((\im_mux2_component|Mux18~2_combout\ & ((\ALU_Op[0]~input_o\) # 
-- (\alu_component|mux1|Mux13~8_combout\))) # (!\im_mux2_component|Mux18~2_combout\ & (\ALU_Op[0]~input_o\ & \alu_component|mux1|Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \im_mux2_component|Mux18~2_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \alu_component|mux1|Mux13~8_combout\,
	combout => \alu_component|mux1|Mux13~9_combout\);

-- Location: LCCOMB_X39_Y33_N16
\alu_component|negMux|f[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[12]~45_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux19~2_combout\,
	combout => \alu_component|negMux|f[12]~45_combout\);

-- Location: LCCOMB_X39_Y33_N2
\alu_component|adder1|s4|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s4|p1|cout~0_combout\ = (\alu_component|adder1|s3|p4|cout~0_combout\ & ((\alu_component|negMux|f[12]~45_combout\) # ((\A_register|Q\(12) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s3|p4|cout~0_combout\ & (\A_register|Q\(12) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[12]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(12),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s3|p4|cout~0_combout\,
	datad => \alu_component|negMux|f[12]~45_combout\,
	combout => \alu_component|adder1|s4|p1|cout~0_combout\);

-- Location: LCCOMB_X39_Y33_N22
\alu_component|mux1|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux13~10_combout\ = \alu_component|mux1|Mux13~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s4|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux13~9_combout\,
	datad => \alu_component|adder1|s4|p1|cout~0_combout\,
	combout => \alu_component|mux1|Mux13~10_combout\);

-- Location: LCCOMB_X43_Y30_N4
\alu_component|mux1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux15~2_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(15),
	combout => \alu_component|mux1|Mux15~2_combout\);

-- Location: LCCOMB_X43_Y30_N0
\B_multiplexer|f[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[15]~17_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(15))) # (!\B_MUX~input_o\ & ((\mux_data|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(15),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux16~3_combout\,
	combout => \B_multiplexer|f[15]~17_combout\);

-- Location: FF_X43_Y30_N1
\B_register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[15]~17_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(15));

-- Location: LCCOMB_X43_Y30_N8
\im_mux2_component|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux16~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(15))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \ir_register|Q\(15),
	datad => \B_register|Q\(15),
	combout => \im_mux2_component|Mux16~1_combout\);

-- Location: LCCOMB_X40_Y30_N24
\im_mux2_component|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux16~2_combout\ = (\im_mux2_component|Mux16~1_combout\) # ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux15~5_combout\ & !\IM_MUX2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux15~5_combout\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \im_mux2_component|Mux16~1_combout\,
	combout => \im_mux2_component|Mux16~2_combout\);

-- Location: LCCOMB_X41_Y30_N12
\alu_component|mux1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux15~3_combout\ = (\alu_component|mux1|Mux15~2_combout\ & ((\im_mux2_component|Mux16~2_combout\ & ((!\ALU_Op[1]~input_o\))) # (!\im_mux2_component|Mux16~2_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))) # 
-- (!\alu_component|mux1|Mux15~2_combout\ & (\im_mux2_component|Mux16~2_combout\ & ((\ALU_Op[0]~input_o\) # (\ALU_Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux15~2_combout\,
	datab => \im_mux2_component|Mux16~2_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \ALU_Op[1]~input_o\,
	combout => \alu_component|mux1|Mux15~3_combout\);

-- Location: LCCOMB_X39_Y33_N20
\alu_component|negMux|f[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[13]~46_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux18~2_combout\,
	combout => \alu_component|negMux|f[13]~46_combout\);

-- Location: LCCOMB_X39_Y33_N10
\alu_component|adder1|s4|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s4|p2|cout~0_combout\ = (\alu_component|adder1|s4|p1|cout~0_combout\ & ((\alu_component|negMux|f[13]~46_combout\) # ((\A_register|Q\(13) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s4|p1|cout~0_combout\ & (\A_register|Q\(13) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[13]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(13),
	datab => \IM_MUX1~input_o\,
	datac => \alu_component|adder1|s4|p1|cout~0_combout\,
	datad => \alu_component|negMux|f[13]~46_combout\,
	combout => \alu_component|adder1|s4|p2|cout~0_combout\);

-- Location: LCCOMB_X40_Y30_N28
\B_multiplexer|f[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[14]~16_combout\ = (\B_MUX~input_o\ & (\ir_register|Q\(14))) # (!\B_MUX~input_o\ & ((\mux_data|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(14),
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux17~3_combout\,
	combout => \B_multiplexer|f[14]~16_combout\);

-- Location: FF_X40_Y30_N29
\B_register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[14]~16_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(14));

-- Location: LCCOMB_X40_Y30_N8
\im_mux2_component|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux17~1_combout\ = (!\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\ & (\ir_register|Q\(14))) # (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \ir_register|Q\(14),
	datac => \IM_MUX2[1]~input_o\,
	datad => \B_register|Q\(14),
	combout => \im_mux2_component|Mux17~1_combout\);

-- Location: LCCOMB_X40_Y30_N2
\im_mux2_component|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux17~2_combout\ = (\im_mux2_component|Mux17~1_combout\) # ((!\IM_MUX2[0]~input_o\ & (\alu_component|mux1|Mux14~11_combout\ & \IM_MUX2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \alu_component|mux1|Mux14~11_combout\,
	datac => \im_mux2_component|Mux17~1_combout\,
	datad => \IM_MUX2[1]~input_o\,
	combout => \im_mux2_component|Mux17~2_combout\);

-- Location: LCCOMB_X40_Y30_N12
\alu_component|negMux|f[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[14]~47_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux17~2_combout\,
	combout => \alu_component|negMux|f[14]~47_combout\);

-- Location: LCCOMB_X40_Y30_N18
\alu_component|adder1|s4|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s4|p3|cout~0_combout\ = (\alu_component|adder1|s4|p2|cout~0_combout\ & ((\alu_component|negMux|f[14]~47_combout\) # ((!\IM_MUX1~input_o\ & \A_register|Q\(14))))) # (!\alu_component|adder1|s4|p2|cout~0_combout\ & (!\IM_MUX1~input_o\ & 
-- (\A_register|Q\(14) & \alu_component|negMux|f[14]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(14),
	datac => \alu_component|adder1|s4|p2|cout~0_combout\,
	datad => \alu_component|negMux|f[14]~47_combout\,
	combout => \alu_component|adder1|s4|p3|cout~0_combout\);

-- Location: LCCOMB_X40_Y30_N26
\alu_component|mux1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux15~4_combout\ = \alu_component|mux1|Mux15~3_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s4|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux15~3_combout\,
	datad => \alu_component|adder1|s4|p3|cout~0_combout\,
	combout => \alu_component|mux1|Mux15~4_combout\);

-- Location: LCCOMB_X36_Y32_N6
\mux_data|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux31~2_combout\ = (!\DATA_Mux[0]~input_o\ & \DATA_Mux[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	combout => \mux_data|Mux31~2_combout\);

-- Location: IOIBUF_X54_Y73_N8
\DATA_IN[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(16),
	o => \DATA_IN[16]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\mClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mClk,
	o => \mClk~input_o\);

-- Location: CLKCTRL_G4
\mClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mClk~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y0_N1
\WEN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WEN,
	o => \WEN~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X41_Y31_N18
\Data_Memory_Module|data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out[0]~0_combout\ = (\WEN~input_o\) # (!\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WEN~input_o\,
	datad => \EN~input_o\,
	combout => \Data_Memory_Module|data_out[0]~0_combout\);

-- Location: LCCOMB_X38_Y32_N26
\Data_Memory_Module|Memory~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~41feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Data_Memory_Module|Memory~41feeder_combout\);

-- Location: IOIBUF_X0_Y36_N22
\Clr_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_IR,
	o => \Clr_IR~input_o\);

-- Location: CLKCTRL_G3
\Clr_IR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_IR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_IR~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y29_N22
\Ld_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_IR,
	o => \Ld_IR~input_o\);

-- Location: FF_X38_Y32_N27
\Data_Memory_Module|Memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~41feeder_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~41_q\);

-- Location: LCCOMB_X41_Y31_N12
\Data_Memory_Module|Memory~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~74_combout\ = (\WEN~input_o\ & \EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WEN~input_o\,
	datad => \EN~input_o\,
	combout => \Data_Memory_Module|Memory~74_combout\);

-- Location: IOIBUF_X0_Y35_N15
\REG_Mux~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_Mux,
	o => \REG_Mux~input_o\);

-- Location: LCCOMB_X39_Y32_N6
\Data_memory_multiplexer|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[0]~0_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(0))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(0),
	datab => \REG_Mux~input_o\,
	datad => \A_register|Q\(0),
	combout => \Data_memory_multiplexer|f[0]~0_combout\);

-- Location: LCCOMB_X39_Y32_N24
\Data_memory_multiplexer|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[1]~1_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(1)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(1),
	datab => \REG_Mux~input_o\,
	datad => \B_register|Q\(1),
	combout => \Data_memory_multiplexer|f[1]~1_combout\);

-- Location: LCCOMB_X39_Y32_N12
\Data_memory_multiplexer|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[2]~2_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(2)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~input_o\,
	datac => \A_register|Q\(2),
	datad => \B_register|Q\(2),
	combout => \Data_memory_multiplexer|f[2]~2_combout\);

-- Location: LCCOMB_X39_Y32_N30
\Data_memory_multiplexer|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[3]~3_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(3))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(3),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(3),
	combout => \Data_memory_multiplexer|f[3]~3_combout\);

-- Location: LCCOMB_X39_Y32_N4
\Data_memory_multiplexer|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[4]~4_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(4)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(4),
	datab => \REG_Mux~input_o\,
	datad => \B_register|Q\(4),
	combout => \Data_memory_multiplexer|f[4]~4_combout\);

-- Location: LCCOMB_X42_Y33_N28
\Data_memory_multiplexer|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[5]~5_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(5)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(5),
	datab => \REG_Mux~input_o\,
	datad => \B_register|Q\(5),
	combout => \Data_memory_multiplexer|f[5]~5_combout\);

-- Location: LCCOMB_X41_Y31_N8
\Data_memory_multiplexer|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[6]~6_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(6))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(6),
	datab => \A_register|Q\(6),
	datad => \REG_Mux~input_o\,
	combout => \Data_memory_multiplexer|f[6]~6_combout\);

-- Location: LCCOMB_X41_Y31_N14
\Data_memory_multiplexer|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[7]~7_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(7))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datab => \B_register|Q\(7),
	datad => \A_register|Q\(7),
	combout => \Data_memory_multiplexer|f[7]~7_combout\);

-- Location: LCCOMB_X45_Y33_N14
\Data_memory_multiplexer|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[8]~8_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(8)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(8),
	datab => \REG_Mux~input_o\,
	datad => \B_register|Q\(8),
	combout => \Data_memory_multiplexer|f[8]~8_combout\);

-- Location: LCCOMB_X39_Y31_N4
\Data_memory_multiplexer|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[9]~9_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(9)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datab => \A_register|Q\(9),
	datad => \B_register|Q\(9),
	combout => \Data_memory_multiplexer|f[9]~9_combout\);

-- Location: LCCOMB_X45_Y33_N12
\Data_memory_multiplexer|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[10]~10_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(10))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~input_o\,
	datac => \B_register|Q\(10),
	datad => \A_register|Q\(10),
	combout => \Data_memory_multiplexer|f[10]~10_combout\);

-- Location: LCCOMB_X36_Y33_N10
\Data_memory_multiplexer|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[11]~11_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(11))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~input_o\,
	datac => \B_register|Q\(11),
	datad => \A_register|Q\(11),
	combout => \Data_memory_multiplexer|f[11]~11_combout\);

-- Location: LCCOMB_X39_Y33_N28
\Data_memory_multiplexer|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[12]~12_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(12)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(12),
	datac => \REG_Mux~input_o\,
	datad => \B_register|Q\(12),
	combout => \Data_memory_multiplexer|f[12]~12_combout\);

-- Location: LCCOMB_X36_Y33_N4
\Data_memory_multiplexer|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[13]~13_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(13))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(13),
	datab => \REG_Mux~input_o\,
	datad => \A_register|Q\(13),
	combout => \Data_memory_multiplexer|f[13]~13_combout\);

-- Location: LCCOMB_X41_Y30_N22
\Data_memory_multiplexer|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[14]~14_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(14)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datab => \A_register|Q\(14),
	datad => \B_register|Q\(14),
	combout => \Data_memory_multiplexer|f[14]~14_combout\);

-- Location: LCCOMB_X43_Y30_N28
\Data_memory_multiplexer|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[15]~15_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(15)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(15),
	datac => \REG_Mux~input_o\,
	datad => \B_register|Q\(15),
	combout => \Data_memory_multiplexer|f[15]~15_combout\);

-- Location: LCCOMB_X42_Y30_N30
\A_multiplexer|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[16]~16_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux15~3_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \A_MUX~input_o\,
	datac => \alu_component|mux1|Mux16~3_combout\,
	datad => \mux_data|Mux15~3_combout\,
	combout => \A_multiplexer|f[16]~16_combout\);

-- Location: IOIBUF_X58_Y0_N15
\Clr_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_A,
	o => \Clr_A~input_o\);

-- Location: CLKCTRL_G19
\Clr_A~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_A~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_A~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N15
\Ld_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_A,
	o => \Ld_A~input_o\);

-- Location: FF_X42_Y30_N31
\A_register|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[16]~16_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(16));

-- Location: LCCOMB_X43_Y30_N14
\Data_memory_multiplexer|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[16]~16_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(16)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datab => \A_register|Q\(16),
	datad => \B_register|Q\(16),
	combout => \Data_memory_multiplexer|f[16]~16_combout\);

-- Location: IOIBUF_X0_Y48_N8
\DATA_IN[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(17),
	o => \DATA_IN[17]~input_o\);

-- Location: LCCOMB_X39_Y30_N12
\im_mux2_component|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux13~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux18~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux18~3_combout\,
	datab => \B_register|Q\(18),
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX2[0]~input_o\,
	combout => \im_mux2_component|Mux13~1_combout\);

-- Location: IOIBUF_X47_Y0_N1
\DATA_IN[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(18),
	o => \DATA_IN[18]~input_o\);

-- Location: LCCOMB_X41_Y32_N30
\Data_Memory_Module|Memory~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~75_combout\ = (!\ir_register|Q\(1) & (\Data_Memory_Module|Memory~74_combout\ & (!\ir_register|Q\(7) & !\ir_register|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(1),
	datab => \Data_Memory_Module|Memory~74_combout\,
	datac => \ir_register|Q\(7),
	datad => \ir_register|Q\(0),
	combout => \Data_Memory_Module|Memory~75_combout\);

-- Location: LCCOMB_X41_Y32_N24
\Data_Memory_Module|Memory~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~76_combout\ = (!\ir_register|Q\(5) & (!\ir_register|Q\(6) & !\ir_register|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(5),
	datab => \ir_register|Q\(6),
	datad => \ir_register|Q\(3),
	combout => \Data_Memory_Module|Memory~76_combout\);

-- Location: LCCOMB_X41_Y32_N16
\Data_Memory_Module|Memory~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~77_combout\ = (!\ir_register|Q\(2) & (!\ir_register|Q\(4) & (\Data_Memory_Module|Memory~75_combout\ & \Data_Memory_Module|Memory~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(2),
	datab => \ir_register|Q\(4),
	datac => \Data_Memory_Module|Memory~75_combout\,
	datad => \Data_Memory_Module|Memory~76_combout\,
	combout => \Data_Memory_Module|Memory~77_combout\);

-- Location: FF_X41_Y30_N23
\Data_Memory_Module|Memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[18]~18_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~60_q\);

-- Location: IOIBUF_X29_Y0_N15
\DATA_IN[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(19),
	o => \DATA_IN[19]~input_o\);

-- Location: LCCOMB_X38_Y30_N12
\im_mux2_component|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux11~1_combout\ = (\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\) # ((\alu_component|mux1|Mux20~3_combout\)))) # (!\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & ((\B_register|Q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux20~3_combout\,
	datad => \B_register|Q\(20),
	combout => \im_mux2_component|Mux11~1_combout\);

-- Location: LCCOMB_X36_Y30_N22
\mux_data|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux12~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(19)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[19]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(19),
	combout => \mux_data|Mux12~2_combout\);

-- Location: LCCOMB_X34_Y30_N24
\mux_data|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux12~4_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux19~3_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux19~3_combout\,
	datad => \mux_data|Mux12~2_combout\,
	combout => \mux_data|Mux12~4_combout\);

-- Location: FF_X34_Y30_N25
\ir_register|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux12~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(19));

-- Location: LCCOMB_X41_Y30_N14
\im_mux1_component|f[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[19]~11_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(19)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(19),
	datab => \ir_register|Q\(19),
	datac => \IM_MUX1~input_o\,
	combout => \im_mux1_component|f[19]~11_combout\);

-- Location: IOIBUF_X67_Y0_N8
\DATA_IN[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(21),
	o => \DATA_IN[21]~input_o\);

-- Location: LCCOMB_X38_Y30_N26
\A_multiplexer|f[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[21]~22_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(21)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[21]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(21),
	combout => \A_multiplexer|f[21]~22_combout\);

-- Location: LCCOMB_X35_Y30_N30
\A_multiplexer|f[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[21]~23_combout\ = (!\A_MUX~input_o\ & ((\A_multiplexer|f[21]~22_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \alu_component|mux1|Mux21~3_combout\,
	datad => \A_multiplexer|f[21]~22_combout\,
	combout => \A_multiplexer|f[21]~23_combout\);

-- Location: FF_X35_Y30_N31
\A_register|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[21]~23_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(21));

-- Location: LCCOMB_X35_Y30_N6
\Data_memory_multiplexer|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[21]~21_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(21)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(21),
	datab => \REG_Mux~input_o\,
	datac => \B_register|Q\(21),
	combout => \Data_memory_multiplexer|f[21]~21_combout\);

-- Location: LCCOMB_X35_Y31_N0
\im_mux2_component|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux9~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux22~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \alu_component|mux1|Mux22~3_combout\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \B_register|Q\(22),
	combout => \im_mux2_component|Mux9~1_combout\);

-- Location: IOIBUF_X115_Y31_N1
\DATA_IN[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(22),
	o => \DATA_IN[22]~input_o\);

-- Location: FF_X35_Y31_N23
\Data_Memory_Module|Memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[22]~22_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~64_q\);

-- Location: LCCOMB_X35_Y31_N18
\im_mux2_component|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux8~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & ((\alu_component|mux1|Mux23~3_combout\))) # (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \B_register|Q\(23),
	datac => \alu_component|mux1|Mux23~3_combout\,
	datad => \IM_MUX2[1]~input_o\,
	combout => \im_mux2_component|Mux8~1_combout\);

-- Location: IOIBUF_X35_Y0_N15
\DATA_IN[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(24),
	o => \DATA_IN[24]~input_o\);

-- Location: LCCOMB_X36_Y30_N10
\mux_data|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux7~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(24)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[24]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(24),
	combout => \mux_data|Mux7~2_combout\);

-- Location: LCCOMB_X35_Y30_N16
\A_multiplexer|f[24]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[24]~26_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux7~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \mux_data|Mux7~2_combout\,
	datad => \alu_component|mux1|Mux24~4_combout\,
	combout => \A_multiplexer|f[24]~26_combout\);

-- Location: FF_X35_Y30_N17
\A_register|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[24]~26_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(24));

-- Location: LCCOMB_X35_Y30_N4
\Data_memory_multiplexer|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[24]~24_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(24))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~input_o\,
	datac => \B_register|Q\(24),
	datad => \A_register|Q\(24),
	combout => \Data_memory_multiplexer|f[24]~24_combout\);

-- Location: IOIBUF_X52_Y0_N8
\DATA_IN[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(25),
	o => \DATA_IN[25]~input_o\);

-- Location: FF_X41_Y31_N5
\Data_Memory_Module|Memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[25]~25_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~67_q\);

-- Location: IOIBUF_X0_Y52_N15
\DATA_IN[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(26),
	o => \DATA_IN[26]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\DATA_IN[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(27),
	o => \DATA_IN[27]~input_o\);

-- Location: LCCOMB_X40_Y32_N4
\alu_component|mux1|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~5_combout\ = (!\ALU_Op[1]~input_o\ & \alu_component|mux1|Mux28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux28~3_combout\,
	combout => \alu_component|mux1|Mux28~5_combout\);

-- Location: IOIBUF_X20_Y0_N1
\DATA_IN[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(28),
	o => \DATA_IN[28]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\DATA_IN[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(30),
	o => \DATA_IN[30]~input_o\);

-- Location: LCCOMB_X40_Y31_N6
\B_multiplexer|f[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[30]~36_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux1~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \alu_component|mux1|Mux30~3_combout\,
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux1~2_combout\,
	combout => \B_multiplexer|f[30]~36_combout\);

-- Location: FF_X40_Y31_N7
\B_register|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[30]~36_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(30));

-- Location: LCCOMB_X42_Y31_N2
\im_mux2_component|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux1~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & ((\alu_component|mux1|Mux30~3_combout\))) # (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(30),
	datad => \alu_component|mux1|Mux30~3_combout\,
	combout => \im_mux2_component|Mux1~1_combout\);

-- Location: LCCOMB_X42_Y31_N6
\alu_component|adder1|s8|p3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p3|s~0_combout\ = \im_mux2_component|Mux1~1_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux1_component|f[30]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux1~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[30]~1_combout\,
	combout => \alu_component|adder1|s8|p3|s~0_combout\);

-- Location: IOIBUF_X74_Y0_N1
\DATA_IN[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(31),
	o => \DATA_IN[31]~input_o\);

-- Location: LCCOMB_X42_Y31_N20
\im_mux2_component|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux0~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux31~2_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux31~2_combout\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \B_register|Q\(31),
	combout => \im_mux2_component|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y31_N30
\alu_component|adder1|s8|p4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p4|s~0_combout\ = \im_mux1_component|f[31]~0_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[31]~0_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux0~1_combout\,
	combout => \alu_component|adder1|s8|p4|s~0_combout\);

-- Location: LCCOMB_X42_Y31_N26
\alu_component|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux31~0_combout\ = (!\ALU_Op[2]~input_o\ & ((\im_mux1_component|f[31]~0_combout\ & ((\ALU_Op[0]~input_o\) # (\im_mux2_component|Mux0~1_combout\))) # (!\im_mux1_component|f[31]~0_combout\ & (\ALU_Op[0]~input_o\ & 
-- \im_mux2_component|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[31]~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux0~1_combout\,
	combout => \alu_component|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X42_Y31_N0
\alu_component|mux1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux31~1_combout\ = (\alu_component|mux1|Mux31~0_combout\) # ((\ALU_Op[2]~input_o\ & (\im_mux1_component|f[30]~1_combout\ & !\ALU_Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux31~0_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[30]~1_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux31~1_combout\);

-- Location: LCCOMB_X36_Y32_N4
\A_multiplexer|f[26]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[26]~28_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux5~0_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \mux_data|Mux5~0_combout\,
	datad => \alu_component|mux1|Mux26~3_combout\,
	combout => \A_multiplexer|f[26]~28_combout\);

-- Location: FF_X36_Y32_N5
\A_register|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[26]~28_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(26));

-- Location: LCCOMB_X34_Y31_N14
\alu_component|negMux|f[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[26]~32_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux5~1_combout\,
	combout => \alu_component|negMux|f[26]~32_combout\);

-- Location: LCCOMB_X34_Y31_N26
\alu_component|adder1|s7|p3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p3|s~0_combout\ = \alu_component|negMux|f[26]~32_combout\ $ (((\IM_MUX1~input_o\ & ((\ir_register|Q\(26)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(26),
	datab => \alu_component|negMux|f[26]~32_combout\,
	datac => \IM_MUX1~input_o\,
	datad => \ir_register|Q\(26),
	combout => \alu_component|adder1|s7|p3|s~0_combout\);

-- Location: LCCOMB_X34_Y31_N6
\im_mux2_component|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux6~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux25~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux25~3_combout\,
	datac => \B_register|Q\(25),
	datad => \IM_MUX2[0]~input_o\,
	combout => \im_mux2_component|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y31_N10
\alu_component|adder1|s7|p2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p2|s~0_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux6~1_combout\ $ (\im_mux1_component|f[25]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux2_component|Mux6~1_combout\,
	datad => \im_mux1_component|f[25]~5_combout\,
	combout => \alu_component|adder1|s7|p2|s~0_combout\);

-- Location: LCCOMB_X41_Y31_N26
\mux_data|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux6~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(25)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_IN[25]~input_o\,
	datad => \Data_Memory_Module|data_out\(25),
	combout => \mux_data|Mux6~2_combout\);

-- Location: LCCOMB_X40_Y31_N28
\A_multiplexer|f[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[25]~27_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux6~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \mux_data|Mux6~2_combout\,
	datac => \A_MUX~input_o\,
	datad => \alu_component|mux1|Mux25~3_combout\,
	combout => \A_multiplexer|f[25]~27_combout\);

-- Location: FF_X40_Y31_N29
\A_register|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[25]~27_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(25));

-- Location: LCCOMB_X34_Y30_N26
\alu_component|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux25~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(25))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(25),
	datad => \A_register|Q\(25),
	combout => \alu_component|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X36_Y31_N0
\alu_component|mux1|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux25~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & (\im_mux1_component|f[26]~4_combout\)) # (!\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[24]~16_combout\))))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[26]~4_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[24]~16_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux25~1_combout\);

-- Location: LCCOMB_X36_Y31_N14
\alu_component|mux1|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux25~2_combout\ = (\im_mux2_component|Mux6~1_combout\ & ((\alu_component|mux1|Mux25~1_combout\) # ((\alu_component|mux1|Mux25~0_combout\ & !\ALU_Op[2]~input_o\)))) # (!\im_mux2_component|Mux6~1_combout\ & 
-- (\alu_component|mux1|Mux25~1_combout\ & ((\alu_component|mux1|Mux25~0_combout\) # (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux6~1_combout\,
	datab => \alu_component|mux1|Mux25~0_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux25~1_combout\,
	combout => \alu_component|mux1|Mux25~2_combout\);

-- Location: IOIBUF_X35_Y73_N22
\DATA_IN[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(20),
	o => \DATA_IN[20]~input_o\);

-- Location: M9K_X37_Y31_N0
\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "data_mem:Data_Memory_Module|altsyncram:Memory_rtl_0|altsyncram_hie1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Data_Memory_Module|Memory~74_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_Ld_IR~input_o\,
	clk0 => \ALT_INV_mClk~inputclkctrl_outclk\,
	clk1 => \Clk~inputclkctrl_outclk\,
	ena0 => \Data_Memory_Module|Memory~74_combout\,
	portadatain => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X35_Y32_N24
\Data_Memory_Module|Memory~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~62feeder_combout\ = \Data_memory_multiplexer|f[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_memory_multiplexer|f[20]~20_combout\,
	combout => \Data_Memory_Module|Memory~62feeder_combout\);

-- Location: FF_X35_Y32_N25
\Data_Memory_Module|Memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~62feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~62_q\);

-- Location: LCCOMB_X36_Y32_N12
\Data_Memory_Module|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~21_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a20\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~62_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a20\,
	datad => \Data_Memory_Module|Memory~62_q\,
	combout => \Data_Memory_Module|data_out~21_combout\);

-- Location: FF_X36_Y32_N13
\Data_Memory_Module|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(20));

-- Location: LCCOMB_X36_Y32_N2
\A_multiplexer|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[20]~20_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(20)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[20]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(20),
	combout => \A_multiplexer|f[20]~20_combout\);

-- Location: LCCOMB_X36_Y32_N26
\A_multiplexer|f[20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[20]~21_combout\ = (!\A_MUX~input_o\ & ((\A_multiplexer|f[20]~20_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \A_multiplexer|f[20]~20_combout\,
	datac => \A_MUX~input_o\,
	datad => \alu_component|mux1|Mux20~3_combout\,
	combout => \A_multiplexer|f[20]~21_combout\);

-- Location: FF_X36_Y32_N27
\A_register|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[20]~21_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(20));

-- Location: LCCOMB_X36_Y32_N22
\mux_data|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux11~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(20)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[20]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(20),
	combout => \mux_data|Mux11~2_combout\);

-- Location: LCCOMB_X34_Y32_N8
\mux_data|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux11~3_combout\ = (\mux_data|Mux11~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux20~3_combout\,
	datad => \mux_data|Mux11~2_combout\,
	combout => \mux_data|Mux11~3_combout\);

-- Location: FF_X34_Y32_N9
\ir_register|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux11~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(20));

-- Location: LCCOMB_X38_Y30_N6
\alu_component|adder1|s6|p2|cout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|cout~10_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(20)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(20),
	datac => \IM_MUX1~input_o\,
	datad => \ir_register|Q\(20),
	combout => \alu_component|adder1|s6|p2|cout~10_combout\);

-- Location: LCCOMB_X34_Y30_N6
\mux_data|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux13~3_combout\ = (\mux_data|Mux13~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \mux_data|Mux13~2_combout\,
	datad => \alu_component|mux1|Mux18~3_combout\,
	combout => \mux_data|Mux13~3_combout\);

-- Location: FF_X34_Y30_N7
\ir_register|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux13~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(18));

-- Location: LCCOMB_X41_Y30_N4
\im_mux1_component|f[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[18]~12_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(18)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(18),
	datac => \IM_MUX1~input_o\,
	datad => \ir_register|Q\(18),
	combout => \im_mux1_component|f[18]~12_combout\);

-- Location: LCCOMB_X42_Y30_N22
\alu_component|mux1|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~3_combout\ = (\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[18]~12_combout\) # ((!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[2]~input_o\ & \im_mux1_component|f[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux1_component|f[18]~12_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[16]~15_combout\,
	combout => \alu_component|mux1|Mux17~3_combout\);

-- Location: LCCOMB_X36_Y32_N18
\mux_data|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux14~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(17)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[17]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(17),
	combout => \mux_data|Mux14~2_combout\);

-- Location: LCCOMB_X38_Y32_N4
\mux_data|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux14~4_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux17~6_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux17~6_combout\,
	datad => \mux_data|Mux14~2_combout\,
	combout => \mux_data|Mux14~4_combout\);

-- Location: FF_X38_Y32_N5
\ir_register|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux14~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(17));

-- Location: LCCOMB_X42_Y30_N28
\alu_component|mux1|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~2_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(17))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(17),
	datad => \A_register|Q\(17),
	combout => \alu_component|mux1|Mux17~2_combout\);

-- Location: LCCOMB_X42_Y30_N20
\alu_component|mux1|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~4_combout\ = (\alu_component|mux1|Mux17~3_combout\ & ((\alu_component|mux1|Mux17~2_combout\) # ((\ALU_Op[2]~input_o\) # (\im_mux2_component|Mux14~1_combout\)))) # (!\alu_component|mux1|Mux17~3_combout\ & 
-- (\alu_component|mux1|Mux17~2_combout\ & (!\ALU_Op[2]~input_o\ & \im_mux2_component|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux17~3_combout\,
	datab => \alu_component|mux1|Mux17~2_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux14~1_combout\,
	combout => \alu_component|mux1|Mux17~4_combout\);

-- Location: LCCOMB_X42_Y30_N26
\alu_component|mux1|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~7_combout\ = \im_mux2_component|Mux14~1_combout\ $ (((\IM_MUX1~input_o\ & (\ir_register|Q\(17))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(17),
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(17),
	datad => \im_mux2_component|Mux14~1_combout\,
	combout => \alu_component|mux1|Mux17~7_combout\);

-- Location: LCCOMB_X40_Y30_N16
\alu_component|negMux|f[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[15]~48_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux16~2_combout\,
	combout => \alu_component|negMux|f[15]~48_combout\);

-- Location: LCCOMB_X40_Y30_N10
\alu_component|adder1|s4|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s4|p4|cout~0_combout\ = (\alu_component|adder1|s4|p3|cout~0_combout\ & ((\alu_component|negMux|f[15]~48_combout\) # ((\A_register|Q\(15) & !\IM_MUX1~input_o\)))) # (!\alu_component|adder1|s4|p3|cout~0_combout\ & (\A_register|Q\(15) & 
-- (!\IM_MUX1~input_o\ & \alu_component|negMux|f[15]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(15),
	datab => \alu_component|adder1|s4|p3|cout~0_combout\,
	datac => \IM_MUX1~input_o\,
	datad => \alu_component|negMux|f[15]~48_combout\,
	combout => \alu_component|adder1|s4|p4|cout~0_combout\);

-- Location: LCCOMB_X40_Y30_N0
\alu_component|mux1|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~5_combout\ = (\alu_component|adder1|s4|p4|cout~0_combout\ & ((\im_mux1_component|f[16]~15_combout\ & (!\ALU_Op[2]~input_o\)) # (!\im_mux1_component|f[16]~15_combout\ & ((\im_mux2_component|Mux15~1_combout\))))) # 
-- (!\alu_component|adder1|s4|p4|cout~0_combout\ & ((\im_mux1_component|f[16]~15_combout\ & ((\im_mux2_component|Mux15~1_combout\))) # (!\im_mux1_component|f[16]~15_combout\ & (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s4|p4|cout~0_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[16]~15_combout\,
	datad => \im_mux2_component|Mux15~1_combout\,
	combout => \alu_component|mux1|Mux17~5_combout\);

-- Location: LCCOMB_X40_Y30_N22
\alu_component|mux1|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux17~6_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux17~7_combout\ $ (\alu_component|mux1|Mux17~5_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux17~4_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux17~7_combout\,
	datad => \alu_component|mux1|Mux17~5_combout\,
	combout => \alu_component|mux1|Mux17~6_combout\);

-- Location: LCCOMB_X35_Y32_N4
\B_multiplexer|f[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[17]~19_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux14~3_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \alu_component|mux1|Mux17~6_combout\,
	datad => \mux_data|Mux14~3_combout\,
	combout => \B_multiplexer|f[17]~19_combout\);

-- Location: FF_X35_Y32_N5
\B_register|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[17]~19_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(17));

-- Location: LCCOMB_X39_Y30_N10
\im_mux2_component|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux14~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux17~6_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux17~6_combout\,
	datab => \B_register|Q\(17),
	datac => \IM_MUX2[1]~input_o\,
	datad => \IM_MUX2[0]~input_o\,
	combout => \im_mux2_component|Mux14~1_combout\);

-- Location: LCCOMB_X42_Y30_N6
\alu_component|adder1|s5|p3|cout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p3|cout~10_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(17))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(17),
	datad => \A_register|Q\(17),
	combout => \alu_component|adder1|s5|p3|cout~10_combout\);

-- Location: LCCOMB_X40_Y30_N30
\alu_component|negMux|f[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[16]~34_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux15~1_combout\,
	combout => \alu_component|negMux|f[16]~34_combout\);

-- Location: LCCOMB_X39_Y29_N8
\im_mux1_component|f[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[17]~14_combout\ = (\A_register|Q\(17) & !\IM_MUX1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(17),
	datad => \IM_MUX1~input_o\,
	combout => \im_mux1_component|f[17]~14_combout\);

-- Location: LCCOMB_X42_Y30_N8
\im_mux1_component|f[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[17]~13_combout\ = (\IM_MUX1~input_o\ & \ir_register|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(17),
	combout => \im_mux1_component|f[17]~13_combout\);

-- Location: LCCOMB_X39_Y30_N2
\alu_component|adder1|s5|p2|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p2|cout~2_combout\ = (\im_mux1_component|f[17]~14_combout\) # ((\im_mux1_component|f[17]~13_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[17]~14_combout\,
	datac => \im_mux1_component|f[17]~13_combout\,
	datad => \im_mux2_component|Mux14~1_combout\,
	combout => \alu_component|adder1|s5|p2|cout~2_combout\);

-- Location: LCCOMB_X39_Y30_N0
\alu_component|adder1|s5|p2|cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p2|cout~3_combout\ = (\alu_component|adder1|s5|p2|cout~2_combout\ & ((\im_mux1_component|f[16]~15_combout\ & ((\alu_component|adder1|s4|p4|cout~0_combout\) # (\alu_component|negMux|f[16]~34_combout\))) # 
-- (!\im_mux1_component|f[16]~15_combout\ & (\alu_component|adder1|s4|p4|cout~0_combout\ & \alu_component|negMux|f[16]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[16]~15_combout\,
	datab => \alu_component|adder1|s4|p4|cout~0_combout\,
	datac => \alu_component|negMux|f[16]~34_combout\,
	datad => \alu_component|adder1|s5|p2|cout~2_combout\,
	combout => \alu_component|adder1|s5|p2|cout~3_combout\);

-- Location: LCCOMB_X39_Y30_N14
\alu_component|adder1|s5|p3|cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p3|cout~8_combout\ = (\alu_component|adder1|s5|p2|cout~3_combout\) # ((\alu_component|adder1|s5|p3|cout~10_combout\ & (\im_mux2_component|Mux14~1_combout\ $ (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux14~1_combout\,
	datab => \alu_component|adder1|s5|p3|cout~10_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|adder1|s5|p2|cout~3_combout\,
	combout => \alu_component|adder1|s5|p3|cout~8_combout\);

-- Location: LCCOMB_X39_Y30_N24
\alu_component|adder1|s5|p3|cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p3|cout~9_combout\ = (\im_mux1_component|f[18]~12_combout\ & ((\alu_component|adder1|s5|p3|cout~8_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux13~1_combout\)))) # (!\im_mux1_component|f[18]~12_combout\ & 
-- (\alu_component|adder1|s5|p3|cout~8_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[18]~12_combout\,
	datac => \alu_component|adder1|s5|p3|cout~8_combout\,
	datad => \im_mux2_component|Mux13~1_combout\,
	combout => \alu_component|adder1|s5|p3|cout~9_combout\);

-- Location: LCCOMB_X38_Y30_N8
\alu_component|negMux|f[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[19]~33_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux2_component|Mux12~1_combout\,
	combout => \alu_component|negMux|f[19]~33_combout\);

-- Location: LCCOMB_X38_Y30_N30
\im_mux1_component|f[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[20]~9_combout\ = (\IM_MUX1~input_o\ & \ir_register|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \ir_register|Q\(20),
	combout => \im_mux1_component|f[20]~9_combout\);

-- Location: LCCOMB_X38_Y30_N16
\im_mux1_component|f[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[20]~10_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(20),
	combout => \im_mux1_component|f[20]~10_combout\);

-- Location: LCCOMB_X38_Y30_N22
\alu_component|adder1|s6|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p1|cout~0_combout\ = (\im_mux1_component|f[20]~9_combout\) # ((\im_mux1_component|f[20]~10_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[20]~9_combout\,
	datab => \im_mux1_component|f[20]~10_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux11~1_combout\,
	combout => \alu_component|adder1|s6|p1|cout~0_combout\);

-- Location: LCCOMB_X38_Y30_N18
\alu_component|adder1|s6|p1|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p1|cout~1_combout\ = (\alu_component|adder1|s6|p1|cout~0_combout\ & ((\im_mux1_component|f[19]~11_combout\ & ((\alu_component|adder1|s5|p3|cout~9_combout\) # (\alu_component|negMux|f[19]~33_combout\))) # 
-- (!\im_mux1_component|f[19]~11_combout\ & (\alu_component|adder1|s5|p3|cout~9_combout\ & \alu_component|negMux|f[19]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[19]~11_combout\,
	datab => \alu_component|adder1|s5|p3|cout~9_combout\,
	datac => \alu_component|negMux|f[19]~33_combout\,
	datad => \alu_component|adder1|s6|p1|cout~0_combout\,
	combout => \alu_component|adder1|s6|p1|cout~1_combout\);

-- Location: LCCOMB_X38_Y30_N20
\alu_component|adder1|s6|p2|cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|cout~8_combout\ = (\alu_component|adder1|s6|p1|cout~1_combout\) # ((\alu_component|adder1|s6|p2|cout~10_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s6|p2|cout~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux2_component|Mux11~1_combout\,
	datad => \alu_component|adder1|s6|p1|cout~1_combout\,
	combout => \alu_component|adder1|s6|p2|cout~8_combout\);

-- Location: LCCOMB_X35_Y30_N2
\alu_component|adder1|s6|p2|cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|cout~9_combout\ = (\im_mux1_component|f[21]~8_combout\ & ((\alu_component|adder1|s6|p2|cout~8_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux10~1_combout\)))) # (!\im_mux1_component|f[21]~8_combout\ & 
-- (\alu_component|adder1|s6|p2|cout~8_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[21]~8_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s6|p2|cout~8_combout\,
	datad => \im_mux2_component|Mux10~1_combout\,
	combout => \alu_component|adder1|s6|p2|cout~9_combout\);

-- Location: LCCOMB_X35_Y31_N16
\alu_component|adder1|s6|p4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p4|s~0_combout\ = (\im_mux1_component|f[22]~7_combout\ & ((\alu_component|adder1|s6|p2|cout~9_combout\ & (!\ALU_Op[2]~input_o\)) # (!\alu_component|adder1|s6|p2|cout~9_combout\ & ((\im_mux2_component|Mux9~1_combout\))))) # 
-- (!\im_mux1_component|f[22]~7_combout\ & ((\alu_component|adder1|s6|p2|cout~9_combout\ & ((\im_mux2_component|Mux9~1_combout\))) # (!\alu_component|adder1|s6|p2|cout~9_combout\ & (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[22]~7_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s6|p2|cout~9_combout\,
	datad => \im_mux2_component|Mux9~1_combout\,
	combout => \alu_component|adder1|s6|p4|s~0_combout\);

-- Location: LCCOMB_X35_Y31_N22
\alu_component|adder1|s6|p4|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p4|s~1_combout\ = \im_mux1_component|f[23]~6_combout\ $ (\im_mux2_component|Mux8~1_combout\ $ (\alu_component|adder1|s6|p4|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[23]~6_combout\,
	datab => \im_mux2_component|Mux8~1_combout\,
	datad => \alu_component|adder1|s6|p4|s~0_combout\,
	combout => \alu_component|adder1|s6|p4|s~1_combout\);

-- Location: LCCOMB_X36_Y31_N20
\mux_data|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux8~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s6|p4|s~1_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|adder1|s6|p4|s~1_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux23~2_combout\,
	combout => \mux_data|Mux8~3_combout\);

-- Location: IOIBUF_X9_Y0_N15
\DATA_IN[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(23),
	o => \DATA_IN[23]~input_o\);

-- Location: FF_X38_Y31_N23
\Data_Memory_Module|Memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[23]~23_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~65_q\);

-- Location: LCCOMB_X38_Y31_N28
\Data_Memory_Module|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~24_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a23\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~65_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a23\,
	datad => \Data_Memory_Module|Memory~41_q\,
	combout => \Data_Memory_Module|data_out~24_combout\);

-- Location: FF_X38_Y31_N29
\Data_Memory_Module|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(23));

-- Location: LCCOMB_X38_Y31_N22
\mux_data|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux8~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(23)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[23]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(23),
	combout => \mux_data|Mux8~2_combout\);

-- Location: LCCOMB_X34_Y31_N2
\mux_data|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux8~5_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\mux_data|Mux8~3_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \mux_data|Mux8~3_combout\,
	datad => \mux_data|Mux8~2_combout\,
	combout => \mux_data|Mux8~5_combout\);

-- Location: FF_X34_Y31_N3
\ir_register|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux8~5_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(23));

-- Location: LCCOMB_X36_Y30_N6
\mux_data|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux8~4_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(23)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_IN[23]~input_o\,
	datad => \Data_Memory_Module|data_out\(23),
	combout => \mux_data|Mux8~4_combout\);

-- Location: LCCOMB_X35_Y30_N26
\A_multiplexer|f[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[23]~25_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux8~4_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \alu_component|mux1|Mux23~3_combout\,
	datad => \mux_data|Mux8~4_combout\,
	combout => \A_multiplexer|f[23]~25_combout\);

-- Location: FF_X35_Y30_N27
\A_register|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[23]~25_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(23));

-- Location: LCCOMB_X36_Y31_N30
\im_mux1_component|f[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[23]~6_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(23))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(23),
	datad => \A_register|Q\(23),
	combout => \im_mux1_component|f[23]~6_combout\);

-- Location: LCCOMB_X35_Y31_N4
\alu_component|adder1|s6|p4|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p4|cout~1_combout\ = (\im_mux1_component|f[22]~7_combout\ & ((\alu_component|adder1|s6|p2|cout~9_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux9~1_combout\)))) # (!\im_mux1_component|f[22]~7_combout\ & 
-- (\alu_component|adder1|s6|p2|cout~9_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[22]~7_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s6|p2|cout~9_combout\,
	datad => \im_mux2_component|Mux9~1_combout\,
	combout => \alu_component|adder1|s6|p4|cout~1_combout\);

-- Location: LCCOMB_X35_Y31_N10
\alu_component|adder1|s6|p4|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p4|cout~2_combout\ = (\alu_component|adder1|s6|p4|cout~1_combout\ & ((\im_mux1_component|f[23]~6_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[23]~6_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s6|p4|cout~1_combout\,
	datad => \im_mux2_component|Mux8~1_combout\,
	combout => \alu_component|adder1|s6|p4|cout~2_combout\);

-- Location: LCCOMB_X35_Y31_N8
\alu_component|adder1|s6|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p4|cout~0_combout\ = (\im_mux1_component|f[23]~6_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[23]~6_combout\,
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux8~1_combout\,
	combout => \alu_component|adder1|s6|p4|cout~0_combout\);

-- Location: LCCOMB_X35_Y31_N2
\alu_component|adder1|s7|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p1|cout~0_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux7~1_combout\,
	combout => \alu_component|adder1|s7|p1|cout~0_combout\);

-- Location: LCCOMB_X35_Y31_N12
\alu_component|adder1|s7|p1|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p1|cout~1_combout\ = (\im_mux1_component|f[24]~16_combout\ & ((\alu_component|adder1|s6|p4|cout~2_combout\) # ((\alu_component|adder1|s6|p4|cout~0_combout\) # (\alu_component|adder1|s7|p1|cout~0_combout\)))) # 
-- (!\im_mux1_component|f[24]~16_combout\ & (\alu_component|adder1|s7|p1|cout~0_combout\ & ((\alu_component|adder1|s6|p4|cout~2_combout\) # (\alu_component|adder1|s6|p4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s6|p4|cout~2_combout\,
	datab => \im_mux1_component|f[24]~16_combout\,
	datac => \alu_component|adder1|s6|p4|cout~0_combout\,
	datad => \alu_component|adder1|s7|p1|cout~0_combout\,
	combout => \alu_component|adder1|s7|p1|cout~1_combout\);

-- Location: LCCOMB_X35_Y31_N14
\alu_component|mux1|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux25~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s7|p2|s~0_combout\ $ (((\alu_component|adder1|s7|p1|cout~1_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s7|p2|s~0_combout\,
	datab => \alu_component|mux1|Mux25~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s7|p1|cout~1_combout\,
	combout => \alu_component|mux1|Mux25~3_combout\);

-- Location: LCCOMB_X34_Y31_N24
\mux_data|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux6~3_combout\ = (\mux_data|Mux6~2_combout\) # ((\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & \alu_component|mux1|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \alu_component|mux1|Mux25~3_combout\,
	datad => \mux_data|Mux6~2_combout\,
	combout => \mux_data|Mux6~3_combout\);

-- Location: FF_X34_Y31_N25
\ir_register|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux6~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(25));

-- Location: LCCOMB_X34_Y30_N10
\im_mux1_component|f[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[25]~5_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(25))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(25),
	datad => \A_register|Q\(25),
	combout => \im_mux1_component|f[25]~5_combout\);

-- Location: LCCOMB_X34_Y31_N20
\alu_component|adder1|s7|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p2|cout~0_combout\ = (\im_mux1_component|f[25]~5_combout\ & ((\alu_component|adder1|s7|p1|cout~1_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux6~1_combout\)))) # (!\im_mux1_component|f[25]~5_combout\ & 
-- (\alu_component|adder1|s7|p1|cout~1_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[25]~5_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s7|p1|cout~1_combout\,
	datad => \im_mux2_component|Mux6~1_combout\,
	combout => \alu_component|adder1|s7|p2|cout~0_combout\);

-- Location: LCCOMB_X34_Y31_N0
\alu_component|mux1|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~3_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|adder1|s7|p3|s~0_combout\ $ (\alu_component|adder1|s7|p2|cout~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux26~2_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|adder1|s7|p3|s~0_combout\,
	datad => \alu_component|adder1|s7|p2|cout~0_combout\,
	combout => \alu_component|mux1|Mux26~3_combout\);

-- Location: LCCOMB_X33_Y31_N2
\im_mux2_component|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux5~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux26~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \alu_component|mux1|Mux26~3_combout\,
	datac => \IM_MUX2[1]~input_o\,
	datad => \B_register|Q\(26),
	combout => \im_mux2_component|Mux5~1_combout\);

-- Location: LCCOMB_X34_Y31_N30
\alu_component|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(26))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(26),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(26),
	combout => \alu_component|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X33_Y31_N24
\alu_component|adder1|s7|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p3|cout~0_combout\ = (\im_mux1_component|f[26]~4_combout\ & ((\alu_component|adder1|s7|p2|cout~0_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux5~1_combout\)))) # (!\im_mux1_component|f[26]~4_combout\ & 
-- (\alu_component|adder1|s7|p2|cout~0_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[26]~4_combout\,
	datac => \alu_component|adder1|s7|p2|cout~0_combout\,
	datad => \im_mux2_component|Mux5~1_combout\,
	combout => \alu_component|adder1|s7|p3|cout~0_combout\);

-- Location: LCCOMB_X39_Y31_N10
\im_mux2_component|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux4~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & ((\alu_component|mux1|Mux27~3_combout\))) # (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(27),
	datad => \alu_component|mux1|Mux27~3_combout\,
	combout => \im_mux2_component|Mux4~1_combout\);

-- Location: LCCOMB_X33_Y31_N6
\alu_component|adder1|s7|p4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p4|s~0_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux1_component|f[27]~3_combout\ $ (\im_mux2_component|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[27]~3_combout\,
	datad => \im_mux2_component|Mux4~1_combout\,
	combout => \alu_component|adder1|s7|p4|s~0_combout\);

-- Location: LCCOMB_X33_Y31_N16
\alu_component|mux1|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux27~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s7|p4|s~0_combout\ $ (((\alu_component|adder1|s7|p3|cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s7|p4|s~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux27~2_combout\,
	datad => \alu_component|adder1|s7|p3|cout~0_combout\,
	combout => \alu_component|mux1|Mux27~3_combout\);

-- Location: LCCOMB_X34_Y31_N28
\A_multiplexer|f[27]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[27]~29_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux4~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \A_MUX~input_o\,
	datac => \alu_component|mux1|Mux27~3_combout\,
	datad => \mux_data|Mux4~2_combout\,
	combout => \A_multiplexer|f[27]~29_combout\);

-- Location: FF_X34_Y31_N29
\A_register|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[27]~29_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(27));

-- Location: LCCOMB_X40_Y31_N16
\alu_component|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux27~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(27))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(27),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(27),
	combout => \alu_component|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X33_Y31_N4
\alu_component|mux1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux27~1_combout\ = (\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[28]~17_combout\) # ((!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[2]~input_o\ & \im_mux1_component|f[26]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[28]~17_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[26]~4_combout\,
	combout => \alu_component|mux1|Mux27~1_combout\);

-- Location: LCCOMB_X33_Y31_N30
\alu_component|mux1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux27~2_combout\ = (\alu_component|mux1|Mux27~0_combout\ & ((\alu_component|mux1|Mux27~1_combout\) # ((!\ALU_Op[2]~input_o\ & \im_mux2_component|Mux4~1_combout\)))) # (!\alu_component|mux1|Mux27~0_combout\ & 
-- (\alu_component|mux1|Mux27~1_combout\ & ((\ALU_Op[2]~input_o\) # (\im_mux2_component|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux27~0_combout\,
	datab => \alu_component|mux1|Mux27~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux4~1_combout\,
	combout => \alu_component|mux1|Mux27~2_combout\);

-- Location: LCCOMB_X33_Y31_N28
\mux_data|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux4~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s7|p3|cout~0_combout\ $ (((\alu_component|adder1|s7|p4|s~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|adder1|s7|p3|cout~0_combout\,
	datac => \alu_component|mux1|Mux27~2_combout\,
	datad => \alu_component|adder1|s7|p4|s~0_combout\,
	combout => \mux_data|Mux4~3_combout\);

-- Location: LCCOMB_X33_Y31_N10
\mux_data|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux4~4_combout\ = (\mux_data|Mux4~2_combout\) # ((\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & \mux_data|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \mux_data|Mux4~2_combout\,
	datad => \mux_data|Mux4~3_combout\,
	combout => \mux_data|Mux4~4_combout\);

-- Location: FF_X33_Y31_N11
\ir_register|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux4~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(27));

-- Location: LCCOMB_X40_Y31_N24
\im_mux1_component|f[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[27]~3_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(27))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(27),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(27),
	combout => \im_mux1_component|f[27]~3_combout\);

-- Location: LCCOMB_X33_Y31_N18
\alu_component|mux1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[27]~3_combout\))) # (!\ALU_Op[0]~input_o\ & (\im_mux1_component|f[25]~5_combout\)))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[25]~5_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[27]~3_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux26~1_combout\);

-- Location: LCCOMB_X34_Y31_N12
\alu_component|mux1|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~2_combout\ = (\im_mux2_component|Mux5~1_combout\ & ((\alu_component|mux1|Mux26~1_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux26~0_combout\)))) # (!\im_mux2_component|Mux5~1_combout\ & 
-- (\alu_component|mux1|Mux26~1_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux5~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|mux1|Mux26~0_combout\,
	datad => \alu_component|mux1|Mux26~1_combout\,
	combout => \alu_component|mux1|Mux26~2_combout\);

-- Location: LCCOMB_X34_Y31_N16
\alu_component|mux1|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~5_combout\ = (!\ALU_Op[1]~input_o\ & \alu_component|mux1|Mux26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux26~2_combout\,
	combout => \alu_component|mux1|Mux26~5_combout\);

-- Location: LCCOMB_X34_Y31_N18
\alu_component|mux1|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux26~4_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux1_component|f[26]~4_combout\ $ (\alu_component|adder1|s7|p2|cout~0_combout\ $ (\alu_component|negMux|f[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[26]~4_combout\,
	datab => \alu_component|adder1|s7|p2|cout~0_combout\,
	datac => \alu_component|negMux|f[26]~32_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \alu_component|mux1|Mux26~4_combout\);

-- Location: LCCOMB_X34_Y31_N8
\mux_data|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux5~1_combout\ = (\mux_data|Mux5~0_combout\) # ((\mux_data|Mux31~2_combout\ & ((\alu_component|mux1|Mux26~5_combout\) # (\alu_component|mux1|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \alu_component|mux1|Mux26~5_combout\,
	datac => \mux_data|Mux5~0_combout\,
	datad => \alu_component|mux1|Mux26~4_combout\,
	combout => \mux_data|Mux5~1_combout\);

-- Location: FF_X34_Y31_N9
\ir_register|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux5~1_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(26));

-- Location: LCCOMB_X34_Y31_N22
\im_mux1_component|f[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[26]~4_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(26))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(26),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(26),
	combout => \im_mux1_component|f[26]~4_combout\);

-- Location: LCCOMB_X39_Y31_N16
\alu_component|adder1|s7|p4|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p4|cout~1_combout\ = (\im_mux1_component|f[27]~3_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[27]~3_combout\,
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux4~1_combout\,
	combout => \alu_component|adder1|s7|p4|cout~1_combout\);

-- Location: LCCOMB_X39_Y31_N2
\alu_component|adder1|s7|p4|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p4|cout~2_combout\ = (\alu_component|adder1|s7|p4|cout~1_combout\ & ((\im_mux1_component|f[26]~4_combout\ & ((\alu_component|adder1|s7|p2|cout~0_combout\) # (\alu_component|negMux|f[26]~32_combout\))) # 
-- (!\im_mux1_component|f[26]~4_combout\ & (\alu_component|adder1|s7|p2|cout~0_combout\ & \alu_component|negMux|f[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[26]~4_combout\,
	datab => \alu_component|adder1|s7|p2|cout~0_combout\,
	datac => \alu_component|negMux|f[26]~32_combout\,
	datad => \alu_component|adder1|s7|p4|cout~1_combout\,
	combout => \alu_component|adder1|s7|p4|cout~2_combout\);

-- Location: LCCOMB_X39_Y31_N30
\alu_component|adder1|s7|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s7|p4|cout~0_combout\ = (\im_mux1_component|f[27]~3_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[27]~3_combout\,
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux4~1_combout\,
	combout => \alu_component|adder1|s7|p4|cout~0_combout\);

-- Location: LCCOMB_X39_Y31_N28
\alu_component|adder1|s8|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p1|cout~0_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux3~1_combout\,
	combout => \alu_component|adder1|s8|p1|cout~0_combout\);

-- Location: LCCOMB_X39_Y31_N6
\alu_component|adder1|s8|p1|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p1|cout~1_combout\ = (\im_mux1_component|f[28]~17_combout\ & ((\alu_component|adder1|s7|p4|cout~2_combout\) # ((\alu_component|adder1|s7|p4|cout~0_combout\) # (\alu_component|adder1|s8|p1|cout~0_combout\)))) # 
-- (!\im_mux1_component|f[28]~17_combout\ & (\alu_component|adder1|s8|p1|cout~0_combout\ & ((\alu_component|adder1|s7|p4|cout~2_combout\) # (\alu_component|adder1|s7|p4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[28]~17_combout\,
	datab => \alu_component|adder1|s7|p4|cout~2_combout\,
	datac => \alu_component|adder1|s7|p4|cout~0_combout\,
	datad => \alu_component|adder1|s8|p1|cout~0_combout\,
	combout => \alu_component|adder1|s8|p1|cout~1_combout\);

-- Location: LCCOMB_X40_Y32_N18
\A_multiplexer|f[29]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[29]~31_combout\ = (!\A_MUX~input_o\ & \mux_data|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux2~1_combout\,
	combout => \A_multiplexer|f[29]~31_combout\);

-- Location: FF_X40_Y32_N19
\A_register|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[29]~31_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(29));

-- Location: FF_X40_Y32_N17
\ir_register|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux2~1_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(29));

-- Location: LCCOMB_X40_Y32_N26
\im_mux1_component|f[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[29]~2_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(29)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(29),
	datac => \ir_register|Q\(29),
	datad => \IM_MUX1~input_o\,
	combout => \im_mux1_component|f[29]~2_combout\);

-- Location: LCCOMB_X39_Y31_N20
\alu_component|adder1|s8|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p2|cout~0_combout\ = (\alu_component|adder1|s8|p1|cout~1_combout\ & ((\im_mux1_component|f[29]~2_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux2~1_combout\)))) # (!\alu_component|adder1|s8|p1|cout~1_combout\ & 
-- (\im_mux1_component|f[29]~2_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s8|p1|cout~1_combout\,
	datab => \im_mux1_component|f[29]~2_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux2~1_combout\,
	combout => \alu_component|adder1|s8|p2|cout~0_combout\);

-- Location: LCCOMB_X42_Y31_N10
\alu_component|adder1|s8|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p3|cout~0_combout\ = (\im_mux1_component|f[30]~1_combout\ & ((\alu_component|adder1|s8|p2|cout~0_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux1~1_combout\)))) # (!\im_mux1_component|f[30]~1_combout\ & 
-- (\alu_component|adder1|s8|p2|cout~0_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[30]~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|adder1|s8|p2|cout~0_combout\,
	datad => \im_mux2_component|Mux1~1_combout\,
	combout => \alu_component|adder1|s8|p3|cout~0_combout\);

-- Location: LCCOMB_X42_Y31_N28
\alu_component|mux1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux31~2_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s8|p4|s~0_combout\ $ (((\alu_component|adder1|s8|p3|cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s8|p4|s~0_combout\,
	datab => \alu_component|mux1|Mux31~1_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s8|p3|cout~0_combout\,
	combout => \alu_component|mux1|Mux31~2_combout\);

-- Location: LCCOMB_X43_Y31_N30
\B_multiplexer|f[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[31]~37_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux0~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \mux_data|Mux0~2_combout\,
	datad => \alu_component|mux1|Mux31~2_combout\,
	combout => \B_multiplexer|f[31]~37_combout\);

-- Location: FF_X43_Y31_N31
\B_register|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[31]~37_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(31));

-- Location: LCCOMB_X43_Y31_N12
\A_multiplexer|f[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[31]~33_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux0~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \mux_data|Mux0~2_combout\,
	datad => \alu_component|mux1|Mux31~2_combout\,
	combout => \A_multiplexer|f[31]~33_combout\);

-- Location: FF_X43_Y31_N13
\A_register|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[31]~33_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(31));

-- Location: LCCOMB_X43_Y31_N14
\Data_memory_multiplexer|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[31]~31_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(31))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datac => \B_register|Q\(31),
	datad => \A_register|Q\(31),
	combout => \Data_memory_multiplexer|f[31]~31_combout\);

-- Location: FF_X41_Y31_N15
\Data_Memory_Module|Memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[31]~31_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~73_q\);

-- Location: LCCOMB_X42_Y31_N18
\Data_Memory_Module|data_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~32_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a31\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~73_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a31\,
	datad => \Data_Memory_Module|Memory~73_q\,
	combout => \Data_Memory_Module|data_out~32_combout\);

-- Location: FF_X42_Y31_N19
\Data_Memory_Module|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(31));

-- Location: LCCOMB_X42_Y31_N4
\mux_data|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux0~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(31)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_IN[31]~input_o\,
	datad => \Data_Memory_Module|data_out\(31),
	combout => \mux_data|Mux0~2_combout\);

-- Location: LCCOMB_X42_Y31_N24
\mux_data|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux0~3_combout\ = (\mux_data|Mux0~2_combout\) # ((\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & \alu_component|mux1|Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \mux_data|Mux0~2_combout\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \alu_component|mux1|Mux31~2_combout\,
	combout => \mux_data|Mux0~3_combout\);

-- Location: FF_X42_Y31_N25
\ir_register|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux0~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(31));

-- Location: LCCOMB_X43_Y31_N20
\im_mux1_component|f[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[31]~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(31))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ir_register|Q\(31),
	datad => \A_register|Q\(31),
	combout => \im_mux1_component|f[31]~0_combout\);

-- Location: LCCOMB_X42_Y31_N14
\alu_component|mux1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux30~1_combout\ = (\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[31]~0_combout\) # ((!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[2]~input_o\ & \im_mux1_component|f[29]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[31]~0_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[29]~2_combout\,
	combout => \alu_component|mux1|Mux30~1_combout\);

-- Location: LCCOMB_X43_Y31_N4
\alu_component|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux30~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(30))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(30),
	datad => \A_register|Q\(30),
	combout => \alu_component|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X42_Y31_N8
\alu_component|mux1|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux30~2_combout\ = (\im_mux2_component|Mux1~1_combout\ & ((\alu_component|mux1|Mux30~1_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux30~0_combout\)))) # (!\im_mux2_component|Mux1~1_combout\ & 
-- (\alu_component|mux1|Mux30~1_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux1~1_combout\,
	datab => \alu_component|mux1|Mux30~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux30~0_combout\,
	combout => \alu_component|mux1|Mux30~2_combout\);

-- Location: LCCOMB_X39_Y31_N24
\alu_component|mux1|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux30~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s8|p3|s~0_combout\ $ (((\alu_component|adder1|s8|p2|cout~0_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s8|p3|s~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux30~2_combout\,
	datad => \alu_component|adder1|s8|p2|cout~0_combout\,
	combout => \alu_component|mux1|Mux30~3_combout\);

-- Location: LCCOMB_X40_Y31_N30
\A_multiplexer|f[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[30]~32_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux1~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \alu_component|mux1|Mux30~3_combout\,
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux1~2_combout\,
	combout => \A_multiplexer|f[30]~32_combout\);

-- Location: FF_X40_Y31_N31
\A_register|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[30]~32_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(30));

-- Location: LCCOMB_X40_Y31_N20
\Data_memory_multiplexer|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[30]~30_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(30)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(30),
	datac => \REG_Mux~input_o\,
	datad => \B_register|Q\(30),
	combout => \Data_memory_multiplexer|f[30]~30_combout\);

-- Location: FF_X39_Y31_N17
\Data_Memory_Module|Memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[30]~30_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~72_q\);

-- Location: LCCOMB_X38_Y31_N14
\Data_Memory_Module|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~31_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a30\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~72_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a30\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~72_q\,
	combout => \Data_Memory_Module|data_out~31_combout\);

-- Location: FF_X38_Y31_N15
\Data_Memory_Module|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(30));

-- Location: LCCOMB_X39_Y31_N14
\mux_data|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux1~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(30)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[30]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(30),
	combout => \mux_data|Mux1~2_combout\);

-- Location: LCCOMB_X39_Y31_N8
\mux_data|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux1~3_combout\ = (\mux_data|Mux1~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \mux_data|Mux1~2_combout\,
	datad => \alu_component|mux1|Mux30~3_combout\,
	combout => \mux_data|Mux1~3_combout\);

-- Location: FF_X39_Y31_N9
\ir_register|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux1~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(30));

-- Location: LCCOMB_X43_Y31_N6
\im_mux1_component|f[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[30]~1_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(30))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(30),
	datad => \A_register|Q\(30),
	combout => \im_mux1_component|f[30]~1_combout\);

-- Location: LCCOMB_X40_Y32_N20
\alu_component|mux1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & (\im_mux1_component|f[30]~1_combout\)) # (!\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[28]~17_combout\))))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[30]~1_combout\,
	datac => \im_mux1_component|f[28]~17_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux29~1_combout\);

-- Location: LCCOMB_X40_Y32_N10
\alu_component|mux1|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~2_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(29)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(29),
	datac => \ir_register|Q\(29),
	datad => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux29~2_combout\);

-- Location: LCCOMB_X40_Y32_N28
\alu_component|mux1|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~3_combout\ = (\ALU_Op[2]~input_o\ & (!\im_mux2_component|Mux2~1_combout\)) # (!\ALU_Op[2]~input_o\ & ((\alu_component|mux1|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux2_component|Mux2~1_combout\,
	datad => \alu_component|mux1|Mux29~2_combout\,
	combout => \alu_component|mux1|Mux29~3_combout\);

-- Location: LCCOMB_X40_Y32_N6
\alu_component|mux1|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~4_combout\ = (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux29~1_combout\ & ((\im_mux2_component|Mux2~1_combout\) # (\alu_component|mux1|Mux29~3_combout\))) # (!\alu_component|mux1|Mux29~1_combout\ & 
-- (\im_mux2_component|Mux2~1_combout\ & \alu_component|mux1|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux29~1_combout\,
	datab => \im_mux2_component|Mux2~1_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux29~3_combout\,
	combout => \alu_component|mux1|Mux29~4_combout\);

-- Location: LCCOMB_X41_Y31_N4
\alu_component|mux1|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~5_combout\ = (\alu_component|mux1|Mux29~4_combout\) # (\alu_component|mux1|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|mux1|Mux29~4_combout\,
	datad => \alu_component|mux1|Mux29~0_combout\,
	combout => \alu_component|mux1|Mux29~5_combout\);

-- Location: LCCOMB_X39_Y31_N18
\im_mux2_component|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux2~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & ((\alu_component|mux1|Mux29~5_combout\))) # (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(29),
	datad => \alu_component|mux1|Mux29~5_combout\,
	combout => \im_mux2_component|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y31_N4
\alu_component|negMux|f[29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|negMux|f[29]~49_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux2~1_combout\,
	combout => \alu_component|negMux|f[29]~49_combout\);

-- Location: LCCOMB_X39_Y31_N26
\alu_component|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux29~0_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|negMux|f[29]~49_combout\ $ (\im_mux1_component|f[29]~2_combout\ $ (\alu_component|adder1|s8|p1|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|negMux|f[29]~49_combout\,
	datab => \im_mux1_component|f[29]~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s8|p1|cout~1_combout\,
	combout => \alu_component|mux1|Mux29~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\DATA_IN[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(29),
	o => \DATA_IN[29]~input_o\);

-- Location: LCCOMB_X35_Y32_N6
\Data_Memory_Module|Memory~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~71feeder_combout\ = \Data_memory_multiplexer|f[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_memory_multiplexer|f[29]~29_combout\,
	combout => \Data_Memory_Module|Memory~71feeder_combout\);

-- Location: FF_X35_Y32_N7
\Data_Memory_Module|Memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~71feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~71_q\);

-- Location: LCCOMB_X36_Y32_N20
\Data_Memory_Module|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~30_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a29\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~71_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory~71_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a29\,
	combout => \Data_Memory_Module|data_out~30_combout\);

-- Location: FF_X36_Y32_N21
\Data_Memory_Module|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(29));

-- Location: LCCOMB_X36_Y32_N10
\mux_data|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux2~0_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(29)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[29]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(29),
	combout => \mux_data|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y32_N16
\mux_data|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux2~1_combout\ = (\mux_data|Mux2~0_combout\) # ((\mux_data|Mux31~2_combout\ & ((\alu_component|mux1|Mux29~0_combout\) # (\alu_component|mux1|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \alu_component|mux1|Mux29~0_combout\,
	datac => \mux_data|Mux2~0_combout\,
	datad => \alu_component|mux1|Mux29~4_combout\,
	combout => \mux_data|Mux2~1_combout\);

-- Location: LCCOMB_X39_Y32_N20
\B_multiplexer|f[29]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[29]~35_combout\ = (!\B_MUX~input_o\ & \mux_data|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_MUX~input_o\,
	datad => \mux_data|Mux2~1_combout\,
	combout => \B_multiplexer|f[29]~35_combout\);

-- Location: FF_X39_Y32_N21
\B_register|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[29]~35_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(29));

-- Location: LCCOMB_X39_Y32_N18
\Data_memory_multiplexer|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[29]~29_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(29))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datab => \B_register|Q\(29),
	datad => \A_register|Q\(29),
	combout => \Data_memory_multiplexer|f[29]~29_combout\);

-- Location: LCCOMB_X35_Y32_N28
\Data_Memory_Module|Memory~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~70feeder_combout\ = \Data_memory_multiplexer|f[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_memory_multiplexer|f[28]~28_combout\,
	combout => \Data_Memory_Module|Memory~70feeder_combout\);

-- Location: FF_X35_Y32_N29
\Data_Memory_Module|Memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~70feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~70_q\);

-- Location: LCCOMB_X36_Y32_N0
\Data_Memory_Module|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~29_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a28\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~70_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a28\,
	datad => \Data_Memory_Module|Memory~70_q\,
	combout => \Data_Memory_Module|data_out~29_combout\);

-- Location: FF_X36_Y32_N1
\Data_Memory_Module|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(28));

-- Location: LCCOMB_X36_Y32_N14
\mux_data|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux3~0_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(28)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[28]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(28),
	combout => \mux_data|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y32_N0
\mux_data|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux3~1_combout\ = (\mux_data|Mux3~0_combout\) # ((\mux_data|Mux31~2_combout\ & ((\alu_component|mux1|Mux28~0_combout\) # (\alu_component|mux1|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \alu_component|mux1|Mux28~0_combout\,
	datac => \alu_component|mux1|Mux28~5_combout\,
	datad => \mux_data|Mux3~0_combout\,
	combout => \mux_data|Mux3~1_combout\);

-- Location: FF_X40_Y32_N1
\ir_register|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux3~1_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(28));

-- Location: LCCOMB_X40_Y32_N24
\A_multiplexer|f[28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[28]~30_combout\ = (!\A_MUX~input_o\ & \mux_data|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux3~1_combout\,
	combout => \A_multiplexer|f[28]~30_combout\);

-- Location: FF_X40_Y32_N25
\A_register|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[28]~30_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(28));

-- Location: LCCOMB_X40_Y32_N14
\im_mux1_component|f[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[28]~17_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(28))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(28),
	datad => \A_register|Q\(28),
	combout => \im_mux1_component|f[28]~17_combout\);

-- Location: LCCOMB_X39_Y31_N22
\alu_component|adder1|s8|p1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p1|s~0_combout\ = \im_mux1_component|f[28]~17_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[28]~17_combout\,
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux3~1_combout\,
	combout => \alu_component|adder1|s8|p1|s~0_combout\);

-- Location: LCCOMB_X39_Y31_N0
\alu_component|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~0_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s8|p1|s~0_combout\ $ (((\alu_component|adder1|s7|p4|cout~0_combout\) # (\alu_component|adder1|s7|p4|cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s8|p1|s~0_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|adder1|s7|p4|cout~0_combout\,
	datad => \alu_component|adder1|s7|p4|cout~2_combout\,
	combout => \alu_component|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X40_Y31_N18
\alu_component|mux1|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~4_combout\ = (\alu_component|mux1|Mux28~0_combout\) # ((!\ALU_Op[1]~input_o\ & \alu_component|mux1|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux28~3_combout\,
	datad => \alu_component|mux1|Mux28~0_combout\,
	combout => \alu_component|mux1|Mux28~4_combout\);

-- Location: LCCOMB_X39_Y31_N12
\im_mux2_component|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux3~1_combout\ = (\IM_MUX2[1]~input_o\ & ((\IM_MUX2[0]~input_o\) # ((\alu_component|mux1|Mux28~4_combout\)))) # (!\IM_MUX2[1]~input_o\ & (!\IM_MUX2[0]~input_o\ & (\B_register|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \B_register|Q\(28),
	datad => \alu_component|mux1|Mux28~4_combout\,
	combout => \im_mux2_component|Mux3~1_combout\);

-- Location: LCCOMB_X40_Y32_N8
\alu_component|mux1|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~2_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & (\im_mux1_component|f[29]~2_combout\)) # (!\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[27]~3_combout\))))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[29]~2_combout\,
	datab => \im_mux1_component|f[27]~3_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux28~2_combout\);

-- Location: LCCOMB_X40_Y32_N22
\alu_component|mux1|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~1_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(28))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(28),
	datad => \A_register|Q\(28),
	combout => \alu_component|mux1|Mux28~1_combout\);

-- Location: LCCOMB_X40_Y32_N30
\alu_component|mux1|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux28~3_combout\ = (\im_mux2_component|Mux3~1_combout\ & ((\alu_component|mux1|Mux28~2_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux28~1_combout\)))) # (!\im_mux2_component|Mux3~1_combout\ & 
-- (\alu_component|mux1|Mux28~2_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux3~1_combout\,
	datab => \alu_component|mux1|Mux28~2_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux28~1_combout\,
	combout => \alu_component|mux1|Mux28~3_combout\);

-- Location: LCCOMB_X40_Y31_N22
\B_multiplexer|f[28]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[28]~38_combout\ = (\alu_component|mux1|Mux28~0_combout\) # ((!\ALU_Op[1]~input_o\ & \alu_component|mux1|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux28~3_combout\,
	datad => \alu_component|mux1|Mux28~0_combout\,
	combout => \B_multiplexer|f[28]~38_combout\);

-- Location: LCCOMB_X40_Y31_N0
\B_multiplexer|f[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[28]~34_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux3~0_combout\) # ((\mux_data|Mux31~2_combout\ & \B_multiplexer|f[28]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \B_multiplexer|f[28]~38_combout\,
	datad => \mux_data|Mux3~0_combout\,
	combout => \B_multiplexer|f[28]~34_combout\);

-- Location: FF_X40_Y31_N1
\B_register|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[28]~34_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(28));

-- Location: LCCOMB_X40_Y31_N2
\Data_memory_multiplexer|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[28]~28_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(28))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_register|Q\(28),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(28),
	combout => \Data_memory_multiplexer|f[28]~28_combout\);

-- Location: FF_X39_Y31_N23
\Data_Memory_Module|Memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[27]~27_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~69_q\);

-- Location: LCCOMB_X38_Y31_N20
\Data_Memory_Module|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~28_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a27\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~69_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a27\,
	datac => \Data_Memory_Module|data_out[0]~0_combout\,
	datad => \Data_Memory_Module|Memory~69_q\,
	combout => \Data_Memory_Module|data_out~28_combout\);

-- Location: FF_X38_Y31_N21
\Data_Memory_Module|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(27));

-- Location: LCCOMB_X33_Y31_N14
\mux_data|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux4~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(27)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_IN[27]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(27),
	combout => \mux_data|Mux4~2_combout\);

-- Location: LCCOMB_X33_Y31_N12
\B_multiplexer|f[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[27]~33_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux4~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux4~2_combout\,
	datad => \alu_component|mux1|Mux27~3_combout\,
	combout => \B_multiplexer|f[27]~33_combout\);

-- Location: FF_X33_Y31_N13
\B_register|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[27]~33_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(27));

-- Location: LCCOMB_X40_Y31_N12
\Data_memory_multiplexer|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[27]~27_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(27))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(27),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(27),
	combout => \Data_memory_multiplexer|f[27]~27_combout\);

-- Location: LCCOMB_X35_Y32_N14
\Data_Memory_Module|Memory~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~68feeder_combout\ = \Data_memory_multiplexer|f[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_memory_multiplexer|f[26]~26_combout\,
	combout => \Data_Memory_Module|Memory~68feeder_combout\);

-- Location: FF_X35_Y32_N15
\Data_Memory_Module|Memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~68feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~68_q\);

-- Location: LCCOMB_X36_Y32_N24
\Data_Memory_Module|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~27_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a26\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~68_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a26\,
	datad => \Data_Memory_Module|Memory~68_q\,
	combout => \Data_Memory_Module|data_out~27_combout\);

-- Location: FF_X36_Y32_N25
\Data_Memory_Module|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(26));

-- Location: LCCOMB_X36_Y32_N30
\mux_data|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux5~0_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(26)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[26]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(26),
	combout => \mux_data|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y32_N0
\B_multiplexer|f[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[26]~32_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux5~0_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux5~0_combout\,
	datad => \alu_component|mux1|Mux26~3_combout\,
	combout => \B_multiplexer|f[26]~32_combout\);

-- Location: FF_X35_Y32_N1
\B_register|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[26]~32_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(26));

-- Location: LCCOMB_X35_Y32_N20
\Data_memory_multiplexer|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[26]~26_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(26))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_register|Q\(26),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(26),
	combout => \Data_memory_multiplexer|f[26]~26_combout\);

-- Location: LCCOMB_X41_Y31_N28
\Data_Memory_Module|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~26_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a25\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory~67_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a25\,
	combout => \Data_Memory_Module|data_out~26_combout\);

-- Location: FF_X41_Y31_N29
\Data_Memory_Module|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(25));

-- Location: LCCOMB_X41_Y31_N20
\B_multiplexer|f[25]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[25]~30_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(25)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_IN[25]~input_o\,
	datad => \Data_Memory_Module|data_out\(25),
	combout => \B_multiplexer|f[25]~30_combout\);

-- Location: LCCOMB_X40_Y31_N26
\B_multiplexer|f[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[25]~31_combout\ = (!\B_MUX~input_o\ & ((\B_multiplexer|f[25]~30_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \B_multiplexer|f[25]~30_combout\,
	datad => \alu_component|mux1|Mux25~3_combout\,
	combout => \B_multiplexer|f[25]~31_combout\);

-- Location: FF_X40_Y31_N27
\B_register|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[25]~31_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(25));

-- Location: LCCOMB_X40_Y31_N10
\Data_memory_multiplexer|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[25]~25_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(25))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(25),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(25),
	combout => \Data_memory_multiplexer|f[25]~25_combout\);

-- Location: FF_X35_Y30_N21
\Data_Memory_Module|Memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[24]~24_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~66_q\);

-- Location: LCCOMB_X36_Y30_N28
\Data_Memory_Module|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~25_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a24\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~66_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a24\,
	datad => \Data_Memory_Module|Memory~66_q\,
	combout => \Data_Memory_Module|data_out~25_combout\);

-- Location: FF_X36_Y30_N29
\Data_Memory_Module|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(24));

-- Location: LCCOMB_X36_Y30_N4
\B_multiplexer|f[24]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[24]~28_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(24)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[24]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(24),
	combout => \B_multiplexer|f[24]~28_combout\);

-- Location: LCCOMB_X36_Y30_N8
\B_multiplexer|f[24]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[24]~29_combout\ = (!\B_MUX~input_o\ & ((\B_multiplexer|f[24]~28_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \B_multiplexer|f[24]~28_combout\,
	datac => \mux_data|Mux31~2_combout\,
	datad => \alu_component|mux1|Mux24~4_combout\,
	combout => \B_multiplexer|f[24]~29_combout\);

-- Location: FF_X36_Y30_N9
\B_register|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[24]~29_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(24));

-- Location: LCCOMB_X35_Y31_N6
\im_mux2_component|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux7~1_combout\ = (\IM_MUX2[0]~input_o\ & (\IM_MUX2[1]~input_o\)) # (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux24~4_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \alu_component|mux1|Mux24~4_combout\,
	datad => \B_register|Q\(24),
	combout => \im_mux2_component|Mux7~1_combout\);

-- Location: LCCOMB_X33_Y31_N8
\alu_component|mux1|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux24~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & (\im_mux1_component|f[25]~5_combout\)) # (!\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[23]~6_combout\))))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[25]~5_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[23]~6_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux24~1_combout\);

-- Location: LCCOMB_X34_Y30_N0
\alu_component|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux24~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(24))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(24),
	datad => \A_register|Q\(24),
	combout => \alu_component|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X34_Y31_N4
\alu_component|mux1|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux24~2_combout\ = (\alu_component|mux1|Mux24~1_combout\ & ((\alu_component|mux1|Mux24~0_combout\) # ((\ALU_Op[2]~input_o\) # (\im_mux2_component|Mux7~1_combout\)))) # (!\alu_component|mux1|Mux24~1_combout\ & 
-- (\alu_component|mux1|Mux24~0_combout\ & (!\ALU_Op[2]~input_o\ & \im_mux2_component|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux24~1_combout\,
	datab => \alu_component|mux1|Mux24~0_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux7~1_combout\,
	combout => \alu_component|mux1|Mux24~2_combout\);

-- Location: LCCOMB_X35_Y31_N24
\alu_component|mux1|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux24~3_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux1_component|f[24]~16_combout\ $ (((\alu_component|adder1|s6|p4|cout~0_combout\) # (\alu_component|adder1|s6|p4|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[24]~16_combout\,
	datac => \alu_component|adder1|s6|p4|cout~0_combout\,
	datad => \alu_component|adder1|s6|p4|cout~2_combout\,
	combout => \alu_component|mux1|Mux24~3_combout\);

-- Location: LCCOMB_X35_Y31_N30
\alu_component|mux1|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux24~4_combout\ = (\ALU_Op[1]~input_o\ & (\im_mux2_component|Mux7~1_combout\ $ (((\alu_component|mux1|Mux24~3_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \im_mux2_component|Mux7~1_combout\,
	datac => \alu_component|mux1|Mux24~2_combout\,
	datad => \alu_component|mux1|Mux24~3_combout\,
	combout => \alu_component|mux1|Mux24~4_combout\);

-- Location: LCCOMB_X34_Y30_N8
\mux_data|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux7~3_combout\ = (\mux_data|Mux7~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux24~4_combout\,
	datad => \mux_data|Mux7~2_combout\,
	combout => \mux_data|Mux7~3_combout\);

-- Location: FF_X34_Y30_N9
\ir_register|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux7~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(24));

-- Location: LCCOMB_X34_Y30_N22
\im_mux1_component|f[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[24]~16_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(24))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(24),
	datad => \A_register|Q\(24),
	combout => \im_mux1_component|f[24]~16_combout\);

-- Location: LCCOMB_X36_Y31_N26
\alu_component|mux1|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux23~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & (\im_mux1_component|f[24]~16_combout\)) # (!\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[22]~7_combout\))))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[24]~16_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[22]~7_combout\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux23~1_combout\);

-- Location: LCCOMB_X36_Y31_N28
\alu_component|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux23~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(23))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(23),
	datad => \A_register|Q\(23),
	combout => \alu_component|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X36_Y31_N12
\alu_component|mux1|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux23~2_combout\ = (\im_mux2_component|Mux8~1_combout\ & ((\alu_component|mux1|Mux23~1_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux23~0_combout\)))) # (!\im_mux2_component|Mux8~1_combout\ & 
-- (\alu_component|mux1|Mux23~1_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux8~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|mux1|Mux23~1_combout\,
	datad => \alu_component|mux1|Mux23~0_combout\,
	combout => \alu_component|mux1|Mux23~2_combout\);

-- Location: LCCOMB_X36_Y30_N30
\alu_component|mux1|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux23~3_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|adder1|s6|p4|s~1_combout\))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux23~2_combout\,
	datac => \alu_component|adder1|s6|p4|s~1_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \alu_component|mux1|Mux23~3_combout\);

-- Location: LCCOMB_X36_Y30_N14
\B_multiplexer|f[23]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[23]~27_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux8~4_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \B_MUX~input_o\,
	datac => \alu_component|mux1|Mux23~3_combout\,
	datad => \mux_data|Mux8~4_combout\,
	combout => \B_multiplexer|f[23]~27_combout\);

-- Location: FF_X36_Y30_N15
\B_register|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[23]~27_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(23));

-- Location: LCCOMB_X36_Y31_N4
\Data_memory_multiplexer|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[23]~23_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(23))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(23),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(23),
	combout => \Data_memory_multiplexer|f[23]~23_combout\);

-- Location: LCCOMB_X35_Y31_N20
\Data_Memory_Module|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~23_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a22\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~64_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a22\,
	combout => \Data_Memory_Module|data_out~23_combout\);

-- Location: FF_X35_Y31_N21
\Data_Memory_Module|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(22));

-- Location: LCCOMB_X35_Y31_N26
\mux_data|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux9~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(22)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[22]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(22),
	combout => \mux_data|Mux9~2_combout\);

-- Location: LCCOMB_X34_Y30_N12
\mux_data|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux9~3_combout\ = (\mux_data|Mux9~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux22~3_combout\,
	datad => \mux_data|Mux9~2_combout\,
	combout => \mux_data|Mux9~3_combout\);

-- Location: FF_X34_Y30_N13
\ir_register|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux9~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(22));

-- Location: LCCOMB_X35_Y30_N0
\A_multiplexer|f[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[22]~24_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux9~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \alu_component|mux1|Mux22~3_combout\,
	datad => \mux_data|Mux9~2_combout\,
	combout => \A_multiplexer|f[22]~24_combout\);

-- Location: FF_X35_Y30_N1
\A_register|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[22]~24_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(22));

-- Location: LCCOMB_X34_Y30_N18
\im_mux1_component|f[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[22]~7_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(22))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(22),
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(22),
	combout => \im_mux1_component|f[22]~7_combout\);

-- Location: LCCOMB_X34_Y30_N2
\alu_component|adder1|s6|p3|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p3|s~4_combout\ = \im_mux2_component|Mux9~1_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux1_component|f[22]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux9~1_combout\,
	datab => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[22]~7_combout\,
	combout => \alu_component|adder1|s6|p3|s~4_combout\);

-- Location: LCCOMB_X34_Y30_N20
\alu_component|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux22~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(22))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(22),
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(22),
	combout => \alu_component|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X35_Y30_N24
\alu_component|mux1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux22~1_combout\ = (\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[23]~6_combout\) # ((!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[2]~input_o\ & \im_mux1_component|f[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux1_component|f[23]~6_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[21]~8_combout\,
	combout => \alu_component|mux1|Mux22~1_combout\);

-- Location: LCCOMB_X34_Y30_N30
\alu_component|mux1|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux22~2_combout\ = (\im_mux2_component|Mux9~1_combout\ & ((\alu_component|mux1|Mux22~1_combout\) # ((\alu_component|mux1|Mux22~0_combout\ & !\ALU_Op[2]~input_o\)))) # (!\im_mux2_component|Mux9~1_combout\ & 
-- (\alu_component|mux1|Mux22~1_combout\ & ((\alu_component|mux1|Mux22~0_combout\) # (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux9~1_combout\,
	datab => \alu_component|mux1|Mux22~0_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux22~1_combout\,
	combout => \alu_component|mux1|Mux22~2_combout\);

-- Location: LCCOMB_X35_Y30_N22
\alu_component|mux1|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux22~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s6|p3|s~4_combout\ $ (((\alu_component|adder1|s6|p2|cout~9_combout\))))) # (!\ALU_Op[1]~input_o\ & (((\alu_component|mux1|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s6|p3|s~4_combout\,
	datab => \alu_component|mux1|Mux22~2_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|adder1|s6|p2|cout~9_combout\,
	combout => \alu_component|mux1|Mux22~3_combout\);

-- Location: LCCOMB_X35_Y31_N28
\B_multiplexer|f[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[22]~25_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(22)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[22]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(22),
	combout => \B_multiplexer|f[22]~25_combout\);

-- Location: LCCOMB_X36_Y31_N16
\B_multiplexer|f[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[22]~26_combout\ = (!\B_MUX~input_o\ & ((\B_multiplexer|f[22]~25_combout\) # ((\alu_component|mux1|Mux22~3_combout\ & \mux_data|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \alu_component|mux1|Mux22~3_combout\,
	datac => \mux_data|Mux31~2_combout\,
	datad => \B_multiplexer|f[22]~25_combout\,
	combout => \B_multiplexer|f[22]~26_combout\);

-- Location: FF_X36_Y31_N17
\B_register|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[22]~26_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(22));

-- Location: LCCOMB_X36_Y31_N10
\Data_memory_multiplexer|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[22]~22_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(22))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_register|Q\(22),
	datac => \REG_Mux~input_o\,
	datad => \A_register|Q\(22),
	combout => \Data_memory_multiplexer|f[22]~22_combout\);

-- Location: FF_X35_Y30_N7
\Data_Memory_Module|Memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_memory_multiplexer|f[21]~21_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~63_q\);

-- Location: LCCOMB_X38_Y30_N10
\Data_Memory_Module|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~22_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a21\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~63_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a21\,
	datad => \Data_Memory_Module|Memory~63_q\,
	combout => \Data_Memory_Module|data_out~22_combout\);

-- Location: FF_X38_Y30_N11
\Data_Memory_Module|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(21));

-- Location: LCCOMB_X38_Y30_N4
\mux_data|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux10~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(21)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[21]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(21),
	combout => \mux_data|Mux10~2_combout\);

-- Location: LCCOMB_X38_Y30_N0
\B_multiplexer|f[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[21]~24_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux10~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_MUX~input_o\,
	datab => \mux_data|Mux10~2_combout\,
	datac => \mux_data|Mux31~2_combout\,
	datad => \alu_component|mux1|Mux21~3_combout\,
	combout => \B_multiplexer|f[21]~24_combout\);

-- Location: FF_X38_Y30_N1
\B_register|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[21]~24_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(21));

-- Location: LCCOMB_X35_Y30_N10
\im_mux2_component|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux10~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux21~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \alu_component|mux1|Mux21~3_combout\,
	datac => \IM_MUX2[0]~input_o\,
	datad => \B_register|Q\(21),
	combout => \im_mux2_component|Mux10~1_combout\);

-- Location: LCCOMB_X35_Y30_N20
\alu_component|adder1|s6|p2|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|s~3_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux10~1_combout\ $ (!\im_mux1_component|f[21]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux2_component|Mux10~1_combout\,
	datad => \im_mux1_component|f[21]~8_combout\,
	combout => \alu_component|adder1|s6|p2|s~3_combout\);

-- Location: LCCOMB_X38_Y30_N28
\alu_component|adder1|s6|p2|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|s~4_combout\ = (\im_mux1_component|f[19]~11_combout\ & ((\alu_component|adder1|s5|p3|cout~9_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux12~1_combout\)))) # (!\im_mux1_component|f[19]~11_combout\ & 
-- (\alu_component|adder1|s5|p3|cout~9_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[19]~11_combout\,
	datac => \im_mux2_component|Mux12~1_combout\,
	datad => \alu_component|adder1|s5|p3|cout~9_combout\,
	combout => \alu_component|adder1|s6|p2|s~4_combout\);

-- Location: LCCOMB_X38_Y30_N2
\alu_component|adder1|s6|p2|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|s~2_combout\ = (\im_mux1_component|f[20]~9_combout\ & ((\ALU_Op[2]~input_o\ $ (!\im_mux2_component|Mux11~1_combout\)))) # (!\im_mux1_component|f[20]~9_combout\ & ((\ALU_Op[2]~input_o\ $ (!\im_mux2_component|Mux11~1_combout\)) # 
-- (!\im_mux1_component|f[20]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[20]~9_combout\,
	datab => \im_mux1_component|f[20]~10_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux11~1_combout\,
	combout => \alu_component|adder1|s6|p2|s~2_combout\);

-- Location: LCCOMB_X38_Y30_N24
\alu_component|adder1|s6|p2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p2|s~combout\ = \alu_component|adder1|s6|p2|s~3_combout\ $ (((\alu_component|adder1|s6|p2|s~2_combout\ & ((!\alu_component|adder1|s6|p1|cout~0_combout\) # (!\alu_component|adder1|s6|p2|s~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s6|p2|s~3_combout\,
	datab => \alu_component|adder1|s6|p2|s~4_combout\,
	datac => \alu_component|adder1|s6|p1|cout~0_combout\,
	datad => \alu_component|adder1|s6|p2|s~2_combout\,
	combout => \alu_component|adder1|s6|p2|s~combout\);

-- Location: LCCOMB_X34_Y30_N16
\alu_component|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux21~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(21))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(21),
	datad => \A_register|Q\(21),
	combout => \alu_component|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X41_Y30_N0
\im_mux1_component|f[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[20]~23_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(20))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(20),
	datad => \A_register|Q\(20),
	combout => \im_mux1_component|f[20]~23_combout\);

-- Location: LCCOMB_X35_Y30_N18
\alu_component|mux1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux21~1_combout\ = (\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[22]~7_combout\) # ((!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (((\ALU_Op[2]~input_o\ & \im_mux1_component|f[20]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux1_component|f[22]~7_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[20]~23_combout\,
	combout => \alu_component|mux1|Mux21~1_combout\);

-- Location: LCCOMB_X35_Y30_N8
\alu_component|mux1|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux21~2_combout\ = (\alu_component|mux1|Mux21~0_combout\ & ((\alu_component|mux1|Mux21~1_combout\) # ((\im_mux2_component|Mux10~1_combout\ & !\ALU_Op[2]~input_o\)))) # (!\alu_component|mux1|Mux21~0_combout\ & 
-- (\alu_component|mux1|Mux21~1_combout\ & ((\im_mux2_component|Mux10~1_combout\) # (\ALU_Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux21~0_combout\,
	datab => \im_mux2_component|Mux10~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux21~1_combout\,
	combout => \alu_component|mux1|Mux21~2_combout\);

-- Location: LCCOMB_X35_Y30_N14
\alu_component|mux1|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux21~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s6|p2|s~combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s6|p2|s~combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux21~2_combout\,
	combout => \alu_component|mux1|Mux21~3_combout\);

-- Location: LCCOMB_X34_Y30_N4
\mux_data|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux10~3_combout\ = (\mux_data|Mux10~2_combout\) # ((!\DATA_Mux[0]~input_o\ & (\DATA_Mux[1]~input_o\ & \alu_component|mux1|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux21~3_combout\,
	datad => \mux_data|Mux10~2_combout\,
	combout => \mux_data|Mux10~3_combout\);

-- Location: FF_X34_Y30_N5
\ir_register|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux10~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(21));

-- Location: LCCOMB_X34_Y30_N14
\im_mux1_component|f[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[21]~8_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(21))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(21),
	datad => \A_register|Q\(21),
	combout => \im_mux1_component|f[21]~8_combout\);

-- Location: LCCOMB_X41_Y30_N8
\alu_component|mux1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux20~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[21]~8_combout\))) # (!\ALU_Op[0]~input_o\ & (\im_mux1_component|f[19]~11_combout\)))) # (!\ALU_Op[2]~input_o\ & (((\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[19]~11_combout\,
	datac => \ALU_Op[0]~input_o\,
	datad => \im_mux1_component|f[21]~8_combout\,
	combout => \alu_component|mux1|Mux20~1_combout\);

-- Location: LCCOMB_X41_Y30_N10
\alu_component|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux20~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(20))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(20),
	datad => \A_register|Q\(20),
	combout => \alu_component|mux1|Mux20~0_combout\);

-- Location: LCCOMB_X41_Y30_N26
\alu_component|mux1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux20~2_combout\ = (\im_mux2_component|Mux11~1_combout\ & ((\alu_component|mux1|Mux20~1_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux20~0_combout\)))) # (!\im_mux2_component|Mux11~1_combout\ & 
-- (\alu_component|mux1|Mux20~1_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux11~1_combout\,
	datab => \alu_component|mux1|Mux20~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux20~0_combout\,
	combout => \alu_component|mux1|Mux20~2_combout\);

-- Location: LCCOMB_X41_Y30_N20
\alu_component|adder1|s6|p1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s6|p1|s~0_combout\ = \im_mux2_component|Mux11~1_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux1_component|f[20]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im_mux2_component|Mux11~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[20]~23_combout\,
	combout => \alu_component|adder1|s6|p1|s~0_combout\);

-- Location: LCCOMB_X39_Y30_N6
\alu_component|adder1|s5|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p4|cout~0_combout\ = (\alu_component|adder1|s5|p3|cout~9_combout\ & ((\im_mux1_component|f[19]~11_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux12~1_combout\)))) # (!\alu_component|adder1|s5|p3|cout~9_combout\ & 
-- (\im_mux1_component|f[19]~11_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \alu_component|adder1|s5|p3|cout~9_combout\,
	datac => \im_mux1_component|f[19]~11_combout\,
	datad => \im_mux2_component|Mux12~1_combout\,
	combout => \alu_component|adder1|s5|p4|cout~0_combout\);

-- Location: LCCOMB_X39_Y30_N8
\alu_component|mux1|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux20~3_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|adder1|s6|p1|s~0_combout\ $ (\alu_component|adder1|s5|p4|cout~0_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|mux1|Mux20~2_combout\,
	datac => \alu_component|adder1|s6|p1|s~0_combout\,
	datad => \alu_component|adder1|s5|p4|cout~0_combout\,
	combout => \alu_component|mux1|Mux20~3_combout\);

-- Location: LCCOMB_X35_Y32_N2
\B_multiplexer|f[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[20]~23_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux11~2_combout\) # ((\alu_component|mux1|Mux20~3_combout\ & \mux_data|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux20~3_combout\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \B_MUX~input_o\,
	datad => \mux_data|Mux11~2_combout\,
	combout => \B_multiplexer|f[20]~23_combout\);

-- Location: FF_X35_Y32_N3
\B_register|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[20]~23_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(20));

-- Location: LCCOMB_X35_Y32_N30
\Data_memory_multiplexer|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[20]~20_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(20))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_register|Q\(20),
	datab => \REG_Mux~input_o\,
	datad => \A_register|Q\(20),
	combout => \Data_memory_multiplexer|f[20]~20_combout\);

-- Location: FF_X35_Y30_N29
\Data_Memory_Module|Memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_memory_multiplexer|f[19]~19_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~61_q\);

-- Location: LCCOMB_X36_Y30_N20
\Data_Memory_Module|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~20_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a19\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a19\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~61_q\,
	combout => \Data_Memory_Module|data_out~20_combout\);

-- Location: FF_X36_Y30_N21
\Data_Memory_Module|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(19));

-- Location: LCCOMB_X36_Y30_N24
\mux_data|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux12~3_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(19)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[19]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(19),
	combout => \mux_data|Mux12~3_combout\);

-- Location: LCCOMB_X36_Y30_N12
\B_multiplexer|f[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[19]~22_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux12~3_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \mux_data|Mux12~3_combout\,
	datac => \alu_component|mux1|Mux19~3_combout\,
	datad => \B_MUX~input_o\,
	combout => \B_multiplexer|f[19]~22_combout\);

-- Location: FF_X36_Y30_N13
\B_register|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[19]~22_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(19));

-- Location: LCCOMB_X38_Y30_N14
\im_mux2_component|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux12~1_combout\ = (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & (\alu_component|mux1|Mux19~3_combout\)) # (!\IM_MUX2[1]~input_o\ & ((\B_register|Q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~input_o\,
	datab => \IM_MUX2[0]~input_o\,
	datac => \alu_component|mux1|Mux19~3_combout\,
	datad => \B_register|Q\(19),
	combout => \im_mux2_component|Mux12~1_combout\);

-- Location: LCCOMB_X41_Y30_N2
\alu_component|mux1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux19~1_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[0]~input_o\ & ((\im_mux1_component|f[20]~23_combout\))) # (!\ALU_Op[0]~input_o\ & (\im_mux1_component|f[18]~12_combout\)))) # (!\ALU_Op[2]~input_o\ & (\ALU_Op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \im_mux1_component|f[18]~12_combout\,
	datad => \im_mux1_component|f[20]~23_combout\,
	combout => \alu_component|mux1|Mux19~1_combout\);

-- Location: LCCOMB_X41_Y30_N18
\alu_component|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux19~0_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(19)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(19),
	datab => \ir_register|Q\(19),
	datac => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X41_Y30_N24
\alu_component|mux1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux19~2_combout\ = (\im_mux2_component|Mux12~1_combout\ & ((\alu_component|mux1|Mux19~1_combout\) # ((!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux19~0_combout\)))) # (!\im_mux2_component|Mux12~1_combout\ & 
-- (\alu_component|mux1|Mux19~1_combout\ & ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux12~1_combout\,
	datab => \alu_component|mux1|Mux19~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux19~0_combout\,
	combout => \alu_component|mux1|Mux19~2_combout\);

-- Location: LCCOMB_X41_Y30_N30
\alu_component|adder1|s5|p4|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p4|s~4_combout\ = \ALU_Op[2]~input_o\ $ (\im_mux1_component|f[19]~11_combout\ $ (\im_mux2_component|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[19]~11_combout\,
	datad => \im_mux2_component|Mux12~1_combout\,
	combout => \alu_component|adder1|s5|p4|s~4_combout\);

-- Location: LCCOMB_X39_Y30_N4
\alu_component|mux1|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux19~3_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|adder1|s5|p4|s~4_combout\ $ (\alu_component|adder1|s5|p3|cout~9_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux19~2_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|adder1|s5|p4|s~4_combout\,
	datad => \alu_component|adder1|s5|p3|cout~9_combout\,
	combout => \alu_component|mux1|Mux19~3_combout\);

-- Location: LCCOMB_X35_Y30_N12
\A_multiplexer|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[19]~19_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux12~3_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux31~2_combout\,
	datac => \alu_component|mux1|Mux19~3_combout\,
	datad => \mux_data|Mux12~3_combout\,
	combout => \A_multiplexer|f[19]~19_combout\);

-- Location: FF_X35_Y30_N13
\A_register|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[19]~19_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(19));

-- Location: LCCOMB_X35_Y30_N28
\Data_memory_multiplexer|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[19]~19_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(19)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(19),
	datab => \B_register|Q\(19),
	datad => \REG_Mux~input_o\,
	combout => \Data_memory_multiplexer|f[19]~19_combout\);

-- Location: LCCOMB_X39_Y30_N22
\Data_Memory_Module|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~19_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a18\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~60_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a18\,
	combout => \Data_Memory_Module|data_out~19_combout\);

-- Location: FF_X39_Y30_N23
\Data_Memory_Module|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(18));

-- Location: LCCOMB_X39_Y30_N28
\mux_data|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux13~2_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(18)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_IN[18]~input_o\,
	datac => \Data_Memory_Module|data_out\(18),
	datad => \DATA_Mux[0]~input_o\,
	combout => \mux_data|Mux13~2_combout\);

-- Location: LCCOMB_X34_Y30_N28
\A_multiplexer|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[18]~18_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux13~2_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_data|Mux31~2_combout\,
	datab => \A_MUX~input_o\,
	datac => \mux_data|Mux13~2_combout\,
	datad => \alu_component|mux1|Mux18~3_combout\,
	combout => \A_multiplexer|f[18]~18_combout\);

-- Location: FF_X34_Y30_N29
\A_register|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[18]~18_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(18));

-- Location: LCCOMB_X41_Y30_N6
\alu_component|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux18~0_combout\ = (\IM_MUX1~input_o\ & ((\ir_register|Q\(18)))) # (!\IM_MUX1~input_o\ & (\A_register|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_register|Q\(18),
	datac => \IM_MUX1~input_o\,
	datad => \ir_register|Q\(18),
	combout => \alu_component|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X42_Y30_N2
\im_mux1_component|f[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[17]~18_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(17))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \ir_register|Q\(17),
	datad => \A_register|Q\(17),
	combout => \im_mux1_component|f[17]~18_combout\);

-- Location: LCCOMB_X42_Y30_N24
\alu_component|mux1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux18~1_combout\ = (\ALU_Op[0]~input_o\ & (((\im_mux1_component|f[19]~11_combout\) # (!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\im_mux1_component|f[17]~18_combout\ & (\ALU_Op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \im_mux1_component|f[17]~18_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[19]~11_combout\,
	combout => \alu_component|mux1|Mux18~1_combout\);

-- Location: LCCOMB_X42_Y30_N10
\alu_component|mux1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux18~2_combout\ = (\ALU_Op[2]~input_o\ & (((\alu_component|mux1|Mux18~1_combout\)))) # (!\ALU_Op[2]~input_o\ & ((\im_mux2_component|Mux13~1_combout\ & ((\alu_component|mux1|Mux18~0_combout\) # (\alu_component|mux1|Mux18~1_combout\))) 
-- # (!\im_mux2_component|Mux13~1_combout\ & (\alu_component|mux1|Mux18~0_combout\ & \alu_component|mux1|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux2_component|Mux13~1_combout\,
	datac => \alu_component|mux1|Mux18~0_combout\,
	datad => \alu_component|mux1|Mux18~1_combout\,
	combout => \alu_component|mux1|Mux18~2_combout\);

-- Location: LCCOMB_X42_Y30_N0
\alu_component|adder1|s5|p3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p3|s~0_combout\ = \im_mux1_component|f[18]~12_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im_mux1_component|f[18]~12_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux13~1_combout\,
	combout => \alu_component|adder1|s5|p3|s~0_combout\);

-- Location: LCCOMB_X40_Y30_N14
\alu_component|adder1|s5|p2|cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p2|cout~6_combout\ = (\alu_component|adder1|s4|p4|cout~0_combout\ & ((\im_mux1_component|f[16]~15_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux15~1_combout\)))) # (!\alu_component|adder1|s4|p4|cout~0_combout\ & 
-- (\im_mux1_component|f[16]~15_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|adder1|s4|p4|cout~0_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux1_component|f[16]~15_combout\,
	datad => \im_mux2_component|Mux15~1_combout\,
	combout => \alu_component|adder1|s5|p2|cout~6_combout\);

-- Location: LCCOMB_X39_Y30_N30
\alu_component|adder1|s5|p2|cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p2|cout~4_combout\ = (\im_mux1_component|f[17]~14_combout\ & (\ALU_Op[2]~input_o\ $ (((\im_mux2_component|Mux14~1_combout\))))) # (!\im_mux1_component|f[17]~14_combout\ & (\im_mux1_component|f[17]~13_combout\ & 
-- (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \im_mux1_component|f[17]~14_combout\,
	datac => \im_mux1_component|f[17]~13_combout\,
	datad => \im_mux2_component|Mux14~1_combout\,
	combout => \alu_component|adder1|s5|p2|cout~4_combout\);

-- Location: LCCOMB_X39_Y30_N20
\alu_component|adder1|s5|p2|cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p2|cout~5_combout\ = (\alu_component|adder1|s5|p2|cout~4_combout\) # ((\alu_component|adder1|s5|p2|cout~6_combout\ & \alu_component|adder1|s5|p2|cout~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|adder1|s5|p2|cout~6_combout\,
	datac => \alu_component|adder1|s5|p2|cout~4_combout\,
	datad => \alu_component|adder1|s5|p2|cout~2_combout\,
	combout => \alu_component|adder1|s5|p2|cout~5_combout\);

-- Location: LCCOMB_X39_Y30_N18
\alu_component|mux1|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux18~3_combout\ = (\ALU_Op[1]~input_o\ & ((\alu_component|adder1|s5|p3|s~0_combout\ $ (\alu_component|adder1|s5|p2|cout~5_combout\)))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux18~2_combout\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|adder1|s5|p3|s~0_combout\,
	datad => \alu_component|adder1|s5|p2|cout~5_combout\,
	combout => \alu_component|mux1|Mux18~3_combout\);

-- Location: LCCOMB_X39_Y30_N26
\B_multiplexer|f[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[18]~20_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(18)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_IN[18]~input_o\,
	datac => \Data_Memory_Module|data_out\(18),
	datad => \DATA_Mux[0]~input_o\,
	combout => \B_multiplexer|f[18]~20_combout\);

-- Location: LCCOMB_X39_Y30_N16
\B_multiplexer|f[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[18]~21_combout\ = (!\B_MUX~input_o\ & ((\B_multiplexer|f[18]~20_combout\) # ((\alu_component|mux1|Mux18~3_combout\ & \mux_data|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux18~3_combout\,
	datab => \B_MUX~input_o\,
	datac => \B_multiplexer|f[18]~20_combout\,
	datad => \mux_data|Mux31~2_combout\,
	combout => \B_multiplexer|f[18]~21_combout\);

-- Location: FF_X39_Y30_N17
\B_register|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[18]~21_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(18));

-- Location: LCCOMB_X41_Y30_N28
\Data_memory_multiplexer|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[18]~18_combout\ = (\REG_Mux~input_o\ & (\B_register|Q\(18))) # (!\REG_Mux~input_o\ & ((\A_register|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Mux~input_o\,
	datac => \B_register|Q\(18),
	datad => \A_register|Q\(18),
	combout => \Data_memory_multiplexer|f[18]~18_combout\);

-- Location: LCCOMB_X35_Y32_N10
\Data_Memory_Module|Memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~59feeder_combout\ = \Data_memory_multiplexer|f[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_memory_multiplexer|f[17]~17_combout\,
	combout => \Data_Memory_Module|Memory~59feeder_combout\);

-- Location: FF_X35_Y32_N11
\Data_Memory_Module|Memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~59feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~59_q\);

-- Location: LCCOMB_X36_Y32_N28
\Data_Memory_Module|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~18_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a17\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a17\,
	datad => \Data_Memory_Module|Memory~59_q\,
	combout => \Data_Memory_Module|data_out~18_combout\);

-- Location: FF_X36_Y32_N29
\Data_Memory_Module|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(17));

-- Location: LCCOMB_X36_Y32_N16
\mux_data|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux14~3_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(17)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[17]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(17),
	combout => \mux_data|Mux14~3_combout\);

-- Location: LCCOMB_X36_Y32_N8
\A_multiplexer|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[17]~17_combout\ = (!\A_MUX~input_o\ & ((\mux_data|Mux14~3_combout\) # ((\mux_data|Mux31~2_combout\ & \alu_component|mux1|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \mux_data|Mux14~3_combout\,
	datac => \mux_data|Mux31~2_combout\,
	datad => \alu_component|mux1|Mux17~6_combout\,
	combout => \A_multiplexer|f[17]~17_combout\);

-- Location: FF_X36_Y32_N9
\A_register|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[17]~17_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(17));

-- Location: LCCOMB_X35_Y32_N12
\Data_memory_multiplexer|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_memory_multiplexer|f[17]~17_combout\ = (\REG_Mux~input_o\ & ((\B_register|Q\(17)))) # (!\REG_Mux~input_o\ & (\A_register|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_Mux~input_o\,
	datac => \A_register|Q\(17),
	datad => \B_register|Q\(17),
	combout => \Data_memory_multiplexer|f[17]~17_combout\);

-- Location: FF_X41_Y31_N25
\Data_Memory_Module|Memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[16]~16_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~58_q\);

-- Location: LCCOMB_X41_Y31_N30
\Data_Memory_Module|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~17_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a16\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~58_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a16\,
	datad => \Data_Memory_Module|Memory~58_q\,
	combout => \Data_Memory_Module|data_out~17_combout\);

-- Location: FF_X41_Y31_N31
\Data_Memory_Module|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(16));

-- Location: LCCOMB_X42_Y30_N12
\mux_data|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux15~3_combout\ = (!\DATA_Mux[1]~input_o\ & ((\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(16)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[16]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(16),
	combout => \mux_data|Mux15~3_combout\);

-- Location: LCCOMB_X43_Y30_N2
\B_multiplexer|f[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_multiplexer|f[16]~18_combout\ = (!\B_MUX~input_o\ & ((\mux_data|Mux15~3_combout\) # ((\alu_component|mux1|Mux16~3_combout\ & \mux_data|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux16~3_combout\,
	datab => \B_MUX~input_o\,
	datac => \mux_data|Mux31~2_combout\,
	datad => \mux_data|Mux15~3_combout\,
	combout => \B_multiplexer|f[16]~18_combout\);

-- Location: FF_X43_Y30_N3
\B_register|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \B_multiplexer|f[16]~18_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_register|Q\(16));

-- Location: LCCOMB_X40_Y30_N6
\im_mux2_component|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux2_component|Mux15~1_combout\ = (\IM_MUX2[0]~input_o\ & (\IM_MUX2[1]~input_o\)) # (!\IM_MUX2[0]~input_o\ & ((\IM_MUX2[1]~input_o\ & ((\alu_component|mux1|Mux16~3_combout\))) # (!\IM_MUX2[1]~input_o\ & (\B_register|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~input_o\,
	datab => \IM_MUX2[1]~input_o\,
	datac => \B_register|Q\(16),
	datad => \alu_component|mux1|Mux16~3_combout\,
	combout => \im_mux2_component|Mux15~1_combout\);

-- Location: LCCOMB_X40_Y30_N4
\alu_component|adder1|s5|p1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s5|p1|s~0_combout\ = \im_mux1_component|f[16]~15_combout\ $ (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux15~1_combout\ $ (\alu_component|adder1|s4|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[16]~15_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \im_mux2_component|Mux15~1_combout\,
	datad => \alu_component|adder1|s4|p4|cout~0_combout\,
	combout => \alu_component|adder1|s5|p1|s~0_combout\);

-- Location: LCCOMB_X43_Y30_N26
\im_mux1_component|f[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[15]~21_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(15),
	combout => \im_mux1_component|f[15]~21_combout\);

-- Location: LCCOMB_X43_Y30_N6
\alu_component|mux1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux16~1_combout\ = (\ALU_Op[0]~input_o\ & (((\im_mux1_component|f[17]~18_combout\) # (!\ALU_Op[2]~input_o\)))) # (!\ALU_Op[0]~input_o\ & (\im_mux1_component|f[15]~21_combout\ & (\ALU_Op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[15]~21_combout\,
	datab => \ALU_Op[0]~input_o\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux1_component|f[17]~18_combout\,
	combout => \alu_component|mux1|Mux16~1_combout\);

-- Location: LCCOMB_X43_Y30_N12
\alu_component|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux16~0_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(16))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(16),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(16),
	combout => \alu_component|mux1|Mux16~0_combout\);

-- Location: LCCOMB_X43_Y30_N24
\alu_component|mux1|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux16~2_combout\ = (\alu_component|mux1|Mux16~1_combout\ & ((\im_mux2_component|Mux15~1_combout\) # ((\ALU_Op[2]~input_o\) # (\alu_component|mux1|Mux16~0_combout\)))) # (!\alu_component|mux1|Mux16~1_combout\ & 
-- (\im_mux2_component|Mux15~1_combout\ & (!\ALU_Op[2]~input_o\ & \alu_component|mux1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux16~1_combout\,
	datab => \im_mux2_component|Mux15~1_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux16~0_combout\,
	combout => \alu_component|mux1|Mux16~2_combout\);

-- Location: LCCOMB_X43_Y30_N10
\alu_component|mux1|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux16~3_combout\ = (\ALU_Op[1]~input_o\ & (\alu_component|adder1|s5|p1|s~0_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_component|adder1|s5|p1|s~0_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux16~2_combout\,
	combout => \alu_component|mux1|Mux16~3_combout\);

-- Location: LCCOMB_X42_Y30_N18
\mux_data|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux15~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(16)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[16]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(16),
	combout => \mux_data|Mux15~2_combout\);

-- Location: LCCOMB_X42_Y30_N4
\mux_data|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux15~4_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux16~3_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux16~3_combout\,
	datad => \mux_data|Mux15~2_combout\,
	combout => \mux_data|Mux15~4_combout\);

-- Location: FF_X42_Y30_N19
\ir_register|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux15~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(16));

-- Location: LCCOMB_X43_Y30_N16
\im_mux1_component|f[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[16]~15_combout\ = (\IM_MUX1~input_o\ & (\ir_register|Q\(16))) # (!\IM_MUX1~input_o\ & ((\A_register|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(16),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(16),
	combout => \im_mux1_component|f[16]~15_combout\);

-- Location: LCCOMB_X43_Y30_N22
\alu_component|mux1|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux15~6_combout\ = (\ALU_Op[0]~input_o\ & (((\im_mux1_component|f[16]~15_combout\)))) # (!\ALU_Op[0]~input_o\ & (!\IM_MUX1~input_o\ & (\A_register|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(14),
	datac => \ALU_Op[0]~input_o\,
	datad => \im_mux1_component|f[16]~15_combout\,
	combout => \alu_component|mux1|Mux15~6_combout\);

-- Location: LCCOMB_X43_Y30_N30
\alu_component|mux1|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux15~5_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux15~4_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux15~6_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (((\alu_component|mux1|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|mux1|Mux15~4_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux15~6_combout\,
	combout => \alu_component|mux1|Mux15~5_combout\);

-- Location: FF_X38_Y31_N13
\Data_Memory_Module|Memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[15]~15_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~57_q\);

-- Location: LCCOMB_X38_Y31_N30
\Data_Memory_Module|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~16_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a15\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~57_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a15\,
	datad => \Data_Memory_Module|Memory~57_q\,
	combout => \Data_Memory_Module|data_out~16_combout\);

-- Location: FF_X38_Y31_N31
\Data_Memory_Module|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(15));

-- Location: IOIBUF_X49_Y0_N8
\DATA_IN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(15),
	o => \DATA_IN[15]~input_o\);

-- Location: LCCOMB_X42_Y30_N14
\mux_data|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux16~2_combout\ = (\DATA_Mux[0]~input_o\ & (\Data_Memory_Module|data_out\(15))) # (!\DATA_Mux[0]~input_o\ & ((\DATA_IN[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datac => \Data_Memory_Module|data_out\(15),
	datad => \DATA_IN[15]~input_o\,
	combout => \mux_data|Mux16~2_combout\);

-- Location: LCCOMB_X43_Y30_N18
\mux_data|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux16~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux15~5_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \alu_component|mux1|Mux15~5_combout\,
	datad => \mux_data|Mux16~2_combout\,
	combout => \mux_data|Mux16~3_combout\);

-- Location: FF_X43_Y30_N19
\ir_register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux16~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(15));

-- Location: LCCOMB_X42_Y30_N16
\A_multiplexer|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[15]~15_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(15))) # (!\A_MUX~input_o\ & ((\mux_data|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX~input_o\,
	datac => \ir_register|Q\(15),
	datad => \mux_data|Mux16~3_combout\,
	combout => \A_multiplexer|f[15]~15_combout\);

-- Location: FF_X42_Y30_N17
\A_register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[15]~15_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(15));

-- Location: LCCOMB_X36_Y33_N26
\alu_component|mux1|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux14~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(15)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(13),
	datac => \ALU_Op[0]~input_o\,
	datad => \A_register|Q\(15),
	combout => \alu_component|mux1|Mux14~12_combout\);

-- Location: LCCOMB_X36_Y33_N2
\alu_component|mux1|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux14~8_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datac => \A_register|Q\(14),
	combout => \alu_component|mux1|Mux14~8_combout\);

-- Location: LCCOMB_X40_Y33_N0
\alu_component|mux1|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux14~9_combout\ = (\im_mux2_component|Mux17~2_combout\ & ((\alu_component|mux1|Mux14~8_combout\ & (!\ALU_Op[1]~input_o\)) # (!\alu_component|mux1|Mux14~8_combout\ & ((\ALU_Op[1]~input_o\) # (\ALU_Op[0]~input_o\))))) # 
-- (!\im_mux2_component|Mux17~2_combout\ & (\alu_component|mux1|Mux14~8_combout\ & ((\ALU_Op[1]~input_o\) # (\ALU_Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux2_component|Mux17~2_combout\,
	datab => \alu_component|mux1|Mux14~8_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux14~9_combout\);

-- Location: LCCOMB_X39_Y33_N0
\alu_component|mux1|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux14~10_combout\ = \alu_component|mux1|Mux14~9_combout\ $ (((\ALU_Op[1]~input_o\ & \alu_component|adder1|s4|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux14~9_combout\,
	datad => \alu_component|adder1|s4|p2|cout~0_combout\,
	combout => \alu_component|mux1|Mux14~10_combout\);

-- Location: LCCOMB_X36_Y33_N12
\alu_component|mux1|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux14~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & ((!\alu_component|mux1|Mux14~10_combout\))) # (!\ALU_Op[1]~input_o\ & (\alu_component|mux1|Mux14~12_combout\)))) # (!\ALU_Op[2]~input_o\ & 
-- (((\alu_component|mux1|Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \ALU_Op[2]~input_o\,
	datac => \alu_component|mux1|Mux14~12_combout\,
	datad => \alu_component|mux1|Mux14~10_combout\,
	combout => \alu_component|mux1|Mux14~11_combout\);

-- Location: IOIBUF_X0_Y15_N22
\DATA_IN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(14),
	o => \DATA_IN[14]~input_o\);

-- Location: FF_X41_Y31_N13
\Data_Memory_Module|Memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[14]~14_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~56_q\);

-- Location: LCCOMB_X38_Y31_N10
\Data_Memory_Module|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~15_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a14\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a14\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~56_q\,
	combout => \Data_Memory_Module|data_out~15_combout\);

-- Location: FF_X38_Y31_N11
\Data_Memory_Module|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(14));

-- Location: LCCOMB_X38_Y31_N24
\mux_data|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux17~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(14)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[14]~input_o\,
	datad => \Data_Memory_Module|data_out\(14),
	combout => \mux_data|Mux17~2_combout\);

-- Location: LCCOMB_X40_Y30_N20
\mux_data|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux17~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux14~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \alu_component|mux1|Mux14~11_combout\,
	datad => \mux_data|Mux17~2_combout\,
	combout => \mux_data|Mux17~3_combout\);

-- Location: FF_X40_Y30_N21
\ir_register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux17~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(14));

-- Location: LCCOMB_X41_Y30_N16
\A_multiplexer|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[14]~14_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(14))) # (!\A_MUX~input_o\ & ((\mux_data|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \ir_register|Q\(14),
	datad => \mux_data|Mux17~3_combout\,
	combout => \A_multiplexer|f[14]~14_combout\);

-- Location: FF_X41_Y30_N17
\A_register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[14]~14_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(14));

-- Location: LCCOMB_X40_Y33_N18
\alu_component|mux1|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux13~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(14)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \A_register|Q\(12),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(14),
	combout => \alu_component|mux1|Mux13~12_combout\);

-- Location: LCCOMB_X40_Y33_N30
\alu_component|mux1|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux13~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux13~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux13~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux13~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux13~12_combout\,
	combout => \alu_component|mux1|Mux13~11_combout\);

-- Location: IOIBUF_X0_Y49_N8
\DATA_IN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(13),
	o => \DATA_IN[13]~input_o\);

-- Location: FF_X38_Y31_N9
\Data_Memory_Module|Memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[13]~13_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~55_q\);

-- Location: LCCOMB_X38_Y31_N6
\Data_Memory_Module|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~14_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a13\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~55_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a13\,
	combout => \Data_Memory_Module|data_out~14_combout\);

-- Location: FF_X38_Y31_N7
\Data_Memory_Module|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(13));

-- Location: LCCOMB_X38_Y31_N8
\mux_data|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux18~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(13)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[13]~input_o\,
	datad => \Data_Memory_Module|data_out\(13),
	combout => \mux_data|Mux18~2_combout\);

-- Location: LCCOMB_X40_Y33_N22
\mux_data|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux18~3_combout\ = (\DATA_Mux[1]~input_o\ & (\alu_component|mux1|Mux13~11_combout\ & (!\DATA_Mux[0]~input_o\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux13~11_combout\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \mux_data|Mux18~2_combout\,
	combout => \mux_data|Mux18~3_combout\);

-- Location: FF_X40_Y33_N27
\ir_register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux18~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(13));

-- Location: LCCOMB_X39_Y33_N26
\A_multiplexer|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[13]~13_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(13))) # (!\A_MUX~input_o\ & ((\mux_data|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(13),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux18~3_combout\,
	combout => \A_multiplexer|f[13]~13_combout\);

-- Location: FF_X39_Y33_N27
\A_register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[13]~13_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(13));

-- Location: LCCOMB_X36_Y33_N20
\alu_component|mux1|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux12~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(13)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(11),
	datac => \ALU_Op[0]~input_o\,
	datad => \A_register|Q\(13),
	combout => \alu_component|mux1|Mux12~12_combout\);

-- Location: LCCOMB_X36_Y33_N28
\alu_component|mux1|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux12~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux12~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux12~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux12~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux12~12_combout\,
	combout => \alu_component|mux1|Mux12~11_combout\);

-- Location: IOIBUF_X0_Y51_N15
\DATA_IN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(12),
	o => \DATA_IN[12]~input_o\);

-- Location: FF_X39_Y31_N29
\Data_Memory_Module|Memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[12]~12_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~54_q\);

-- Location: LCCOMB_X38_Y31_N18
\Data_Memory_Module|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~13_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a12\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~54_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a12\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~54_q\,
	combout => \Data_Memory_Module|data_out~13_combout\);

-- Location: FF_X38_Y31_N19
\Data_Memory_Module|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(12));

-- Location: LCCOMB_X38_Y31_N12
\mux_data|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux19~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(12)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[12]~input_o\,
	datab => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(12),
	combout => \mux_data|Mux19~2_combout\);

-- Location: LCCOMB_X38_Y33_N12
\mux_data|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux19~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux12~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \alu_component|mux1|Mux12~11_combout\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \mux_data|Mux19~2_combout\,
	combout => \mux_data|Mux19~3_combout\);

-- Location: FF_X38_Y33_N13
\ir_register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux19~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(12));

-- Location: LCCOMB_X39_Y33_N4
\A_multiplexer|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[12]~12_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(12))) # (!\A_MUX~input_o\ & ((\mux_data|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(12),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux19~3_combout\,
	combout => \A_multiplexer|f[12]~12_combout\);

-- Location: FF_X39_Y33_N5
\A_register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[12]~12_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(12));

-- Location: LCCOMB_X40_Y33_N28
\alu_component|mux1|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux11~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(12)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(10),
	datab => \A_register|Q\(12),
	datac => \IM_MUX1~input_o\,
	datad => \ALU_Op[0]~input_o\,
	combout => \alu_component|mux1|Mux11~12_combout\);

-- Location: LCCOMB_X40_Y33_N24
\alu_component|mux1|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux11~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux11~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux11~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux11~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux11~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux11~12_combout\,
	combout => \alu_component|mux1|Mux11~11_combout\);

-- Location: IOIBUF_X115_Y33_N8
\DATA_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(11),
	o => \DATA_IN[11]~input_o\);

-- Location: LCCOMB_X36_Y31_N24
\Data_Memory_Module|Memory~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~53feeder_combout\ = \Data_memory_multiplexer|f[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_memory_multiplexer|f[11]~11_combout\,
	combout => \Data_Memory_Module|Memory~53feeder_combout\);

-- Location: FF_X36_Y31_N25
\Data_Memory_Module|Memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~53feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~53_q\);

-- Location: LCCOMB_X38_Y31_N16
\Data_Memory_Module|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~12_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a11\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a11\,
	datad => \Data_Memory_Module|Memory~53_q\,
	combout => \Data_Memory_Module|data_out~12_combout\);

-- Location: FF_X38_Y31_N17
\Data_Memory_Module|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(11));

-- Location: LCCOMB_X38_Y33_N6
\mux_data|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux20~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(11)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_IN[11]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(11),
	combout => \mux_data|Mux20~2_combout\);

-- Location: LCCOMB_X38_Y33_N10
\mux_data|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux20~3_combout\ = (\DATA_Mux[1]~input_o\ & (\alu_component|mux1|Mux11~11_combout\ & (!\DATA_Mux[0]~input_o\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux11~11_combout\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \mux_data|Mux20~2_combout\,
	combout => \mux_data|Mux20~3_combout\);

-- Location: FF_X38_Y33_N11
\ir_register|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux20~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(11));

-- Location: LCCOMB_X36_Y33_N16
\A_multiplexer|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[11]~11_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(11))) # (!\A_MUX~input_o\ & ((\mux_data|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(11),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux20~3_combout\,
	combout => \A_multiplexer|f[11]~11_combout\);

-- Location: FF_X36_Y33_N17
\A_register|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[11]~11_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(11));

-- Location: LCCOMB_X36_Y33_N18
\alu_component|mux1|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux10~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\A_register|Q\(11))) # (!\ALU_Op[0]~input_o\ & ((\A_register|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \A_register|Q\(11),
	datac => \ALU_Op[0]~input_o\,
	datad => \A_register|Q\(9),
	combout => \alu_component|mux1|Mux10~12_combout\);

-- Location: LCCOMB_X36_Y33_N14
\alu_component|mux1|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux10~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux10~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux10~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux10~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux10~12_combout\,
	combout => \alu_component|mux1|Mux10~11_combout\);

-- Location: IOIBUF_X38_Y73_N8
\DATA_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(10),
	o => \DATA_IN[10]~input_o\);

-- Location: FF_X38_Y31_N25
\Data_Memory_Module|Memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[10]~10_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~52_q\);

-- Location: LCCOMB_X38_Y31_N26
\Data_Memory_Module|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~11_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a10\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a10\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~52_q\,
	combout => \Data_Memory_Module|data_out~11_combout\);

-- Location: FF_X38_Y31_N27
\Data_Memory_Module|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(10));

-- Location: LCCOMB_X38_Y33_N16
\mux_data|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux21~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(10)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_IN[10]~input_o\,
	datad => \Data_Memory_Module|data_out\(10),
	combout => \mux_data|Mux21~2_combout\);

-- Location: LCCOMB_X38_Y33_N24
\mux_data|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux21~3_combout\ = (\DATA_Mux[1]~input_o\ & (\alu_component|mux1|Mux10~11_combout\ & (!\DATA_Mux[0]~input_o\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux10~11_combout\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \mux_data|Mux21~2_combout\,
	combout => \mux_data|Mux21~3_combout\);

-- Location: FF_X38_Y33_N25
\ir_register|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux21~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(10));

-- Location: LCCOMB_X45_Y33_N20
\A_multiplexer|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[10]~10_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(10))) # (!\A_MUX~input_o\ & ((\mux_data|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX~input_o\,
	datac => \ir_register|Q\(10),
	datad => \mux_data|Mux21~3_combout\,
	combout => \A_multiplexer|f[10]~10_combout\);

-- Location: FF_X45_Y33_N21
\A_register|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[10]~10_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(10));

-- Location: LCCOMB_X45_Y33_N8
\alu_component|mux1|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux9~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\A_register|Q\(10))) # (!\ALU_Op[0]~input_o\ & ((\A_register|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \A_register|Q\(10),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(8),
	combout => \alu_component|mux1|Mux9~12_combout\);

-- Location: LCCOMB_X42_Y33_N22
\alu_component|mux1|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux9~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux9~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux9~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux9~10_combout\,
	datab => \ALU_Op[2]~input_o\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux9~12_combout\,
	combout => \alu_component|mux1|Mux9~11_combout\);

-- Location: IOIBUF_X115_Y33_N1
\DATA_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(9),
	o => \DATA_IN[9]~input_o\);

-- Location: FF_X39_Y31_N5
\Data_Memory_Module|Memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_memory_multiplexer|f[9]~9_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~51_q\);

-- Location: LCCOMB_X38_Y31_N4
\Data_Memory_Module|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~10_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a9\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a9\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~51_q\,
	combout => \Data_Memory_Module|data_out~10_combout\);

-- Location: FF_X38_Y31_N5
\Data_Memory_Module|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(9));

-- Location: LCCOMB_X42_Y33_N2
\mux_data|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux22~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(9)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_IN[9]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(9),
	combout => \mux_data|Mux22~2_combout\);

-- Location: LCCOMB_X42_Y33_N14
\mux_data|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux22~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux9~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux9~11_combout\,
	datad => \mux_data|Mux22~2_combout\,
	combout => \mux_data|Mux22~3_combout\);

-- Location: FF_X42_Y33_N9
\ir_register|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux22~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(9));

-- Location: LCCOMB_X43_Y33_N4
\A_multiplexer|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[9]~9_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(9))) # (!\A_MUX~input_o\ & ((\mux_data|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(9),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux22~3_combout\,
	combout => \A_multiplexer|f[9]~9_combout\);

-- Location: FF_X43_Y33_N5
\A_register|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[9]~9_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(9));

-- Location: LCCOMB_X41_Y33_N26
\alu_component|mux1|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux8~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\A_register|Q\(9))) # (!\ALU_Op[0]~input_o\ & ((\A_register|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \A_register|Q\(9),
	datac => \A_register|Q\(7),
	datad => \IM_MUX1~input_o\,
	combout => \alu_component|mux1|Mux8~12_combout\);

-- Location: LCCOMB_X41_Y33_N22
\alu_component|mux1|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux8~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux8~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux8~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \alu_component|mux1|Mux8~10_combout\,
	datac => \alu_component|mux1|Mux8~12_combout\,
	datad => \ALU_Op[1]~input_o\,
	combout => \alu_component|mux1|Mux8~11_combout\);

-- Location: IOIBUF_X0_Y53_N8
\DATA_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(8),
	o => \DATA_IN[8]~input_o\);

-- Location: FF_X39_Y31_N31
\Data_Memory_Module|Memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[8]~8_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~50_q\);

-- Location: LCCOMB_X38_Y31_N2
\Data_Memory_Module|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~9_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a8\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~50_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a8\,
	combout => \Data_Memory_Module|data_out~9_combout\);

-- Location: FF_X38_Y31_N3
\Data_Memory_Module|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(8));

-- Location: LCCOMB_X38_Y33_N18
\mux_data|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux23~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(8)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_IN[8]~input_o\,
	datad => \Data_Memory_Module|data_out\(8),
	combout => \mux_data|Mux23~2_combout\);

-- Location: LCCOMB_X38_Y33_N26
\mux_data|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux23~3_combout\ = (\DATA_Mux[1]~input_o\ & (\alu_component|mux1|Mux8~11_combout\ & (!\DATA_Mux[0]~input_o\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux8~11_combout\,
	datab => \DATA_Mux[0]~input_o\,
	datac => \DATA_Mux[1]~input_o\,
	datad => \mux_data|Mux23~2_combout\,
	combout => \mux_data|Mux23~3_combout\);

-- Location: FF_X38_Y33_N27
\ir_register|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux23~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(8));

-- Location: LCCOMB_X45_Y33_N10
\A_multiplexer|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[8]~8_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(8))) # (!\A_MUX~input_o\ & ((\mux_data|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX~input_o\,
	datac => \ir_register|Q\(8),
	datad => \mux_data|Mux23~3_combout\,
	combout => \A_multiplexer|f[8]~8_combout\);

-- Location: FF_X45_Y33_N11
\A_register|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[8]~8_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(8));

-- Location: LCCOMB_X45_Y33_N18
\alu_component|mux1|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux7~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(8)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \A_register|Q\(6),
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(8),
	combout => \alu_component|mux1|Mux7~12_combout\);

-- Location: LCCOMB_X45_Y33_N30
\alu_component|mux1|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux7~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux7~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux7~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (((\alu_component|mux1|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux7~10_combout\,
	datad => \alu_component|mux1|Mux7~12_combout\,
	combout => \alu_component|mux1|Mux7~11_combout\);

-- Location: IOIBUF_X72_Y0_N1
\DATA_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: FF_X41_Y31_N19
\Data_Memory_Module|Memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[7]~7_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~49_q\);

-- Location: LCCOMB_X41_Y31_N2
\Data_Memory_Module|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~8_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a7\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a7\,
	datad => \Data_Memory_Module|Memory~49_q\,
	combout => \Data_Memory_Module|data_out~8_combout\);

-- Location: FF_X41_Y31_N3
\Data_Memory_Module|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(7));

-- Location: LCCOMB_X41_Y31_N24
\mux_data|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux24~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(7)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[7]~input_o\,
	datad => \Data_Memory_Module|data_out\(7),
	combout => \mux_data|Mux24~2_combout\);

-- Location: LCCOMB_X41_Y32_N14
\mux_data|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux24~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux7~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux7~11_combout\,
	datad => \mux_data|Mux24~2_combout\,
	combout => \mux_data|Mux24~3_combout\);

-- Location: FF_X41_Y32_N31
\ir_register|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux24~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(7));

-- Location: LCCOMB_X43_Y32_N0
\A_multiplexer|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[7]~7_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(7))) # (!\A_MUX~input_o\ & ((\mux_data|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(7),
	datab => \A_MUX~input_o\,
	datad => \mux_data|Mux24~3_combout\,
	combout => \A_multiplexer|f[7]~7_combout\);

-- Location: FF_X43_Y32_N1
\A_register|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[7]~7_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(7));

-- Location: LCCOMB_X43_Y32_N28
\alu_component|mux1|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux6~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(7)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \A_register|Q\(5),
	datad => \A_register|Q\(7),
	combout => \alu_component|mux1|Mux6~12_combout\);

-- Location: LCCOMB_X43_Y32_N30
\alu_component|mux1|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux6~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux6~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux6~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (((\alu_component|mux1|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux6~10_combout\,
	datad => \alu_component|mux1|Mux6~12_combout\,
	combout => \alu_component|mux1|Mux6~11_combout\);

-- Location: IOIBUF_X65_Y73_N8
\DATA_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: FF_X41_Y31_N17
\Data_Memory_Module|Memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[6]~6_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~48_q\);

-- Location: LCCOMB_X41_Y31_N10
\Data_Memory_Module|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~7_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a6\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a6\,
	datac => \Data_Memory_Module|Memory~48_q\,
	datad => \Data_Memory_Module|Memory~41_q\,
	combout => \Data_Memory_Module|data_out~7_combout\);

-- Location: FF_X41_Y31_N11
\Data_Memory_Module|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(6));

-- Location: LCCOMB_X41_Y31_N16
\mux_data|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux25~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(6)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[6]~input_o\,
	datad => \Data_Memory_Module|data_out\(6),
	combout => \mux_data|Mux25~2_combout\);

-- Location: LCCOMB_X41_Y31_N22
\mux_data|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux25~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux6~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux6~11_combout\,
	datad => \mux_data|Mux25~2_combout\,
	combout => \mux_data|Mux25~3_combout\);

-- Location: FF_X41_Y32_N9
\ir_register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux25~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(6));

-- Location: LCCOMB_X45_Y33_N28
\A_multiplexer|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[6]~6_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(6))) # (!\A_MUX~input_o\ & ((\mux_data|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX~input_o\,
	datac => \ir_register|Q\(6),
	datad => \mux_data|Mux25~3_combout\,
	combout => \A_multiplexer|f[6]~6_combout\);

-- Location: FF_X45_Y33_N29
\A_register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[6]~6_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(6));

-- Location: LCCOMB_X45_Y33_N2
\alu_component|mux1|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux5~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(6)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(4),
	datad => \A_register|Q\(6),
	combout => \alu_component|mux1|Mux5~12_combout\);

-- Location: LCCOMB_X45_Y33_N24
\alu_component|mux1|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux5~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux5~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux5~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \alu_component|mux1|Mux5~10_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux5~12_combout\,
	combout => \alu_component|mux1|Mux5~11_combout\);

-- Location: IOIBUF_X69_Y0_N1
\DATA_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: FF_X41_Y31_N9
\Data_Memory_Module|Memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[5]~5_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~47_q\);

-- Location: LCCOMB_X41_Y31_N6
\Data_Memory_Module|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~6_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & ((\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a5\))) # (!\Data_Memory_Module|Memory~41_q\ & 
-- (\Data_Memory_Module|Memory~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory~47_q\,
	datad => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \Data_Memory_Module|data_out~6_combout\);

-- Location: FF_X41_Y31_N7
\Data_Memory_Module|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(5));

-- Location: LCCOMB_X41_Y31_N0
\mux_data|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux26~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(5)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[5]~input_o\,
	datad => \Data_Memory_Module|data_out\(5),
	combout => \mux_data|Mux26~2_combout\);

-- Location: LCCOMB_X41_Y32_N6
\mux_data|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux26~3_combout\ = (\DATA_Mux[1]~input_o\ & (\alu_component|mux1|Mux5~11_combout\ & (!\DATA_Mux[0]~input_o\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux5~11_combout\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \mux_data|Mux26~2_combout\,
	combout => \mux_data|Mux26~3_combout\);

-- Location: FF_X41_Y32_N7
\ir_register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux26~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(5));

-- Location: LCCOMB_X43_Y32_N14
\A_multiplexer|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[5]~5_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(5))) # (!\A_MUX~input_o\ & ((\mux_data|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(5),
	datab => \A_MUX~input_o\,
	datac => \mux_data|Mux26~3_combout\,
	combout => \A_multiplexer|f[5]~5_combout\);

-- Location: FF_X43_Y32_N15
\A_register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[5]~5_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(5));

-- Location: LCCOMB_X43_Y32_N6
\alu_component|mux1|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux4~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\A_register|Q\(5))) # (!\ALU_Op[0]~input_o\ & ((\A_register|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \A_register|Q\(5),
	datad => \A_register|Q\(3),
	combout => \alu_component|mux1|Mux4~12_combout\);

-- Location: LCCOMB_X43_Y32_N22
\alu_component|mux1|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux4~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux4~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux4~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \alu_component|mux1|Mux4~10_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux4~12_combout\,
	combout => \alu_component|mux1|Mux4~11_combout\);

-- Location: IOIBUF_X7_Y0_N22
\DATA_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: FF_X39_Y32_N19
\Data_Memory_Module|Memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[4]~4_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~46_q\);

-- Location: LCCOMB_X38_Y32_N20
\Data_Memory_Module|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~5_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a4\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a4\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|data_out[0]~0_combout\,
	datad => \Data_Memory_Module|Memory~46_q\,
	combout => \Data_Memory_Module|data_out~5_combout\);

-- Location: FF_X38_Y32_N21
\Data_Memory_Module|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(4));

-- Location: LCCOMB_X38_Y32_N18
\mux_data|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux27~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(4)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datac => \DATA_IN[4]~input_o\,
	datad => \Data_Memory_Module|data_out\(4),
	combout => \mux_data|Mux27~2_combout\);

-- Location: LCCOMB_X38_Y32_N2
\mux_data|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux27~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux4~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux4~11_combout\,
	datad => \mux_data|Mux27~2_combout\,
	combout => \mux_data|Mux27~3_combout\);

-- Location: FF_X38_Y32_N13
\ir_register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux27~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(4));

-- Location: LCCOMB_X43_Y33_N14
\A_multiplexer|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[4]~4_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(4))) # (!\A_MUX~input_o\ & ((\mux_data|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(4),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux27~3_combout\,
	combout => \A_multiplexer|f[4]~4_combout\);

-- Location: FF_X43_Y33_N15
\A_register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[4]~4_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(4));

-- Location: LCCOMB_X43_Y33_N2
\alu_component|mux1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux3~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & (\A_register|Q\(4))) # (!\ALU_Op[0]~input_o\ & ((\A_register|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \A_register|Q\(4),
	datad => \A_register|Q\(2),
	combout => \alu_component|mux1|Mux3~12_combout\);

-- Location: LCCOMB_X43_Y33_N20
\alu_component|mux1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux3~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux3~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux3~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (\alu_component|mux1|Mux3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \alu_component|mux1|Mux3~10_combout\,
	datac => \ALU_Op[1]~input_o\,
	datad => \alu_component|mux1|Mux3~12_combout\,
	combout => \alu_component|mux1|Mux3~11_combout\);

-- Location: IOIBUF_X0_Y32_N15
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: LCCOMB_X39_Y32_N2
\Data_Memory_Module|Memory~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~45feeder_combout\ = \Data_memory_multiplexer|f[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_memory_multiplexer|f[3]~3_combout\,
	combout => \Data_Memory_Module|Memory~45feeder_combout\);

-- Location: FF_X39_Y32_N3
\Data_Memory_Module|Memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~45feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~45_q\);

-- Location: LCCOMB_X38_Y32_N28
\Data_Memory_Module|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~4_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a3\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \Data_Memory_Module|Memory~45_q\,
	combout => \Data_Memory_Module|data_out~4_combout\);

-- Location: FF_X38_Y32_N29
\Data_Memory_Module|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(3));

-- Location: LCCOMB_X38_Y32_N6
\mux_data|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux28~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(3)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datac => \DATA_IN[3]~input_o\,
	datad => \Data_Memory_Module|data_out\(3),
	combout => \mux_data|Mux28~2_combout\);

-- Location: LCCOMB_X38_Y32_N22
\mux_data|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux28~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux3~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux3~11_combout\,
	datad => \mux_data|Mux28~2_combout\,
	combout => \mux_data|Mux28~3_combout\);

-- Location: FF_X38_Y32_N23
\ir_register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux28~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(3));

-- Location: LCCOMB_X43_Y32_N12
\A_multiplexer|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[3]~3_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(3))) # (!\A_MUX~input_o\ & ((\mux_data|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(3),
	datab => \A_MUX~input_o\,
	datad => \mux_data|Mux28~3_combout\,
	combout => \A_multiplexer|f[3]~3_combout\);

-- Location: FF_X43_Y32_N13
\A_register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[3]~3_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(3));

-- Location: LCCOMB_X40_Y32_N2
\alu_component|mux1|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux2~12_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[0]~input_o\ & ((\A_register|Q\(3)))) # (!\ALU_Op[0]~input_o\ & (\A_register|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX1~input_o\,
	datab => \ALU_Op[0]~input_o\,
	datac => \A_register|Q\(1),
	datad => \A_register|Q\(3),
	combout => \alu_component|mux1|Mux2~12_combout\);

-- Location: LCCOMB_X40_Y32_N12
\alu_component|mux1|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux2~11_combout\ = (\ALU_Op[2]~input_o\ & ((\ALU_Op[1]~input_o\ & (!\alu_component|mux1|Mux2~10_combout\)) # (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux2~12_combout\))))) # (!\ALU_Op[2]~input_o\ & 
-- (((\alu_component|mux1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[1]~input_o\,
	datab => \alu_component|mux1|Mux2~10_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \alu_component|mux1|Mux2~12_combout\,
	combout => \alu_component|mux1|Mux2~11_combout\);

-- Location: IOIBUF_X45_Y73_N8
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LCCOMB_X36_Y31_N6
\Data_Memory_Module|Memory~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|Memory~44feeder_combout\ = \Data_memory_multiplexer|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_memory_multiplexer|f[2]~2_combout\,
	combout => \Data_Memory_Module|Memory~44feeder_combout\);

-- Location: FF_X36_Y31_N7
\Data_Memory_Module|Memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|Memory~44feeder_combout\,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~44_q\);

-- Location: LCCOMB_X38_Y31_N0
\Data_Memory_Module|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~3_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a2\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a2\,
	datab => \Data_Memory_Module|data_out[0]~0_combout\,
	datac => \Data_Memory_Module|Memory~41_q\,
	datad => \Data_Memory_Module|Memory~44_q\,
	combout => \Data_Memory_Module|data_out~3_combout\);

-- Location: FF_X38_Y31_N1
\Data_Memory_Module|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(2));

-- Location: LCCOMB_X41_Y32_N20
\mux_data|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux29~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(2)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_IN[2]~input_o\,
	datac => \DATA_Mux[0]~input_o\,
	datad => \Data_Memory_Module|data_out\(2),
	combout => \mux_data|Mux29~2_combout\);

-- Location: LCCOMB_X41_Y32_N0
\mux_data|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux29~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux2~11_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux2~11_combout\,
	datad => \mux_data|Mux29~2_combout\,
	combout => \mux_data|Mux29~3_combout\);

-- Location: FF_X41_Y32_N25
\ir_register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \mux_data|Mux29~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(2));

-- Location: LCCOMB_X43_Y33_N12
\A_multiplexer|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[2]~2_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(2))) # (!\A_MUX~input_o\ & ((\mux_data|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~input_o\,
	datab => \ir_register|Q\(2),
	datad => \mux_data|Mux29~3_combout\,
	combout => \A_multiplexer|f[2]~2_combout\);

-- Location: FF_X43_Y33_N13
\A_register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[2]~2_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(2));

-- Location: LCCOMB_X43_Y33_N8
\im_mux1_component|f[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux1_component|f[2]~22_combout\ = (!\IM_MUX1~input_o\ & \A_register|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM_MUX1~input_o\,
	datad => \A_register|Q\(2),
	combout => \im_mux1_component|f[2]~22_combout\);

-- Location: LCCOMB_X43_Y33_N24
\alu_component|mux1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux1~6_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[2]~input_o\ & ((\A_register|Q\(0)))) # (!\ALU_Op[2]~input_o\ & (\A_register|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[2]~input_o\,
	datab => \IM_MUX1~input_o\,
	datac => \A_register|Q\(1),
	datad => \A_register|Q\(0),
	combout => \alu_component|mux1|Mux1~6_combout\);

-- Location: LCCOMB_X43_Y33_N30
\alu_component|mux1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux1~5_combout\ = (\alu_component|mux1|Mux1~3_combout\ & ((\alu_component|mux1|Mux1~4_combout\ & (\im_mux1_component|f[2]~22_combout\)) # (!\alu_component|mux1|Mux1~4_combout\ & ((\alu_component|mux1|Mux1~6_combout\))))) # 
-- (!\alu_component|mux1|Mux1~3_combout\ & (\alu_component|mux1|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux1~3_combout\,
	datab => \alu_component|mux1|Mux1~4_combout\,
	datac => \im_mux1_component|f[2]~22_combout\,
	datad => \alu_component|mux1|Mux1~6_combout\,
	combout => \alu_component|mux1|Mux1~5_combout\);

-- Location: IOIBUF_X0_Y32_N22
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: FF_X39_Y32_N7
\Data_Memory_Module|Memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[1]~1_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~43_q\);

-- Location: LCCOMB_X38_Y32_N10
\Data_Memory_Module|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~2_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a1\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|data_out[0]~0_combout\,
	datab => \Data_Memory_Module|Memory~41_q\,
	datac => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a1\,
	datad => \Data_Memory_Module|Memory~43_q\,
	combout => \Data_Memory_Module|data_out~2_combout\);

-- Location: FF_X38_Y32_N11
\Data_Memory_Module|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(1));

-- Location: LCCOMB_X38_Y32_N12
\mux_data|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux30~2_combout\ = (\DATA_Mux[0]~input_o\ & ((\Data_Memory_Module|data_out\(1)))) # (!\DATA_Mux[0]~input_o\ & (\DATA_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_IN[1]~input_o\,
	datad => \Data_Memory_Module|data_out\(1),
	combout => \mux_data|Mux30~2_combout\);

-- Location: LCCOMB_X38_Y32_N8
\mux_data|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux30~3_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux1~5_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux1~5_combout\,
	datad => \mux_data|Mux30~2_combout\,
	combout => \mux_data|Mux30~3_combout\);

-- Location: LCCOMB_X38_Y32_N24
\ir_register|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_register|Q[1]~feeder_combout\ = \mux_data|Mux30~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_data|Mux30~3_combout\,
	combout => \ir_register|Q[1]~feeder_combout\);

-- Location: FF_X38_Y32_N25
\ir_register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ir_register|Q[1]~feeder_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(1));

-- Location: LCCOMB_X42_Y32_N4
\A_multiplexer|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[1]~1_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(1))) # (!\A_MUX~input_o\ & ((\mux_data|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(1),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux30~3_combout\,
	combout => \A_multiplexer|f[1]~1_combout\);

-- Location: FF_X42_Y32_N5
\A_register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[1]~1_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(1));

-- Location: LCCOMB_X41_Y32_N10
\alu_component|mux1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux0~4_combout\ = (!\IM_MUX1~input_o\ & ((\ALU_Op[2]~input_o\ & ((\A_register|Q\(1)))) # (!\ALU_Op[2]~input_o\ & (\A_register|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_register|Q\(0),
	datab => \ALU_Op[2]~input_o\,
	datac => \IM_MUX1~input_o\,
	datad => \A_register|Q\(1),
	combout => \alu_component|mux1|Mux0~4_combout\);

-- Location: LCCOMB_X41_Y32_N22
\alu_component|mux1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|mux1|Mux0~3_combout\ = (\ALU_Op[0]~input_o\ & (!\ALU_Op[1]~input_o\ & ((\alu_component|mux1|Mux0~2_combout\) # (\alu_component|mux1|Mux0~4_combout\)))) # (!\ALU_Op[0]~input_o\ & (\alu_component|mux1|Mux0~2_combout\ & ((\ALU_Op[1]~input_o\) 
-- # (\alu_component|mux1|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Op[0]~input_o\,
	datab => \ALU_Op[1]~input_o\,
	datac => \alu_component|mux1|Mux0~2_combout\,
	datad => \alu_component|mux1|Mux0~4_combout\,
	combout => \alu_component|mux1|Mux0~3_combout\);

-- Location: FF_X39_Y32_N5
\Data_Memory_Module|Memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	asdata => \Data_memory_multiplexer|f[0]~0_combout\,
	sload => VCC,
	ena => \Data_Memory_Module|Memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|Memory~42_q\);

-- Location: LCCOMB_X38_Y32_N30
\Data_Memory_Module|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Memory_Module|data_out~1_combout\ = (!\Data_Memory_Module|data_out[0]~0_combout\ & ((\Data_Memory_Module|Memory~41_q\ & (\Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\Data_Memory_Module|Memory~41_q\ & 
-- ((\Data_Memory_Module|Memory~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Memory_Module|Memory~41_q\,
	datab => \Data_Memory_Module|Memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \Data_Memory_Module|data_out[0]~0_combout\,
	datad => \Data_Memory_Module|Memory~42_q\,
	combout => \Data_Memory_Module|data_out~1_combout\);

-- Location: FF_X38_Y32_N31
\Data_Memory_Module|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_mClk~inputclkctrl_outclk\,
	d => \Data_Memory_Module|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Memory_Module|data_out\(0));

-- Location: IOIBUF_X60_Y0_N15
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LCCOMB_X38_Y32_N16
\mux_data|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux31~3_combout\ = (\DATA_Mux[0]~input_o\ & (\Data_Memory_Module|data_out\(0))) # (!\DATA_Mux[0]~input_o\ & ((\DATA_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datac => \Data_Memory_Module|data_out\(0),
	datad => \DATA_IN[0]~input_o\,
	combout => \mux_data|Mux31~3_combout\);

-- Location: LCCOMB_X38_Y32_N14
\mux_data|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_data|Mux31~4_combout\ = (\DATA_Mux[1]~input_o\ & (!\DATA_Mux[0]~input_o\ & (\alu_component|mux1|Mux0~3_combout\))) # (!\DATA_Mux[1]~input_o\ & (((\mux_data|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]~input_o\,
	datab => \DATA_Mux[1]~input_o\,
	datac => \alu_component|mux1|Mux0~3_combout\,
	datad => \mux_data|Mux31~3_combout\,
	combout => \mux_data|Mux31~4_combout\);

-- Location: FF_X38_Y32_N15
\ir_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \mux_data|Mux31~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_register|Q\(0));

-- Location: LCCOMB_X41_Y32_N12
\A_multiplexer|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_multiplexer|f[0]~0_combout\ = (\A_MUX~input_o\ & (\ir_register|Q\(0))) # (!\A_MUX~input_o\ & ((\mux_data|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(0),
	datac => \A_MUX~input_o\,
	datad => \mux_data|Mux31~4_combout\,
	combout => \A_multiplexer|f[0]~0_combout\);

-- Location: FF_X41_Y32_N13
\A_register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A_multiplexer|f[0]~0_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_register|Q\(0));

-- Location: LCCOMB_X42_Y31_N16
\alu_component|adder1|s8|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|adder1|s8|p4|cout~0_combout\ = (\im_mux1_component|f[31]~0_combout\ & ((\alu_component|adder1|s8|p3|cout~0_combout\) # (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux0~1_combout\)))) # (!\im_mux1_component|f[31]~0_combout\ & 
-- (\alu_component|adder1|s8|p3|cout~0_combout\ & (\ALU_Op[2]~input_o\ $ (\im_mux2_component|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux1_component|f[31]~0_combout\,
	datab => \alu_component|adder1|s8|p3|cout~0_combout\,
	datac => \ALU_Op[2]~input_o\,
	datad => \im_mux2_component|Mux0~1_combout\,
	combout => \alu_component|adder1|s8|p4|cout~0_combout\);

-- Location: LCCOMB_X38_Y33_N0
\alu_component|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~1_combout\ = (!\alu_component|mux1|Mux8~11_combout\ & (!\alu_component|mux1|Mux7~11_combout\ & (!\alu_component|mux1|Mux10~11_combout\ & !\alu_component|mux1|Mux9~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux8~11_combout\,
	datab => \alu_component|mux1|Mux7~11_combout\,
	datac => \alu_component|mux1|Mux10~11_combout\,
	datad => \alu_component|mux1|Mux9~11_combout\,
	combout => \alu_component|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y32_N26
\alu_component|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~2_combout\ = (!\alu_component|mux1|Mux5~11_combout\ & (!\alu_component|mux1|Mux6~11_combout\ & (\alu_component|Equal0~1_combout\ & !\alu_component|mux1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux5~11_combout\,
	datab => \alu_component|mux1|Mux6~11_combout\,
	datac => \alu_component|Equal0~1_combout\,
	datad => \alu_component|mux1|Mux0~3_combout\,
	combout => \alu_component|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y30_N2
\alu_component|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~0_combout\ = (!\alu_component|mux1|Mux18~3_combout\ & !\alu_component|mux1|Mux17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux18~3_combout\,
	datad => \alu_component|mux1|Mux17~6_combout\,
	combout => \alu_component|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y30_N20
\alu_component|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~4_combout\ = (!\alu_component|mux1|Mux16~3_combout\ & (!\alu_component|mux1|Mux2~11_combout\ & (!\alu_component|mux1|Mux15~5_combout\ & !\alu_component|mux1|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux16~3_combout\,
	datab => \alu_component|mux1|Mux2~11_combout\,
	datac => \alu_component|mux1|Mux15~5_combout\,
	datad => \alu_component|mux1|Mux1~5_combout\,
	combout => \alu_component|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y33_N30
\alu_component|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~3_combout\ = (!\alu_component|mux1|Mux13~11_combout\ & (!\alu_component|mux1|Mux14~11_combout\ & (!\alu_component|mux1|Mux12~11_combout\ & !\alu_component|mux1|Mux11~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux13~11_combout\,
	datab => \alu_component|mux1|Mux14~11_combout\,
	datac => \alu_component|mux1|Mux12~11_combout\,
	datad => \alu_component|mux1|Mux11~11_combout\,
	combout => \alu_component|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y30_N16
\alu_component|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~5_combout\ = (\alu_component|Equal0~2_combout\ & (\alu_component|Equal0~0_combout\ & (\alu_component|Equal0~4_combout\ & \alu_component|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|Equal0~2_combout\,
	datab => \alu_component|Equal0~0_combout\,
	datac => \alu_component|Equal0~4_combout\,
	datad => \alu_component|Equal0~3_combout\,
	combout => \alu_component|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y30_N26
\alu_component|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~6_combout\ = (!\alu_component|mux1|Mux3~11_combout\ & (!\alu_component|mux1|Mux4~11_combout\ & (!\alu_component|mux1|Mux19~3_combout\ & \alu_component|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux3~11_combout\,
	datab => \alu_component|mux1|Mux4~11_combout\,
	datac => \alu_component|mux1|Mux19~3_combout\,
	datad => \alu_component|Equal0~5_combout\,
	combout => \alu_component|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y30_N0
\alu_component|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~7_combout\ = (!\alu_component|mux1|Mux20~3_combout\ & (!\alu_component|mux1|Mux21~3_combout\ & (\alu_component|Equal0~6_combout\ & !\alu_component|mux1|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux20~3_combout\,
	datab => \alu_component|mux1|Mux21~3_combout\,
	datac => \alu_component|Equal0~6_combout\,
	datad => \alu_component|mux1|Mux22~3_combout\,
	combout => \alu_component|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y31_N18
\alu_component|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~8_combout\ = (!\alu_component|mux1|Mux24~4_combout\ & (!\alu_component|mux1|Mux25~3_combout\ & (!\alu_component|mux1|Mux23~3_combout\ & \alu_component|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|mux1|Mux24~4_combout\,
	datab => \alu_component|mux1|Mux25~3_combout\,
	datac => \alu_component|mux1|Mux23~3_combout\,
	datad => \alu_component|Equal0~7_combout\,
	combout => \alu_component|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y31_N14
\alu_component|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~9_combout\ = (\alu_component|Equal0~8_combout\ & (!\alu_component|mux1|Mux27~3_combout\ & (!\alu_component|mux1|Mux26~3_combout\ & !\alu_component|mux1|Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|Equal0~8_combout\,
	datab => \alu_component|mux1|Mux27~3_combout\,
	datac => \alu_component|mux1|Mux26~3_combout\,
	datad => \alu_component|mux1|Mux28~4_combout\,
	combout => \alu_component|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y31_N12
\alu_component|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_component|Equal0~10_combout\ = (\alu_component|Equal0~9_combout\ & (!\alu_component|mux1|Mux31~2_combout\ & (!\alu_component|mux1|Mux29~5_combout\ & !\alu_component|mux1|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_component|Equal0~9_combout\,
	datab => \alu_component|mux1|Mux31~2_combout\,
	datac => \alu_component|mux1|Mux29~5_combout\,
	datad => \alu_component|mux1|Mux30~3_combout\,
	combout => \alu_component|Equal0~10_combout\);

-- Location: IOIBUF_X23_Y73_N1
\Inc_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inc_PC,
	o => \Inc_PC~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\Ld_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_PC,
	o => \Ld_PC~input_o\);

-- Location: LCCOMB_X23_Y70_N6
\pc_component|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~14_combout\ = (\Inc_PC~input_o\ & (((\pc_component|q[0]~reg0_q\)))) # (!\Inc_PC~input_o\ & ((\Ld_PC~input_o\ & (\ir_register|Q\(0))) # (!\Ld_PC~input_o\ & ((\pc_component|q[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(0),
	datab => \Inc_PC~input_o\,
	datac => \pc_component|q[0]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~14_combout\);

-- Location: IOIBUF_X58_Y0_N1
\Clr_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_PC,
	o => \Clr_PC~input_o\);

-- Location: CLKCTRL_G17
\Clr_PC~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_PC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_PC~inputclkctrl_outclk\);

-- Location: FF_X23_Y70_N7
\pc_component|q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~14_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[0]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N22
\pc_component|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~15_combout\ = (\Inc_PC~input_o\ & (((\pc_component|q[1]~reg0_q\)))) # (!\Inc_PC~input_o\ & ((\Ld_PC~input_o\ & (\ir_register|Q\(1))) # (!\Ld_PC~input_o\ & ((\pc_component|q[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \ir_register|Q\(1),
	datac => \pc_component|q[1]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~15_combout\);

-- Location: FF_X18_Y70_N23
\pc_component|q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~15_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[1]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N12
\pc_component|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[2]~0_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(2)))) # (!\Ld_PC~input_o\ & (\pc_component|q[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_PC~input_o\,
	datac => \pc_component|q[2]~reg0_q\,
	datad => \ir_register|Q\(2),
	combout => \pc_component|q[2]~0_combout\);

-- Location: LCCOMB_X19_Y70_N2
\pc_component|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~0_combout\ = \pc_component|q[2]~reg0_q\ $ (VCC)
-- \pc_component|Add0~1\ = CARRY(\pc_component|q[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[2]~reg0_q\,
	datad => VCC,
	combout => \pc_component|Add0~0_combout\,
	cout => \pc_component|Add0~1\);

-- Location: FF_X18_Y70_N13
\pc_component|q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[2]~0_combout\,
	asdata => \pc_component|Add0~0_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[2]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N24
\pc_component|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[3]~1_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(3)))) # (!\Ld_PC~input_o\ & (\pc_component|q[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[3]~reg0_q\,
	datad => \ir_register|Q\(3),
	combout => \pc_component|q[3]~1_combout\);

-- Location: LCCOMB_X19_Y70_N4
\pc_component|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~2_combout\ = (\pc_component|q[3]~reg0_q\ & (!\pc_component|Add0~1\)) # (!\pc_component|q[3]~reg0_q\ & ((\pc_component|Add0~1\) # (GND)))
-- \pc_component|Add0~3\ = CARRY((!\pc_component|Add0~1\) # (!\pc_component|q[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[3]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~1\,
	combout => \pc_component|Add0~2_combout\,
	cout => \pc_component|Add0~3\);

-- Location: FF_X20_Y70_N25
\pc_component|q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[3]~1_combout\,
	asdata => \pc_component|Add0~2_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[3]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N6
\pc_component|q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[4]~2_combout\ = (\Ld_PC~input_o\ & (\ir_register|Q\(4))) # (!\Ld_PC~input_o\ & ((\pc_component|q[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_PC~input_o\,
	datab => \ir_register|Q\(4),
	datac => \pc_component|q[4]~reg0_q\,
	combout => \pc_component|q[4]~2_combout\);

-- Location: LCCOMB_X19_Y70_N6
\pc_component|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~4_combout\ = (\pc_component|q[4]~reg0_q\ & (\pc_component|Add0~3\ $ (GND))) # (!\pc_component|q[4]~reg0_q\ & (!\pc_component|Add0~3\ & VCC))
-- \pc_component|Add0~5\ = CARRY((\pc_component|q[4]~reg0_q\ & !\pc_component|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[4]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~3\,
	combout => \pc_component|Add0~4_combout\,
	cout => \pc_component|Add0~5\);

-- Location: FF_X18_Y70_N7
\pc_component|q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[4]~2_combout\,
	asdata => \pc_component|Add0~4_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[4]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N16
\pc_component|q[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[5]~3_combout\ = (\Ld_PC~input_o\ & (\ir_register|Q\(5))) # (!\Ld_PC~input_o\ & ((\pc_component|q[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_register|Q\(5),
	datac => \pc_component|q[5]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q[5]~3_combout\);

-- Location: LCCOMB_X19_Y70_N8
\pc_component|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~6_combout\ = (\pc_component|q[5]~reg0_q\ & (!\pc_component|Add0~5\)) # (!\pc_component|q[5]~reg0_q\ & ((\pc_component|Add0~5\) # (GND)))
-- \pc_component|Add0~7\ = CARRY((!\pc_component|Add0~5\) # (!\pc_component|q[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[5]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~5\,
	combout => \pc_component|Add0~6_combout\,
	cout => \pc_component|Add0~7\);

-- Location: FF_X18_Y70_N17
\pc_component|q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[5]~3_combout\,
	asdata => \pc_component|Add0~6_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[5]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N30
\pc_component|q[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[6]~4_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(6)))) # (!\Ld_PC~input_o\ & (\pc_component|q[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[6]~reg0_q\,
	datad => \ir_register|Q\(6),
	combout => \pc_component|q[6]~4_combout\);

-- Location: LCCOMB_X19_Y70_N10
\pc_component|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~8_combout\ = (\pc_component|q[6]~reg0_q\ & (\pc_component|Add0~7\ $ (GND))) # (!\pc_component|q[6]~reg0_q\ & (!\pc_component|Add0~7\ & VCC))
-- \pc_component|Add0~9\ = CARRY((\pc_component|q[6]~reg0_q\ & !\pc_component|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[6]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~7\,
	combout => \pc_component|Add0~8_combout\,
	cout => \pc_component|Add0~9\);

-- Location: FF_X20_Y70_N31
\pc_component|q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[6]~4_combout\,
	asdata => \pc_component|Add0~8_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[6]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N4
\pc_component|q[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[7]~5_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(7)))) # (!\Ld_PC~input_o\ & (\pc_component|q[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[7]~reg0_q\,
	datad => \ir_register|Q\(7),
	combout => \pc_component|q[7]~5_combout\);

-- Location: LCCOMB_X19_Y70_N12
\pc_component|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~10_combout\ = (\pc_component|q[7]~reg0_q\ & (!\pc_component|Add0~9\)) # (!\pc_component|q[7]~reg0_q\ & ((\pc_component|Add0~9\) # (GND)))
-- \pc_component|Add0~11\ = CARRY((!\pc_component|Add0~9\) # (!\pc_component|q[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[7]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~9\,
	combout => \pc_component|Add0~10_combout\,
	cout => \pc_component|Add0~11\);

-- Location: FF_X20_Y70_N5
\pc_component|q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[7]~5_combout\,
	asdata => \pc_component|Add0~10_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[7]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N2
\pc_component|q[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[8]~6_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(8)))) # (!\Ld_PC~input_o\ & (\pc_component|q[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[8]~reg0_q\,
	datad => \ir_register|Q\(8),
	combout => \pc_component|q[8]~6_combout\);

-- Location: LCCOMB_X19_Y70_N14
\pc_component|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~12_combout\ = (\pc_component|q[8]~reg0_q\ & (\pc_component|Add0~11\ $ (GND))) # (!\pc_component|q[8]~reg0_q\ & (!\pc_component|Add0~11\ & VCC))
-- \pc_component|Add0~13\ = CARRY((\pc_component|q[8]~reg0_q\ & !\pc_component|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[8]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~11\,
	combout => \pc_component|Add0~12_combout\,
	cout => \pc_component|Add0~13\);

-- Location: FF_X20_Y70_N3
\pc_component|q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[8]~6_combout\,
	asdata => \pc_component|Add0~12_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[8]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N30
\pc_component|q[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[9]~7_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(9)))) # (!\Ld_PC~input_o\ & (\pc_component|q[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_PC~input_o\,
	datac => \pc_component|q[9]~reg0_q\,
	datad => \ir_register|Q\(9),
	combout => \pc_component|q[9]~7_combout\);

-- Location: LCCOMB_X19_Y70_N16
\pc_component|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~14_combout\ = (\pc_component|q[9]~reg0_q\ & (!\pc_component|Add0~13\)) # (!\pc_component|q[9]~reg0_q\ & ((\pc_component|Add0~13\) # (GND)))
-- \pc_component|Add0~15\ = CARRY((!\pc_component|Add0~13\) # (!\pc_component|q[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[9]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~13\,
	combout => \pc_component|Add0~14_combout\,
	cout => \pc_component|Add0~15\);

-- Location: FF_X18_Y70_N31
\pc_component|q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[9]~7_combout\,
	asdata => \pc_component|Add0~14_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[9]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N0
\pc_component|q[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[10]~8_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(10)))) # (!\Ld_PC~input_o\ & (\pc_component|q[10]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[10]~reg0_q\,
	datad => \ir_register|Q\(10),
	combout => \pc_component|q[10]~8_combout\);

-- Location: LCCOMB_X19_Y70_N18
\pc_component|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~16_combout\ = (\pc_component|q[10]~reg0_q\ & (\pc_component|Add0~15\ $ (GND))) # (!\pc_component|q[10]~reg0_q\ & (!\pc_component|Add0~15\ & VCC))
-- \pc_component|Add0~17\ = CARRY((\pc_component|q[10]~reg0_q\ & !\pc_component|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[10]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~15\,
	combout => \pc_component|Add0~16_combout\,
	cout => \pc_component|Add0~17\);

-- Location: FF_X20_Y70_N1
\pc_component|q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[10]~8_combout\,
	asdata => \pc_component|Add0~16_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[10]~reg0_q\);

-- Location: LCCOMB_X19_Y70_N0
\pc_component|q[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[11]~9_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(11)))) # (!\Ld_PC~input_o\ & (\pc_component|q[11]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[11]~reg0_q\,
	datad => \ir_register|Q\(11),
	combout => \pc_component|q[11]~9_combout\);

-- Location: LCCOMB_X19_Y70_N20
\pc_component|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~18_combout\ = (\pc_component|q[11]~reg0_q\ & (!\pc_component|Add0~17\)) # (!\pc_component|q[11]~reg0_q\ & ((\pc_component|Add0~17\) # (GND)))
-- \pc_component|Add0~19\ = CARRY((!\pc_component|Add0~17\) # (!\pc_component|q[11]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[11]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~17\,
	combout => \pc_component|Add0~18_combout\,
	cout => \pc_component|Add0~19\);

-- Location: FF_X19_Y70_N1
\pc_component|q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[11]~9_combout\,
	asdata => \pc_component|Add0~18_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[11]~reg0_q\);

-- Location: LCCOMB_X18_Y70_N28
\pc_component|q[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[12]~10_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(12)))) # (!\Ld_PC~input_o\ & (\pc_component|q[12]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_PC~input_o\,
	datac => \pc_component|q[12]~reg0_q\,
	datad => \ir_register|Q\(12),
	combout => \pc_component|q[12]~10_combout\);

-- Location: LCCOMB_X19_Y70_N22
\pc_component|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~20_combout\ = (\pc_component|q[12]~reg0_q\ & (\pc_component|Add0~19\ $ (GND))) # (!\pc_component|q[12]~reg0_q\ & (!\pc_component|Add0~19\ & VCC))
-- \pc_component|Add0~21\ = CARRY((\pc_component|q[12]~reg0_q\ & !\pc_component|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[12]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~19\,
	combout => \pc_component|Add0~20_combout\,
	cout => \pc_component|Add0~21\);

-- Location: FF_X18_Y70_N29
\pc_component|q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[12]~10_combout\,
	asdata => \pc_component|Add0~20_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[12]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N14
\pc_component|q[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[13]~11_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(13)))) # (!\Ld_PC~input_o\ & (\pc_component|q[13]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[13]~reg0_q\,
	datad => \ir_register|Q\(13),
	combout => \pc_component|q[13]~11_combout\);

-- Location: LCCOMB_X19_Y70_N24
\pc_component|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~22_combout\ = (\pc_component|q[13]~reg0_q\ & (!\pc_component|Add0~21\)) # (!\pc_component|q[13]~reg0_q\ & ((\pc_component|Add0~21\) # (GND)))
-- \pc_component|Add0~23\ = CARRY((!\pc_component|Add0~21\) # (!\pc_component|q[13]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[13]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~21\,
	combout => \pc_component|Add0~22_combout\,
	cout => \pc_component|Add0~23\);

-- Location: FF_X20_Y70_N15
\pc_component|q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[13]~11_combout\,
	asdata => \pc_component|Add0~22_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[13]~reg0_q\);

-- Location: LCCOMB_X20_Y70_N20
\pc_component|q[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[14]~12_combout\ = (\Ld_PC~input_o\ & ((\ir_register|Q\(14)))) # (!\Ld_PC~input_o\ & (\pc_component|q[14]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[14]~reg0_q\,
	datad => \ir_register|Q\(14),
	combout => \pc_component|q[14]~12_combout\);

-- Location: LCCOMB_X19_Y70_N26
\pc_component|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~24_combout\ = (\pc_component|q[14]~reg0_q\ & (\pc_component|Add0~23\ $ (GND))) # (!\pc_component|q[14]~reg0_q\ & (!\pc_component|Add0~23\ & VCC))
-- \pc_component|Add0~25\ = CARRY((\pc_component|q[14]~reg0_q\ & !\pc_component|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[14]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~23\,
	combout => \pc_component|Add0~24_combout\,
	cout => \pc_component|Add0~25\);

-- Location: FF_X20_Y70_N21
\pc_component|q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[14]~12_combout\,
	asdata => \pc_component|Add0~24_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[14]~reg0_q\);

-- Location: LCCOMB_X23_Y70_N24
\pc_component|q[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q[15]~13_combout\ = (\Ld_PC~input_o\ & (\ir_register|Q\(15))) # (!\Ld_PC~input_o\ & ((\pc_component|q[15]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_register|Q\(15),
	datac => \pc_component|q[15]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q[15]~13_combout\);

-- Location: LCCOMB_X19_Y70_N28
\pc_component|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~26_combout\ = (\pc_component|q[15]~reg0_q\ & (!\pc_component|Add0~25\)) # (!\pc_component|q[15]~reg0_q\ & ((\pc_component|Add0~25\) # (GND)))
-- \pc_component|Add0~27\ = CARRY((!\pc_component|Add0~25\) # (!\pc_component|q[15]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[15]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~25\,
	combout => \pc_component|Add0~26_combout\,
	cout => \pc_component|Add0~27\);

-- Location: FF_X23_Y70_N25
\pc_component|q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q[15]~13_combout\,
	asdata => \pc_component|Add0~26_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \Inc_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[15]~reg0_q\);

-- Location: LCCOMB_X19_Y70_N30
\pc_component|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~28_combout\ = (\pc_component|q[16]~reg0_q\ & (\pc_component|Add0~27\ $ (GND))) # (!\pc_component|q[16]~reg0_q\ & (!\pc_component|Add0~27\ & VCC))
-- \pc_component|Add0~29\ = CARRY((\pc_component|q[16]~reg0_q\ & !\pc_component|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[16]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~27\,
	combout => \pc_component|Add0~28_combout\,
	cout => \pc_component|Add0~29\);

-- Location: LCCOMB_X18_Y70_N4
\pc_component|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~16_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~28_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[16]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~28_combout\,
	datac => \pc_component|q[16]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~16_combout\);

-- Location: FF_X18_Y70_N5
\pc_component|q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~16_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[16]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N0
\pc_component|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~30_combout\ = (\pc_component|q[17]~reg0_q\ & (!\pc_component|Add0~29\)) # (!\pc_component|q[17]~reg0_q\ & ((\pc_component|Add0~29\) # (GND)))
-- \pc_component|Add0~31\ = CARRY((!\pc_component|Add0~29\) # (!\pc_component|q[17]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[17]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~29\,
	combout => \pc_component|Add0~30_combout\,
	cout => \pc_component|Add0~31\);

-- Location: LCCOMB_X18_Y70_N2
\pc_component|q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~17_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~30_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[17]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~30_combout\,
	datac => \pc_component|q[17]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~17_combout\);

-- Location: FF_X18_Y70_N3
\pc_component|q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~17_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[17]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N2
\pc_component|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~32_combout\ = (\pc_component|q[18]~reg0_q\ & (\pc_component|Add0~31\ $ (GND))) # (!\pc_component|q[18]~reg0_q\ & (!\pc_component|Add0~31\ & VCC))
-- \pc_component|Add0~33\ = CARRY((\pc_component|q[18]~reg0_q\ & !\pc_component|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[18]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~31\,
	combout => \pc_component|Add0~32_combout\,
	cout => \pc_component|Add0~33\);

-- Location: LCCOMB_X18_Y70_N24
\pc_component|q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~18_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~32_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[18]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~32_combout\,
	datac => \pc_component|q[18]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~18_combout\);

-- Location: FF_X18_Y70_N25
\pc_component|q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~18_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[18]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N4
\pc_component|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~34_combout\ = (\pc_component|q[19]~reg0_q\ & (!\pc_component|Add0~33\)) # (!\pc_component|q[19]~reg0_q\ & ((\pc_component|Add0~33\) # (GND)))
-- \pc_component|Add0~35\ = CARRY((!\pc_component|Add0~33\) # (!\pc_component|q[19]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[19]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~33\,
	combout => \pc_component|Add0~34_combout\,
	cout => \pc_component|Add0~35\);

-- Location: LCCOMB_X20_Y70_N18
\pc_component|q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~19_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~34_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[19]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~34_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[19]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~19_combout\);

-- Location: FF_X20_Y70_N19
\pc_component|q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~19_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[19]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N6
\pc_component|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~36_combout\ = (\pc_component|q[20]~reg0_q\ & (\pc_component|Add0~35\ $ (GND))) # (!\pc_component|q[20]~reg0_q\ & (!\pc_component|Add0~35\ & VCC))
-- \pc_component|Add0~37\ = CARRY((\pc_component|q[20]~reg0_q\ & !\pc_component|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[20]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~35\,
	combout => \pc_component|Add0~36_combout\,
	cout => \pc_component|Add0~37\);

-- Location: LCCOMB_X20_Y70_N28
\pc_component|q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~20_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~36_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[20]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~36_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[20]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~20_combout\);

-- Location: FF_X20_Y70_N29
\pc_component|q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~20_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[20]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N8
\pc_component|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~38_combout\ = (\pc_component|q[21]~reg0_q\ & (!\pc_component|Add0~37\)) # (!\pc_component|q[21]~reg0_q\ & ((\pc_component|Add0~37\) # (GND)))
-- \pc_component|Add0~39\ = CARRY((!\pc_component|Add0~37\) # (!\pc_component|q[21]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[21]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~37\,
	combout => \pc_component|Add0~38_combout\,
	cout => \pc_component|Add0~39\);

-- Location: LCCOMB_X20_Y70_N10
\pc_component|q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~21_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~38_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[21]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~38_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[21]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~21_combout\);

-- Location: FF_X20_Y70_N11
\pc_component|q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~21_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[21]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N10
\pc_component|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~40_combout\ = (\pc_component|q[22]~reg0_q\ & (\pc_component|Add0~39\ $ (GND))) # (!\pc_component|q[22]~reg0_q\ & (!\pc_component|Add0~39\ & VCC))
-- \pc_component|Add0~41\ = CARRY((\pc_component|q[22]~reg0_q\ & !\pc_component|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[22]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~39\,
	combout => \pc_component|Add0~40_combout\,
	cout => \pc_component|Add0~41\);

-- Location: LCCOMB_X20_Y70_N16
\pc_component|q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~22_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~40_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[22]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~40_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[22]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~22_combout\);

-- Location: FF_X20_Y70_N17
\pc_component|q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~22_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[22]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N12
\pc_component|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~42_combout\ = (\pc_component|q[23]~reg0_q\ & (!\pc_component|Add0~41\)) # (!\pc_component|q[23]~reg0_q\ & ((\pc_component|Add0~41\) # (GND)))
-- \pc_component|Add0~43\ = CARRY((!\pc_component|Add0~41\) # (!\pc_component|q[23]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[23]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~41\,
	combout => \pc_component|Add0~42_combout\,
	cout => \pc_component|Add0~43\);

-- Location: LCCOMB_X20_Y70_N22
\pc_component|q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~23_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~42_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[23]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~42_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[23]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~23_combout\);

-- Location: FF_X20_Y70_N23
\pc_component|q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~23_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[23]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N14
\pc_component|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~44_combout\ = (\pc_component|q[24]~reg0_q\ & (\pc_component|Add0~43\ $ (GND))) # (!\pc_component|q[24]~reg0_q\ & (!\pc_component|Add0~43\ & VCC))
-- \pc_component|Add0~45\ = CARRY((\pc_component|q[24]~reg0_q\ & !\pc_component|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[24]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~43\,
	combout => \pc_component|Add0~44_combout\,
	cout => \pc_component|Add0~45\);

-- Location: LCCOMB_X20_Y70_N12
\pc_component|q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~24_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~44_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[24]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~44_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[24]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~24_combout\);

-- Location: FF_X20_Y70_N13
\pc_component|q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~24_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[24]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N16
\pc_component|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~46_combout\ = (\pc_component|q[25]~reg0_q\ & (!\pc_component|Add0~45\)) # (!\pc_component|q[25]~reg0_q\ & ((\pc_component|Add0~45\) # (GND)))
-- \pc_component|Add0~47\ = CARRY((!\pc_component|Add0~45\) # (!\pc_component|q[25]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[25]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~45\,
	combout => \pc_component|Add0~46_combout\,
	cout => \pc_component|Add0~47\);

-- Location: LCCOMB_X18_Y70_N10
\pc_component|q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~25_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~46_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[25]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~46_combout\,
	datac => \pc_component|q[25]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~25_combout\);

-- Location: FF_X18_Y70_N11
\pc_component|q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~25_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[25]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N18
\pc_component|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~48_combout\ = (\pc_component|q[26]~reg0_q\ & (\pc_component|Add0~47\ $ (GND))) # (!\pc_component|q[26]~reg0_q\ & (!\pc_component|Add0~47\ & VCC))
-- \pc_component|Add0~49\ = CARRY((\pc_component|q[26]~reg0_q\ & !\pc_component|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[26]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~47\,
	combout => \pc_component|Add0~48_combout\,
	cout => \pc_component|Add0~49\);

-- Location: LCCOMB_X18_Y70_N20
\pc_component|q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~26_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~48_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[26]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~48_combout\,
	datac => \pc_component|q[26]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~26_combout\);

-- Location: FF_X18_Y70_N21
\pc_component|q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~26_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[26]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N20
\pc_component|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~50_combout\ = (\pc_component|q[27]~reg0_q\ & (!\pc_component|Add0~49\)) # (!\pc_component|q[27]~reg0_q\ & ((\pc_component|Add0~49\) # (GND)))
-- \pc_component|Add0~51\ = CARRY((!\pc_component|Add0~49\) # (!\pc_component|q[27]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[27]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~49\,
	combout => \pc_component|Add0~50_combout\,
	cout => \pc_component|Add0~51\);

-- Location: LCCOMB_X20_Y70_N26
\pc_component|q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~27_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~50_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[27]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~50_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[27]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~27_combout\);

-- Location: FF_X20_Y70_N27
\pc_component|q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~27_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[27]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N22
\pc_component|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~52_combout\ = (\pc_component|q[28]~reg0_q\ & (\pc_component|Add0~51\ $ (GND))) # (!\pc_component|q[28]~reg0_q\ & (!\pc_component|Add0~51\ & VCC))
-- \pc_component|Add0~53\ = CARRY((\pc_component|q[28]~reg0_q\ & !\pc_component|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|q[28]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~51\,
	combout => \pc_component|Add0~52_combout\,
	cout => \pc_component|Add0~53\);

-- Location: LCCOMB_X18_Y70_N26
\pc_component|q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~28_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~52_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[28]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~52_combout\,
	datac => \pc_component|q[28]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~28_combout\);

-- Location: FF_X18_Y70_N27
\pc_component|q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~28_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[28]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N24
\pc_component|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~54_combout\ = (\pc_component|q[29]~reg0_q\ & (!\pc_component|Add0~53\)) # (!\pc_component|q[29]~reg0_q\ & ((\pc_component|Add0~53\) # (GND)))
-- \pc_component|Add0~55\ = CARRY((!\pc_component|Add0~53\) # (!\pc_component|q[29]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[29]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~53\,
	combout => \pc_component|Add0~54_combout\,
	cout => \pc_component|Add0~55\);

-- Location: LCCOMB_X18_Y70_N0
\pc_component|q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~29_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~54_combout\)) # (!\Inc_PC~input_o\ & (((\pc_component|q[29]~reg0_q\ & !\Ld_PC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc_PC~input_o\,
	datab => \pc_component|Add0~54_combout\,
	datac => \pc_component|q[29]~reg0_q\,
	datad => \Ld_PC~input_o\,
	combout => \pc_component|q~29_combout\);

-- Location: FF_X18_Y70_N1
\pc_component|q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~29_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[29]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N26
\pc_component|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~56_combout\ = (\pc_component|q[30]~reg0_q\ & (\pc_component|Add0~55\ $ (GND))) # (!\pc_component|q[30]~reg0_q\ & (!\pc_component|Add0~55\ & VCC))
-- \pc_component|Add0~57\ = CARRY((\pc_component|q[30]~reg0_q\ & !\pc_component|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|q[30]~reg0_q\,
	datad => VCC,
	cin => \pc_component|Add0~55\,
	combout => \pc_component|Add0~56_combout\,
	cout => \pc_component|Add0~57\);

-- Location: LCCOMB_X20_Y70_N8
\pc_component|q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~30_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~56_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[30]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~56_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[30]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~30_combout\);

-- Location: FF_X20_Y70_N9
\pc_component|q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~30_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[30]~reg0_q\);

-- Location: LCCOMB_X19_Y69_N28
\pc_component|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|Add0~58_combout\ = \pc_component|Add0~57\ $ (\pc_component|q[31]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_component|q[31]~reg0_q\,
	cin => \pc_component|Add0~57\,
	combout => \pc_component|Add0~58_combout\);

-- Location: LCCOMB_X20_Y70_N6
\pc_component|q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_component|q~31_combout\ = (\Inc_PC~input_o\ & (\pc_component|Add0~58_combout\)) # (!\Inc_PC~input_o\ & (((!\Ld_PC~input_o\ & \pc_component|q[31]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|Add0~58_combout\,
	datab => \Ld_PC~input_o\,
	datac => \pc_component|q[31]~reg0_q\,
	datad => \Inc_PC~input_o\,
	combout => \pc_component|q~31_combout\);

-- Location: FF_X20_Y70_N7
\pc_component|q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pc_component|q~31_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|q[31]~reg0_q\);

-- Location: IOIBUF_X115_Y37_N8
\Clr_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_C,
	o => \Clr_C~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\Ld_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_C,
	o => \Ld_C~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\Clr_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_Z,
	o => \Clr_Z~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\Ld_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_Z,
	o => \Ld_Z~input_o\);

ww_Out_A(0) <= \Out_A[0]~output_o\;

ww_Out_A(1) <= \Out_A[1]~output_o\;

ww_Out_A(2) <= \Out_A[2]~output_o\;

ww_Out_A(3) <= \Out_A[3]~output_o\;

ww_Out_A(4) <= \Out_A[4]~output_o\;

ww_Out_A(5) <= \Out_A[5]~output_o\;

ww_Out_A(6) <= \Out_A[6]~output_o\;

ww_Out_A(7) <= \Out_A[7]~output_o\;

ww_Out_A(8) <= \Out_A[8]~output_o\;

ww_Out_A(9) <= \Out_A[9]~output_o\;

ww_Out_A(10) <= \Out_A[10]~output_o\;

ww_Out_A(11) <= \Out_A[11]~output_o\;

ww_Out_A(12) <= \Out_A[12]~output_o\;

ww_Out_A(13) <= \Out_A[13]~output_o\;

ww_Out_A(14) <= \Out_A[14]~output_o\;

ww_Out_A(15) <= \Out_A[15]~output_o\;

ww_Out_A(16) <= \Out_A[16]~output_o\;

ww_Out_A(17) <= \Out_A[17]~output_o\;

ww_Out_A(18) <= \Out_A[18]~output_o\;

ww_Out_A(19) <= \Out_A[19]~output_o\;

ww_Out_A(20) <= \Out_A[20]~output_o\;

ww_Out_A(21) <= \Out_A[21]~output_o\;

ww_Out_A(22) <= \Out_A[22]~output_o\;

ww_Out_A(23) <= \Out_A[23]~output_o\;

ww_Out_A(24) <= \Out_A[24]~output_o\;

ww_Out_A(25) <= \Out_A[25]~output_o\;

ww_Out_A(26) <= \Out_A[26]~output_o\;

ww_Out_A(27) <= \Out_A[27]~output_o\;

ww_Out_A(28) <= \Out_A[28]~output_o\;

ww_Out_A(29) <= \Out_A[29]~output_o\;

ww_Out_A(30) <= \Out_A[30]~output_o\;

ww_Out_A(31) <= \Out_A[31]~output_o\;

ww_Out_B(0) <= \Out_B[0]~output_o\;

ww_Out_B(1) <= \Out_B[1]~output_o\;

ww_Out_B(2) <= \Out_B[2]~output_o\;

ww_Out_B(3) <= \Out_B[3]~output_o\;

ww_Out_B(4) <= \Out_B[4]~output_o\;

ww_Out_B(5) <= \Out_B[5]~output_o\;

ww_Out_B(6) <= \Out_B[6]~output_o\;

ww_Out_B(7) <= \Out_B[7]~output_o\;

ww_Out_B(8) <= \Out_B[8]~output_o\;

ww_Out_B(9) <= \Out_B[9]~output_o\;

ww_Out_B(10) <= \Out_B[10]~output_o\;

ww_Out_B(11) <= \Out_B[11]~output_o\;

ww_Out_B(12) <= \Out_B[12]~output_o\;

ww_Out_B(13) <= \Out_B[13]~output_o\;

ww_Out_B(14) <= \Out_B[14]~output_o\;

ww_Out_B(15) <= \Out_B[15]~output_o\;

ww_Out_B(16) <= \Out_B[16]~output_o\;

ww_Out_B(17) <= \Out_B[17]~output_o\;

ww_Out_B(18) <= \Out_B[18]~output_o\;

ww_Out_B(19) <= \Out_B[19]~output_o\;

ww_Out_B(20) <= \Out_B[20]~output_o\;

ww_Out_B(21) <= \Out_B[21]~output_o\;

ww_Out_B(22) <= \Out_B[22]~output_o\;

ww_Out_B(23) <= \Out_B[23]~output_o\;

ww_Out_B(24) <= \Out_B[24]~output_o\;

ww_Out_B(25) <= \Out_B[25]~output_o\;

ww_Out_B(26) <= \Out_B[26]~output_o\;

ww_Out_B(27) <= \Out_B[27]~output_o\;

ww_Out_B(28) <= \Out_B[28]~output_o\;

ww_Out_B(29) <= \Out_B[29]~output_o\;

ww_Out_B(30) <= \Out_B[30]~output_o\;

ww_Out_B(31) <= \Out_B[31]~output_o\;

ww_Out_C <= \Out_C~output_o\;

ww_Out_Z <= \Out_Z~output_o\;

ww_Out_PC(0) <= \Out_PC[0]~output_o\;

ww_Out_PC(1) <= \Out_PC[1]~output_o\;

ww_Out_PC(2) <= \Out_PC[2]~output_o\;

ww_Out_PC(3) <= \Out_PC[3]~output_o\;

ww_Out_PC(4) <= \Out_PC[4]~output_o\;

ww_Out_PC(5) <= \Out_PC[5]~output_o\;

ww_Out_PC(6) <= \Out_PC[6]~output_o\;

ww_Out_PC(7) <= \Out_PC[7]~output_o\;

ww_Out_PC(8) <= \Out_PC[8]~output_o\;

ww_Out_PC(9) <= \Out_PC[9]~output_o\;

ww_Out_PC(10) <= \Out_PC[10]~output_o\;

ww_Out_PC(11) <= \Out_PC[11]~output_o\;

ww_Out_PC(12) <= \Out_PC[12]~output_o\;

ww_Out_PC(13) <= \Out_PC[13]~output_o\;

ww_Out_PC(14) <= \Out_PC[14]~output_o\;

ww_Out_PC(15) <= \Out_PC[15]~output_o\;

ww_Out_PC(16) <= \Out_PC[16]~output_o\;

ww_Out_PC(17) <= \Out_PC[17]~output_o\;

ww_Out_PC(18) <= \Out_PC[18]~output_o\;

ww_Out_PC(19) <= \Out_PC[19]~output_o\;

ww_Out_PC(20) <= \Out_PC[20]~output_o\;

ww_Out_PC(21) <= \Out_PC[21]~output_o\;

ww_Out_PC(22) <= \Out_PC[22]~output_o\;

ww_Out_PC(23) <= \Out_PC[23]~output_o\;

ww_Out_PC(24) <= \Out_PC[24]~output_o\;

ww_Out_PC(25) <= \Out_PC[25]~output_o\;

ww_Out_PC(26) <= \Out_PC[26]~output_o\;

ww_Out_PC(27) <= \Out_PC[27]~output_o\;

ww_Out_PC(28) <= \Out_PC[28]~output_o\;

ww_Out_PC(29) <= \Out_PC[29]~output_o\;

ww_Out_PC(30) <= \Out_PC[30]~output_o\;

ww_Out_PC(31) <= \Out_PC[31]~output_o\;

ww_Out_IR(0) <= \Out_IR[0]~output_o\;

ww_Out_IR(1) <= \Out_IR[1]~output_o\;

ww_Out_IR(2) <= \Out_IR[2]~output_o\;

ww_Out_IR(3) <= \Out_IR[3]~output_o\;

ww_Out_IR(4) <= \Out_IR[4]~output_o\;

ww_Out_IR(5) <= \Out_IR[5]~output_o\;

ww_Out_IR(6) <= \Out_IR[6]~output_o\;

ww_Out_IR(7) <= \Out_IR[7]~output_o\;

ww_Out_IR(8) <= \Out_IR[8]~output_o\;

ww_Out_IR(9) <= \Out_IR[9]~output_o\;

ww_Out_IR(10) <= \Out_IR[10]~output_o\;

ww_Out_IR(11) <= \Out_IR[11]~output_o\;

ww_Out_IR(12) <= \Out_IR[12]~output_o\;

ww_Out_IR(13) <= \Out_IR[13]~output_o\;

ww_Out_IR(14) <= \Out_IR[14]~output_o\;

ww_Out_IR(15) <= \Out_IR[15]~output_o\;

ww_Out_IR(16) <= \Out_IR[16]~output_o\;

ww_Out_IR(17) <= \Out_IR[17]~output_o\;

ww_Out_IR(18) <= \Out_IR[18]~output_o\;

ww_Out_IR(19) <= \Out_IR[19]~output_o\;

ww_Out_IR(20) <= \Out_IR[20]~output_o\;

ww_Out_IR(21) <= \Out_IR[21]~output_o\;

ww_Out_IR(22) <= \Out_IR[22]~output_o\;

ww_Out_IR(23) <= \Out_IR[23]~output_o\;

ww_Out_IR(24) <= \Out_IR[24]~output_o\;

ww_Out_IR(25) <= \Out_IR[25]~output_o\;

ww_Out_IR(26) <= \Out_IR[26]~output_o\;

ww_Out_IR(27) <= \Out_IR[27]~output_o\;

ww_Out_IR(28) <= \Out_IR[28]~output_o\;

ww_Out_IR(29) <= \Out_IR[29]~output_o\;

ww_Out_IR(30) <= \Out_IR[30]~output_o\;

ww_Out_IR(31) <= \Out_IR[31]~output_o\;

ww_ADDR_OUT(0) <= \ADDR_OUT[0]~output_o\;

ww_ADDR_OUT(1) <= \ADDR_OUT[1]~output_o\;

ww_ADDR_OUT(2) <= \ADDR_OUT[2]~output_o\;

ww_ADDR_OUT(3) <= \ADDR_OUT[3]~output_o\;

ww_ADDR_OUT(4) <= \ADDR_OUT[4]~output_o\;

ww_ADDR_OUT(5) <= \ADDR_OUT[5]~output_o\;

ww_ADDR_OUT(6) <= \ADDR_OUT[6]~output_o\;

ww_ADDR_OUT(7) <= \ADDR_OUT[7]~output_o\;

ww_ADDR_OUT(8) <= \ADDR_OUT[8]~output_o\;

ww_ADDR_OUT(9) <= \ADDR_OUT[9]~output_o\;

ww_ADDR_OUT(10) <= \ADDR_OUT[10]~output_o\;

ww_ADDR_OUT(11) <= \ADDR_OUT[11]~output_o\;

ww_ADDR_OUT(12) <= \ADDR_OUT[12]~output_o\;

ww_ADDR_OUT(13) <= \ADDR_OUT[13]~output_o\;

ww_ADDR_OUT(14) <= \ADDR_OUT[14]~output_o\;

ww_ADDR_OUT(15) <= \ADDR_OUT[15]~output_o\;

ww_ADDR_OUT(16) <= \ADDR_OUT[16]~output_o\;

ww_ADDR_OUT(17) <= \ADDR_OUT[17]~output_o\;

ww_ADDR_OUT(18) <= \ADDR_OUT[18]~output_o\;

ww_ADDR_OUT(19) <= \ADDR_OUT[19]~output_o\;

ww_ADDR_OUT(20) <= \ADDR_OUT[20]~output_o\;

ww_ADDR_OUT(21) <= \ADDR_OUT[21]~output_o\;

ww_ADDR_OUT(22) <= \ADDR_OUT[22]~output_o\;

ww_ADDR_OUT(23) <= \ADDR_OUT[23]~output_o\;

ww_ADDR_OUT(24) <= \ADDR_OUT[24]~output_o\;

ww_ADDR_OUT(25) <= \ADDR_OUT[25]~output_o\;

ww_ADDR_OUT(26) <= \ADDR_OUT[26]~output_o\;

ww_ADDR_OUT(27) <= \ADDR_OUT[27]~output_o\;

ww_ADDR_OUT(28) <= \ADDR_OUT[28]~output_o\;

ww_ADDR_OUT(29) <= \ADDR_OUT[29]~output_o\;

ww_ADDR_OUT(30) <= \ADDR_OUT[30]~output_o\;

ww_ADDR_OUT(31) <= \ADDR_OUT[31]~output_o\;

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;

ww_DATA_OUT(16) <= \DATA_OUT[16]~output_o\;

ww_DATA_OUT(17) <= \DATA_OUT[17]~output_o\;

ww_DATA_OUT(18) <= \DATA_OUT[18]~output_o\;

ww_DATA_OUT(19) <= \DATA_OUT[19]~output_o\;

ww_DATA_OUT(20) <= \DATA_OUT[20]~output_o\;

ww_DATA_OUT(21) <= \DATA_OUT[21]~output_o\;

ww_DATA_OUT(22) <= \DATA_OUT[22]~output_o\;

ww_DATA_OUT(23) <= \DATA_OUT[23]~output_o\;

ww_DATA_OUT(24) <= \DATA_OUT[24]~output_o\;

ww_DATA_OUT(25) <= \DATA_OUT[25]~output_o\;

ww_DATA_OUT(26) <= \DATA_OUT[26]~output_o\;

ww_DATA_OUT(27) <= \DATA_OUT[27]~output_o\;

ww_DATA_OUT(28) <= \DATA_OUT[28]~output_o\;

ww_DATA_OUT(29) <= \DATA_OUT[29]~output_o\;

ww_DATA_OUT(30) <= \DATA_OUT[30]~output_o\;

ww_DATA_OUT(31) <= \DATA_OUT[31]~output_o\;

ww_MEM_OUT(0) <= \MEM_OUT[0]~output_o\;

ww_MEM_OUT(1) <= \MEM_OUT[1]~output_o\;

ww_MEM_OUT(2) <= \MEM_OUT[2]~output_o\;

ww_MEM_OUT(3) <= \MEM_OUT[3]~output_o\;

ww_MEM_OUT(4) <= \MEM_OUT[4]~output_o\;

ww_MEM_OUT(5) <= \MEM_OUT[5]~output_o\;

ww_MEM_OUT(6) <= \MEM_OUT[6]~output_o\;

ww_MEM_OUT(7) <= \MEM_OUT[7]~output_o\;

ww_MEM_OUT(8) <= \MEM_OUT[8]~output_o\;

ww_MEM_OUT(9) <= \MEM_OUT[9]~output_o\;

ww_MEM_OUT(10) <= \MEM_OUT[10]~output_o\;

ww_MEM_OUT(11) <= \MEM_OUT[11]~output_o\;

ww_MEM_OUT(12) <= \MEM_OUT[12]~output_o\;

ww_MEM_OUT(13) <= \MEM_OUT[13]~output_o\;

ww_MEM_OUT(14) <= \MEM_OUT[14]~output_o\;

ww_MEM_OUT(15) <= \MEM_OUT[15]~output_o\;

ww_MEM_OUT(16) <= \MEM_OUT[16]~output_o\;

ww_MEM_OUT(17) <= \MEM_OUT[17]~output_o\;

ww_MEM_OUT(18) <= \MEM_OUT[18]~output_o\;

ww_MEM_OUT(19) <= \MEM_OUT[19]~output_o\;

ww_MEM_OUT(20) <= \MEM_OUT[20]~output_o\;

ww_MEM_OUT(21) <= \MEM_OUT[21]~output_o\;

ww_MEM_OUT(22) <= \MEM_OUT[22]~output_o\;

ww_MEM_OUT(23) <= \MEM_OUT[23]~output_o\;

ww_MEM_OUT(24) <= \MEM_OUT[24]~output_o\;

ww_MEM_OUT(25) <= \MEM_OUT[25]~output_o\;

ww_MEM_OUT(26) <= \MEM_OUT[26]~output_o\;

ww_MEM_OUT(27) <= \MEM_OUT[27]~output_o\;

ww_MEM_OUT(28) <= \MEM_OUT[28]~output_o\;

ww_MEM_OUT(29) <= \MEM_OUT[29]~output_o\;

ww_MEM_OUT(30) <= \MEM_OUT[30]~output_o\;

ww_MEM_OUT(31) <= \MEM_OUT[31]~output_o\;

ww_MEM_IN(0) <= \MEM_IN[0]~output_o\;

ww_MEM_IN(1) <= \MEM_IN[1]~output_o\;

ww_MEM_IN(2) <= \MEM_IN[2]~output_o\;

ww_MEM_IN(3) <= \MEM_IN[3]~output_o\;

ww_MEM_IN(4) <= \MEM_IN[4]~output_o\;

ww_MEM_IN(5) <= \MEM_IN[5]~output_o\;

ww_MEM_IN(6) <= \MEM_IN[6]~output_o\;

ww_MEM_IN(7) <= \MEM_IN[7]~output_o\;

ww_MEM_IN(8) <= \MEM_IN[8]~output_o\;

ww_MEM_IN(9) <= \MEM_IN[9]~output_o\;

ww_MEM_IN(10) <= \MEM_IN[10]~output_o\;

ww_MEM_IN(11) <= \MEM_IN[11]~output_o\;

ww_MEM_IN(12) <= \MEM_IN[12]~output_o\;

ww_MEM_IN(13) <= \MEM_IN[13]~output_o\;

ww_MEM_IN(14) <= \MEM_IN[14]~output_o\;

ww_MEM_IN(15) <= \MEM_IN[15]~output_o\;

ww_MEM_IN(16) <= \MEM_IN[16]~output_o\;

ww_MEM_IN(17) <= \MEM_IN[17]~output_o\;

ww_MEM_IN(18) <= \MEM_IN[18]~output_o\;

ww_MEM_IN(19) <= \MEM_IN[19]~output_o\;

ww_MEM_IN(20) <= \MEM_IN[20]~output_o\;

ww_MEM_IN(21) <= \MEM_IN[21]~output_o\;

ww_MEM_IN(22) <= \MEM_IN[22]~output_o\;

ww_MEM_IN(23) <= \MEM_IN[23]~output_o\;

ww_MEM_IN(24) <= \MEM_IN[24]~output_o\;

ww_MEM_IN(25) <= \MEM_IN[25]~output_o\;

ww_MEM_IN(26) <= \MEM_IN[26]~output_o\;

ww_MEM_IN(27) <= \MEM_IN[27]~output_o\;

ww_MEM_IN(28) <= \MEM_IN[28]~output_o\;

ww_MEM_IN(29) <= \MEM_IN[29]~output_o\;

ww_MEM_IN(30) <= \MEM_IN[30]~output_o\;

ww_MEM_IN(31) <= \MEM_IN[31]~output_o\;

ww_MEM_ADDR(0) <= \MEM_ADDR[0]~output_o\;

ww_MEM_ADDR(1) <= \MEM_ADDR[1]~output_o\;

ww_MEM_ADDR(2) <= \MEM_ADDR[2]~output_o\;

ww_MEM_ADDR(3) <= \MEM_ADDR[3]~output_o\;

ww_MEM_ADDR(4) <= \MEM_ADDR[4]~output_o\;

ww_MEM_ADDR(5) <= \MEM_ADDR[5]~output_o\;

ww_MEM_ADDR(6) <= \MEM_ADDR[6]~output_o\;

ww_MEM_ADDR(7) <= \MEM_ADDR[7]~output_o\;
END structure;


