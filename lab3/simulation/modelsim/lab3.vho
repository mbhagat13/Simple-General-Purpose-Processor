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

-- DATE "02/06/2018 11:47:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0);
	cout : OUT std_logic;
	zero : OUT std_logic
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~2_combout\ : std_logic;
SIGNAL \mux1|Mux32~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \adder1|s1|p1|cout~0_combout\ : std_logic;
SIGNAL \adder1|s1|p2|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux1~0_combout\ : std_logic;
SIGNAL \mux1|Mux1~1_combout\ : std_logic;
SIGNAL \mux1|Mux1~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \mux1|Mux2~0_combout\ : std_logic;
SIGNAL \mux1|Mux2~1_combout\ : std_logic;
SIGNAL \adder1|s1|p2|cout~0_combout\ : std_logic;
SIGNAL \adder1|s1|p3|s~0_combout\ : std_logic;
SIGNAL \mux1|Mux2~2_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \mux1|Mux3~0_combout\ : std_logic;
SIGNAL \adder1|s1|p3|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \mux1|Mux3~1_combout\ : std_logic;
SIGNAL \mux1|Mux3~2_combout\ : std_logic;
SIGNAL \mux1|Mux3~3_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \mux1|Mux4~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \mux1|Mux4~1_combout\ : std_logic;
SIGNAL \adder1|s1|p4|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux4~2_combout\ : std_logic;
SIGNAL \mux1|Mux4~3_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \mux1|Mux5~1_combout\ : std_logic;
SIGNAL \adder1|s2|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux5~2_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \mux1|Mux5~0_combout\ : std_logic;
SIGNAL \mux1|Mux5~3_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \mux1|Mux6~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \mux1|Mux6~1_combout\ : std_logic;
SIGNAL \adder1|s2|p2|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux6~2_combout\ : std_logic;
SIGNAL \mux1|Mux6~3_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \mux1|Mux7~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \mux1|Mux7~1_combout\ : std_logic;
SIGNAL \adder1|s2|p3|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux7~2_combout\ : std_logic;
SIGNAL \mux1|Mux7~3_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \mux1|Mux8~0_combout\ : std_logic;
SIGNAL \adder1|s2|p4|cout~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \mux1|Mux8~1_combout\ : std_logic;
SIGNAL \mux1|Mux8~2_combout\ : std_logic;
SIGNAL \mux1|Mux8~3_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \mux1|Mux9~1_combout\ : std_logic;
SIGNAL \adder1|s3|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux9~2_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \mux1|Mux9~0_combout\ : std_logic;
SIGNAL \mux1|Mux9~3_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \mux1|Mux10~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \mux1|Mux10~1_combout\ : std_logic;
SIGNAL \adder1|s3|p2|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux10~2_combout\ : std_logic;
SIGNAL \mux1|Mux10~3_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \mux1|Mux11~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \mux1|Mux11~1_combout\ : std_logic;
SIGNAL \adder1|s3|p3|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux11~2_combout\ : std_logic;
SIGNAL \mux1|Mux11~3_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \mux1|Mux12~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \mux1|Mux12~1_combout\ : std_logic;
SIGNAL \adder1|s3|p4|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux12~2_combout\ : std_logic;
SIGNAL \mux1|Mux12~3_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \mux1|Mux13~1_combout\ : std_logic;
SIGNAL \adder1|s4|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux13~2_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \mux1|Mux13~0_combout\ : std_logic;
SIGNAL \mux1|Mux13~3_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \mux1|Mux14~1_combout\ : std_logic;
SIGNAL \adder1|s4|p2|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux14~2_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \mux1|Mux14~0_combout\ : std_logic;
SIGNAL \mux1|Mux14~3_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \mux1|Mux15~0_combout\ : std_logic;
SIGNAL \adder1|s4|p3|cout~0_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \mux1|Mux15~1_combout\ : std_logic;
SIGNAL \mux1|Mux15~2_combout\ : std_logic;
SIGNAL \mux1|Mux15~3_combout\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \mux1|Mux16~1_combout\ : std_logic;
SIGNAL \adder1|s4|p4|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux16~2_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \mux1|Mux16~0_combout\ : std_logic;
SIGNAL \mux1|Mux16~3_combout\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \mux1|Mux17~1_combout\ : std_logic;
SIGNAL \adder1|s5|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux17~2_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \mux1|Mux17~0_combout\ : std_logic;
SIGNAL \mux1|Mux17~3_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \mux1|Mux18~0_combout\ : std_logic;
SIGNAL \adder1|s5|p2|cout~0_combout\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \mux1|Mux18~1_combout\ : std_logic;
SIGNAL \mux1|Mux18~2_combout\ : std_logic;
SIGNAL \mux1|Mux18~3_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \mux1|Mux19~0_combout\ : std_logic;
SIGNAL \adder1|s5|p3|cout~0_combout\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \mux1|Mux19~1_combout\ : std_logic;
SIGNAL \mux1|Mux19~2_combout\ : std_logic;
SIGNAL \mux1|Mux19~3_combout\ : std_logic;
SIGNAL \adder1|s5|p4|cout~0_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \mux1|Mux20~1_combout\ : std_logic;
SIGNAL \mux1|Mux20~2_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \mux1|Mux20~0_combout\ : std_logic;
SIGNAL \mux1|Mux20~3_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \mux1|Mux21~0_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \mux1|Mux21~1_combout\ : std_logic;
SIGNAL \adder1|s6|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux21~2_combout\ : std_logic;
SIGNAL \mux1|Mux21~3_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \mux1|Mux22~1_combout\ : std_logic;
SIGNAL \adder1|s6|p2|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux22~2_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \mux1|Mux22~0_combout\ : std_logic;
SIGNAL \mux1|Mux22~3_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \mux1|Mux23~0_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \mux1|Mux23~1_combout\ : std_logic;
SIGNAL \adder1|s6|p3|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux23~2_combout\ : std_logic;
SIGNAL \mux1|Mux23~3_combout\ : std_logic;
SIGNAL \adder1|s6|p4|cout~0_combout\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \mux1|Mux24~1_combout\ : std_logic;
SIGNAL \mux1|Mux24~2_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \mux1|Mux24~0_combout\ : std_logic;
SIGNAL \mux1|Mux24~3_combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \mux1|Mux25~1_combout\ : std_logic;
SIGNAL \adder1|s7|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux25~2_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \mux1|Mux25~0_combout\ : std_logic;
SIGNAL \mux1|Mux25~3_combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \mux1|Mux26~0_combout\ : std_logic;
SIGNAL \adder1|s7|p2|cout~0_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \mux1|Mux26~1_combout\ : std_logic;
SIGNAL \mux1|Mux26~2_combout\ : std_logic;
SIGNAL \mux1|Mux26~3_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \mux1|Mux27~1_combout\ : std_logic;
SIGNAL \adder1|s7|p3|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux27~2_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \mux1|Mux27~0_combout\ : std_logic;
SIGNAL \mux1|Mux27~3_combout\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \mux1|Mux28~1_combout\ : std_logic;
SIGNAL \adder1|s7|p4|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux28~2_combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \mux1|Mux28~0_combout\ : std_logic;
SIGNAL \mux1|Mux28~3_combout\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \mux1|Mux29~1_combout\ : std_logic;
SIGNAL \adder1|s8|p1|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux29~2_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \mux1|Mux29~0_combout\ : std_logic;
SIGNAL \mux1|Mux29~3_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \mux1|Mux30~1_combout\ : std_logic;
SIGNAL \adder1|s8|p2|cout~0_combout\ : std_logic;
SIGNAL \mux1|Mux30~2_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \mux1|Mux30~0_combout\ : std_logic;
SIGNAL \mux1|Mux30~3_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \mux1|Mux31~0_combout\ : std_logic;
SIGNAL \adder1|s8|p3|cout~0_combout\ : std_logic;
SIGNAL \adder1|s8|p4|s~0_combout\ : std_logic;
SIGNAL \mux1|Mux31~1_combout\ : std_logic;
SIGNAL \mux1|Mux31~2_combout\ : std_logic;
SIGNAL \adder1|s8|p4|cout~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
result <= ww_result;
cout <= ww_cout;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X52_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux0~2_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux1~2_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux2~2_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux3~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux4~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux5~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux6~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux7~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux8~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux9~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux10~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux11~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux12~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux13~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux14~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux15~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux16~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux17~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux18~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux19~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux20~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux21~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux22~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux23~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux24~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux25~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux26~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux27~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux28~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux29~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux30~3_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Mux31~2_combout\,
	oe => \mux1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|s8|p4|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~11_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOIBUF_X58_Y73_N1
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X57_Y72_N20
\mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (!\op[2]~input_o\ & ((\b[0]~input_o\ & ((\a[0]~input_o\) # (\op[0]~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X57_Y72_N30
\mux1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\mux1|Mux0~0_combout\) # ((\op[0]~input_o\ & (\op[2]~input_o\ & \a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \mux1|Mux0~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \mux1|Mux0~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X57_Y72_N24
\mux1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux0~2_combout\ = (\op[1]~input_o\ & ((\a[0]~input_o\ $ (\b[0]~input_o\)))) # (!\op[1]~input_o\ & (\mux1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux0~1_combout\,
	datab => \a[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \mux1|Mux0~2_combout\);

-- Location: LCCOMB_X67_Y72_N6
\mux1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux32~0_combout\ = (!\op[0]~input_o\) # (!\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux32~0_combout\);

-- Location: IOIBUF_X54_Y73_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X57_Y72_N0
\adder1|s1|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p1|cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[2]~input_o\,
	combout => \adder1|s1|p1|cout~0_combout\);

-- Location: LCCOMB_X57_Y72_N10
\adder1|s1|p2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p2|s~combout\ = \op[2]~input_o\ $ (\a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder1|s1|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder1|s1|p1|cout~0_combout\,
	combout => \adder1|s1|p2|s~combout\);

-- Location: IOIBUF_X33_Y73_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X57_Y72_N22
\mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~0_combout\ = (\op[2]~input_o\ & ((\op[0]~input_o\ & ((\a[2]~input_o\))) # (!\op[0]~input_o\ & (\a[0]~input_o\)))) # (!\op[2]~input_o\ & (((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y72_N8
\mux1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~1_combout\ = (\mux1|Mux1~0_combout\ & ((\a[1]~input_o\) # ((\op[2]~input_o\) # (\b[1]~input_o\)))) # (!\mux1|Mux1~0_combout\ & (\a[1]~input_o\ & (!\op[2]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux1~0_combout\,
	datab => \a[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \mux1|Mux1~1_combout\);

-- Location: LCCOMB_X57_Y72_N4
\mux1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux1~2_combout\ = (\op[1]~input_o\ & (\adder1|s1|p2|s~combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s1|p2|s~combout\,
	datab => \mux1|Mux1~1_combout\,
	datac => \op[1]~input_o\,
	combout => \mux1|Mux1~2_combout\);

-- Location: IOIBUF_X47_Y73_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X57_Y72_N14
\mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~0_combout\ = (\op[2]~input_o\ & ((\op[0]~input_o\ & ((\a[3]~input_o\))) # (!\op[0]~input_o\ & (\a[1]~input_o\)))) # (!\op[2]~input_o\ & (((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y72_N16
\mux1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~1_combout\ = (\b[2]~input_o\ & ((\mux1|Mux2~0_combout\) # ((!\op[2]~input_o\ & \a[2]~input_o\)))) # (!\b[2]~input_o\ & (\mux1|Mux2~0_combout\ & ((\op[2]~input_o\) # (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mux1|Mux2~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \mux1|Mux2~1_combout\);

-- Location: LCCOMB_X57_Y72_N2
\adder1|s1|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p2|cout~0_combout\ = (\a[1]~input_o\ & ((\adder1|s1|p1|cout~0_combout\) # (\op[2]~input_o\ $ (\b[1]~input_o\)))) # (!\a[1]~input_o\ & (\adder1|s1|p1|cout~0_combout\ & (\op[2]~input_o\ $ (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder1|s1|p1|cout~0_combout\,
	combout => \adder1|s1|p2|cout~0_combout\);

-- Location: LCCOMB_X57_Y72_N12
\adder1|s1|p3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p3|s~0_combout\ = \b[2]~input_o\ $ (\adder1|s1|p2|cout~0_combout\ $ (\op[2]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \adder1|s1|p2|cout~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \adder1|s1|p3|s~0_combout\);

-- Location: LCCOMB_X57_Y72_N6
\mux1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux2~2_combout\ = (\op[1]~input_o\ & ((\adder1|s1|p3|s~0_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux2~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s1|p3|s~0_combout\,
	combout => \mux1|Mux2~2_combout\);

-- Location: IOIBUF_X62_Y73_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X67_Y72_N22
\mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~0_combout\ = (\op[0]~input_o\ & (\a[4]~input_o\)) # (!\op[0]~input_o\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[2]~input_o\,
	combout => \mux1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y72_N28
\adder1|s1|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p3|cout~0_combout\ = (\adder1|s1|p2|cout~0_combout\ & ((\a[2]~input_o\) # (\b[2]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s1|p2|cout~0_combout\ & (\a[2]~input_o\ & (\b[2]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \adder1|s1|p2|cout~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \adder1|s1|p3|cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X67_Y72_N24
\mux1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~1_combout\ = (\a[3]~input_o\ & ((\op[1]~input_o\ & ((!\b[3]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\b[3]~input_o\))))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[3]~input_o\,
	combout => \mux1|Mux3~1_combout\);

-- Location: LCCOMB_X67_Y72_N18
\mux1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~2_combout\ = \mux1|Mux3~1_combout\ $ (((\op[1]~input_o\ & \adder1|s1|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \adder1|s1|p3|cout~0_combout\,
	datad => \mux1|Mux3~1_combout\,
	combout => \mux1|Mux3~2_combout\);

-- Location: LCCOMB_X67_Y72_N12
\mux1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux3~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux3~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux3~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux3~0_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux3~2_combout\,
	combout => \mux1|Mux3~3_combout\);

-- Location: IOIBUF_X111_Y73_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X67_Y72_N14
\mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~0_combout\ = (\op[0]~input_o\ & (\a[5]~input_o\)) # (!\op[0]~input_o\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[3]~input_o\,
	combout => \mux1|Mux4~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X67_Y72_N8
\mux1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~1_combout\ = (\a[4]~input_o\ & ((\op[1]~input_o\ & ((!\b[4]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\b[4]~input_o\))))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux1|Mux4~1_combout\);

-- Location: LCCOMB_X67_Y72_N16
\adder1|s1|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s1|p4|cout~0_combout\ = (\adder1|s1|p3|cout~0_combout\ & ((\a[3]~input_o\) # (\op[2]~input_o\ $ (\b[3]~input_o\)))) # (!\adder1|s1|p3|cout~0_combout\ & (\a[3]~input_o\ & (\op[2]~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s1|p3|cout~0_combout\,
	datab => \op[2]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \adder1|s1|p4|cout~0_combout\);

-- Location: LCCOMB_X67_Y72_N2
\mux1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~2_combout\ = \mux1|Mux4~1_combout\ $ (((\op[1]~input_o\ & \adder1|s1|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \mux1|Mux4~1_combout\,
	datad => \adder1|s1|p4|cout~0_combout\,
	combout => \mux1|Mux4~2_combout\);

-- Location: LCCOMB_X67_Y72_N28
\mux1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux4~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux4~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux4~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux4~0_combout\,
	datad => \mux1|Mux4~2_combout\,
	combout => \mux1|Mux4~3_combout\);

-- Location: IOIBUF_X60_Y73_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X67_Y72_N0
\mux1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~1_combout\ = (\op[1]~input_o\ & ((\a[5]~input_o\ $ (\b[5]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\a[5]~input_o\) # (\b[5]~input_o\))) # (!\op[0]~input_o\ & (\a[5]~input_o\ & \b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \mux1|Mux5~1_combout\);

-- Location: LCCOMB_X67_Y72_N10
\adder1|s2|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s2|p1|cout~0_combout\ = (\a[4]~input_o\ & ((\adder1|s1|p4|cout~0_combout\) # (\b[4]~input_o\ $ (\op[2]~input_o\)))) # (!\a[4]~input_o\ & (\adder1|s1|p4|cout~0_combout\ & (\b[4]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \op[2]~input_o\,
	datac => \a[4]~input_o\,
	datad => \adder1|s1|p4|cout~0_combout\,
	combout => \adder1|s2|p1|cout~0_combout\);

-- Location: LCCOMB_X67_Y72_N26
\mux1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~2_combout\ = \mux1|Mux5~1_combout\ $ (((\op[1]~input_o\ & \adder1|s2|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux5~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s2|p1|cout~0_combout\,
	combout => \mux1|Mux5~2_combout\);

-- Location: IOIBUF_X91_Y73_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X67_Y72_N30
\mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~0_combout\ = (\op[0]~input_o\ & ((\a[6]~input_o\))) # (!\op[0]~input_o\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[6]~input_o\,
	combout => \mux1|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y72_N20
\mux1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux5~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux5~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux5~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux5~2_combout\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux5~0_combout\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux5~3_combout\);

-- Location: IOIBUF_X72_Y73_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X73_Y72_N0
\mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~0_combout\ = (\op[0]~input_o\ & (\a[7]~input_o\)) # (!\op[0]~input_o\ & ((\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[5]~input_o\,
	combout => \mux1|Mux6~0_combout\);

-- Location: IOIBUF_X115_Y68_N22
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X73_Y72_N26
\mux1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~1_combout\ = (\op[1]~input_o\ & (\a[6]~input_o\ $ ((\b[6]~input_o\)))) # (!\op[1]~input_o\ & ((\a[6]~input_o\ & ((\b[6]~input_o\) # (\op[0]~input_o\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux6~1_combout\);

-- Location: LCCOMB_X67_Y72_N4
\adder1|s2|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s2|p2|cout~0_combout\ = (\a[5]~input_o\ & ((\adder1|s2|p1|cout~0_combout\) # (\b[5]~input_o\ $ (\op[2]~input_o\)))) # (!\a[5]~input_o\ & (\adder1|s2|p1|cout~0_combout\ & (\b[5]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \op[2]~input_o\,
	datac => \a[5]~input_o\,
	datad => \adder1|s2|p1|cout~0_combout\,
	combout => \adder1|s2|p2|cout~0_combout\);

-- Location: LCCOMB_X73_Y72_N20
\mux1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~2_combout\ = \mux1|Mux6~1_combout\ $ (((\op[1]~input_o\ & \adder1|s2|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \mux1|Mux6~1_combout\,
	datad => \adder1|s2|p2|cout~0_combout\,
	combout => \mux1|Mux6~2_combout\);

-- Location: LCCOMB_X73_Y72_N6
\mux1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux6~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux6~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux6~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux6~0_combout\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux6~2_combout\,
	combout => \mux1|Mux6~3_combout\);

-- Location: IOIBUF_X81_Y73_N1
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X73_Y72_N8
\mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~0_combout\ = (\op[0]~input_o\ & (\a[8]~input_o\)) # (!\op[0]~input_o\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[6]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux7~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X73_Y72_N18
\mux1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~1_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ & ((!\op[1]~input_o\))) # (!\a[7]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\b[7]~input_o\ & (\a[7]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[7]~input_o\,
	datac => \a[7]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux7~1_combout\);

-- Location: LCCOMB_X73_Y72_N16
\adder1|s2|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s2|p3|cout~0_combout\ = (\adder1|s2|p2|cout~0_combout\ & ((\a[6]~input_o\) # (\b[6]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s2|p2|cout~0_combout\ & (\a[6]~input_o\ & (\b[6]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s2|p2|cout~0_combout\,
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|s2|p3|cout~0_combout\);

-- Location: LCCOMB_X73_Y72_N12
\mux1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~2_combout\ = \mux1|Mux7~1_combout\ $ (((\op[1]~input_o\ & \adder1|s2|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux7~1_combout\,
	datad => \adder1|s2|p3|cout~0_combout\,
	combout => \mux1|Mux7~2_combout\);

-- Location: LCCOMB_X73_Y72_N30
\mux1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux7~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux7~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux7~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux7~0_combout\,
	datad => \mux1|Mux7~2_combout\,
	combout => \mux1|Mux7~3_combout\);

-- Location: IOIBUF_X87_Y73_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X68_Y72_N28
\mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~0_combout\ = (\op[0]~input_o\ & (\a[9]~input_o\)) # (!\op[0]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[7]~input_o\,
	combout => \mux1|Mux8~0_combout\);

-- Location: LCCOMB_X73_Y72_N2
\adder1|s2|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s2|p4|cout~0_combout\ = (\a[7]~input_o\ & ((\adder1|s2|p3|cout~0_combout\) # (\op[2]~input_o\ $ (\b[7]~input_o\)))) # (!\a[7]~input_o\ & (\adder1|s2|p3|cout~0_combout\ & (\op[2]~input_o\ $ (\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \op[2]~input_o\,
	datac => \b[7]~input_o\,
	datad => \adder1|s2|p3|cout~0_combout\,
	combout => \adder1|s2|p4|cout~0_combout\);

-- Location: IOIBUF_X115_Y66_N22
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X73_Y72_N24
\mux1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~1_combout\ = (\op[1]~input_o\ & ((\a[8]~input_o\ $ (\b[8]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\a[8]~input_o\) # (\b[8]~input_o\))) # (!\op[0]~input_o\ & (\a[8]~input_o\ & \b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \mux1|Mux8~1_combout\);

-- Location: LCCOMB_X72_Y72_N12
\mux1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~2_combout\ = \mux1|Mux8~1_combout\ $ (((\adder1|s2|p4|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s2|p4|cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux8~1_combout\,
	combout => \mux1|Mux8~2_combout\);

-- Location: LCCOMB_X72_Y72_N6
\mux1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux8~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux8~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux8~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux8~0_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux8~2_combout\,
	combout => \mux1|Mux8~3_combout\);

-- Location: IOIBUF_X109_Y73_N8
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X76_Y72_N0
\mux1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~1_combout\ = (\op[1]~input_o\ & (\a[9]~input_o\ $ ((\b[9]~input_o\)))) # (!\op[1]~input_o\ & ((\a[9]~input_o\ & ((\b[9]~input_o\) # (\op[0]~input_o\))) # (!\a[9]~input_o\ & (\b[9]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	datad => \op[0]~input_o\,
	combout => \mux1|Mux9~1_combout\);

-- Location: LCCOMB_X73_Y72_N4
\adder1|s3|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s3|p1|cout~0_combout\ = (\a[8]~input_o\ & ((\adder1|s2|p4|cout~0_combout\) # (\op[2]~input_o\ $ (\b[8]~input_o\)))) # (!\a[8]~input_o\ & (\adder1|s2|p4|cout~0_combout\ & (\op[2]~input_o\ $ (\b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \op[2]~input_o\,
	datac => \adder1|s2|p4|cout~0_combout\,
	datad => \b[8]~input_o\,
	combout => \adder1|s3|p1|cout~0_combout\);

-- Location: LCCOMB_X76_Y72_N26
\mux1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~2_combout\ = \mux1|Mux9~1_combout\ $ (((\op[1]~input_o\ & \adder1|s3|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux9~1_combout\,
	datad => \adder1|s3|p1|cout~0_combout\,
	combout => \mux1|Mux9~2_combout\);

-- Location: IOIBUF_X115_Y69_N1
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X76_Y72_N6
\mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~0_combout\ = (\op[0]~input_o\ & ((\a[10]~input_o\))) # (!\op[0]~input_o\ & (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[10]~input_o\,
	combout => \mux1|Mux9~0_combout\);

-- Location: LCCOMB_X76_Y72_N12
\mux1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux9~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux9~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux9~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux9~2_combout\,
	datad => \mux1|Mux9~0_combout\,
	combout => \mux1|Mux9~3_combout\);

-- Location: IOIBUF_X83_Y73_N1
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X76_Y72_N22
\mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~0_combout\ = (\op[0]~input_o\ & (\a[11]~input_o\)) # (!\op[0]~input_o\ & ((\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \a[9]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux10~0_combout\);

-- Location: IOIBUF_X87_Y73_N8
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X76_Y72_N8
\mux1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~1_combout\ = (\op[1]~input_o\ & (\b[10]~input_o\ $ (((\a[10]~input_o\))))) # (!\op[1]~input_o\ & ((\b[10]~input_o\ & ((\op[0]~input_o\) # (\a[10]~input_o\))) # (!\b[10]~input_o\ & (\op[0]~input_o\ & \a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[10]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[10]~input_o\,
	combout => \mux1|Mux10~1_combout\);

-- Location: LCCOMB_X76_Y72_N24
\adder1|s3|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s3|p2|cout~0_combout\ = (\adder1|s3|p1|cout~0_combout\ & ((\a[9]~input_o\) # (\b[9]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s3|p1|cout~0_combout\ & (\a[9]~input_o\ & (\b[9]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s3|p1|cout~0_combout\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|s3|p2|cout~0_combout\);

-- Location: LCCOMB_X76_Y72_N18
\mux1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~2_combout\ = \mux1|Mux10~1_combout\ $ (((\op[1]~input_o\ & \adder1|s3|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \mux1|Mux10~1_combout\,
	datad => \adder1|s3|p2|cout~0_combout\,
	combout => \mux1|Mux10~2_combout\);

-- Location: LCCOMB_X76_Y72_N28
\mux1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux10~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux10~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux10~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux10~0_combout\,
	datad => \mux1|Mux10~2_combout\,
	combout => \mux1|Mux10~3_combout\);

-- Location: IOIBUF_X94_Y73_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X68_Y72_N6
\mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~0_combout\ = (\op[0]~input_o\ & (\a[12]~input_o\)) # (!\op[0]~input_o\ & ((\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[10]~input_o\,
	combout => \mux1|Mux11~0_combout\);

-- Location: IOIBUF_X113_Y73_N8
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X76_Y72_N30
\mux1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~1_combout\ = (\op[1]~input_o\ & ((\b[11]~input_o\ $ (\a[11]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\b[11]~input_o\) # (\a[11]~input_o\))) # (!\op[0]~input_o\ & (\b[11]~input_o\ & \a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[11]~input_o\,
	datad => \a[11]~input_o\,
	combout => \mux1|Mux11~1_combout\);

-- Location: LCCOMB_X76_Y72_N2
\adder1|s3|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s3|p3|cout~0_combout\ = (\adder1|s3|p2|cout~0_combout\ & ((\a[10]~input_o\) # (\b[10]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s3|p2|cout~0_combout\ & (\a[10]~input_o\ & (\b[10]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \adder1|s3|p2|cout~0_combout\,
	datac => \op[2]~input_o\,
	datad => \a[10]~input_o\,
	combout => \adder1|s3|p3|cout~0_combout\);

-- Location: LCCOMB_X76_Y72_N16
\mux1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~2_combout\ = \mux1|Mux11~1_combout\ $ (((\op[1]~input_o\ & \adder1|s3|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \mux1|Mux11~1_combout\,
	datad => \adder1|s3|p3|cout~0_combout\,
	combout => \mux1|Mux11~2_combout\);

-- Location: LCCOMB_X72_Y72_N24
\mux1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux11~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux11~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux11~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux11~0_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux11~2_combout\,
	combout => \mux1|Mux11~3_combout\);

-- Location: IOIBUF_X85_Y73_N1
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X77_Y72_N8
\mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~0_combout\ = (\op[0]~input_o\ & ((\a[13]~input_o\))) # (!\op[0]~input_o\ & (\a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[13]~input_o\,
	combout => \mux1|Mux12~0_combout\);

-- Location: IOIBUF_X85_Y73_N22
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X77_Y72_N18
\mux1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~1_combout\ = (\b[12]~input_o\ & ((\op[1]~input_o\ & ((!\a[12]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[12]~input_o\))))) # (!\b[12]~input_o\ & (\a[12]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[12]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[12]~input_o\,
	combout => \mux1|Mux12~1_combout\);

-- Location: LCCOMB_X77_Y72_N24
\adder1|s3|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s3|p4|cout~0_combout\ = (\adder1|s3|p3|cout~0_combout\ & ((\a[11]~input_o\) # (\op[2]~input_o\ $ (\b[11]~input_o\)))) # (!\adder1|s3|p3|cout~0_combout\ & (\a[11]~input_o\ & (\op[2]~input_o\ $ (\b[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s3|p3|cout~0_combout\,
	datab => \a[11]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[11]~input_o\,
	combout => \adder1|s3|p4|cout~0_combout\);

-- Location: LCCOMB_X77_Y72_N28
\mux1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~2_combout\ = \mux1|Mux12~1_combout\ $ (((\op[1]~input_o\ & \adder1|s3|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux12~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s3|p4|cout~0_combout\,
	combout => \mux1|Mux12~2_combout\);

-- Location: LCCOMB_X77_Y72_N6
\mux1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux12~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux12~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux12~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux12~0_combout\,
	datad => \mux1|Mux12~2_combout\,
	combout => \mux1|Mux12~3_combout\);

-- Location: IOIBUF_X85_Y73_N8
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X77_Y72_N26
\mux1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~1_combout\ = (\b[13]~input_o\ & ((\op[1]~input_o\ & ((!\a[13]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[13]~input_o\))))) # (!\b[13]~input_o\ & (\a[13]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[13]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[13]~input_o\,
	combout => \mux1|Mux13~1_combout\);

-- Location: LCCOMB_X77_Y72_N10
\adder1|s4|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s4|p1|cout~0_combout\ = (\a[12]~input_o\ & ((\adder1|s3|p4|cout~0_combout\) # (\op[2]~input_o\ $ (\b[12]~input_o\)))) # (!\a[12]~input_o\ & (\adder1|s3|p4|cout~0_combout\ & (\op[2]~input_o\ $ (\b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \adder1|s3|p4|cout~0_combout\,
	datac => \op[2]~input_o\,
	datad => \b[12]~input_o\,
	combout => \adder1|s4|p1|cout~0_combout\);

-- Location: LCCOMB_X77_Y72_N20
\mux1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~2_combout\ = \mux1|Mux13~1_combout\ $ (((\op[1]~input_o\ & \adder1|s4|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux13~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s4|p1|cout~0_combout\,
	combout => \mux1|Mux13~2_combout\);

-- Location: IOIBUF_X83_Y73_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X77_Y72_N0
\mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~0_combout\ = (\op[0]~input_o\ & (\a[14]~input_o\)) # (!\op[0]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[14]~input_o\,
	datad => \a[12]~input_o\,
	combout => \mux1|Mux13~0_combout\);

-- Location: LCCOMB_X77_Y72_N14
\mux1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux13~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux13~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux13~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \mux1|Mux13~2_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux13~0_combout\,
	combout => \mux1|Mux13~3_combout\);

-- Location: IOIBUF_X87_Y73_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X77_Y72_N2
\mux1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~1_combout\ = (\a[14]~input_o\ & ((\op[1]~input_o\ & ((!\b[14]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\b[14]~input_o\))))) # (!\a[14]~input_o\ & (\b[14]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[14]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[14]~input_o\,
	combout => \mux1|Mux14~1_combout\);

-- Location: LCCOMB_X77_Y72_N12
\adder1|s4|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s4|p2|cout~0_combout\ = (\adder1|s4|p1|cout~0_combout\ & ((\a[13]~input_o\) # (\b[13]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s4|p1|cout~0_combout\ & (\a[13]~input_o\ & (\b[13]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s4|p1|cout~0_combout\,
	datab => \b[13]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[13]~input_o\,
	combout => \adder1|s4|p2|cout~0_combout\);

-- Location: LCCOMB_X77_Y72_N4
\mux1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~2_combout\ = \mux1|Mux14~1_combout\ $ (((\op[1]~input_o\ & \adder1|s4|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux14~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s4|p2|cout~0_combout\,
	combout => \mux1|Mux14~2_combout\);

-- Location: IOIBUF_X79_Y73_N8
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X77_Y72_N16
\mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~0_combout\ = (\op[0]~input_o\ & (\a[15]~input_o\)) # (!\op[0]~input_o\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[13]~input_o\,
	combout => \mux1|Mux14~0_combout\);

-- Location: LCCOMB_X77_Y72_N22
\mux1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux14~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux14~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux14~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux14~2_combout\,
	datad => \mux1|Mux14~0_combout\,
	combout => \mux1|Mux14~3_combout\);

-- Location: IOIBUF_X87_Y73_N1
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X75_Y72_N30
\mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~0_combout\ = (\op[0]~input_o\ & ((\a[16]~input_o\))) # (!\op[0]~input_o\ & (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[16]~input_o\,
	combout => \mux1|Mux15~0_combout\);

-- Location: LCCOMB_X77_Y72_N30
\adder1|s4|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s4|p3|cout~0_combout\ = (\adder1|s4|p2|cout~0_combout\ & ((\a[14]~input_o\) # (\op[2]~input_o\ $ (\b[14]~input_o\)))) # (!\adder1|s4|p2|cout~0_combout\ & (\a[14]~input_o\ & (\op[2]~input_o\ $ (\b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s4|p2|cout~0_combout\,
	datab => \a[14]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[14]~input_o\,
	combout => \adder1|s4|p3|cout~0_combout\);

-- Location: IOIBUF_X107_Y73_N22
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X76_Y72_N10
\mux1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~1_combout\ = (\op[1]~input_o\ & (\a[15]~input_o\ $ (((\b[15]~input_o\))))) # (!\op[1]~input_o\ & ((\a[15]~input_o\ & ((\op[0]~input_o\) # (\b[15]~input_o\))) # (!\a[15]~input_o\ & (\op[0]~input_o\ & \b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[15]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[15]~input_o\,
	combout => \mux1|Mux15~1_combout\);

-- Location: LCCOMB_X76_Y72_N20
\mux1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~2_combout\ = \mux1|Mux15~1_combout\ $ (((\op[1]~input_o\ & \adder1|s4|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \adder1|s4|p3|cout~0_combout\,
	datad => \mux1|Mux15~1_combout\,
	combout => \mux1|Mux15~2_combout\);

-- Location: LCCOMB_X76_Y72_N14
\mux1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux15~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux15~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux15~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux15~0_combout\,
	datad => \mux1|Mux15~2_combout\,
	combout => \mux1|Mux15~3_combout\);

-- Location: IOIBUF_X105_Y73_N1
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X75_Y72_N10
\mux1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~1_combout\ = (\b[16]~input_o\ & ((\op[1]~input_o\ & ((!\a[16]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[16]~input_o\))))) # (!\b[16]~input_o\ & (\a[16]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[16]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[16]~input_o\,
	combout => \mux1|Mux16~1_combout\);

-- Location: LCCOMB_X76_Y72_N4
\adder1|s4|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s4|p4|cout~0_combout\ = (\a[15]~input_o\ & ((\adder1|s4|p3|cout~0_combout\) # (\op[2]~input_o\ $ (\b[15]~input_o\)))) # (!\a[15]~input_o\ & (\adder1|s4|p3|cout~0_combout\ & (\op[2]~input_o\ $ (\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \a[15]~input_o\,
	datac => \adder1|s4|p3|cout~0_combout\,
	datad => \b[15]~input_o\,
	combout => \adder1|s4|p4|cout~0_combout\);

-- Location: LCCOMB_X75_Y72_N12
\mux1|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~2_combout\ = \mux1|Mux16~1_combout\ $ (((\op[1]~input_o\ & \adder1|s4|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux16~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s4|p4|cout~0_combout\,
	combout => \mux1|Mux16~2_combout\);

-- Location: IOIBUF_X111_Y73_N1
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X75_Y72_N0
\mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~0_combout\ = (\op[0]~input_o\ & ((\a[17]~input_o\))) # (!\op[0]~input_o\ & (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[15]~input_o\,
	datac => \a[17]~input_o\,
	combout => \mux1|Mux16~0_combout\);

-- Location: LCCOMB_X75_Y72_N6
\mux1|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux16~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux16~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux16~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux16~2_combout\,
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux16~0_combout\,
	combout => \mux1|Mux16~3_combout\);

-- Location: IOIBUF_X83_Y73_N15
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X75_Y72_N26
\mux1|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~1_combout\ = (\a[17]~input_o\ & ((\op[1]~input_o\ & ((!\b[17]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\b[17]~input_o\))))) # (!\a[17]~input_o\ & (\b[17]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[17]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[17]~input_o\,
	combout => \mux1|Mux17~1_combout\);

-- Location: LCCOMB_X75_Y72_N16
\adder1|s5|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s5|p1|cout~0_combout\ = (\adder1|s4|p4|cout~0_combout\ & ((\a[16]~input_o\) # (\b[16]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s4|p4|cout~0_combout\ & (\a[16]~input_o\ & (\b[16]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s4|p4|cout~0_combout\,
	datab => \b[16]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[16]~input_o\,
	combout => \adder1|s5|p1|cout~0_combout\);

-- Location: LCCOMB_X75_Y72_N4
\mux1|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~2_combout\ = \mux1|Mux17~1_combout\ $ (((\adder1|s5|p1|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux17~1_combout\,
	datab => \adder1|s5|p1|cout~0_combout\,
	datac => \op[1]~input_o\,
	combout => \mux1|Mux17~2_combout\);

-- Location: IOIBUF_X81_Y73_N8
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: LCCOMB_X75_Y72_N24
\mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~0_combout\ = (\op[0]~input_o\ & (\a[18]~input_o\)) # (!\op[0]~input_o\ & ((\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[18]~input_o\,
	datad => \a[16]~input_o\,
	combout => \mux1|Mux17~0_combout\);

-- Location: LCCOMB_X75_Y72_N14
\mux1|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux17~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux17~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux17~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux17~2_combout\,
	datad => \mux1|Mux17~0_combout\,
	combout => \mux1|Mux17~3_combout\);

-- Location: IOIBUF_X74_Y73_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X75_Y72_N8
\mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~0_combout\ = (\op[0]~input_o\ & ((\a[19]~input_o\))) # (!\op[0]~input_o\ & (\a[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[17]~input_o\,
	datac => \a[19]~input_o\,
	combout => \mux1|Mux18~0_combout\);

-- Location: LCCOMB_X75_Y72_N18
\adder1|s5|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s5|p2|cout~0_combout\ = (\adder1|s5|p1|cout~0_combout\ & ((\a[17]~input_o\) # (\op[2]~input_o\ $ (\b[17]~input_o\)))) # (!\adder1|s5|p1|cout~0_combout\ & (\a[17]~input_o\ & (\op[2]~input_o\ $ (\b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \adder1|s5|p1|cout~0_combout\,
	datac => \a[17]~input_o\,
	datad => \b[17]~input_o\,
	combout => \adder1|s5|p2|cout~0_combout\);

-- Location: IOIBUF_X109_Y73_N1
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: LCCOMB_X75_Y72_N2
\mux1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~1_combout\ = (\op[1]~input_o\ & ((\b[18]~input_o\ $ (\a[18]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\b[18]~input_o\) # (\a[18]~input_o\))) # (!\op[0]~input_o\ & (\b[18]~input_o\ & \a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[18]~input_o\,
	datad => \a[18]~input_o\,
	combout => \mux1|Mux18~1_combout\);

-- Location: LCCOMB_X75_Y72_N20
\mux1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~2_combout\ = \mux1|Mux18~1_combout\ $ (((\adder1|s5|p2|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder1|s5|p2|cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux18~1_combout\,
	combout => \mux1|Mux18~2_combout\);

-- Location: LCCOMB_X75_Y72_N22
\mux1|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux18~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux18~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux18~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux18~0_combout\,
	datad => \mux1|Mux18~2_combout\,
	combout => \mux1|Mux18~3_combout\);

-- Location: IOIBUF_X81_Y73_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X74_Y72_N30
\mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~0_combout\ = (\op[0]~input_o\ & ((\a[20]~input_o\))) # (!\op[0]~input_o\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[18]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[20]~input_o\,
	combout => \mux1|Mux19~0_combout\);

-- Location: LCCOMB_X75_Y72_N28
\adder1|s5|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s5|p3|cout~0_combout\ = (\adder1|s5|p2|cout~0_combout\ & ((\a[18]~input_o\) # (\op[2]~input_o\ $ (\b[18]~input_o\)))) # (!\adder1|s5|p2|cout~0_combout\ & (\a[18]~input_o\ & (\op[2]~input_o\ $ (\b[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \adder1|s5|p2|cout~0_combout\,
	datac => \b[18]~input_o\,
	datad => \a[18]~input_o\,
	combout => \adder1|s5|p3|cout~0_combout\);

-- Location: IOIBUF_X89_Y73_N8
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LCCOMB_X73_Y72_N10
\mux1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~1_combout\ = (\a[19]~input_o\ & ((\b[19]~input_o\ & ((!\op[1]~input_o\))) # (!\b[19]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\a[19]~input_o\ & (\b[19]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux19~1_combout\);

-- Location: LCCOMB_X73_Y72_N28
\mux1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~2_combout\ = \mux1|Mux19~1_combout\ $ (((\op[1]~input_o\ & \adder1|s5|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \adder1|s5|p3|cout~0_combout\,
	datad => \mux1|Mux19~1_combout\,
	combout => \mux1|Mux19~2_combout\);

-- Location: LCCOMB_X73_Y72_N22
\mux1|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux19~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux19~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux19~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux19~0_combout\,
	datad => \mux1|Mux19~2_combout\,
	combout => \mux1|Mux19~3_combout\);

-- Location: LCCOMB_X73_Y72_N14
\adder1|s5|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s5|p4|cout~0_combout\ = (\adder1|s5|p3|cout~0_combout\ & ((\a[19]~input_o\) # (\op[2]~input_o\ $ (\b[19]~input_o\)))) # (!\adder1|s5|p3|cout~0_combout\ & (\a[19]~input_o\ & (\op[2]~input_o\ $ (\b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s5|p3|cout~0_combout\,
	datab => \op[2]~input_o\,
	datac => \b[19]~input_o\,
	datad => \a[19]~input_o\,
	combout => \adder1|s5|p4|cout~0_combout\);

-- Location: IOIBUF_X105_Y73_N8
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X74_Y72_N18
\mux1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~1_combout\ = (\op[1]~input_o\ & ((\b[20]~input_o\ $ (\a[20]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\b[20]~input_o\) # (\a[20]~input_o\))) # (!\op[0]~input_o\ & (\b[20]~input_o\ & \a[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[20]~input_o\,
	datad => \a[20]~input_o\,
	combout => \mux1|Mux20~1_combout\);

-- Location: LCCOMB_X74_Y72_N12
\mux1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~2_combout\ = \mux1|Mux20~1_combout\ $ (((\adder1|s5|p4|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s5|p4|cout~0_combout\,
	datab => \op[1]~input_o\,
	datad => \mux1|Mux20~1_combout\,
	combout => \mux1|Mux20~2_combout\);

-- Location: IOIBUF_X115_Y69_N22
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X74_Y72_N0
\mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~0_combout\ = (\op[0]~input_o\ & ((\a[21]~input_o\))) # (!\op[0]~input_o\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[21]~input_o\,
	combout => \mux1|Mux20~0_combout\);

-- Location: LCCOMB_X74_Y72_N14
\mux1|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux20~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux20~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux20~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux20~2_combout\,
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux20~0_combout\,
	combout => \mux1|Mux20~3_combout\);

-- Location: IOIBUF_X72_Y73_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X74_Y72_N8
\mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~0_combout\ = (\op[0]~input_o\ & (\a[22]~input_o\)) # (!\op[0]~input_o\ & ((\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[20]~input_o\,
	combout => \mux1|Mux21~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LCCOMB_X74_Y72_N2
\mux1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~1_combout\ = (\b[21]~input_o\ & ((\op[1]~input_o\ & ((!\a[21]~input_o\))) # (!\op[1]~input_o\ & ((\op[0]~input_o\) # (\a[21]~input_o\))))) # (!\b[21]~input_o\ & (\a[21]~input_o\ & ((\op[1]~input_o\) # (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[21]~input_o\,
	combout => \mux1|Mux21~1_combout\);

-- Location: LCCOMB_X74_Y72_N24
\adder1|s6|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s6|p1|cout~0_combout\ = (\adder1|s5|p4|cout~0_combout\ & ((\a[20]~input_o\) # (\b[20]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s5|p4|cout~0_combout\ & (\a[20]~input_o\ & (\b[20]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s5|p4|cout~0_combout\,
	datab => \b[20]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[20]~input_o\,
	combout => \adder1|s6|p1|cout~0_combout\);

-- Location: LCCOMB_X74_Y72_N20
\mux1|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~2_combout\ = \mux1|Mux21~1_combout\ $ (((\op[1]~input_o\ & \adder1|s6|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux21~1_combout\,
	datad => \adder1|s6|p1|cout~0_combout\,
	combout => \mux1|Mux21~2_combout\);

-- Location: LCCOMB_X74_Y72_N22
\mux1|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux21~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux21~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux21~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux21~0_combout\,
	datad => \mux1|Mux21~2_combout\,
	combout => \mux1|Mux21~3_combout\);

-- Location: IOIBUF_X102_Y73_N8
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: LCCOMB_X74_Y72_N26
\mux1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~1_combout\ = (\op[1]~input_o\ & ((\a[22]~input_o\ $ (\b[22]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\a[22]~input_o\) # (\b[22]~input_o\))) # (!\op[0]~input_o\ & (\a[22]~input_o\ & \b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \mux1|Mux22~1_combout\);

-- Location: LCCOMB_X74_Y72_N10
\adder1|s6|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s6|p2|cout~0_combout\ = (\adder1|s6|p1|cout~0_combout\ & ((\a[21]~input_o\) # (\op[2]~input_o\ $ (\b[21]~input_o\)))) # (!\adder1|s6|p1|cout~0_combout\ & (\a[21]~input_o\ & (\op[2]~input_o\ $ (\b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \adder1|s6|p1|cout~0_combout\,
	datac => \b[21]~input_o\,
	datad => \a[21]~input_o\,
	combout => \adder1|s6|p2|cout~0_combout\);

-- Location: LCCOMB_X74_Y72_N4
\mux1|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~2_combout\ = \mux1|Mux22~1_combout\ $ (((\op[1]~input_o\ & \adder1|s6|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \mux1|Mux22~1_combout\,
	datad => \adder1|s6|p2|cout~0_combout\,
	combout => \mux1|Mux22~2_combout\);

-- Location: IOIBUF_X113_Y73_N1
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X74_Y72_N16
\mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~0_combout\ = (\op[0]~input_o\ & (\a[23]~input_o\)) # (!\op[0]~input_o\ & ((\a[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \a[23]~input_o\,
	datad => \a[21]~input_o\,
	combout => \mux1|Mux22~0_combout\);

-- Location: LCCOMB_X74_Y72_N6
\mux1|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux22~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux22~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux22~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mux1|Mux22~2_combout\,
	datad => \mux1|Mux22~0_combout\,
	combout => \mux1|Mux22~3_combout\);

-- Location: IOIBUF_X65_Y73_N22
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X66_Y72_N14
\mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~0_combout\ = (\op[0]~input_o\ & ((\a[24]~input_o\))) # (!\op[0]~input_o\ & (\a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[24]~input_o\,
	combout => \mux1|Mux23~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X66_Y72_N0
\mux1|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~1_combout\ = (\op[1]~input_o\ & ((\a[23]~input_o\ $ (\b[23]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\a[23]~input_o\) # (\b[23]~input_o\))) # (!\op[0]~input_o\ & (\a[23]~input_o\ & \b[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[23]~input_o\,
	datad => \b[23]~input_o\,
	combout => \mux1|Mux23~1_combout\);

-- Location: LCCOMB_X74_Y72_N28
\adder1|s6|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s6|p3|cout~0_combout\ = (\adder1|s6|p2|cout~0_combout\ & ((\a[22]~input_o\) # (\op[2]~input_o\ $ (\b[22]~input_o\)))) # (!\adder1|s6|p2|cout~0_combout\ & (\a[22]~input_o\ & (\op[2]~input_o\ $ (\b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s6|p2|cout~0_combout\,
	datab => \op[2]~input_o\,
	datac => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \adder1|s6|p3|cout~0_combout\);

-- Location: LCCOMB_X66_Y72_N10
\mux1|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~2_combout\ = \mux1|Mux23~1_combout\ $ (((\op[1]~input_o\ & \adder1|s6|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux23~1_combout\,
	datad => \adder1|s6|p3|cout~0_combout\,
	combout => \mux1|Mux23~2_combout\);

-- Location: LCCOMB_X66_Y72_N4
\mux1|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux23~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux23~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux23~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux23~0_combout\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux23~2_combout\,
	combout => \mux1|Mux23~3_combout\);

-- Location: LCCOMB_X66_Y72_N8
\adder1|s6|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s6|p4|cout~0_combout\ = (\a[23]~input_o\ & ((\adder1|s6|p3|cout~0_combout\) # (\op[2]~input_o\ $ (\b[23]~input_o\)))) # (!\a[23]~input_o\ & (\adder1|s6|p3|cout~0_combout\ & (\op[2]~input_o\ $ (\b[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \b[23]~input_o\,
	datac => \a[23]~input_o\,
	datad => \adder1|s6|p3|cout~0_combout\,
	combout => \adder1|s6|p4|cout~0_combout\);

-- Location: IOIBUF_X62_Y73_N15
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: LCCOMB_X66_Y72_N24
\mux1|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~1_combout\ = (\op[1]~input_o\ & ((\b[24]~input_o\ $ (\a[24]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\b[24]~input_o\) # (\a[24]~input_o\))) # (!\op[0]~input_o\ & (\b[24]~input_o\ & \a[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[24]~input_o\,
	datad => \a[24]~input_o\,
	combout => \mux1|Mux24~1_combout\);

-- Location: LCCOMB_X66_Y72_N2
\mux1|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~2_combout\ = \mux1|Mux24~1_combout\ $ (((\op[1]~input_o\ & \adder1|s6|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \adder1|s6|p4|cout~0_combout\,
	datad => \mux1|Mux24~1_combout\,
	combout => \mux1|Mux24~2_combout\);

-- Location: IOIBUF_X42_Y73_N1
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LCCOMB_X66_Y72_N30
\mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~0_combout\ = (\op[0]~input_o\ & ((\a[25]~input_o\))) # (!\op[0]~input_o\ & (\a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \a[25]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux24~0_combout\);

-- Location: LCCOMB_X66_Y72_N28
\mux1|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux24~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux24~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux24~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \mux1|Mux24~2_combout\,
	datac => \mux1|Mux24~0_combout\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux24~3_combout\);

-- Location: IOIBUF_X35_Y73_N15
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: LCCOMB_X66_Y72_N16
\mux1|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~1_combout\ = (\b[25]~input_o\ & ((\a[25]~input_o\ & ((!\op[1]~input_o\))) # (!\a[25]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\b[25]~input_o\ & (\a[25]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[25]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux25~1_combout\);

-- Location: LCCOMB_X66_Y72_N26
\adder1|s7|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s7|p1|cout~0_combout\ = (\a[24]~input_o\ & ((\adder1|s6|p4|cout~0_combout\) # (\b[24]~input_o\ $ (\op[2]~input_o\)))) # (!\a[24]~input_o\ & (\adder1|s6|p4|cout~0_combout\ & (\b[24]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \a[24]~input_o\,
	datac => \adder1|s6|p4|cout~0_combout\,
	datad => \op[2]~input_o\,
	combout => \adder1|s7|p1|cout~0_combout\);

-- Location: LCCOMB_X66_Y72_N18
\mux1|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~2_combout\ = \mux1|Mux25~1_combout\ $ (((\op[1]~input_o\ & \adder1|s7|p1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux25~1_combout\,
	datac => \adder1|s7|p1|cout~0_combout\,
	combout => \mux1|Mux25~2_combout\);

-- Location: IOIBUF_X65_Y73_N8
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LCCOMB_X66_Y72_N6
\mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~0_combout\ = (\op[0]~input_o\ & (\a[26]~input_o\)) # (!\op[0]~input_o\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[26]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[24]~input_o\,
	combout => \mux1|Mux25~0_combout\);

-- Location: LCCOMB_X66_Y72_N12
\mux1|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux25~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux25~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux25~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux25~2_combout\,
	datac => \op[2]~input_o\,
	datad => \mux1|Mux25~0_combout\,
	combout => \mux1|Mux25~3_combout\);

-- Location: IOIBUF_X40_Y73_N8
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X68_Y72_N8
\mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~0_combout\ = (\op[0]~input_o\ & ((\a[27]~input_o\))) # (!\op[0]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[27]~input_o\,
	combout => \mux1|Mux26~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\adder1|s7|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s7|p2|cout~0_combout\ = (\adder1|s7|p1|cout~0_combout\ & ((\a[25]~input_o\) # (\op[2]~input_o\ $ (\b[25]~input_o\)))) # (!\adder1|s7|p1|cout~0_combout\ & (\a[25]~input_o\ & (\op[2]~input_o\ $ (\b[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s7|p1|cout~0_combout\,
	datab => \a[25]~input_o\,
	datac => \op[2]~input_o\,
	datad => \b[25]~input_o\,
	combout => \adder1|s7|p2|cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LCCOMB_X68_Y72_N10
\mux1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~1_combout\ = (\op[1]~input_o\ & (\a[26]~input_o\ $ (((\b[26]~input_o\))))) # (!\op[1]~input_o\ & ((\a[26]~input_o\ & ((\op[0]~input_o\) # (\b[26]~input_o\))) # (!\a[26]~input_o\ & (\op[0]~input_o\ & \b[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[26]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[26]~input_o\,
	combout => \mux1|Mux26~1_combout\);

-- Location: LCCOMB_X68_Y72_N20
\mux1|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~2_combout\ = \mux1|Mux26~1_combout\ $ (((\adder1|s7|p2|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s7|p2|cout~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux26~1_combout\,
	combout => \mux1|Mux26~2_combout\);

-- Location: LCCOMB_X68_Y72_N30
\mux1|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux26~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & ((!\mux1|Mux26~2_combout\))) # (!\op[1]~input_o\ & (\mux1|Mux26~0_combout\)))) # (!\op[2]~input_o\ & (((\mux1|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux26~0_combout\,
	datad => \mux1|Mux26~2_combout\,
	combout => \mux1|Mux26~3_combout\);

-- Location: IOIBUF_X67_Y73_N15
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: LCCOMB_X68_Y72_N2
\mux1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~1_combout\ = (\a[27]~input_o\ & ((\b[27]~input_o\ & ((!\op[1]~input_o\))) # (!\b[27]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\a[27]~input_o\ & (\b[27]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[27]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux27~1_combout\);

-- Location: LCCOMB_X68_Y72_N0
\adder1|s7|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s7|p3|cout~0_combout\ = (\adder1|s7|p2|cout~0_combout\ & ((\a[26]~input_o\) # (\b[26]~input_o\ $ (\op[2]~input_o\)))) # (!\adder1|s7|p2|cout~0_combout\ & (\a[26]~input_o\ & (\b[26]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s7|p2|cout~0_combout\,
	datab => \a[26]~input_o\,
	datac => \b[26]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|s7|p3|cout~0_combout\);

-- Location: LCCOMB_X68_Y72_N12
\mux1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~2_combout\ = \mux1|Mux27~1_combout\ $ (((\op[1]~input_o\ & \adder1|s7|p3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mux1|Mux27~1_combout\,
	datad => \adder1|s7|p3|cout~0_combout\,
	combout => \mux1|Mux27~2_combout\);

-- Location: IOIBUF_X35_Y73_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: LCCOMB_X68_Y72_N24
\mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~0_combout\ = (\op[0]~input_o\ & (\a[28]~input_o\)) # (!\op[0]~input_o\ & ((\a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \a[28]~input_o\,
	datad => \a[26]~input_o\,
	combout => \mux1|Mux27~0_combout\);

-- Location: LCCOMB_X68_Y72_N22
\mux1|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux27~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux27~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux27~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux27~2_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux27~0_combout\,
	combout => \mux1|Mux27~3_combout\);

-- Location: IOIBUF_X38_Y73_N22
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X68_Y72_N26
\mux1|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~1_combout\ = (\b[28]~input_o\ & ((\a[28]~input_o\ & ((!\op[1]~input_o\))) # (!\a[28]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))) # (!\b[28]~input_o\ & (\a[28]~input_o\ & ((\op[0]~input_o\) # (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[28]~input_o\,
	datad => \op[1]~input_o\,
	combout => \mux1|Mux28~1_combout\);

-- Location: LCCOMB_X68_Y72_N18
\adder1|s7|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s7|p4|cout~0_combout\ = (\a[27]~input_o\ & ((\adder1|s7|p3|cout~0_combout\) # (\b[27]~input_o\ $ (\op[2]~input_o\)))) # (!\a[27]~input_o\ & (\adder1|s7|p3|cout~0_combout\ & (\b[27]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \op[2]~input_o\,
	datac => \a[27]~input_o\,
	datad => \adder1|s7|p3|cout~0_combout\,
	combout => \adder1|s7|p4|cout~0_combout\);

-- Location: LCCOMB_X68_Y72_N4
\mux1|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~2_combout\ = \mux1|Mux28~1_combout\ $ (((\op[1]~input_o\ & \adder1|s7|p4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \mux1|Mux28~1_combout\,
	datad => \adder1|s7|p4|cout~0_combout\,
	combout => \mux1|Mux28~2_combout\);

-- Location: IOIBUF_X60_Y73_N15
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X68_Y72_N16
\mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~0_combout\ = (\op[0]~input_o\ & (\a[29]~input_o\)) # (!\op[0]~input_o\ & ((\a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[27]~input_o\,
	combout => \mux1|Mux28~0_combout\);

-- Location: LCCOMB_X68_Y72_N14
\mux1|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux28~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux28~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux28~0_combout\))))) # (!\op[2]~input_o\ & (((\mux1|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[2]~input_o\,
	datac => \mux1|Mux28~2_combout\,
	datad => \mux1|Mux28~0_combout\,
	combout => \mux1|Mux28~3_combout\);

-- Location: IOIBUF_X58_Y73_N22
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LCCOMB_X59_Y72_N26
\mux1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~1_combout\ = (\op[1]~input_o\ & ((\b[29]~input_o\ $ (\a[29]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\b[29]~input_o\) # (\a[29]~input_o\))) # (!\op[0]~input_o\ & (\b[29]~input_o\ & \a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[29]~input_o\,
	datad => \a[29]~input_o\,
	combout => \mux1|Mux29~1_combout\);

-- Location: LCCOMB_X59_Y72_N16
\adder1|s8|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s8|p1|cout~0_combout\ = (\adder1|s7|p4|cout~0_combout\ & ((\a[28]~input_o\) # (\op[2]~input_o\ $ (\b[28]~input_o\)))) # (!\adder1|s7|p4|cout~0_combout\ & (\a[28]~input_o\ & (\op[2]~input_o\ $ (\b[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s7|p4|cout~0_combout\,
	datab => \op[2]~input_o\,
	datac => \a[28]~input_o\,
	datad => \b[28]~input_o\,
	combout => \adder1|s8|p1|cout~0_combout\);

-- Location: LCCOMB_X59_Y72_N20
\mux1|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~2_combout\ = \mux1|Mux29~1_combout\ $ (((\adder1|s8|p1|cout~0_combout\ & \op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~1_combout\,
	datab => \adder1|s8|p1|cout~0_combout\,
	datac => \op[1]~input_o\,
	combout => \mux1|Mux29~2_combout\);

-- Location: IOIBUF_X58_Y73_N8
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X59_Y72_N24
\mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~0_combout\ = (\op[0]~input_o\ & (\a[30]~input_o\)) # (!\op[0]~input_o\ & ((\a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[28]~input_o\,
	combout => \mux1|Mux29~0_combout\);

-- Location: LCCOMB_X59_Y72_N14
\mux1|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux29~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux29~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux29~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~2_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux29~0_combout\,
	combout => \mux1|Mux29~3_combout\);

-- Location: IOIBUF_X52_Y73_N15
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: LCCOMB_X59_Y72_N18
\mux1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~1_combout\ = (\op[1]~input_o\ & ((\a[30]~input_o\ $ (\b[30]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\a[30]~input_o\) # (\b[30]~input_o\))) # (!\op[0]~input_o\ & (\a[30]~input_o\ & \b[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[30]~input_o\,
	datad => \b[30]~input_o\,
	combout => \mux1|Mux30~1_combout\);

-- Location: LCCOMB_X59_Y72_N2
\adder1|s8|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s8|p2|cout~0_combout\ = (\a[29]~input_o\ & ((\adder1|s8|p1|cout~0_combout\) # (\b[29]~input_o\ $ (\op[2]~input_o\)))) # (!\a[29]~input_o\ & (\adder1|s8|p1|cout~0_combout\ & (\b[29]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \adder1|s8|p1|cout~0_combout\,
	datac => \b[29]~input_o\,
	datad => \op[2]~input_o\,
	combout => \adder1|s8|p2|cout~0_combout\);

-- Location: LCCOMB_X59_Y72_N12
\mux1|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~2_combout\ = \mux1|Mux30~1_combout\ $ (((\op[1]~input_o\ & \adder1|s8|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|Mux30~1_combout\,
	datac => \op[1]~input_o\,
	datad => \adder1|s8|p2|cout~0_combout\,
	combout => \mux1|Mux30~2_combout\);

-- Location: IOIBUF_X52_Y73_N22
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: LCCOMB_X59_Y72_N0
\mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~0_combout\ = (\op[0]~input_o\ & (\a[31]~input_o\)) # (!\op[0]~input_o\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \a[31]~input_o\,
	datad => \a[29]~input_o\,
	combout => \mux1|Mux30~0_combout\);

-- Location: LCCOMB_X59_Y72_N22
\mux1|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux30~3_combout\ = (\op[2]~input_o\ & ((\op[1]~input_o\ & (!\mux1|Mux30~2_combout\)) # (!\op[1]~input_o\ & ((\mux1|Mux30~0_combout\))))) # (!\op[2]~input_o\ & (\mux1|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux30~2_combout\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux30~0_combout\,
	combout => \mux1|Mux30~3_combout\);

-- Location: IOIBUF_X58_Y0_N1
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X59_Y72_N10
\mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~0_combout\ = (!\op[2]~input_o\ & ((\a[31]~input_o\ & ((\b[31]~input_o\) # (\op[0]~input_o\))) # (!\a[31]~input_o\ & (\b[31]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \b[31]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \mux1|Mux31~0_combout\);

-- Location: LCCOMB_X59_Y72_N4
\adder1|s8|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s8|p3|cout~0_combout\ = (\a[30]~input_o\ & ((\adder1|s8|p2|cout~0_combout\) # (\b[30]~input_o\ $ (\op[2]~input_o\)))) # (!\a[30]~input_o\ & (\adder1|s8|p2|cout~0_combout\ & (\b[30]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \op[2]~input_o\,
	datac => \a[30]~input_o\,
	datad => \adder1|s8|p2|cout~0_combout\,
	combout => \adder1|s8|p3|cout~0_combout\);

-- Location: LCCOMB_X59_Y72_N8
\adder1|s8|p4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s8|p4|s~0_combout\ = \a[31]~input_o\ $ (\b[31]~input_o\ $ (\adder1|s8|p3|cout~0_combout\ $ (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \b[31]~input_o\,
	datac => \adder1|s8|p3|cout~0_combout\,
	datad => \op[2]~input_o\,
	combout => \adder1|s8|p4|s~0_combout\);

-- Location: LCCOMB_X59_Y72_N28
\mux1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~1_combout\ = (\a[30]~input_o\ & (\op[2]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[0]~input_o\,
	combout => \mux1|Mux31~1_combout\);

-- Location: LCCOMB_X59_Y72_N30
\mux1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Mux31~2_combout\ = (\op[1]~input_o\ & (((\adder1|s8|p4|s~0_combout\)))) # (!\op[1]~input_o\ & ((\mux1|Mux31~0_combout\) # ((\mux1|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux31~0_combout\,
	datab => \adder1|s8|p4|s~0_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux31~1_combout\,
	combout => \mux1|Mux31~2_combout\);

-- Location: LCCOMB_X59_Y72_N6
\adder1|s8|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s8|p4|cout~0_combout\ = (\a[31]~input_o\ & ((\adder1|s8|p3|cout~0_combout\) # (\b[31]~input_o\ $ (\op[2]~input_o\)))) # (!\a[31]~input_o\ & (\adder1|s8|p3|cout~0_combout\ & (\b[31]~input_o\ $ (\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \b[31]~input_o\,
	datac => \adder1|s8|p3|cout~0_combout\,
	datad => \op[2]~input_o\,
	combout => \adder1|s8|p4|cout~0_combout\);

-- Location: LCCOMB_X79_Y72_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\mux1|Mux7~3_combout\ & (!\mux1|Mux9~3_combout\ & (!\mux1|Mux8~3_combout\ & !\mux1|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux7~3_combout\,
	datab => \mux1|Mux9~3_combout\,
	datac => \mux1|Mux8~3_combout\,
	datad => \mux1|Mux10~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X72_Y72_N10
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\mux1|Mux29~3_combout\ & (!\mux1|Mux30~3_combout\ & (!\mux1|Mux28~3_combout\ & !\mux1|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux29~3_combout\,
	datab => \mux1|Mux30~3_combout\,
	datac => \mux1|Mux28~3_combout\,
	datad => \mux1|Mux27~3_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X72_Y72_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\mux1|Mux17~3_combout\ & (!\mux1|Mux18~3_combout\ & (!\mux1|Mux16~3_combout\ & !\mux1|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux17~3_combout\,
	datab => \mux1|Mux18~3_combout\,
	datac => \mux1|Mux16~3_combout\,
	datad => \mux1|Mux15~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X72_Y72_N22
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\mux1|Mux21~3_combout\ & (!\mux1|Mux22~3_combout\ & (!\mux1|Mux20~3_combout\ & !\mux1|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux21~3_combout\,
	datab => \mux1|Mux22~3_combout\,
	datac => \mux1|Mux20~3_combout\,
	datad => \mux1|Mux19~3_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X72_Y72_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\mux1|Mux25~3_combout\ & (!\mux1|Mux23~3_combout\ & (!\mux1|Mux26~3_combout\ & !\mux1|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux25~3_combout\,
	datab => \mux1|Mux23~3_combout\,
	datac => \mux1|Mux26~3_combout\,
	datad => \mux1|Mux24~3_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X72_Y72_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X72_Y72_N26
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\mux1|Mux13~3_combout\ & (!\mux1|Mux11~3_combout\ & (!\mux1|Mux12~3_combout\ & !\mux1|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux13~3_combout\,
	datab => \mux1|Mux11~3_combout\,
	datac => \mux1|Mux12~3_combout\,
	datad => \mux1|Mux14~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X57_Y72_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\op[1]~input_o\ & (!\adder1|s1|p3|s~0_combout\ & ((!\op[0]~input_o\)))) # (!\op[1]~input_o\ & (((!\mux1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s1|p3|s~0_combout\,
	datab => \mux1|Mux2~1_combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X72_Y72_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\mux1|Mux3~3_combout\ & (!\mux1|Mux5~3_combout\ & (!\mux1|Mux4~3_combout\ & !\mux1|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux3~3_combout\,
	datab => \mux1|Mux5~3_combout\,
	datac => \mux1|Mux4~3_combout\,
	datad => \mux1|Mux6~3_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X57_Y72_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\mux1|Mux0~2_combout\ & ((\op[1]~input_o\ & (!\adder1|s1|p2|s~combout\)) # (!\op[1]~input_o\ & ((!\mux1|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|s1|p2|s~combout\,
	datab => \mux1|Mux1~1_combout\,
	datac => \op[1]~input_o\,
	datad => \mux1|Mux0~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X72_Y72_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\mux1|Mux31~2_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux31~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X72_Y72_N30
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~4_combout\ & (\Equal0~10_combout\ & (\Equal0~5_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~11_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_cout <= \cout~output_o\;

ww_zero <= \zero~output_o\;
END structure;


