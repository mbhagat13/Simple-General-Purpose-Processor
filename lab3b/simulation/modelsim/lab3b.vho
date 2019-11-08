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

-- DATE "02/14/2018 09:05:28"

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

ENTITY 	lab3_b IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END lab3_b;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \the_ALU|mux1|f[7]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \the_ALU|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \the_ALU|mux1|Mux1~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \the_ALU|adder1|s1|p1|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s1|p2|s~combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux1~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux0~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux0~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~1_cout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~2_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \the_ALU|adder1|s1|p2|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s1|p3|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s1|p4|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s2|p1|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s2|p2|cout~0_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s2|p3|cout~0_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \the_ALU|mux1|f[7]~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|f[7]~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|f[7]~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|f[7]~3_combout\ : std_logic;
SIGNAL \the_ALU|mux1|f[7]~3clkctrl_outclk\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess[1]~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux3~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux3~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux3~3_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux2~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux2~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux2~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~3\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~5\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~6_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess[3]~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess[0]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~4_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess[2]~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux13~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux12~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux8~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux5~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux5~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux5~3_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux4~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux4~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux4~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~7\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~9\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~10_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess2[1]~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux6~1_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux6~2_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \the_ALU|mux1|Mux6~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~11\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~12_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess2[2]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Add0~8_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|numProcess2[0]~1_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess[0]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~1_cout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~3\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~5\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~6_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess[3]~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~4_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess[2]~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess[1]~1_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux13~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux12~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux11~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux10~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux9~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux8~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux7~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~7\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~8_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess2[0]~1_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~9\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~10_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess2[1]~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~11\ : std_logic;
SIGNAL \sevSeg_driver_B|Add0~12_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numProcess2[2]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux6~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux5~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux4~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux3~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux2~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux1~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|Mux0~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~1_cout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~3\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~4_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess[2]~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess[1]~1_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~5\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~6_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess[3]~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess[0]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux13~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux12~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux11~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux10~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux9~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux8~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux7~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~7\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~9\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~10_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess2[1]~2_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~11\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~12_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess2[2]~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Add0~8_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|numProcess2[0]~1_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux6~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux5~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux4~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux3~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux2~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux1~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|Mux0~0_combout\ : std_logic;
SIGNAL \the_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \the_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \the_ALU|Equal0~2_combout\ : std_logic;
SIGNAL \the_ALU|adder1|s2|p4|cout~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|numVal2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sevSeg_driver_ALU|numVal2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sevSeg_driver_A|numVal2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \the_ALU|mux1|ALT_INV_f[7]~3_combout\ : std_logic;
SIGNAL \sevSeg_driver_A|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_B|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \sevSeg_driver_ALU|ALT_INV_Mux7~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\the_ALU|mux1|f[7]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \the_ALU|mux1|f[7]~3_combout\);
\the_ALU|mux1|ALT_INV_f[7]~3_combout\ <= NOT \the_ALU|mux1|f[7]~3_combout\;
\sevSeg_driver_A|ALT_INV_Mux7~0_combout\ <= NOT \sevSeg_driver_A|Mux7~0_combout\;
\sevSeg_driver_B|ALT_INV_Mux7~0_combout\ <= NOT \sevSeg_driver_B|Mux7~0_combout\;
\sevSeg_driver_ALU|ALT_INV_Mux7~0_combout\ <= NOT \sevSeg_driver_ALU|Mux7~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_ALU|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_ALU|mux1|ALT_INV_f[7]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_B|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevSeg_driver_A|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_ALU|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_ALU|adder1|s2|p4|cout~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[10]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y8_N8
\the_ALU|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux1~0_combout\ = (\SW[2]~input_o\ & ((\SW[0]~input_o\ & (\SW[12]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[10]~input_o\))))) # (!\SW[2]~input_o\ & (((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X113_Y8_N16
\the_ALU|mux1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux1~1_combout\ = (\SW[4]~input_o\ & ((\the_ALU|mux1|Mux1~0_combout\) # ((!\SW[2]~input_o\ & \SW[11]~input_o\)))) # (!\SW[4]~input_o\ & (\the_ALU|mux1|Mux1~0_combout\ & ((\SW[2]~input_o\) # (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \the_ALU|mux1|Mux1~0_combout\,
	datad => \SW[11]~input_o\,
	combout => \the_ALU|mux1|Mux1~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y8_N20
\the_ALU|adder1|s1|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s1|p1|cout~0_combout\ = (\SW[3]~input_o\ & ((\SW[10]~input_o\))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \the_ALU|adder1|s1|p1|cout~0_combout\);

-- Location: LCCOMB_X113_Y8_N30
\the_ALU|adder1|s1|p2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s1|p2|s~combout\ = \SW[4]~input_o\ $ (\SW[2]~input_o\ $ (\the_ALU|adder1|s1|p1|cout~0_combout\ $ (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \the_ALU|adder1|s1|p1|cout~0_combout\,
	datad => \SW[11]~input_o\,
	combout => \the_ALU|adder1|s1|p2|s~combout\);

-- Location: LCCOMB_X113_Y8_N18
\the_ALU|mux1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux1~2_combout\ = (\SW[1]~input_o\ & ((\the_ALU|adder1|s1|p2|s~combout\))) # (!\SW[1]~input_o\ & (\the_ALU|mux1|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux1~1_combout\,
	datab => \SW[1]~input_o\,
	datad => \the_ALU|adder1|s1|p2|s~combout\,
	combout => \the_ALU|mux1|Mux1~2_combout\);

-- Location: LCCOMB_X111_Y8_N4
\the_ALU|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux0~0_combout\ = (\SW[1]~input_o\ & ((\SW[10]~input_o\ $ (\SW[3]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[10]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \the_ALU|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y8_N30
\the_ALU|mux1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux0~1_combout\ = (\SW[1]~input_o\ & ((\SW[10]~input_o\ $ (\SW[3]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((\SW[10]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \the_ALU|mux1|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y8_N24
\the_ALU|mux1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux0~2_combout\ = (\SW[0]~input_o\ & ((\the_ALU|mux1|Mux0~1_combout\) # ((\the_ALU|mux1|Mux0~0_combout\ & \SW[11]~input_o\)))) # (!\SW[0]~input_o\ & (\the_ALU|mux1|Mux0~0_combout\ & ((\the_ALU|mux1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \the_ALU|mux1|Mux0~0_combout\,
	datac => \SW[11]~input_o\,
	datad => \the_ALU|mux1|Mux0~1_combout\,
	combout => \the_ALU|mux1|Mux0~2_combout\);

-- Location: LCCOMB_X112_Y8_N4
\sevSeg_driver_ALU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~1_cout\ = CARRY(\the_ALU|mux1|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux0~2_combout\,
	datad => VCC,
	cout => \sevSeg_driver_ALU|Add0~1_cout\);

-- Location: LCCOMB_X112_Y8_N6
\sevSeg_driver_ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~2_combout\ = (\the_ALU|mux1|Mux1~2_combout\ & (\sevSeg_driver_ALU|Add0~1_cout\ & VCC)) # (!\the_ALU|mux1|Mux1~2_combout\ & (!\sevSeg_driver_ALU|Add0~1_cout\))
-- \sevSeg_driver_ALU|Add0~3\ = CARRY((!\the_ALU|mux1|Mux1~2_combout\ & !\sevSeg_driver_ALU|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux1~2_combout\,
	datad => VCC,
	cin => \sevSeg_driver_ALU|Add0~1_cout\,
	combout => \sevSeg_driver_ALU|Add0~2_combout\,
	cout => \sevSeg_driver_ALU|Add0~3\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X114_Y8_N12
\the_ALU|adder1|s1|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s1|p2|cout~0_combout\ = (\SW[11]~input_o\ & ((\the_ALU|adder1|s1|p1|cout~0_combout\) # (\SW[2]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[11]~input_o\ & (\the_ALU|adder1|s1|p1|cout~0_combout\ & (\SW[2]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \the_ALU|adder1|s1|p1|cout~0_combout\,
	combout => \the_ALU|adder1|s1|p2|cout~0_combout\);

-- Location: LCCOMB_X114_Y8_N24
\the_ALU|adder1|s1|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s1|p3|cout~0_combout\ = (\SW[12]~input_o\ & ((\the_ALU|adder1|s1|p2|cout~0_combout\) # (\SW[2]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[12]~input_o\ & (\the_ALU|adder1|s1|p2|cout~0_combout\ & (\SW[2]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \the_ALU|adder1|s1|p2|cout~0_combout\,
	combout => \the_ALU|adder1|s1|p3|cout~0_combout\);

-- Location: LCCOMB_X114_Y8_N18
\the_ALU|adder1|s1|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s1|p4|cout~0_combout\ = (\SW[13]~input_o\ & ((\the_ALU|adder1|s1|p3|cout~0_combout\) # (\SW[2]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[13]~input_o\ & (\the_ALU|adder1|s1|p3|cout~0_combout\ & (\SW[2]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \the_ALU|adder1|s1|p3|cout~0_combout\,
	combout => \the_ALU|adder1|s1|p4|cout~0_combout\);

-- Location: LCCOMB_X114_Y8_N28
\the_ALU|adder1|s2|p1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s2|p1|cout~0_combout\ = (\SW[14]~input_o\ & ((\the_ALU|adder1|s1|p4|cout~0_combout\) # (\SW[2]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[14]~input_o\ & (\the_ALU|adder1|s1|p4|cout~0_combout\ & (\SW[2]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \the_ALU|adder1|s1|p4|cout~0_combout\,
	combout => \the_ALU|adder1|s2|p1|cout~0_combout\);

-- Location: LCCOMB_X113_Y8_N14
\the_ALU|adder1|s2|p2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s2|p2|cout~0_combout\ = (\SW[15]~input_o\ & ((\the_ALU|adder1|s2|p1|cout~0_combout\) # (\SW[8]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[15]~input_o\ & (\the_ALU|adder1|s2|p1|cout~0_combout\ & (\SW[8]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \the_ALU|adder1|s2|p1|cout~0_combout\,
	combout => \the_ALU|adder1|s2|p2|cout~0_combout\);

-- Location: LCCOMB_X114_Y8_N26
\the_ALU|adder1|s2|p3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s2|p3|cout~0_combout\ = (\SW[16]~input_o\ & ((\the_ALU|adder1|s2|p2|cout~0_combout\) # (\SW[2]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[16]~input_o\ & (\the_ALU|adder1|s2|p2|cout~0_combout\ & (\SW[2]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \the_ALU|adder1|s2|p2|cout~0_combout\,
	combout => \the_ALU|adder1|s2|p3|cout~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X114_Y8_N10
\the_ALU|mux1|f[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|f[7]~1_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\the_ALU|adder1|s2|p3|cout~0_combout\ $ (!\SW[17]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \the_ALU|adder1|s2|p3|cout~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \the_ALU|mux1|f[7]~1_combout\);

-- Location: LCCOMB_X114_Y8_N14
\the_ALU|mux1|f[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|f[7]~0_combout\ = \SW[2]~input_o\ $ (((\SW[1]~input_o\ & (\the_ALU|adder1|s2|p3|cout~0_combout\ $ (\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \the_ALU|adder1|s2|p3|cout~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \the_ALU|mux1|f[7]~0_combout\);

-- Location: LCCOMB_X114_Y8_N2
\the_ALU|mux1|f[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|f[7]~2_combout\ = (\the_ALU|mux1|f[7]~1_combout\ & ((\SW[0]~input_o\ & (!\the_ALU|mux1|f[7]~0_combout\)) # (!\SW[0]~input_o\ & ((\the_ALU|mux1|f[7]~0_combout\) # (\SW[10]~input_o\))))) # (!\the_ALU|mux1|f[7]~1_combout\ & ((\SW[10]~input_o\ & 
-- (\SW[0]~input_o\)) # (!\SW[10]~input_o\ & ((\the_ALU|mux1|f[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|f[7]~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \the_ALU|mux1|f[7]~0_combout\,
	datad => \SW[10]~input_o\,
	combout => \the_ALU|mux1|f[7]~2_combout\);

-- Location: LCCOMB_X114_Y8_N16
\the_ALU|mux1|f[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|f[7]~3_combout\ = (\the_ALU|mux1|f[7]~2_combout\ & ((\SW[16]~input_o\) # ((!\the_ALU|mux1|f[7]~1_combout\) # (!\the_ALU|mux1|f[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \the_ALU|mux1|f[7]~2_combout\,
	datac => \the_ALU|mux1|f[7]~0_combout\,
	datad => \the_ALU|mux1|f[7]~1_combout\,
	combout => \the_ALU|mux1|f[7]~3_combout\);

-- Location: CLKCTRL_G9
\the_ALU|mux1|f[7]~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \the_ALU|mux1|f[7]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \the_ALU|mux1|f[7]~3clkctrl_outclk\);

-- Location: LCCOMB_X112_Y8_N28
\sevSeg_driver_ALU|numVal2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(1) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|Add0~2_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numVal2\(1),
	datac => \sevSeg_driver_ALU|Add0~2_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(1));

-- Location: LCCOMB_X111_Y8_N8
\sevSeg_driver_ALU|numProcess[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess[1]~1_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(1)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux1~2_combout\,
	datac => \sevSeg_driver_ALU|numVal2\(1),
	datad => \the_ALU|mux1|f[7]~3_combout\,
	combout => \sevSeg_driver_ALU|numProcess[1]~1_combout\);

-- Location: LCCOMB_X111_Y8_N28
\the_ALU|mux1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux3~1_combout\ = (\SW[13]~input_o\ & ((\SW[6]~input_o\ & (!\SW[1]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))) # (!\SW[13]~input_o\ & (\SW[6]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y8_N22
\the_ALU|mux1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux3~2_combout\ = \the_ALU|mux1|Mux3~1_combout\ $ (((\the_ALU|adder1|s1|p3|cout~0_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|adder1|s1|p3|cout~0_combout\,
	datac => \the_ALU|mux1|Mux3~1_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux3~2_combout\);

-- Location: LCCOMB_X113_Y7_N22
\the_ALU|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux3~0_combout\ = (\SW[0]~input_o\ & ((\SW[14]~input_o\))) # (!\SW[0]~input_o\ & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \the_ALU|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y8_N6
\the_ALU|mux1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux3~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\the_ALU|mux1|Mux3~2_combout\)) # (!\SW[1]~input_o\ & ((\the_ALU|mux1|Mux3~0_combout\))))) # (!\SW[2]~input_o\ & (\the_ALU|mux1|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux3~2_combout\,
	datab => \SW[2]~input_o\,
	datac => \the_ALU|mux1|Mux3~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux3~3_combout\);

-- Location: LCCOMB_X113_Y7_N24
\the_ALU|mux1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux2~1_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ & (!\SW[12]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[12]~input_o\) # (\SW[0]~input_o\))))) # (!\SW[5]~input_o\ & (\SW[12]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux2~1_combout\);

-- Location: LCCOMB_X113_Y8_N8
\the_ALU|mux1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux2~2_combout\ = \the_ALU|mux1|Mux2~1_combout\ $ (((\the_ALU|adder1|s1|p2|cout~0_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux2~1_combout\,
	datac => \the_ALU|adder1|s1|p2|cout~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux2~2_combout\);

-- Location: LCCOMB_X111_Y8_N10
\the_ALU|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux2~0_combout\ = (\SW[0]~input_o\ & (\SW[13]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y8_N10
\the_ALU|mux1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux2~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\the_ALU|mux1|Mux2~2_combout\)) # (!\SW[1]~input_o\ & ((\the_ALU|mux1|Mux2~0_combout\))))) # (!\SW[2]~input_o\ & (\the_ALU|mux1|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux2~2_combout\,
	datab => \SW[1]~input_o\,
	datac => \the_ALU|mux1|Mux2~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \the_ALU|mux1|Mux2~3_combout\);

-- Location: LCCOMB_X112_Y8_N8
\sevSeg_driver_ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~4_combout\ = (\the_ALU|mux1|Mux2~3_combout\ & ((GND) # (!\sevSeg_driver_ALU|Add0~3\))) # (!\the_ALU|mux1|Mux2~3_combout\ & (\sevSeg_driver_ALU|Add0~3\ $ (GND)))
-- \sevSeg_driver_ALU|Add0~5\ = CARRY((\the_ALU|mux1|Mux2~3_combout\) # (!\sevSeg_driver_ALU|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux2~3_combout\,
	datad => VCC,
	cin => \sevSeg_driver_ALU|Add0~3\,
	combout => \sevSeg_driver_ALU|Add0~4_combout\,
	cout => \sevSeg_driver_ALU|Add0~5\);

-- Location: LCCOMB_X112_Y8_N10
\sevSeg_driver_ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~6_combout\ = (\the_ALU|mux1|Mux3~3_combout\ & (\sevSeg_driver_ALU|Add0~5\ & VCC)) # (!\the_ALU|mux1|Mux3~3_combout\ & (!\sevSeg_driver_ALU|Add0~5\))
-- \sevSeg_driver_ALU|Add0~7\ = CARRY((!\the_ALU|mux1|Mux3~3_combout\ & !\sevSeg_driver_ALU|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux3~3_combout\,
	datad => VCC,
	cin => \sevSeg_driver_ALU|Add0~5\,
	combout => \sevSeg_driver_ALU|Add0~6_combout\,
	cout => \sevSeg_driver_ALU|Add0~7\);

-- Location: LCCOMB_X112_Y8_N24
\sevSeg_driver_ALU|numVal2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(3) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|Add0~6_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numVal2\(3),
	datac => \sevSeg_driver_ALU|Add0~6_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(3));

-- Location: LCCOMB_X111_Y8_N6
\sevSeg_driver_ALU|numProcess[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess[3]~3_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(3)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux3~3_combout\,
	datab => \sevSeg_driver_ALU|numVal2\(3),
	datad => \the_ALU|mux1|f[7]~3_combout\,
	combout => \sevSeg_driver_ALU|numProcess[3]~3_combout\);

-- Location: LCCOMB_X111_Y8_N22
\sevSeg_driver_ALU|numVal2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(0) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((!\the_ALU|mux1|Mux0~2_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numVal2\(0),
	datac => \the_ALU|mux1|Mux0~2_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(0));

-- Location: LCCOMB_X111_Y8_N26
\sevSeg_driver_ALU|numProcess[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess[0]~0_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(0)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux0~2_combout\,
	datac => \sevSeg_driver_ALU|numVal2\(0),
	datad => \the_ALU|mux1|f[7]~3_combout\,
	combout => \sevSeg_driver_ALU|numProcess[0]~0_combout\);

-- Location: LCCOMB_X112_Y8_N30
\sevSeg_driver_ALU|numVal2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(2) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|Add0~4_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numVal2\(2),
	datac => \sevSeg_driver_ALU|Add0~4_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(2));

-- Location: LCCOMB_X112_Y12_N0
\sevSeg_driver_ALU|numProcess[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess[2]~2_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(2)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux2~3_combout\,
	datac => \the_ALU|mux1|f[7]~3_combout\,
	datad => \sevSeg_driver_ALU|numVal2\(2),
	combout => \sevSeg_driver_ALU|numProcess[2]~2_combout\);

-- Location: LCCOMB_X112_Y57_N16
\sevSeg_driver_ALU|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux13~0_combout\ = (\sevSeg_driver_ALU|numProcess[3]~3_combout\ & (\sevSeg_driver_ALU|numProcess[0]~0_combout\ & (\sevSeg_driver_ALU|numProcess[1]~1_combout\ $ (\sevSeg_driver_ALU|numProcess[2]~2_combout\)))) # 
-- (!\sevSeg_driver_ALU|numProcess[3]~3_combout\ & (!\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (\sevSeg_driver_ALU|numProcess[0]~0_combout\ $ (\sevSeg_driver_ALU|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux13~0_combout\);

-- Location: LCCOMB_X112_Y57_N26
\sevSeg_driver_ALU|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux12~0_combout\ = (\sevSeg_driver_ALU|numProcess[1]~1_combout\ & ((\sevSeg_driver_ALU|numProcess[0]~0_combout\ & (\sevSeg_driver_ALU|numProcess[3]~3_combout\)) # (!\sevSeg_driver_ALU|numProcess[0]~0_combout\ & 
-- ((\sevSeg_driver_ALU|numProcess[2]~2_combout\))))) # (!\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (\sevSeg_driver_ALU|numProcess[2]~2_combout\ & (\sevSeg_driver_ALU|numProcess[3]~3_combout\ $ (\sevSeg_driver_ALU|numProcess[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux12~0_combout\);

-- Location: LCCOMB_X112_Y57_N24
\sevSeg_driver_ALU|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux11~0_combout\ = (\sevSeg_driver_ALU|numProcess[3]~3_combout\ & (\sevSeg_driver_ALU|numProcess[2]~2_combout\ & ((\sevSeg_driver_ALU|numProcess[1]~1_combout\) # (!\sevSeg_driver_ALU|numProcess[0]~0_combout\)))) # 
-- (!\sevSeg_driver_ALU|numProcess[3]~3_combout\ & (\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (!\sevSeg_driver_ALU|numProcess[0]~0_combout\ & !\sevSeg_driver_ALU|numProcess[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux11~0_combout\);

-- Location: LCCOMB_X112_Y57_N6
\sevSeg_driver_ALU|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux10~0_combout\ = (\sevSeg_driver_ALU|numProcess[0]~0_combout\ & (\sevSeg_driver_ALU|numProcess[1]~1_combout\ $ (((!\sevSeg_driver_ALU|numProcess[2]~2_combout\))))) # (!\sevSeg_driver_ALU|numProcess[0]~0_combout\ & 
-- ((\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (\sevSeg_driver_ALU|numProcess[3]~3_combout\ & !\sevSeg_driver_ALU|numProcess[2]~2_combout\)) # (!\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (!\sevSeg_driver_ALU|numProcess[3]~3_combout\ & 
-- \sevSeg_driver_ALU|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X112_Y57_N4
\sevSeg_driver_ALU|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux9~0_combout\ = (\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (!\sevSeg_driver_ALU|numProcess[3]~3_combout\ & (\sevSeg_driver_ALU|numProcess[0]~0_combout\))) # (!\sevSeg_driver_ALU|numProcess[1]~1_combout\ & 
-- ((\sevSeg_driver_ALU|numProcess[2]~2_combout\ & (!\sevSeg_driver_ALU|numProcess[3]~3_combout\)) # (!\sevSeg_driver_ALU|numProcess[2]~2_combout\ & ((\sevSeg_driver_ALU|numProcess[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X112_Y57_N22
\sevSeg_driver_ALU|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux8~0_combout\ = (\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (!\sevSeg_driver_ALU|numProcess[3]~3_combout\ & ((\sevSeg_driver_ALU|numProcess[0]~0_combout\) # (!\sevSeg_driver_ALU|numProcess[2]~2_combout\)))) # 
-- (!\sevSeg_driver_ALU|numProcess[1]~1_combout\ & (\sevSeg_driver_ALU|numProcess[0]~0_combout\ & (\sevSeg_driver_ALU|numProcess[3]~3_combout\ $ (!\sevSeg_driver_ALU|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux8~0_combout\);

-- Location: LCCOMB_X112_Y57_N12
\sevSeg_driver_ALU|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux7~0_combout\ = (\sevSeg_driver_ALU|numProcess[0]~0_combout\ & ((\sevSeg_driver_ALU|numProcess[3]~3_combout\) # (\sevSeg_driver_ALU|numProcess[1]~1_combout\ $ (\sevSeg_driver_ALU|numProcess[2]~2_combout\)))) # 
-- (!\sevSeg_driver_ALU|numProcess[0]~0_combout\ & ((\sevSeg_driver_ALU|numProcess[1]~1_combout\) # (\sevSeg_driver_ALU|numProcess[3]~3_combout\ $ (\sevSeg_driver_ALU|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_ALU|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_ALU|numProcess[0]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess[2]~2_combout\,
	combout => \sevSeg_driver_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X113_Y8_N2
\the_ALU|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux5~0_combout\ = (\SW[0]~input_o\ & ((\SW[16]~input_o\))) # (!\SW[0]~input_o\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \the_ALU|mux1|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y8_N0
\the_ALU|mux1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux5~1_combout\ = (\SW[15]~input_o\ & ((\SW[1]~input_o\ & ((!\SW[8]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[8]~input_o\))))) # (!\SW[15]~input_o\ & (\SW[8]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \the_ALU|mux1|Mux5~1_combout\);

-- Location: LCCOMB_X113_Y8_N26
\the_ALU|mux1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux5~2_combout\ = \the_ALU|mux1|Mux5~1_combout\ $ (((\the_ALU|adder1|s2|p1|cout~0_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|adder1|s2|p1|cout~0_combout\,
	datab => \SW[1]~input_o\,
	datad => \the_ALU|mux1|Mux5~1_combout\,
	combout => \the_ALU|mux1|Mux5~2_combout\);

-- Location: LCCOMB_X113_Y8_N20
\the_ALU|mux1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux5~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((!\the_ALU|mux1|Mux5~2_combout\))) # (!\SW[1]~input_o\ & (\the_ALU|mux1|Mux5~0_combout\)))) # (!\SW[2]~input_o\ & (((\the_ALU|mux1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux5~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \the_ALU|mux1|Mux5~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux5~3_combout\);

-- Location: LCCOMB_X113_Y8_N24
\the_ALU|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux4~0_combout\ = (\SW[0]~input_o\ & (\SW[15]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \the_ALU|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y7_N20
\the_ALU|mux1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux4~1_combout\ = (\SW[14]~input_o\ & ((\SW[1]~input_o\ & (!\SW[7]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[7]~input_o\) # (\SW[0]~input_o\))))) # (!\SW[14]~input_o\ & (\SW[7]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y8_N30
\the_ALU|mux1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux4~2_combout\ = \the_ALU|mux1|Mux4~1_combout\ $ (((\the_ALU|adder1|s1|p4|cout~0_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux4~1_combout\,
	datac => \the_ALU|adder1|s1|p4|cout~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux4~2_combout\);

-- Location: LCCOMB_X113_Y8_N4
\the_ALU|mux1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux4~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((!\the_ALU|mux1|Mux4~2_combout\))) # (!\SW[1]~input_o\ & (\the_ALU|mux1|Mux4~0_combout\)))) # (!\SW[2]~input_o\ & (((\the_ALU|mux1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux4~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \the_ALU|mux1|Mux4~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux4~3_combout\);

-- Location: LCCOMB_X112_Y8_N12
\sevSeg_driver_ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~8_combout\ = (\the_ALU|mux1|Mux4~3_combout\ & ((GND) # (!\sevSeg_driver_ALU|Add0~7\))) # (!\the_ALU|mux1|Mux4~3_combout\ & (\sevSeg_driver_ALU|Add0~7\ $ (GND)))
-- \sevSeg_driver_ALU|Add0~9\ = CARRY((\the_ALU|mux1|Mux4~3_combout\) # (!\sevSeg_driver_ALU|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux4~3_combout\,
	datad => VCC,
	cin => \sevSeg_driver_ALU|Add0~7\,
	combout => \sevSeg_driver_ALU|Add0~8_combout\,
	cout => \sevSeg_driver_ALU|Add0~9\);

-- Location: LCCOMB_X112_Y8_N14
\sevSeg_driver_ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~10_combout\ = (\the_ALU|mux1|Mux5~3_combout\ & (\sevSeg_driver_ALU|Add0~9\ & VCC)) # (!\the_ALU|mux1|Mux5~3_combout\ & (!\sevSeg_driver_ALU|Add0~9\))
-- \sevSeg_driver_ALU|Add0~11\ = CARRY((!\the_ALU|mux1|Mux5~3_combout\ & !\sevSeg_driver_ALU|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux5~3_combout\,
	datad => VCC,
	cin => \sevSeg_driver_ALU|Add0~9\,
	combout => \sevSeg_driver_ALU|Add0~10_combout\,
	cout => \sevSeg_driver_ALU|Add0~11\);

-- Location: LCCOMB_X112_Y8_N2
\sevSeg_driver_ALU|numVal2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(5) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|Add0~10_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numVal2\(5),
	datac => \sevSeg_driver_ALU|Add0~10_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(5));

-- Location: LCCOMB_X113_Y8_N22
\sevSeg_driver_ALU|numProcess2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess2[1]~2_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & (!\sevSeg_driver_ALU|numVal2\(5))) # (!\the_ALU|mux1|f[7]~3_combout\ & ((\the_ALU|mux1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|numVal2\(5),
	datab => \the_ALU|mux1|f[7]~3_combout\,
	datad => \the_ALU|mux1|Mux5~3_combout\,
	combout => \sevSeg_driver_ALU|numProcess2[1]~2_combout\);

-- Location: LCCOMB_X113_Y8_N28
\the_ALU|mux1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux6~1_combout\ = (\SW[1]~input_o\ & ((\SW[9]~input_o\ $ (\SW[16]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[9]~input_o\) # (\SW[16]~input_o\))) # (!\SW[0]~input_o\ & (\SW[9]~input_o\ & \SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \the_ALU|mux1|Mux6~1_combout\);

-- Location: LCCOMB_X112_Y8_N0
\the_ALU|mux1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux6~2_combout\ = \the_ALU|mux1|Mux6~1_combout\ $ (((\SW[1]~input_o\ & \the_ALU|adder1|s2|p2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \the_ALU|mux1|Mux6~1_combout\,
	datac => \the_ALU|adder1|s2|p2|cout~0_combout\,
	combout => \the_ALU|mux1|Mux6~2_combout\);

-- Location: LCCOMB_X114_Y8_N6
\the_ALU|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux6~0_combout\ = (\SW[0]~input_o\ & (\SW[17]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \the_ALU|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y8_N22
\the_ALU|mux1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|mux1|Mux6~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\the_ALU|mux1|Mux6~2_combout\)) # (!\SW[1]~input_o\ & ((\the_ALU|mux1|Mux6~0_combout\))))) # (!\SW[2]~input_o\ & (\the_ALU|mux1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux6~2_combout\,
	datab => \the_ALU|mux1|Mux6~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \the_ALU|mux1|Mux6~3_combout\);

-- Location: LCCOMB_X112_Y8_N16
\sevSeg_driver_ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Add0~12_combout\ = \the_ALU|mux1|Mux6~3_combout\ $ (\sevSeg_driver_ALU|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux6~3_combout\,
	cin => \sevSeg_driver_ALU|Add0~11\,
	combout => \sevSeg_driver_ALU|Add0~12_combout\);

-- Location: LCCOMB_X112_Y8_N18
\sevSeg_driver_ALU|numVal2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(6) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|Add0~12_combout\))) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|numVal2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numVal2\(6),
	datac => \sevSeg_driver_ALU|Add0~12_combout\,
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(6));

-- Location: LCCOMB_X111_Y8_N12
\sevSeg_driver_ALU|numProcess2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess2[2]~0_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(6)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|f[7]~3_combout\,
	datab => \the_ALU|mux1|Mux6~3_combout\,
	datad => \sevSeg_driver_ALU|numVal2\(6),
	combout => \sevSeg_driver_ALU|numProcess2[2]~0_combout\);

-- Location: LCCOMB_X112_Y8_N20
\sevSeg_driver_ALU|numVal2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numVal2\(4) = (GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & (\sevSeg_driver_ALU|Add0~8_combout\)) # (!GLOBAL(\the_ALU|mux1|f[7]~3clkctrl_outclk\) & ((\sevSeg_driver_ALU|numVal2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_ALU|Add0~8_combout\,
	datab => \sevSeg_driver_ALU|numVal2\(4),
	datad => \the_ALU|mux1|f[7]~3clkctrl_outclk\,
	combout => \sevSeg_driver_ALU|numVal2\(4));

-- Location: LCCOMB_X113_Y8_N12
\sevSeg_driver_ALU|numProcess2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|numProcess2[0]~1_combout\ = (\the_ALU|mux1|f[7]~3_combout\ & ((!\sevSeg_driver_ALU|numVal2\(4)))) # (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|mux1|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_ALU|mux1|Mux4~3_combout\,
	datac => \sevSeg_driver_ALU|numVal2\(4),
	datad => \the_ALU|mux1|f[7]~3_combout\,
	combout => \sevSeg_driver_ALU|numProcess2[0]~1_combout\);

-- Location: LCCOMB_X114_Y24_N4
\sevSeg_driver_ALU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux6~0_combout\ = (!\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & (\sevSeg_driver_ALU|numProcess2[2]~0_combout\ $ (\sevSeg_driver_ALU|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y24_N2
\sevSeg_driver_ALU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux5~0_combout\ = (\sevSeg_driver_ALU|numProcess2[2]~0_combout\ & (\sevSeg_driver_ALU|numProcess2[1]~2_combout\ $ (\sevSeg_driver_ALU|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y24_N0
\sevSeg_driver_ALU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux4~0_combout\ = (\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & (!\sevSeg_driver_ALU|numProcess2[2]~0_combout\ & !\sevSeg_driver_ALU|numProcess2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y24_N22
\sevSeg_driver_ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux3~0_combout\ = (\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & (\sevSeg_driver_ALU|numProcess2[2]~0_combout\ & \sevSeg_driver_ALU|numProcess2[0]~1_combout\)) # (!\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & 
-- (\sevSeg_driver_ALU|numProcess2[2]~0_combout\ $ (\sevSeg_driver_ALU|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y24_N28
\sevSeg_driver_ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux2~0_combout\ = (\sevSeg_driver_ALU|numProcess2[0]~1_combout\) # ((!\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & \sevSeg_driver_ALU|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y24_N14
\sevSeg_driver_ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux1~0_combout\ = (\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & ((\sevSeg_driver_ALU|numProcess2[0]~1_combout\) # (!\sevSeg_driver_ALU|numProcess2[2]~0_combout\))) # (!\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & 
-- (!\sevSeg_driver_ALU|numProcess2[2]~0_combout\ & \sevSeg_driver_ALU|numProcess2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y24_N12
\sevSeg_driver_ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_ALU|Mux0~0_combout\ = (\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & (\sevSeg_driver_ALU|numProcess2[2]~0_combout\ & \sevSeg_driver_ALU|numProcess2[0]~1_combout\)) # (!\sevSeg_driver_ALU|numProcess2[1]~2_combout\ & 
-- (!\sevSeg_driver_ALU|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_ALU|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_ALU|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_ALU|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y4_N18
\sevSeg_driver_B|numVal2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(0) = (\SW[10]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sevSeg_driver_B|numVal2\(0),
	combout => \sevSeg_driver_B|numVal2\(0));

-- Location: LCCOMB_X111_Y4_N20
\sevSeg_driver_B|numProcess[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess[0]~0_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(0))) # (!\SW[10]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numVal2\(0),
	datac => \SW[10]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \sevSeg_driver_B|numProcess[0]~0_combout\);

-- Location: LCCOMB_X113_Y4_N14
\sevSeg_driver_B|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~1_cout\ = CARRY(\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cout => \sevSeg_driver_B|Add0~1_cout\);

-- Location: LCCOMB_X113_Y4_N16
\sevSeg_driver_B|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~2_combout\ = (\SW[4]~input_o\ & (\sevSeg_driver_B|Add0~1_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\sevSeg_driver_B|Add0~1_cout\))
-- \sevSeg_driver_B|Add0~3\ = CARRY((!\SW[4]~input_o\ & !\sevSeg_driver_B|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_B|Add0~1_cout\,
	combout => \sevSeg_driver_B|Add0~2_combout\,
	cout => \sevSeg_driver_B|Add0~3\);

-- Location: LCCOMB_X113_Y4_N18
\sevSeg_driver_B|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~4_combout\ = (\SW[5]~input_o\ & ((GND) # (!\sevSeg_driver_B|Add0~3\))) # (!\SW[5]~input_o\ & (\sevSeg_driver_B|Add0~3\ $ (GND)))
-- \sevSeg_driver_B|Add0~5\ = CARRY((\SW[5]~input_o\) # (!\sevSeg_driver_B|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_B|Add0~3\,
	combout => \sevSeg_driver_B|Add0~4_combout\,
	cout => \sevSeg_driver_B|Add0~5\);

-- Location: LCCOMB_X113_Y4_N20
\sevSeg_driver_B|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~6_combout\ = (\SW[6]~input_o\ & (\sevSeg_driver_B|Add0~5\ & VCC)) # (!\SW[6]~input_o\ & (!\sevSeg_driver_B|Add0~5\))
-- \sevSeg_driver_B|Add0~7\ = CARRY((!\SW[6]~input_o\ & !\sevSeg_driver_B|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_B|Add0~5\,
	combout => \sevSeg_driver_B|Add0~6_combout\,
	cout => \sevSeg_driver_B|Add0~7\);

-- Location: LCCOMB_X114_Y4_N30
\sevSeg_driver_B|numVal2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(3) = (\SW[10]~input_o\ & (\sevSeg_driver_B|Add0~6_combout\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|Add0~6_combout\,
	datac => \sevSeg_driver_B|numVal2\(3),
	datad => \SW[10]~input_o\,
	combout => \sevSeg_driver_B|numVal2\(3));

-- Location: LCCOMB_X111_Y4_N24
\sevSeg_driver_B|numProcess[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess[3]~3_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(3))) # (!\SW[10]~input_o\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numVal2\(3),
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \sevSeg_driver_B|numProcess[3]~3_combout\);

-- Location: LCCOMB_X114_Y4_N28
\sevSeg_driver_B|numVal2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(2) = (\SW[10]~input_o\ & ((\sevSeg_driver_B|Add0~4_combout\))) # (!\SW[10]~input_o\ & (\sevSeg_driver_B|numVal2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numVal2\(2),
	datac => \sevSeg_driver_B|Add0~4_combout\,
	datad => \SW[10]~input_o\,
	combout => \sevSeg_driver_B|numVal2\(2));

-- Location: LCCOMB_X111_Y4_N26
\sevSeg_driver_B|numProcess[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess[2]~2_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(2))) # (!\SW[10]~input_o\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numVal2\(2),
	datac => \SW[10]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \sevSeg_driver_B|numProcess[2]~2_combout\);

-- Location: LCCOMB_X113_Y4_N12
\sevSeg_driver_B|numVal2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(1) = (\SW[10]~input_o\ & (\sevSeg_driver_B|Add0~2_combout\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|Add0~2_combout\,
	datac => \SW[10]~input_o\,
	datad => \sevSeg_driver_B|numVal2\(1),
	combout => \sevSeg_driver_B|numVal2\(1));

-- Location: LCCOMB_X113_Y4_N4
\sevSeg_driver_B|numProcess[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess[1]~1_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(1))) # (!\SW[10]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numVal2\(1),
	datac => \SW[10]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \sevSeg_driver_B|numProcess[1]~1_combout\);

-- Location: LCCOMB_X83_Y1_N24
\sevSeg_driver_B|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux13~0_combout\ = (\sevSeg_driver_B|numProcess[3]~3_combout\ & (\sevSeg_driver_B|numProcess[0]~0_combout\ & (\sevSeg_driver_B|numProcess[2]~2_combout\ $ (\sevSeg_driver_B|numProcess[1]~1_combout\)))) # 
-- (!\sevSeg_driver_B|numProcess[3]~3_combout\ & (!\sevSeg_driver_B|numProcess[1]~1_combout\ & (\sevSeg_driver_B|numProcess[0]~0_combout\ $ (\sevSeg_driver_B|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux13~0_combout\);

-- Location: LCCOMB_X111_Y4_N2
\sevSeg_driver_B|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux12~0_combout\ = (\sevSeg_driver_B|numProcess[1]~1_combout\ & ((\sevSeg_driver_B|numProcess[0]~0_combout\ & ((\sevSeg_driver_B|numProcess[3]~3_combout\))) # (!\sevSeg_driver_B|numProcess[0]~0_combout\ & 
-- (\sevSeg_driver_B|numProcess[2]~2_combout\)))) # (!\sevSeg_driver_B|numProcess[1]~1_combout\ & (\sevSeg_driver_B|numProcess[2]~2_combout\ & (\sevSeg_driver_B|numProcess[0]~0_combout\ $ (\sevSeg_driver_B|numProcess[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[1]~1_combout\,
	datab => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[3]~3_combout\,
	combout => \sevSeg_driver_B|Mux12~0_combout\);

-- Location: LCCOMB_X83_Y1_N6
\sevSeg_driver_B|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux11~0_combout\ = (\sevSeg_driver_B|numProcess[3]~3_combout\ & (\sevSeg_driver_B|numProcess[2]~2_combout\ & ((\sevSeg_driver_B|numProcess[1]~1_combout\) # (!\sevSeg_driver_B|numProcess[0]~0_combout\)))) # 
-- (!\sevSeg_driver_B|numProcess[3]~3_combout\ & (!\sevSeg_driver_B|numProcess[0]~0_combout\ & (!\sevSeg_driver_B|numProcess[2]~2_combout\ & \sevSeg_driver_B|numProcess[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux11~0_combout\);

-- Location: LCCOMB_X83_Y1_N12
\sevSeg_driver_B|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux10~0_combout\ = (\sevSeg_driver_B|numProcess[0]~0_combout\ & ((\sevSeg_driver_B|numProcess[2]~2_combout\ $ (!\sevSeg_driver_B|numProcess[1]~1_combout\)))) # (!\sevSeg_driver_B|numProcess[0]~0_combout\ & 
-- ((\sevSeg_driver_B|numProcess[3]~3_combout\ & (!\sevSeg_driver_B|numProcess[2]~2_combout\ & \sevSeg_driver_B|numProcess[1]~1_combout\)) # (!\sevSeg_driver_B|numProcess[3]~3_combout\ & (\sevSeg_driver_B|numProcess[2]~2_combout\ & 
-- !\sevSeg_driver_B|numProcess[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux10~0_combout\);

-- Location: LCCOMB_X83_Y1_N30
\sevSeg_driver_B|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux9~0_combout\ = (\sevSeg_driver_B|numProcess[1]~1_combout\ & (\sevSeg_driver_B|numProcess[0]~0_combout\ & (!\sevSeg_driver_B|numProcess[3]~3_combout\))) # (!\sevSeg_driver_B|numProcess[1]~1_combout\ & 
-- ((\sevSeg_driver_B|numProcess[2]~2_combout\ & ((!\sevSeg_driver_B|numProcess[3]~3_combout\))) # (!\sevSeg_driver_B|numProcess[2]~2_combout\ & (\sevSeg_driver_B|numProcess[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux9~0_combout\);

-- Location: LCCOMB_X83_Y1_N28
\sevSeg_driver_B|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux8~0_combout\ = (\sevSeg_driver_B|numProcess[0]~0_combout\ & (\sevSeg_driver_B|numProcess[3]~3_combout\ $ (((\sevSeg_driver_B|numProcess[1]~1_combout\) # (!\sevSeg_driver_B|numProcess[2]~2_combout\))))) # 
-- (!\sevSeg_driver_B|numProcess[0]~0_combout\ & (!\sevSeg_driver_B|numProcess[3]~3_combout\ & (!\sevSeg_driver_B|numProcess[2]~2_combout\ & \sevSeg_driver_B|numProcess[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux8~0_combout\);

-- Location: LCCOMB_X83_Y1_N22
\sevSeg_driver_B|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux7~0_combout\ = (\sevSeg_driver_B|numProcess[0]~0_combout\ & ((\sevSeg_driver_B|numProcess[3]~3_combout\) # (\sevSeg_driver_B|numProcess[2]~2_combout\ $ (\sevSeg_driver_B|numProcess[1]~1_combout\)))) # 
-- (!\sevSeg_driver_B|numProcess[0]~0_combout\ & ((\sevSeg_driver_B|numProcess[1]~1_combout\) # (\sevSeg_driver_B|numProcess[3]~3_combout\ $ (\sevSeg_driver_B|numProcess[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numProcess[0]~0_combout\,
	datab => \sevSeg_driver_B|numProcess[3]~3_combout\,
	datac => \sevSeg_driver_B|numProcess[2]~2_combout\,
	datad => \sevSeg_driver_B|numProcess[1]~1_combout\,
	combout => \sevSeg_driver_B|Mux7~0_combout\);

-- Location: LCCOMB_X113_Y4_N22
\sevSeg_driver_B|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~8_combout\ = (\SW[7]~input_o\ & ((GND) # (!\sevSeg_driver_B|Add0~7\))) # (!\SW[7]~input_o\ & (\sevSeg_driver_B|Add0~7\ $ (GND)))
-- \sevSeg_driver_B|Add0~9\ = CARRY((\SW[7]~input_o\) # (!\sevSeg_driver_B|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_B|Add0~7\,
	combout => \sevSeg_driver_B|Add0~8_combout\,
	cout => \sevSeg_driver_B|Add0~9\);

-- Location: LCCOMB_X114_Y4_N4
\sevSeg_driver_B|numVal2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(4) = (\SW[10]~input_o\ & (\sevSeg_driver_B|Add0~8_combout\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|Add0~8_combout\,
	datac => \sevSeg_driver_B|numVal2\(4),
	datad => \SW[10]~input_o\,
	combout => \sevSeg_driver_B|numVal2\(4));

-- Location: LCCOMB_X113_Y4_N8
\sevSeg_driver_B|numProcess2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess2[0]~1_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(4))) # (!\SW[10]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numVal2\(4),
	datac => \SW[10]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \sevSeg_driver_B|numProcess2[0]~1_combout\);

-- Location: LCCOMB_X113_Y4_N24
\sevSeg_driver_B|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~10_combout\ = (\SW[8]~input_o\ & (\sevSeg_driver_B|Add0~9\ & VCC)) # (!\SW[8]~input_o\ & (!\sevSeg_driver_B|Add0~9\))
-- \sevSeg_driver_B|Add0~11\ = CARRY((!\SW[8]~input_o\ & !\sevSeg_driver_B|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_B|Add0~9\,
	combout => \sevSeg_driver_B|Add0~10_combout\,
	cout => \sevSeg_driver_B|Add0~11\);

-- Location: LCCOMB_X113_Y4_N28
\sevSeg_driver_B|numVal2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(5) = (\SW[10]~input_o\ & (\sevSeg_driver_B|Add0~10_combout\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|Add0~10_combout\,
	datac => \SW[10]~input_o\,
	datad => \sevSeg_driver_B|numVal2\(5),
	combout => \sevSeg_driver_B|numVal2\(5));

-- Location: LCCOMB_X113_Y4_N30
\sevSeg_driver_B|numProcess2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess2[1]~2_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(5))) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \sevSeg_driver_B|numVal2\(5),
	datad => \SW[8]~input_o\,
	combout => \sevSeg_driver_B|numProcess2[1]~2_combout\);

-- Location: LCCOMB_X113_Y4_N26
\sevSeg_driver_B|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Add0~12_combout\ = \sevSeg_driver_B|Add0~11\ $ (\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	cin => \sevSeg_driver_B|Add0~11\,
	combout => \sevSeg_driver_B|Add0~12_combout\);

-- Location: LCCOMB_X113_Y4_N10
\sevSeg_driver_B|numVal2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numVal2\(6) = (\SW[10]~input_o\ & (\sevSeg_driver_B|Add0~12_combout\)) # (!\SW[10]~input_o\ & ((\sevSeg_driver_B|numVal2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|Add0~12_combout\,
	datac => \SW[10]~input_o\,
	datad => \sevSeg_driver_B|numVal2\(6),
	combout => \sevSeg_driver_B|numVal2\(6));

-- Location: LCCOMB_X113_Y4_N6
\sevSeg_driver_B|numProcess2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|numProcess2[2]~0_combout\ = (\SW[10]~input_o\ & (!\sevSeg_driver_B|numVal2\(6))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_B|numVal2\(6),
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \sevSeg_driver_B|numProcess2[2]~0_combout\);

-- Location: LCCOMB_X102_Y4_N24
\sevSeg_driver_B|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux6~0_combout\ = (!\sevSeg_driver_B|numProcess2[1]~2_combout\ & (\sevSeg_driver_B|numProcess2[0]~1_combout\ $ (\sevSeg_driver_B|numProcess2[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux6~0_combout\);

-- Location: LCCOMB_X102_Y4_N30
\sevSeg_driver_B|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux5~0_combout\ = (\sevSeg_driver_B|numProcess2[2]~0_combout\ & (\sevSeg_driver_B|numProcess2[0]~1_combout\ $ (\sevSeg_driver_B|numProcess2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux5~0_combout\);

-- Location: LCCOMB_X102_Y4_N4
\sevSeg_driver_B|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux4~0_combout\ = (!\sevSeg_driver_B|numProcess2[0]~1_combout\ & (\sevSeg_driver_B|numProcess2[1]~2_combout\ & !\sevSeg_driver_B|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux4~0_combout\);

-- Location: LCCOMB_X102_Y4_N26
\sevSeg_driver_B|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux3~0_combout\ = (\sevSeg_driver_B|numProcess2[0]~1_combout\ & (\sevSeg_driver_B|numProcess2[1]~2_combout\ $ (!\sevSeg_driver_B|numProcess2[2]~0_combout\))) # (!\sevSeg_driver_B|numProcess2[0]~1_combout\ & 
-- (!\sevSeg_driver_B|numProcess2[1]~2_combout\ & \sevSeg_driver_B|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux3~0_combout\);

-- Location: LCCOMB_X102_Y4_N28
\sevSeg_driver_B|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux2~0_combout\ = (\sevSeg_driver_B|numProcess2[0]~1_combout\) # ((!\sevSeg_driver_B|numProcess2[1]~2_combout\ & \sevSeg_driver_B|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux2~0_combout\);

-- Location: LCCOMB_X102_Y4_N22
\sevSeg_driver_B|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux1~0_combout\ = (\sevSeg_driver_B|numProcess2[0]~1_combout\ & ((\sevSeg_driver_B|numProcess2[1]~2_combout\) # (!\sevSeg_driver_B|numProcess2[2]~0_combout\))) # (!\sevSeg_driver_B|numProcess2[0]~1_combout\ & 
-- (\sevSeg_driver_B|numProcess2[1]~2_combout\ & !\sevSeg_driver_B|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux1~0_combout\);

-- Location: LCCOMB_X102_Y4_N20
\sevSeg_driver_B|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_B|Mux0~0_combout\ = (\sevSeg_driver_B|numProcess2[1]~2_combout\ & (\sevSeg_driver_B|numProcess2[0]~1_combout\ & \sevSeg_driver_B|numProcess2[2]~0_combout\)) # (!\sevSeg_driver_B|numProcess2[1]~2_combout\ & 
-- ((!\sevSeg_driver_B|numProcess2[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_B|numProcess2[0]~1_combout\,
	datac => \sevSeg_driver_B|numProcess2[1]~2_combout\,
	datad => \sevSeg_driver_B|numProcess2[2]~0_combout\,
	combout => \sevSeg_driver_B|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y4_N8
\sevSeg_driver_A|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~1_cout\ = CARRY(\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => VCC,
	cout => \sevSeg_driver_A|Add0~1_cout\);

-- Location: LCCOMB_X114_Y4_N10
\sevSeg_driver_A|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~2_combout\ = (\SW[11]~input_o\ & (\sevSeg_driver_A|Add0~1_cout\ & VCC)) # (!\SW[11]~input_o\ & (!\sevSeg_driver_A|Add0~1_cout\))
-- \sevSeg_driver_A|Add0~3\ = CARRY((!\SW[11]~input_o\ & !\sevSeg_driver_A|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_A|Add0~1_cout\,
	combout => \sevSeg_driver_A|Add0~2_combout\,
	cout => \sevSeg_driver_A|Add0~3\);

-- Location: LCCOMB_X114_Y4_N12
\sevSeg_driver_A|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~4_combout\ = (\SW[12]~input_o\ & ((GND) # (!\sevSeg_driver_A|Add0~3\))) # (!\SW[12]~input_o\ & (\sevSeg_driver_A|Add0~3\ $ (GND)))
-- \sevSeg_driver_A|Add0~5\ = CARRY((\SW[12]~input_o\) # (!\sevSeg_driver_A|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_A|Add0~3\,
	combout => \sevSeg_driver_A|Add0~4_combout\,
	cout => \sevSeg_driver_A|Add0~5\);

-- Location: LCCOMB_X114_Y4_N26
\sevSeg_driver_A|numVal2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(2) = (\SW[17]~input_o\ & (\sevSeg_driver_A|Add0~4_combout\)) # (!\SW[17]~input_o\ & ((\sevSeg_driver_A|numVal2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|Add0~4_combout\,
	datac => \sevSeg_driver_A|numVal2\(2),
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(2));

-- Location: LCCOMB_X111_Y4_N8
\sevSeg_driver_A|numProcess[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess[2]~2_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(2))) # (!\SW[17]~input_o\ & ((\SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \sevSeg_driver_A|numVal2\(2),
	datad => \SW[12]~input_o\,
	combout => \sevSeg_driver_A|numProcess[2]~2_combout\);

-- Location: LCCOMB_X114_Y4_N2
\sevSeg_driver_A|numVal2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(1) = (\SW[17]~input_o\ & ((\sevSeg_driver_A|Add0~2_combout\))) # (!\SW[17]~input_o\ & (\sevSeg_driver_A|numVal2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(1),
	datac => \sevSeg_driver_A|Add0~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(1));

-- Location: LCCOMB_X111_Y4_N22
\sevSeg_driver_A|numProcess[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess[1]~1_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(1))) # (!\SW[17]~input_o\ & ((\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \sevSeg_driver_A|numVal2\(1),
	datad => \SW[11]~input_o\,
	combout => \sevSeg_driver_A|numProcess[1]~1_combout\);

-- Location: LCCOMB_X114_Y4_N14
\sevSeg_driver_A|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~6_combout\ = (\SW[13]~input_o\ & (\sevSeg_driver_A|Add0~5\ & VCC)) # (!\SW[13]~input_o\ & (!\sevSeg_driver_A|Add0~5\))
-- \sevSeg_driver_A|Add0~7\ = CARRY((!\SW[13]~input_o\ & !\sevSeg_driver_A|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_A|Add0~5\,
	combout => \sevSeg_driver_A|Add0~6_combout\,
	cout => \sevSeg_driver_A|Add0~7\);

-- Location: LCCOMB_X114_Y4_N24
\sevSeg_driver_A|numVal2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(3) = (\SW[17]~input_o\ & ((\sevSeg_driver_A|Add0~6_combout\))) # (!\SW[17]~input_o\ & (\sevSeg_driver_A|numVal2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(3),
	datac => \sevSeg_driver_A|Add0~6_combout\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(3));

-- Location: LCCOMB_X111_Y4_N10
\sevSeg_driver_A|numProcess[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess[3]~3_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(3))) # (!\SW[17]~input_o\ & ((\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(3),
	datac => \SW[13]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numProcess[3]~3_combout\);

-- Location: LCCOMB_X114_Y8_N4
\sevSeg_driver_A|numVal2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(0) = (\SW[17]~input_o\ & (!\SW[10]~input_o\)) # (!\SW[17]~input_o\ & ((\sevSeg_driver_A|numVal2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \sevSeg_driver_A|numVal2\(0),
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(0));

-- Location: LCCOMB_X111_Y4_N12
\sevSeg_driver_A|numProcess[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess[0]~0_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(0))) # (!\SW[17]~input_o\ & ((\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(0),
	datac => \SW[10]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numProcess[0]~0_combout\);

-- Location: LCCOMB_X89_Y4_N28
\sevSeg_driver_A|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux13~0_combout\ = (\sevSeg_driver_A|numProcess[2]~2_combout\ & (!\sevSeg_driver_A|numProcess[1]~1_combout\ & (\sevSeg_driver_A|numProcess[3]~3_combout\ $ (!\sevSeg_driver_A|numProcess[0]~0_combout\)))) # 
-- (!\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[0]~0_combout\ & (\sevSeg_driver_A|numProcess[1]~1_combout\ $ (!\sevSeg_driver_A|numProcess[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux13~0_combout\);

-- Location: LCCOMB_X89_Y4_N10
\sevSeg_driver_A|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux12~0_combout\ = (\sevSeg_driver_A|numProcess[1]~1_combout\ & ((\sevSeg_driver_A|numProcess[0]~0_combout\ & ((\sevSeg_driver_A|numProcess[3]~3_combout\))) # (!\sevSeg_driver_A|numProcess[0]~0_combout\ & 
-- (\sevSeg_driver_A|numProcess[2]~2_combout\)))) # (!\sevSeg_driver_A|numProcess[1]~1_combout\ & (\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[3]~3_combout\ $ (\sevSeg_driver_A|numProcess[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux12~0_combout\);

-- Location: LCCOMB_X89_Y4_N24
\sevSeg_driver_A|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux11~0_combout\ = (\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[3]~3_combout\ & ((\sevSeg_driver_A|numProcess[1]~1_combout\) # (!\sevSeg_driver_A|numProcess[0]~0_combout\)))) # 
-- (!\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[1]~1_combout\ & (!\sevSeg_driver_A|numProcess[3]~3_combout\ & !\sevSeg_driver_A|numProcess[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux11~0_combout\);

-- Location: LCCOMB_X89_Y4_N26
\sevSeg_driver_A|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux10~0_combout\ = (\sevSeg_driver_A|numProcess[0]~0_combout\ & (\sevSeg_driver_A|numProcess[2]~2_combout\ $ ((!\sevSeg_driver_A|numProcess[1]~1_combout\)))) # (!\sevSeg_driver_A|numProcess[0]~0_combout\ & 
-- ((\sevSeg_driver_A|numProcess[2]~2_combout\ & (!\sevSeg_driver_A|numProcess[1]~1_combout\ & !\sevSeg_driver_A|numProcess[3]~3_combout\)) # (!\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[1]~1_combout\ & 
-- \sevSeg_driver_A|numProcess[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux10~0_combout\);

-- Location: LCCOMB_X89_Y4_N8
\sevSeg_driver_A|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux9~0_combout\ = (\sevSeg_driver_A|numProcess[1]~1_combout\ & (((!\sevSeg_driver_A|numProcess[3]~3_combout\ & \sevSeg_driver_A|numProcess[0]~0_combout\)))) # (!\sevSeg_driver_A|numProcess[1]~1_combout\ & 
-- ((\sevSeg_driver_A|numProcess[2]~2_combout\ & (!\sevSeg_driver_A|numProcess[3]~3_combout\)) # (!\sevSeg_driver_A|numProcess[2]~2_combout\ & ((\sevSeg_driver_A|numProcess[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux9~0_combout\);

-- Location: LCCOMB_X89_Y4_N18
\sevSeg_driver_A|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux8~0_combout\ = (\sevSeg_driver_A|numProcess[2]~2_combout\ & (\sevSeg_driver_A|numProcess[0]~0_combout\ & (\sevSeg_driver_A|numProcess[1]~1_combout\ $ (\sevSeg_driver_A|numProcess[3]~3_combout\)))) # 
-- (!\sevSeg_driver_A|numProcess[2]~2_combout\ & (!\sevSeg_driver_A|numProcess[3]~3_combout\ & ((\sevSeg_driver_A|numProcess[1]~1_combout\) # (\sevSeg_driver_A|numProcess[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux8~0_combout\);

-- Location: LCCOMB_X89_Y4_N16
\sevSeg_driver_A|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux7~0_combout\ = (\sevSeg_driver_A|numProcess[0]~0_combout\ & ((\sevSeg_driver_A|numProcess[3]~3_combout\) # (\sevSeg_driver_A|numProcess[2]~2_combout\ $ (\sevSeg_driver_A|numProcess[1]~1_combout\)))) # 
-- (!\sevSeg_driver_A|numProcess[0]~0_combout\ & ((\sevSeg_driver_A|numProcess[1]~1_combout\) # (\sevSeg_driver_A|numProcess[2]~2_combout\ $ (\sevSeg_driver_A|numProcess[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess[2]~2_combout\,
	datab => \sevSeg_driver_A|numProcess[1]~1_combout\,
	datac => \sevSeg_driver_A|numProcess[3]~3_combout\,
	datad => \sevSeg_driver_A|numProcess[0]~0_combout\,
	combout => \sevSeg_driver_A|Mux7~0_combout\);

-- Location: LCCOMB_X114_Y4_N16
\sevSeg_driver_A|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~8_combout\ = (\SW[14]~input_o\ & ((GND) # (!\sevSeg_driver_A|Add0~7\))) # (!\SW[14]~input_o\ & (\sevSeg_driver_A|Add0~7\ $ (GND)))
-- \sevSeg_driver_A|Add0~9\ = CARRY((\SW[14]~input_o\) # (!\sevSeg_driver_A|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_A|Add0~7\,
	combout => \sevSeg_driver_A|Add0~8_combout\,
	cout => \sevSeg_driver_A|Add0~9\);

-- Location: LCCOMB_X114_Y4_N18
\sevSeg_driver_A|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~10_combout\ = (\SW[15]~input_o\ & (\sevSeg_driver_A|Add0~9\ & VCC)) # (!\SW[15]~input_o\ & (!\sevSeg_driver_A|Add0~9\))
-- \sevSeg_driver_A|Add0~11\ = CARRY((!\SW[15]~input_o\ & !\sevSeg_driver_A|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datad => VCC,
	cin => \sevSeg_driver_A|Add0~9\,
	combout => \sevSeg_driver_A|Add0~10_combout\,
	cout => \sevSeg_driver_A|Add0~11\);

-- Location: LCCOMB_X114_Y4_N6
\sevSeg_driver_A|numVal2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(5) = (\SW[17]~input_o\ & ((\sevSeg_driver_A|Add0~10_combout\))) # (!\SW[17]~input_o\ & (\sevSeg_driver_A|numVal2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numVal2\(5),
	datac => \sevSeg_driver_A|Add0~10_combout\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(5));

-- Location: LCCOMB_X102_Y4_N12
\sevSeg_driver_A|numProcess2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess2[1]~2_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(5))) # (!\SW[17]~input_o\ & ((\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \sevSeg_driver_A|numVal2\(5),
	datad => \SW[15]~input_o\,
	combout => \sevSeg_driver_A|numProcess2[1]~2_combout\);

-- Location: LCCOMB_X114_Y4_N20
\sevSeg_driver_A|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Add0~12_combout\ = \SW[16]~input_o\ $ (\sevSeg_driver_A|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	cin => \sevSeg_driver_A|Add0~11\,
	combout => \sevSeg_driver_A|Add0~12_combout\);

-- Location: LCCOMB_X114_Y4_N22
\sevSeg_driver_A|numVal2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(6) = (\SW[17]~input_o\ & (\sevSeg_driver_A|Add0~12_combout\)) # (!\SW[17]~input_o\ & ((\sevSeg_driver_A|numVal2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|Add0~12_combout\,
	datac => \sevSeg_driver_A|numVal2\(6),
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(6));

-- Location: LCCOMB_X102_Y4_N18
\sevSeg_driver_A|numProcess2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess2[2]~0_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(6))) # (!\SW[17]~input_o\ & ((\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(6),
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \sevSeg_driver_A|numProcess2[2]~0_combout\);

-- Location: LCCOMB_X114_Y4_N0
\sevSeg_driver_A|numVal2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numVal2\(4) = (\SW[17]~input_o\ & ((\sevSeg_driver_A|Add0~8_combout\))) # (!\SW[17]~input_o\ & (\sevSeg_driver_A|numVal2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevSeg_driver_A|numVal2\(4),
	datac => \sevSeg_driver_A|Add0~8_combout\,
	datad => \SW[17]~input_o\,
	combout => \sevSeg_driver_A|numVal2\(4));

-- Location: LCCOMB_X111_Y4_N4
\sevSeg_driver_A|numProcess2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|numProcess2[0]~1_combout\ = (\SW[17]~input_o\ & (!\sevSeg_driver_A|numVal2\(4))) # (!\SW[17]~input_o\ & ((\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \sevSeg_driver_A|numVal2\(4),
	datad => \SW[14]~input_o\,
	combout => \sevSeg_driver_A|numProcess2[0]~1_combout\);

-- Location: LCCOMB_X69_Y1_N28
\sevSeg_driver_A|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux6~0_combout\ = (!\sevSeg_driver_A|numProcess2[1]~2_combout\ & (\sevSeg_driver_A|numProcess2[2]~0_combout\ $ (\sevSeg_driver_A|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y1_N30
\sevSeg_driver_A|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux5~0_combout\ = (\sevSeg_driver_A|numProcess2[2]~0_combout\ & (\sevSeg_driver_A|numProcess2[1]~2_combout\ $ (\sevSeg_driver_A|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y1_N4
\sevSeg_driver_A|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux4~0_combout\ = (\sevSeg_driver_A|numProcess2[1]~2_combout\ & (!\sevSeg_driver_A|numProcess2[2]~0_combout\ & !\sevSeg_driver_A|numProcess2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y1_N6
\sevSeg_driver_A|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux3~0_combout\ = (\sevSeg_driver_A|numProcess2[1]~2_combout\ & (\sevSeg_driver_A|numProcess2[2]~0_combout\ & \sevSeg_driver_A|numProcess2[0]~1_combout\)) # (!\sevSeg_driver_A|numProcess2[1]~2_combout\ & 
-- (\sevSeg_driver_A|numProcess2[2]~0_combout\ $ (\sevSeg_driver_A|numProcess2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y1_N24
\sevSeg_driver_A|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux2~0_combout\ = (\sevSeg_driver_A|numProcess2[0]~1_combout\) # ((!\sevSeg_driver_A|numProcess2[1]~2_combout\ & \sevSeg_driver_A|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y1_N22
\sevSeg_driver_A|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux1~0_combout\ = (\sevSeg_driver_A|numProcess2[1]~2_combout\ & ((\sevSeg_driver_A|numProcess2[0]~1_combout\) # (!\sevSeg_driver_A|numProcess2[2]~0_combout\))) # (!\sevSeg_driver_A|numProcess2[1]~2_combout\ & 
-- (!\sevSeg_driver_A|numProcess2[2]~0_combout\ & \sevSeg_driver_A|numProcess2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y1_N12
\sevSeg_driver_A|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevSeg_driver_A|Mux0~0_combout\ = (\sevSeg_driver_A|numProcess2[1]~2_combout\ & (\sevSeg_driver_A|numProcess2[2]~0_combout\ & \sevSeg_driver_A|numProcess2[0]~1_combout\)) # (!\sevSeg_driver_A|numProcess2[1]~2_combout\ & 
-- (!\sevSeg_driver_A|numProcess2[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevSeg_driver_A|numProcess2[1]~2_combout\,
	datac => \sevSeg_driver_A|numProcess2[2]~0_combout\,
	datad => \sevSeg_driver_A|numProcess2[0]~1_combout\,
	combout => \sevSeg_driver_A|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y8_N18
\the_ALU|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|Equal0~0_combout\ = (!\the_ALU|mux1|Mux0~2_combout\ & ((\SW[1]~input_o\ & ((!\the_ALU|adder1|s1|p2|s~combout\))) # (!\SW[1]~input_o\ & (!\the_ALU|mux1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux1~1_combout\,
	datab => \the_ALU|mux1|Mux0~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \the_ALU|adder1|s1|p2|s~combout\,
	combout => \the_ALU|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y8_N26
\the_ALU|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|Equal0~1_combout\ = (!\the_ALU|mux1|Mux6~3_combout\ & (!\the_ALU|mux1|Mux3~3_combout\ & (!\the_ALU|mux1|Mux2~3_combout\ & !\the_ALU|mux1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|Mux6~3_combout\,
	datab => \the_ALU|mux1|Mux3~3_combout\,
	datac => \the_ALU|mux1|Mux2~3_combout\,
	datad => \the_ALU|mux1|Mux5~3_combout\,
	combout => \the_ALU|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y8_N16
\the_ALU|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|Equal0~2_combout\ = (!\the_ALU|mux1|f[7]~3_combout\ & (\the_ALU|Equal0~0_combout\ & (\the_ALU|Equal0~1_combout\ & !\the_ALU|mux1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_ALU|mux1|f[7]~3_combout\,
	datab => \the_ALU|Equal0~0_combout\,
	datac => \the_ALU|Equal0~1_combout\,
	datad => \the_ALU|mux1|Mux4~3_combout\,
	combout => \the_ALU|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y8_N0
\the_ALU|adder1|s2|p4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \the_ALU|adder1|s2|p4|cout~0_combout\ = (\SW[17]~input_o\ & ((\the_ALU|adder1|s2|p3|cout~0_combout\) # (\SW[10]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[17]~input_o\ & (\the_ALU|adder1|s2|p3|cout~0_combout\ & (\SW[10]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \the_ALU|adder1|s2|p3|cout~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \the_ALU|adder1|s2|p4|cout~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


