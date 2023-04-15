-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/30/2022 16:00:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bit4Multiplier
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bit4Multiplier_vhd_vec_tst IS
END Bit4Multiplier_vhd_vec_tst;
ARCHITECTURE Bit4Multiplier_arch OF Bit4Multiplier_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL LOAD : STD_LOGIC;
SIGNAL QA : STD_LOGIC;
SIGNAL QB : STD_LOGIC;
SIGNAL QC : STD_LOGIC;
SIGNAL QD : STD_LOGIC;
SIGNAL QE : STD_LOGIC;
SIGNAL QF : STD_LOGIC;
SIGNAL QG : STD_LOGIC;
SIGNAL QH : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL X0 : STD_LOGIC;
SIGNAL X1 : STD_LOGIC;
SIGNAL X2 : STD_LOGIC;
SIGNAL X3 : STD_LOGIC;
SIGNAL Y0 : STD_LOGIC;
SIGNAL Y1 : STD_LOGIC;
SIGNAL Y2 : STD_LOGIC;
SIGNAL Y3 : STD_LOGIC;
COMPONENT Bit4Multiplier
	PORT (
	CLK : IN STD_LOGIC;
	LOAD : IN STD_LOGIC;
	QA : OUT STD_LOGIC;
	QB : OUT STD_LOGIC;
	QC : OUT STD_LOGIC;
	QD : OUT STD_LOGIC;
	QE : OUT STD_LOGIC;
	QF : OUT STD_LOGIC;
	QG : OUT STD_LOGIC;
	QH : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	X0 : IN STD_LOGIC;
	X1 : IN STD_LOGIC;
	X2 : IN STD_LOGIC;
	X3 : IN STD_LOGIC;
	Y0 : IN STD_LOGIC;
	Y1 : IN STD_LOGIC;
	Y2 : IN STD_LOGIC;
	Y3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Bit4Multiplier
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	LOAD => LOAD,
	QA => QA,
	QB => QB,
	QC => QC,
	QD => QD,
	QE => QE,
	QF => QF,
	QG => QG,
	QH => QH,
	RESET => RESET,
	S0 => S0,
	S1 => S1,
	X0 => X0,
	X1 => X1,
	X2 => X2,
	X3 => X3,
	Y0 => Y0,
	Y1 => Y1,
	Y2 => Y2,
	Y3 => Y3
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 100000 ps;
	CLK <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- LOAD
t_prcs_LOAD: PROCESS
BEGIN
	LOAD <= '0';
	WAIT FOR 600000 ps;
	LOAD <= '1';
	WAIT FOR 170000 ps;
	LOAD <= '0';
WAIT;
END PROCESS t_prcs_LOAD;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 770000 ps;
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '0';
	WAIT FOR 240000 ps;
	S0 <= '1';
	WAIT FOR 220000 ps;
	S0 <= '0';
	WAIT FOR 200000 ps;
	S0 <= '1';
	WAIT FOR 190000 ps;
	S0 <= '0';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 460000 ps;
	S1 <= '1';
	WAIT FOR 390000 ps;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- X0
t_prcs_X0: PROCESS
BEGIN
	X0 <= '0';
WAIT;
END PROCESS t_prcs_X0;

-- X1
t_prcs_X1: PROCESS
BEGIN
	X1 <= '1';
WAIT;
END PROCESS t_prcs_X1;

-- X2
t_prcs_X2: PROCESS
BEGIN
	X2 <= '0';
WAIT;
END PROCESS t_prcs_X2;

-- X3
t_prcs_X3: PROCESS
BEGIN
	X3 <= '0';
WAIT;
END PROCESS t_prcs_X3;

-- Y0
t_prcs_Y0: PROCESS
BEGIN
	Y0 <= '0';
WAIT;
END PROCESS t_prcs_Y0;

-- Y1
t_prcs_Y1: PROCESS
BEGIN
	Y1 <= '0';
WAIT;
END PROCESS t_prcs_Y1;

-- Y2
t_prcs_Y2: PROCESS
BEGIN
	Y2 <= '1';
WAIT;
END PROCESS t_prcs_Y2;

-- Y3
t_prcs_Y3: PROCESS
BEGIN
	Y3 <= '0';
WAIT;
END PROCESS t_prcs_Y3;
END Bit4Multiplier_arch;
