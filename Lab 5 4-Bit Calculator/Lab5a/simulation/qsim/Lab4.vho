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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/30/2022 16:00:11"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bit4Multiplier IS
    PORT (
	QA : OUT std_logic;
	QB : OUT std_logic;
	QC : OUT std_logic;
	QD : OUT std_logic;
	X0 : IN std_logic;
	S0 : IN std_logic;
	Y2 : IN std_logic;
	S1 : IN std_logic;
	Y3 : IN std_logic;
	Y0 : IN std_logic;
	Y1 : IN std_logic;
	X1 : IN std_logic;
	X2 : IN std_logic;
	X3 : IN std_logic;
	QE : OUT std_logic;
	QF : OUT std_logic;
	QG : OUT std_logic;
	QH : OUT std_logic;
	CLK : IN std_logic;
	LOAD : IN std_logic;
	RESET : IN std_logic
	);
END Bit4Multiplier;

-- Design Ports Information
-- QA	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QE	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QF	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QG	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QH	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Bit4Multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_QE : std_logic;
SIGNAL ww_QF : std_logic;
SIGNAL ww_QG : std_logic;
SIGNAL ww_QH : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst1|inst23~combout\ : std_logic;
SIGNAL \inst1|inst11~combout\ : std_logic;
SIGNAL \inst1|inst31~combout\ : std_logic;
SIGNAL \inst1|inst12~combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Y1~input_o\ : std_logic;
SIGNAL \Y2~input_o\ : std_logic;
SIGNAL \Y3~input_o\ : std_logic;
SIGNAL \Y0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \inst6|6~0_combout\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \inst1|inst13~combout\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \inst1|inst14~combout\ : std_logic;
SIGNAL \inst1|inst15~combout\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \inst1|inst17~combout\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \inst|inst26~combout\ : std_logic;
SIGNAL \inst|inst46~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|inst16~q\ : std_logic;
SIGNAL \inst|inst38~0_combout\ : std_logic;
SIGNAL \inst1|inst19~q\ : std_logic;
SIGNAL \inst|inst24~0_combout\ : std_logic;
SIGNAL \inst|inst32~0_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst|inst21~0_combout\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst4~q\ : std_logic;
SIGNAL \inst1|inst1~q\ : std_logic;
SIGNAL \inst1|inst27~q\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst19~q\ : std_logic;
SIGNAL \inst6|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst24~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst26~combout\ : std_logic;
SIGNAL \ALT_INV_X0~input_o\ : std_logic;
SIGNAL \ALT_INV_Y0~input_o\ : std_logic;
SIGNAL \ALT_INV_Y2~input_o\ : std_logic;
SIGNAL \ALT_INV_Y1~input_o\ : std_logic;
SIGNAL \ALT_INV_Y3~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_X1~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;
SIGNAL \ALT_INV_X2~input_o\ : std_logic;
SIGNAL \ALT_INV_X3~input_o\ : std_logic;
SIGNAL \ALT_INV_LOAD~input_o\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;

BEGIN

QA <= ww_QA;
QB <= ww_QB;
QC <= ww_QC;
QD <= ww_QD;
ww_X0 <= X0;
ww_S0 <= S0;
ww_Y2 <= Y2;
ww_S1 <= S1;
ww_Y3 <= Y3;
ww_Y0 <= Y0;
ww_Y1 <= Y1;
ww_X1 <= X1;
ww_X2 <= X2;
ww_X3 <= X3;
QE <= ww_QE;
QF <= ww_QF;
QG <= ww_QG;
QH <= ww_QH;
ww_CLK <= CLK;
ww_LOAD <= LOAD;
ww_RESET <= RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_inst2~q\ <= NOT \inst1|inst2~q\;
\inst1|ALT_INV_inst3~q\ <= NOT \inst1|inst3~q\;
\inst1|ALT_INV_inst19~q\ <= NOT \inst1|inst19~q\;
\inst6|ALT_INV_6~0_combout\ <= NOT \inst6|6~0_combout\;
\inst1|ALT_INV_inst16~q\ <= NOT \inst1|inst16~q\;
\inst|ALT_INV_inst24~0_combout\ <= NOT \inst|inst24~0_combout\;
\inst|ALT_INV_inst26~combout\ <= NOT \inst|inst26~combout\;
\ALT_INV_X0~input_o\ <= NOT \X0~input_o\;
\ALT_INV_Y0~input_o\ <= NOT \Y0~input_o\;
\ALT_INV_Y2~input_o\ <= NOT \Y2~input_o\;
\ALT_INV_Y1~input_o\ <= NOT \Y1~input_o\;
\ALT_INV_Y3~input_o\ <= NOT \Y3~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_X1~input_o\ <= NOT \X1~input_o\;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;
\ALT_INV_X2~input_o\ <= NOT \X2~input_o\;
\ALT_INV_X3~input_o\ <= NOT \X3~input_o\;
\ALT_INV_LOAD~input_o\ <= NOT \LOAD~input_o\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;

-- Location: IOOBUF_X36_Y0_N53
\QA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => ww_QA);

-- Location: IOOBUF_X36_Y0_N36
\QB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst27~q\,
	devoe => ww_devoe,
	o => ww_QB);

-- Location: IOOBUF_X36_Y0_N19
\QC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1~q\,
	devoe => ww_devoe,
	o => ww_QC);

-- Location: IOOBUF_X34_Y0_N76
\QD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~q\,
	devoe => ww_devoe,
	o => ww_QD);

-- Location: IOOBUF_X38_Y0_N36
\QE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~q\,
	devoe => ww_devoe,
	o => ww_QE);

-- Location: IOOBUF_X38_Y0_N2
\QF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~q\,
	devoe => ww_devoe,
	o => ww_QF);

-- Location: IOOBUF_X40_Y0_N19
\QG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst19~q\,
	devoe => ww_devoe,
	o => ww_QG);

-- Location: IOOBUF_X52_Y0_N53
\QH~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst16~q\,
	devoe => ww_devoe,
	o => ww_QH);

-- Location: IOIBUF_X40_Y0_N35
\LOAD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LABCELL_X36_Y1_N24
\inst1|inst23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst23~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst23~combout\);

-- Location: LABCELL_X36_Y1_N54
\inst1|inst11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst11~combout\);

-- Location: LABCELL_X37_Y2_N48
\inst1|inst31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst31~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst31~combout\);

-- Location: LABCELL_X37_Y2_N9
\inst1|inst12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst12~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst12~combout\);

-- Location: IOIBUF_X89_Y9_N21
\S0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\Y1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y1,
	o => \Y1~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\Y2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y2,
	o => \Y2~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\Y3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y3,
	o => \Y3~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\Y0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y0,
	o => \Y0~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LABCELL_X88_Y9_N48
\inst6|6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|6~0_combout\ = ( \Y0~input_o\ & ( \S1~input_o\ & ( (!\S0~input_o\ & (\Y2~input_o\)) # (\S0~input_o\ & ((\Y3~input_o\))) ) ) ) # ( !\Y0~input_o\ & ( \S1~input_o\ & ( (!\S0~input_o\ & (\Y2~input_o\)) # (\S0~input_o\ & ((\Y3~input_o\))) ) ) ) # ( 
-- \Y0~input_o\ & ( !\S1~input_o\ & ( (!\S0~input_o\) # (\Y1~input_o\) ) ) ) # ( !\Y0~input_o\ & ( !\S1~input_o\ & ( (\S0~input_o\ & \Y1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_Y1~input_o\,
	datac => \ALT_INV_Y2~input_o\,
	datad => \ALT_INV_Y3~input_o\,
	datae => \ALT_INV_Y0~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \inst6|6~0_combout\);

-- Location: IOIBUF_X38_Y0_N52
\X0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: MLABCELL_X39_Y3_N48
\inst1|inst13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LOAD~input_o\,
	datae => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst13~combout\);

-- Location: IOIBUF_X40_Y0_N52
\X1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: MLABCELL_X39_Y3_N57
\inst1|inst14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst14~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LOAD~input_o\,
	datae => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst14~combout\);

-- Location: LABCELL_X40_Y3_N42
\inst1|inst15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst15~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst15~combout\);

-- Location: IOIBUF_X50_Y0_N75
\X2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: LABCELL_X40_Y3_N6
\inst1|inst17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17~combout\ = LCELL(( \CLK~input_o\ & ( !\LOAD~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LOAD~input_o\,
	dataf => \ALT_INV_CLK~input_o\,
	combout => \inst1|inst17~combout\);

-- Location: IOIBUF_X38_Y0_N18
\X3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: MLABCELL_X39_Y3_N42
\inst|inst26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst26~combout\ = ( \inst1|inst3~q\ & ( \inst1|inst2~q\ & ( (\inst6|6~0_combout\ & ((\X0~input_o\) # (\X1~input_o\))) ) ) ) # ( !\inst1|inst3~q\ & ( \inst1|inst2~q\ & ( (\inst6|6~0_combout\ & (\X1~input_o\ & \X0~input_o\)) ) ) ) # ( \inst1|inst3~q\ 
-- & ( !\inst1|inst2~q\ & ( (\inst6|6~0_combout\ & \X1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_6~0_combout\,
	datac => \ALT_INV_X1~input_o\,
	datad => \ALT_INV_X0~input_o\,
	datae => \inst1|ALT_INV_inst3~q\,
	dataf => \inst1|ALT_INV_inst2~q\,
	combout => \inst|inst26~combout\);

-- Location: LABCELL_X40_Y3_N48
\inst|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst46~0_combout\ = ( \inst6|6~0_combout\ & ( \inst|inst26~combout\ & ( (!\X3~input_o\ & (\inst1|inst16~q\ & ((\inst1|inst19~q\) # (\X2~input_o\)))) # (\X3~input_o\ & (((\inst1|inst16~q\) # (\inst1|inst19~q\)) # (\X2~input_o\))) ) ) ) # ( 
-- !\inst6|6~0_combout\ & ( \inst|inst26~combout\ & ( (\inst1|inst19~q\ & \inst1|inst16~q\) ) ) ) # ( \inst6|6~0_combout\ & ( !\inst|inst26~combout\ & ( (!\X3~input_o\ & (\X2~input_o\ & (\inst1|inst19~q\ & \inst1|inst16~q\))) # (\X3~input_o\ & 
-- (((\X2~input_o\ & \inst1|inst19~q\)) # (\inst1|inst16~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001111100000000001100110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X2~input_o\,
	datab => \inst1|ALT_INV_inst19~q\,
	datac => \ALT_INV_X3~input_o\,
	datad => \inst1|ALT_INV_inst16~q\,
	datae => \inst6|ALT_INV_6~0_combout\,
	dataf => \inst|ALT_INV_inst26~combout\,
	combout => \inst|inst46~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X40_Y3_N8
\inst1|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst17~combout\,
	asdata => \inst|inst46~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst16~q\);

-- Location: LABCELL_X40_Y3_N12
\inst|inst38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst38~0_combout\ = ( \inst6|6~0_combout\ & ( \inst|inst26~combout\ & ( !\inst1|inst16~q\ $ (!\X3~input_o\ $ (((\inst1|inst19~q\) # (\X2~input_o\)))) ) ) ) # ( !\inst6|6~0_combout\ & ( \inst|inst26~combout\ & ( !\inst1|inst16~q\ $ 
-- (!\inst1|inst19~q\) ) ) ) # ( \inst6|6~0_combout\ & ( !\inst|inst26~combout\ & ( !\inst1|inst16~q\ $ (!\X3~input_o\ $ (((\X2~input_o\ & \inst1|inst19~q\)))) ) ) ) # ( !\inst6|6~0_combout\ & ( !\inst|inst26~combout\ & ( \inst1|inst16~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000110100100110011110011000110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X2~input_o\,
	datab => \inst1|ALT_INV_inst16~q\,
	datac => \ALT_INV_X3~input_o\,
	datad => \inst1|ALT_INV_inst19~q\,
	datae => \inst6|ALT_INV_6~0_combout\,
	dataf => \inst|ALT_INV_inst26~combout\,
	combout => \inst|inst38~0_combout\);

-- Location: FF_X40_Y3_N44
\inst1|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst15~combout\,
	asdata => \inst|inst38~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst19~q\);

-- Location: MLABCELL_X39_Y3_N24
\inst|inst24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst24~0_combout\ = ( \X0~input_o\ & ( \inst1|inst2~q\ & ( \inst6|6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_6~0_combout\,
	datae => \ALT_INV_X0~input_o\,
	dataf => \inst1|ALT_INV_inst2~q\,
	combout => \inst|inst24~0_combout\);

-- Location: MLABCELL_X39_Y3_N21
\inst|inst32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst32~0_combout\ = ( \X2~input_o\ & ( \inst|inst24~0_combout\ & ( !\inst1|inst19~q\ $ (!\inst6|6~0_combout\ $ (((\X1~input_o\) # (\inst1|inst3~q\)))) ) ) ) # ( !\X2~input_o\ & ( \inst|inst24~0_combout\ & ( !\inst1|inst19~q\ $ (((!\inst1|inst3~q\ & 
-- !\X1~input_o\))) ) ) ) # ( \X2~input_o\ & ( !\inst|inst24~0_combout\ & ( !\inst1|inst19~q\ $ (((!\inst6|6~0_combout\) # ((\inst1|inst3~q\ & \X1~input_o\)))) ) ) ) # ( !\X2~input_o\ & ( !\inst|inst24~0_combout\ & ( !\inst1|inst19~q\ $ 
-- (((!\inst6|6~0_combout\) # ((!\inst1|inst3~q\) # (!\X1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110011001100110010101011010101010100110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst19~q\,
	datab => \inst6|ALT_INV_6~0_combout\,
	datac => \inst1|ALT_INV_inst3~q\,
	datad => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \inst|ALT_INV_inst24~0_combout\,
	combout => \inst|inst32~0_combout\);

-- Location: FF_X39_Y3_N59
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst14~combout\,
	asdata => \inst|inst32~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: MLABCELL_X39_Y3_N33
\inst|inst21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst21~0_combout\ = ( \inst1|inst3~q\ & ( (!\inst6|6~0_combout\) # (!\X1~input_o\ $ (((\X0~input_o\ & \inst1|inst2~q\)))) ) ) # ( !\inst1|inst3~q\ & ( (\inst6|6~0_combout\ & (!\X1~input_o\ $ (((!\X0~input_o\) # (!\inst1|inst2~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000110000001010000011011111010111110011111101011111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X1~input_o\,
	datab => \ALT_INV_X0~input_o\,
	datac => \inst6|ALT_INV_6~0_combout\,
	datad => \inst1|ALT_INV_inst2~q\,
	dataf => \inst1|ALT_INV_inst3~q\,
	combout => \inst|inst21~0_combout\);

-- Location: FF_X39_Y3_N50
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst13~combout\,
	asdata => \inst|inst21~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LABCELL_X37_Y2_N6
\inst|inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = ( \inst1|inst2~q\ & ( (!\inst6|6~0_combout\) # (!\X0~input_o\) ) ) # ( !\inst1|inst2~q\ & ( (\inst6|6~0_combout\ & \X0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_6~0_combout\,
	datad => \ALT_INV_X0~input_o\,
	dataf => \inst1|ALT_INV_inst2~q\,
	combout => \inst|inst8~0_combout\);

-- Location: FF_X37_Y2_N8
\inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst12~combout\,
	d => \inst|inst8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4~q\);

-- Location: FF_X37_Y2_N50
\inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst31~combout\,
	asdata => \inst1|inst4~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1~q\);

-- Location: FF_X36_Y1_N56
\inst1|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst11~combout\,
	asdata => \inst1|inst1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst27~q\);

-- Location: FF_X36_Y1_N26
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst23~combout\,
	asdata => \inst1|inst27~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LABCELL_X45_Y39_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


