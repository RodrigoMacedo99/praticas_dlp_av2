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

-- DATE "10/17/2023 21:38:15"

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
	clk1 : IN std_logic;
	Suni : BUFFER std_logic_vector(6 DOWNTO 0)
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
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_Suni : std_logic_vector(6 DOWNTO 0);
SIGNAL \Suni[0]~output_o\ : std_logic;
SIGNAL \Suni[1]~output_o\ : std_logic;
SIGNAL \Suni[2]~output_o\ : std_logic;
SIGNAL \Suni[3]~output_o\ : std_logic;
SIGNAL \Suni[4]~output_o\ : std_logic;
SIGNAL \Suni[5]~output_o\ : std_logic;
SIGNAL \Suni[6]~output_o\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \utt|count:cont[1]~0_combout\ : std_logic;
SIGNAL \utt|count:cont[1]~q\ : std_logic;
SIGNAL \utt|cont~1_combout\ : std_logic;
SIGNAL \utt|count:cont[2]~q\ : std_logic;
SIGNAL \utt|cont~0_combout\ : std_logic;
SIGNAL \utt|count:cont[0]~q\ : std_logic;
SIGNAL \utt|Equal0~0_combout\ : std_logic;
SIGNAL \utt|clk190~q\ : std_logic;
SIGNAL \count|y.S5~q\ : std_logic;
SIGNAL \count|y.S0~0_combout\ : std_logic;
SIGNAL \count|y.S0~q\ : std_logic;
SIGNAL \count|y.S1~0_combout\ : std_logic;
SIGNAL \count|y.S1~q\ : std_logic;
SIGNAL \count|y.S2~q\ : std_logic;
SIGNAL \count|y.S3~q\ : std_logic;
SIGNAL \count|y.S4~q\ : std_logic;
SIGNAL \count|WideOr1~combout\ : std_logic;
SIGNAL \count|WideOr0~combout\ : std_logic;
SIGNAL \count|WideOr2~combout\ : std_logic;
SIGNAL \display|Mux6~0_combout\ : std_logic;
SIGNAL \display|Mux5~0_combout\ : std_logic;
SIGNAL \display|Mux4~0_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \count|S\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \utt|ALT_INV_count:cont[2]~q\ : std_logic;
SIGNAL \utt|ALT_INV_count:cont[1]~q\ : std_logic;
SIGNAL \utt|ALT_INV_count:cont[0]~q\ : std_logic;
SIGNAL \count|ALT_INV_y.S2~q\ : std_logic;
SIGNAL \count|ALT_INV_y.S5~q\ : std_logic;
SIGNAL \count|ALT_INV_y.S1~q\ : std_logic;
SIGNAL \count|ALT_INV_y.S0~q\ : std_logic;
SIGNAL \count|ALT_INV_y.S4~q\ : std_logic;
SIGNAL \count|ALT_INV_S\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk1 <= clk1;
Suni <= ww_Suni;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\utt|ALT_INV_count:cont[2]~q\ <= NOT \utt|count:cont[2]~q\;
\utt|ALT_INV_count:cont[1]~q\ <= NOT \utt|count:cont[1]~q\;
\utt|ALT_INV_count:cont[0]~q\ <= NOT \utt|count:cont[0]~q\;
\count|ALT_INV_y.S2~q\ <= NOT \count|y.S2~q\;
\count|ALT_INV_y.S5~q\ <= NOT \count|y.S5~q\;
\count|ALT_INV_y.S1~q\ <= NOT \count|y.S1~q\;
\count|ALT_INV_y.S0~q\ <= NOT \count|y.S0~q\;
\count|ALT_INV_y.S4~q\ <= NOT \count|y.S4~q\;
\count|ALT_INV_S\(0) <= NOT \count|S\(0);
\count|ALT_INV_S\(2) <= NOT \count|S\(2);
\count|ALT_INV_S\(1) <= NOT \count|S\(1);

\Suni[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Suni[0]~output_o\);

\Suni[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Suni[1]~output_o\);

\Suni[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Suni[2]~output_o\);

\Suni[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Suni[3]~output_o\);

\Suni[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Suni[4]~output_o\);

\Suni[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Suni[5]~output_o\);

\Suni[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Suni[6]~output_o\);

\clk1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

\utt|count:cont[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \utt|count:cont[1]~0_combout\ = !\utt|count:cont[0]~q\ $ (!\utt|count:cont[1]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \utt|ALT_INV_count:cont[0]~q\,
	datab => \utt|ALT_INV_count:cont[1]~q\,
	combout => \utt|count:cont[1]~0_combout\);

\utt|count:cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \utt|count:cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \utt|count:cont[1]~q\);

\utt|cont~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \utt|cont~1_combout\ = (!\utt|count:cont[0]~q\ & (\utt|count:cont[1]~q\ & \utt|count:cont[2]~q\)) # (\utt|count:cont[0]~q\ & (!\utt|count:cont[1]~q\ $ (!\utt|count:cont[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110000101100001011000010110000101100001011000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \utt|ALT_INV_count:cont[0]~q\,
	datab => \utt|ALT_INV_count:cont[1]~q\,
	datac => \utt|ALT_INV_count:cont[2]~q\,
	combout => \utt|cont~1_combout\);

\utt|count:cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \utt|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \utt|count:cont[2]~q\);

\utt|cont~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \utt|cont~0_combout\ = (!\utt|count:cont[0]~q\ & ((!\utt|count:cont[2]~q\) # (\utt|count:cont[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \utt|ALT_INV_count:cont[0]~q\,
	datab => \utt|ALT_INV_count:cont[1]~q\,
	datac => \utt|ALT_INV_count:cont[2]~q\,
	combout => \utt|cont~0_combout\);

\utt|count:cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \utt|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \utt|count:cont[0]~q\);

\utt|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \utt|Equal0~0_combout\ = (!\utt|count:cont[0]~q\ & (!\utt|count:cont[1]~q\ & \utt|count:cont[2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \utt|ALT_INV_count:cont[0]~q\,
	datab => \utt|ALT_INV_count:cont[1]~q\,
	datac => \utt|ALT_INV_count:cont[2]~q\,
	combout => \utt|Equal0~0_combout\);

\utt|clk190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~input_o\,
	d => \utt|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \utt|clk190~q\);

\count|y.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S5~q\);

\count|y.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count|y.S0~0_combout\ = !\count|y.S5~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_y.S5~q\,
	combout => \count|y.S0~0_combout\);

\count|y.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S0~q\);

\count|y.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count|y.S1~0_combout\ = !\count|y.S0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_y.S0~q\,
	combout => \count|y.S1~0_combout\);

\count|y.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S1~q\);

\count|y.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S2~q\);

\count|y.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S3~q\);

\count|y.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|y.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|y.S4~q\);

\count|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count|WideOr1~combout\ = ((!\count|y.S0~q\) # (\count|y.S1~q\)) # (\count|y.S4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_y.S4~q\,
	datab => \count|ALT_INV_y.S0~q\,
	datac => \count|ALT_INV_y.S1~q\,
	combout => \count|WideOr1~combout\);

\count|S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|S\(1));

\count|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count|WideOr0~combout\ = (\count|y.S0~q\ & (!\count|y.S1~q\ & !\count|y.S5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_y.S0~q\,
	datab => \count|ALT_INV_y.S1~q\,
	datac => \count|ALT_INV_y.S5~q\,
	combout => \count|WideOr0~combout\);

\count|S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|S\(2));

\count|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count|WideOr2~combout\ = (!\count|y.S4~q\ & (\count|y.S0~q\ & !\count|y.S2~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_y.S4~q\,
	datab => \count|ALT_INV_y.S0~q\,
	datac => \count|ALT_INV_y.S2~q\,
	combout => \count|WideOr2~combout\);

\count|S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \utt|clk190~q\,
	d => \count|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|S\(0));

\display|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux6~0_combout\ = (!\count|S\(1) & (!\count|S\(2) $ (!\count|S\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux6~0_combout\);

\display|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux5~0_combout\ = (\count|S\(2) & (!\count|S\(1) $ (!\count|S\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux5~0_combout\);

\display|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\count|S\(1) & (!\count|S\(2) & !\count|S\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux4~0_combout\);

\display|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (!\count|S\(1) & (!\count|S\(2) $ (!\count|S\(0)))) # (\count|S\(1) & (\count|S\(2) & \count|S\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100101001001010010010100100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux3~0_combout\);

\display|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = ((!\count|S\(1) & \count|S\(2))) # (\count|S\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux2~0_combout\);

\display|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (!\count|S\(1) & (!\count|S\(2) & \count|S\(0))) # (\count|S\(1) & ((!\count|S\(2)) # (\count|S\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux1~0_combout\);

\display|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (!\count|S\(1) & (!\count|S\(2))) # (\count|S\(1) & (\count|S\(2) & \count|S\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100110001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count|ALT_INV_S\(1),
	datab => \count|ALT_INV_S\(2),
	datac => \count|ALT_INV_S\(0),
	combout => \display|Mux0~0_combout\);

ww_Suni(0) <= \Suni[0]~output_o\;

ww_Suni(1) <= \Suni[1]~output_o\;

ww_Suni(2) <= \Suni[2]~output_o\;

ww_Suni(3) <= \Suni[3]~output_o\;

ww_Suni(4) <= \Suni[4]~output_o\;

ww_Suni(5) <= \Suni[5]~output_o\;

ww_Suni(6) <= \Suni[6]~output_o\;
END structure;


