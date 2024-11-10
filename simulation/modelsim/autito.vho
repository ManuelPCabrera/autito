-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/09/2024 21:14:56"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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

ENTITY 	ubicacionparte2 IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	Gizq : IN std_logic;
	Gder : IN std_logic;
	S : IN std_logic;
	Z3 : OUT std_logic;
	Z2 : OUT std_logic;
	Z1 : OUT std_logic;
	Z0 : OUT std_logic;
	SorR : OUT std_logic
	);
END ubicacionparte2;

-- Design Ports Information
-- Z3	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z2	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z1	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z0	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SorR	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gder	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gizq	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ubicacionparte2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Gizq : std_logic;
SIGNAL ww_Gder : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Z3 : std_logic;
SIGNAL ww_Z2 : std_logic;
SIGNAL ww_Z1 : std_logic;
SIGNAL ww_Z0 : std_logic;
SIGNAL ww_SorR : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Z2~1_combout\ : std_logic;
SIGNAL \fstate.RESTAR1~q\ : std_logic;
SIGNAL \fstate.SUMAR1~q\ : std_logic;
SIGNAL \fstate.SUMAR4~q\ : std_logic;
SIGNAL \fstate.RESTAR4~q\ : std_logic;
SIGNAL \reg_fstate.RESTAR1~18_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR1~18_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR4~18_combout\ : std_logic;
SIGNAL \Z2~6_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR4~17_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR1~4_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR1~19_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR1~4_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR1~19_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR4~4_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR4~19_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR1~13_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR1~20_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR1~13_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR1~20_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR4~13_combout\ : std_logic;
SIGNAL \reg_fstate.RESTAR4~20_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR4~18_combout\ : std_logic;
SIGNAL \reg_fstate.SUMAR4~19_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Z3~output_o\ : std_logic;
SIGNAL \Z2~output_o\ : std_logic;
SIGNAL \Z1~output_o\ : std_logic;
SIGNAL \Z0~output_o\ : std_logic;
SIGNAL \SorR~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \reg_fstate.O3~0_combout\ : std_logic;
SIGNAL \fstate.O3~q\ : std_logic;
SIGNAL \Gder~input_o\ : std_logic;
SIGNAL \Z2~0_combout\ : std_logic;
SIGNAL \reg_fstate.O2~0_combout\ : std_logic;
SIGNAL \fstate.O2~q\ : std_logic;
SIGNAL \Z2~3_combout\ : std_logic;
SIGNAL \reg_fstate.O1~0_combout\ : std_logic;
SIGNAL \fstate.O1~q\ : std_logic;
SIGNAL \Gizq~input_o\ : std_logic;
SIGNAL \Z2~2_combout\ : std_logic;
SIGNAL \Z2~4_combout\ : std_logic;
SIGNAL \Z2~5_combout\ : std_logic;
SIGNAL \reg_fstate.O4~0_combout\ : std_logic;
SIGNAL \fstate.O4~q\ : std_logic;
SIGNAL \Z0~0_combout\ : std_logic;
SIGNAL \Z0~1_combout\ : std_logic;
SIGNAL \SorR~3_combout\ : std_logic;
SIGNAL \SorR~2_combout\ : std_logic;
SIGNAL \SorR~4_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_Gizq <= Gizq;
ww_Gder <= Gder;
ww_S <= S;
Z3 <= ww_Z3;
Z2 <= ww_Z2;
Z1 <= ww_Z1;
Z0 <= ww_Z0;
SorR <= ww_SorR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X52_Y15_N6
\Z2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~1_combout\ = (!\reset~input_o\ & (!\S~input_o\ & (\Gizq~input_o\ $ (!\Gder~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \reset~input_o\,
	datac => \Gder~input_o\,
	datad => \S~input_o\,
	combout => \Z2~1_combout\);

-- Location: FF_X51_Y15_N23
\fstate.RESTAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.RESTAR1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.RESTAR1~q\);

-- Location: FF_X51_Y15_N13
\fstate.SUMAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.SUMAR1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.SUMAR1~q\);

-- Location: FF_X51_Y15_N27
\fstate.SUMAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.SUMAR4~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.SUMAR4~q\);

-- Location: FF_X52_Y15_N23
\fstate.RESTAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.RESTAR4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.RESTAR4~q\);

-- Location: LCCOMB_X51_Y15_N22
\reg_fstate.RESTAR1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR1~18_combout\ = (\reg_fstate.RESTAR1~19_combout\) # ((\reg_fstate.RESTAR1~20_combout\) # ((\Z2~6_combout\ & \fstate.RESTAR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.RESTAR1~19_combout\,
	datab => \Z2~6_combout\,
	datac => \fstate.RESTAR1~q\,
	datad => \reg_fstate.RESTAR1~20_combout\,
	combout => \reg_fstate.RESTAR1~18_combout\);

-- Location: LCCOMB_X51_Y15_N12
\reg_fstate.SUMAR1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR1~18_combout\ = (\reg_fstate.SUMAR1~19_combout\) # ((\reg_fstate.SUMAR1~20_combout\) # ((\Z2~6_combout\ & \fstate.SUMAR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.SUMAR1~19_combout\,
	datab => \Z2~6_combout\,
	datac => \fstate.SUMAR1~q\,
	datad => \reg_fstate.SUMAR1~20_combout\,
	combout => \reg_fstate.SUMAR1~18_combout\);

-- Location: LCCOMB_X52_Y15_N22
\reg_fstate.RESTAR4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR4~18_combout\ = (\reg_fstate.RESTAR4~20_combout\) # ((\reg_fstate.RESTAR4~19_combout\) # ((\Z2~6_combout\ & \fstate.RESTAR4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z2~6_combout\,
	datab => \reg_fstate.RESTAR4~20_combout\,
	datac => \fstate.RESTAR4~q\,
	datad => \reg_fstate.RESTAR4~19_combout\,
	combout => \reg_fstate.RESTAR4~18_combout\);

-- Location: LCCOMB_X51_Y14_N0
\Z2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~6_combout\ = (!\reset~input_o\ & !\S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \S~input_o\,
	combout => \Z2~6_combout\);

-- Location: LCCOMB_X51_Y15_N26
\reg_fstate.SUMAR4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR4~17_combout\ = (!\reset~input_o\ & (!\S~input_o\ & ((\fstate.SUMAR4~q\) # (\reg_fstate.SUMAR4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \S~input_o\,
	datac => \fstate.SUMAR4~q\,
	datad => \reg_fstate.SUMAR4~19_combout\,
	combout => \reg_fstate.SUMAR4~17_combout\);

-- Location: LCCOMB_X51_Y15_N24
\reg_fstate.RESTAR1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR1~4_combout\ = (\Gder~input_o\ & (\fstate.O3~q\)) # (!\Gder~input_o\ & ((\fstate.O4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gder~input_o\,
	datac => \fstate.O3~q\,
	datad => \fstate.O4~q\,
	combout => \reg_fstate.RESTAR1~4_combout\);

-- Location: LCCOMB_X51_Y15_N6
\reg_fstate.RESTAR1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR1~19_combout\ = (\Gizq~input_o\ & (!\S~input_o\ & (!\reset~input_o\ & \reg_fstate.RESTAR1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \S~input_o\,
	datac => \reset~input_o\,
	datad => \reg_fstate.RESTAR1~4_combout\,
	combout => \reg_fstate.RESTAR1~19_combout\);

-- Location: LCCOMB_X51_Y15_N0
\reg_fstate.SUMAR1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR1~4_combout\ = (\Gder~input_o\ & (\fstate.O2~q\)) # (!\Gder~input_o\ & ((!\fstate.O1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gder~input_o\,
	datab => \fstate.O2~q\,
	datad => \fstate.O1~q\,
	combout => \reg_fstate.SUMAR1~4_combout\);

-- Location: LCCOMB_X51_Y15_N30
\reg_fstate.SUMAR1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR1~19_combout\ = (\Gizq~input_o\ & (!\S~input_o\ & (!\reset~input_o\ & \reg_fstate.SUMAR1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \S~input_o\,
	datac => \reset~input_o\,
	datad => \reg_fstate.SUMAR1~4_combout\,
	combout => \reg_fstate.SUMAR1~19_combout\);

-- Location: LCCOMB_X52_Y15_N12
\reg_fstate.RESTAR4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR4~4_combout\ = (\Gizq~input_o\ & (!\fstate.O1~q\)) # (!\Gizq~input_o\ & ((\fstate.O2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datac => \fstate.O1~q\,
	datad => \fstate.O2~q\,
	combout => \reg_fstate.RESTAR4~4_combout\);

-- Location: LCCOMB_X52_Y15_N18
\reg_fstate.RESTAR4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR4~19_combout\ = (!\reset~input_o\ & (!\S~input_o\ & (\Gder~input_o\ & \reg_fstate.RESTAR4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \S~input_o\,
	datac => \Gder~input_o\,
	datad => \reg_fstate.RESTAR4~4_combout\,
	combout => \reg_fstate.RESTAR4~19_combout\);

-- Location: LCCOMB_X51_Y15_N20
\reg_fstate.RESTAR1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR1~13_combout\ = (\Gder~input_o\ & ((!\fstate.O1~q\))) # (!\Gder~input_o\ & (\fstate.O2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gder~input_o\,
	datab => \fstate.O2~q\,
	datad => \fstate.O1~q\,
	combout => \reg_fstate.RESTAR1~13_combout\);

-- Location: LCCOMB_X51_Y15_N10
\reg_fstate.RESTAR1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR1~20_combout\ = (!\Gizq~input_o\ & (!\S~input_o\ & (!\reset~input_o\ & \reg_fstate.RESTAR1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \S~input_o\,
	datac => \reset~input_o\,
	datad => \reg_fstate.RESTAR1~13_combout\,
	combout => \reg_fstate.RESTAR1~20_combout\);

-- Location: LCCOMB_X51_Y15_N4
\reg_fstate.SUMAR1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR1~13_combout\ = (\Gder~input_o\ & ((\fstate.O4~q\))) # (!\Gder~input_o\ & (\fstate.O3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gder~input_o\,
	datac => \fstate.O3~q\,
	datad => \fstate.O4~q\,
	combout => \reg_fstate.SUMAR1~13_combout\);

-- Location: LCCOMB_X51_Y15_N2
\reg_fstate.SUMAR1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR1~20_combout\ = (!\Gizq~input_o\ & (!\S~input_o\ & (!\reset~input_o\ & \reg_fstate.SUMAR1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \S~input_o\,
	datac => \reset~input_o\,
	datad => \reg_fstate.SUMAR1~13_combout\,
	combout => \reg_fstate.SUMAR1~20_combout\);

-- Location: LCCOMB_X52_Y15_N24
\reg_fstate.RESTAR4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR4~13_combout\ = (\Gizq~input_o\ & ((\fstate.O3~q\))) # (!\Gizq~input_o\ & (\fstate.O4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datac => \fstate.O4~q\,
	datad => \fstate.O3~q\,
	combout => \reg_fstate.RESTAR4~13_combout\);

-- Location: LCCOMB_X52_Y15_N2
\reg_fstate.RESTAR4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RESTAR4~20_combout\ = (!\reset~input_o\ & (!\S~input_o\ & (!\Gder~input_o\ & \reg_fstate.RESTAR4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \S~input_o\,
	datac => \Gder~input_o\,
	datad => \reg_fstate.RESTAR4~13_combout\,
	combout => \reg_fstate.RESTAR4~20_combout\);

-- Location: LCCOMB_X51_Y15_N8
\reg_fstate.SUMAR4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR4~18_combout\ = (\Gder~input_o\ & (!\Gizq~input_o\ & (\fstate.O3~q\))) # (!\Gder~input_o\ & ((\Gizq~input_o\) # ((!\fstate.O1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gder~input_o\,
	datab => \Gizq~input_o\,
	datac => \fstate.O3~q\,
	datad => \fstate.O1~q\,
	combout => \reg_fstate.SUMAR4~18_combout\);

-- Location: LCCOMB_X51_Y15_N18
\reg_fstate.SUMAR4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.SUMAR4~19_combout\ = (\Gizq~input_o\ & ((\reg_fstate.SUMAR4~18_combout\ & (\fstate.O2~q\)) # (!\reg_fstate.SUMAR4~18_combout\ & ((\fstate.O4~q\))))) # (!\Gizq~input_o\ & (((\reg_fstate.SUMAR4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \fstate.O2~q\,
	datac => \reg_fstate.SUMAR4~18_combout\,
	datad => \fstate.O4~q\,
	combout => \reg_fstate.SUMAR4~19_combout\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X49_Y34_N2
\Z3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Z3~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\Z2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z2~5_combout\,
	devoe => ww_devoe,
	o => \Z2~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Z1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Z1~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Z0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z0~1_combout\,
	devoe => ww_devoe,
	o => \Z0~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\SorR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SorR~4_combout\,
	devoe => ww_devoe,
	o => \SorR~output_o\);

-- Location: IOIBUF_X53_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X51_Y15_N14
\reg_fstate.O3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.O3~0_combout\ = (!\reset~input_o\ & (\S~input_o\ & ((\fstate.SUMAR1~q\) # (\fstate.O3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SUMAR1~q\,
	datab => \reset~input_o\,
	datac => \fstate.O3~q\,
	datad => \S~input_o\,
	combout => \reg_fstate.O3~0_combout\);

-- Location: FF_X51_Y15_N15
\fstate.O3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.O3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.O3~q\);

-- Location: IOIBUF_X53_Y17_N8
\Gder~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Gder,
	o => \Gder~input_o\);

-- Location: LCCOMB_X52_Y15_N4
\Z2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~0_combout\ = (!\reset~input_o\ & (!\S~input_o\ & (\Gizq~input_o\ $ (\Gder~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \reset~input_o\,
	datac => \Gder~input_o\,
	datad => \S~input_o\,
	combout => \Z2~0_combout\);

-- Location: LCCOMB_X51_Y15_N28
\reg_fstate.O2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.O2~0_combout\ = (!\reset~input_o\ & (\S~input_o\ & ((\fstate.RESTAR1~q\) # (\fstate.O2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.RESTAR1~q\,
	datab => \reset~input_o\,
	datac => \fstate.O2~q\,
	datad => \S~input_o\,
	combout => \reg_fstate.O2~0_combout\);

-- Location: FF_X51_Y15_N29
\fstate.O2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.O2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.O2~q\);

-- Location: LCCOMB_X52_Y15_N8
\Z2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~3_combout\ = (\fstate.O4~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.O4~q\,
	datac => \reset~input_o\,
	combout => \Z2~3_combout\);

-- Location: LCCOMB_X51_Y15_N16
\reg_fstate.O1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.O1~0_combout\ = (!\reset~input_o\ & (((!\fstate.SUMAR4~q\ & \fstate.O1~q\)) # (!\S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SUMAR4~q\,
	datab => \reset~input_o\,
	datac => \fstate.O1~q\,
	datad => \S~input_o\,
	combout => \reg_fstate.O1~0_combout\);

-- Location: FF_X51_Y15_N17
\fstate.O1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.O1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.O1~q\);

-- Location: IOIBUF_X53_Y17_N1
\Gizq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Gizq,
	o => \Gizq~input_o\);

-- Location: LCCOMB_X52_Y15_N0
\Z2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~2_combout\ = (!\S~input_o\ & (\Gder~input_o\ $ (!\Gizq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \Gder~input_o\,
	datad => \Gizq~input_o\,
	combout => \Z2~2_combout\);

-- Location: LCCOMB_X52_Y15_N14
\Z2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~4_combout\ = (\Z2~1_combout\ & (((\Z2~3_combout\ & \Z2~2_combout\)) # (!\fstate.O1~q\))) # (!\Z2~1_combout\ & (\Z2~3_combout\ & ((\Z2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z2~1_combout\,
	datab => \Z2~3_combout\,
	datac => \fstate.O1~q\,
	datad => \Z2~2_combout\,
	combout => \Z2~4_combout\);

-- Location: LCCOMB_X52_Y15_N28
\Z2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z2~5_combout\ = (\Z2~4_combout\) # ((\Z2~0_combout\ & ((\fstate.O3~q\) # (\fstate.O2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.O3~q\,
	datab => \Z2~0_combout\,
	datac => \fstate.O2~q\,
	datad => \Z2~4_combout\,
	combout => \Z2~5_combout\);

-- Location: LCCOMB_X52_Y15_N26
\reg_fstate.O4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.O4~0_combout\ = (!\reset~input_o\ & (\S~input_o\ & ((\fstate.RESTAR4~q\) # (\fstate.O4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.RESTAR4~q\,
	datab => \reset~input_o\,
	datac => \fstate.O4~q\,
	datad => \S~input_o\,
	combout => \reg_fstate.O4~0_combout\);

-- Location: FF_X52_Y15_N27
\fstate.O4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.O4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.O4~q\);

-- Location: LCCOMB_X52_Y15_N10
\Z0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z0~0_combout\ = (!\reset~input_o\ & (\Z2~2_combout\ & ((\fstate.O3~q\) # (\fstate.O2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.O3~q\,
	datab => \fstate.O2~q\,
	datac => \reset~input_o\,
	datad => \Z2~2_combout\,
	combout => \Z0~0_combout\);

-- Location: LCCOMB_X52_Y15_N20
\Z0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z0~1_combout\ = (\Z0~0_combout\) # ((\Z2~0_combout\ & ((\fstate.O4~q\) # (!\fstate.O1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.O1~q\,
	datab => \fstate.O4~q\,
	datac => \Z2~0_combout\,
	datad => \Z0~0_combout\,
	combout => \Z0~1_combout\);

-- Location: LCCOMB_X52_Y15_N16
\SorR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SorR~3_combout\ = (\Gizq~input_o\ & ((\fstate.O3~q\) # ((\Gder~input_o\ & !\fstate.O1~q\)))) # (!\Gizq~input_o\ & (\Gder~input_o\ & (!\fstate.O1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \Gder~input_o\,
	datac => \fstate.O1~q\,
	datad => \fstate.O3~q\,
	combout => \SorR~3_combout\);

-- Location: LCCOMB_X52_Y15_N30
\SorR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SorR~2_combout\ = (\Gizq~input_o\ & (((\fstate.O4~q\ & !\Gder~input_o\)))) # (!\Gizq~input_o\ & ((\fstate.O2~q\) # ((\fstate.O4~q\ & !\Gder~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gizq~input_o\,
	datab => \fstate.O2~q\,
	datac => \fstate.O4~q\,
	datad => \Gder~input_o\,
	combout => \SorR~2_combout\);

-- Location: LCCOMB_X52_Y14_N20
\SorR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SorR~4_combout\ = (!\reset~input_o\ & (!\S~input_o\ & ((\SorR~3_combout\) # (\SorR~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SorR~3_combout\,
	datab => \reset~input_o\,
	datac => \SorR~2_combout\,
	datad => \S~input_o\,
	combout => \SorR~4_combout\);

ww_Z3 <= \Z3~output_o\;

ww_Z2 <= \Z2~output_o\;

ww_Z1 <= \Z1~output_o\;

ww_Z0 <= \Z0~output_o\;

ww_SorR <= \SorR~output_o\;
END structure;


