-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "10/17/2023 11:50:36"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pratica1 IS
    PORT (
	clk : IN std_logic;
	S : OUT std_logic_vector(0 TO 2)
	);
END pratica1;

ARCHITECTURE structure OF pratica1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_S : std_logic_vector(0 TO 2);
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \y.S1~0_combout\ : std_logic;
SIGNAL \y.S1~q\ : std_logic;
SIGNAL \y.S2~q\ : std_logic;
SIGNAL \y.S3~q\ : std_logic;
SIGNAL \y.S4~q\ : std_logic;
SIGNAL \y.S5~q\ : std_logic;
SIGNAL \y.S0~0_combout\ : std_logic;
SIGNAL \y.S0~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \S[2]~reg0_q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \S[1]~reg0_q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \S[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_y.S5~q\ : std_logic;
SIGNAL \ALT_INV_y.S1~q\ : std_logic;
SIGNAL \ALT_INV_y.S4~q\ : std_logic;
SIGNAL \ALT_INV_y.S2~q\ : std_logic;
SIGNAL \ALT_INV_y.S0~q\ : std_logic;

BEGIN

ww_clk <= clk;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y.S5~q\ <= NOT \y.S5~q\;
\ALT_INV_y.S1~q\ <= NOT \y.S1~q\;
\ALT_INV_y.S4~q\ <= NOT \y.S4~q\;
\ALT_INV_y.S2~q\ <= NOT \y.S2~q\;
\ALT_INV_y.S0~q\ <= NOT \y.S0~q\;

\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S[2]~reg0_q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~reg0_q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S[0]~reg0_q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\y.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y.S1~0_combout\ = !\y.S0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y.S0~q\,
	combout => \y.S1~0_combout\);

\y.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S1~q\);

\y.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S2~q\);

\y.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S3~q\);

\y.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S4~q\);

\y.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S5~q\);

\y.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y.S0~0_combout\ = !\y.S5~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y.S5~q\,
	combout => \y.S0~0_combout\);

\y.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S0~q\);

WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\y.S0~q\ & (!\y.S2~q\ & !\y.S4~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y.S0~q\,
	datab => \ALT_INV_y.S2~q\,
	datac => \ALT_INV_y.S4~q\,
	combout => \WideOr2~combout\);

\S[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[2]~reg0_q\);

WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (!\y.S0~q\) # ((\y.S1~q\) # (\y.S4~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y.S0~q\,
	datab => \ALT_INV_y.S4~q\,
	datac => \ALT_INV_y.S1~q\,
	combout => \WideOr1~combout\);

\S[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[1]~reg0_q\);

WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\y.S0~q\ & (!\y.S1~q\ & !\y.S5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y.S0~q\,
	datab => \ALT_INV_y.S1~q\,
	datac => \ALT_INV_y.S5~q\,
	combout => \WideOr0~combout\);

\S[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[0]~reg0_q\);

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


