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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/17/2023 21:38:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pratica1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pratica1_vhd_vec_tst IS
END pratica1_vhd_vec_tst;
ARCHITECTURE pratica1_arch OF pratica1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk1 : STD_LOGIC;
SIGNAL Suni : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT pratica1
	PORT (
	clk1 : IN STD_LOGIC;
	Suni : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pratica1
	PORT MAP (
-- list connections between master ports and signals
	clk1 => clk1,
	Suni => Suni
	);

-- clk1
t_prcs_clk1: PROCESS
BEGIN
LOOP
	clk1 <= '0';
	WAIT FOR 12500 ps;
	clk1 <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk1;
END pratica1_arch;
