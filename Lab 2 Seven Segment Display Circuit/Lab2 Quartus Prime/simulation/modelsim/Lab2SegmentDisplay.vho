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

-- DATE "02/16/2022 17:05:09"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2SegmentDisplay IS
    PORT (
	D0 : OUT std_logic;
	X0 : IN std_logic;
	X1 : IN std_logic;
	X2 : IN std_logic;
	X3 : IN std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	D4 : OUT std_logic;
	D5 : OUT std_logic;
	D6 : OUT std_logic
	);
END Lab2SegmentDisplay;

-- Design Ports Information
-- D0	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2SegmentDisplay IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \D0O1~combout\ : std_logic;
SIGNAL \D1O1~0_combout\ : std_logic;
SIGNAL \D0A1~0_combout\ : std_logic;
SIGNAL \D3O1~0_combout\ : std_logic;
SIGNAL \D4O1~combout\ : std_logic;
SIGNAL \D5O1~0_combout\ : std_logic;
SIGNAL \D6O1~combout\ : std_logic;
SIGNAL \ALT_INV_X3~input_o\ : std_logic;
SIGNAL \ALT_INV_X2~input_o\ : std_logic;
SIGNAL \ALT_INV_X1~input_o\ : std_logic;
SIGNAL \ALT_INV_X0~input_o\ : std_logic;

BEGIN

D0 <= ww_D0;
ww_X0 <= X0;
ww_X1 <= X1;
ww_X2 <= X2;
ww_X3 <= X3;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
D4 <= ww_D4;
D5 <= ww_D5;
D6 <= ww_D6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_X3~input_o\ <= NOT \X3~input_o\;
\ALT_INV_X2~input_o\ <= NOT \X2~input_o\;
\ALT_INV_X1~input_o\ <= NOT \X1~input_o\;
\ALT_INV_X0~input_o\ <= NOT \X0~input_o\;

-- Location: IOOBUF_X89_Y8_N39
\D0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D0O1~combout\,
	devoe => ww_devoe,
	o => ww_D0);

-- Location: IOOBUF_X89_Y11_N79
\D1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1O1~0_combout\,
	devoe => ww_devoe,
	o => ww_D1);

-- Location: IOOBUF_X89_Y11_N96
\D2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D0A1~0_combout\,
	devoe => ww_devoe,
	o => ww_D2);

-- Location: IOOBUF_X89_Y4_N79
\D3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3O1~0_combout\,
	devoe => ww_devoe,
	o => ww_D3);

-- Location: IOOBUF_X89_Y13_N56
\D4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4O1~combout\,
	devoe => ww_devoe,
	o => ww_D4);

-- Location: IOOBUF_X89_Y13_N39
\D5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D5O1~0_combout\,
	devoe => ww_devoe,
	o => ww_D5);

-- Location: IOOBUF_X89_Y4_N96
\D6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D6O1~combout\,
	devoe => ww_devoe,
	o => ww_D6);

-- Location: IOIBUF_X4_Y0_N1
\X1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\X3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\X2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\X0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: LABCELL_X83_Y4_N30
D0O1 : cyclonev_lcell_comb
-- Equation(s):
-- \D0O1~combout\ = ( !\X2~input_o\ & ( \X0~input_o\ & ( (!\X1~input_o\ & !\X3~input_o\) ) ) ) # ( \X2~input_o\ & ( !\X0~input_o\ & ( !\X1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X1~input_o\,
	datac => \ALT_INV_X3~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D0O1~combout\);

-- Location: LABCELL_X83_Y4_N36
\D1O1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1O1~0_combout\ = ( \X2~input_o\ & ( \X0~input_o\ & ( !\X1~input_o\ ) ) ) # ( \X2~input_o\ & ( !\X0~input_o\ & ( \X1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D1O1~0_combout\);

-- Location: LABCELL_X83_Y4_N15
\D0A1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D0A1~0_combout\ = ( !\X2~input_o\ & ( !\X0~input_o\ & ( \X1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D0A1~0_combout\);

-- Location: LABCELL_X83_Y4_N51
\D3O1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3O1~0_combout\ = ( \X2~input_o\ & ( \X0~input_o\ & ( \X1~input_o\ ) ) ) # ( !\X2~input_o\ & ( \X0~input_o\ & ( (!\X3~input_o\ & !\X1~input_o\) ) ) ) # ( \X2~input_o\ & ( !\X0~input_o\ & ( !\X1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X3~input_o\,
	datac => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D3O1~0_combout\);

-- Location: LABCELL_X83_Y4_N54
D4O1 : cyclonev_lcell_comb
-- Equation(s):
-- \D4O1~combout\ = ( \X2~input_o\ & ( \X0~input_o\ ) ) # ( !\X2~input_o\ & ( \X0~input_o\ ) ) # ( \X2~input_o\ & ( !\X0~input_o\ & ( !\X1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D4O1~combout\);

-- Location: LABCELL_X83_Y4_N0
\D5O1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D5O1~0_combout\ = ( \X2~input_o\ & ( \X0~input_o\ & ( \X1~input_o\ ) ) ) # ( !\X2~input_o\ & ( \X0~input_o\ & ( (!\X3~input_o\) # (\X1~input_o\) ) ) ) # ( !\X2~input_o\ & ( !\X0~input_o\ & ( (\X1~input_o\ & !\X3~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X1~input_o\,
	datac => \ALT_INV_X3~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D5O1~0_combout\);

-- Location: LABCELL_X83_Y4_N9
D6O1 : cyclonev_lcell_comb
-- Equation(s):
-- \D6O1~combout\ = ( \X2~input_o\ & ( \X0~input_o\ & ( \X1~input_o\ ) ) ) # ( !\X2~input_o\ & ( \X0~input_o\ & ( (!\X3~input_o\ & !\X1~input_o\) ) ) ) # ( !\X2~input_o\ & ( !\X0~input_o\ & ( (!\X3~input_o\ & !\X1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X3~input_o\,
	datac => \ALT_INV_X1~input_o\,
	datae => \ALT_INV_X2~input_o\,
	dataf => \ALT_INV_X0~input_o\,
	combout => \D6O1~combout\);

-- Location: LABCELL_X42_Y35_N3
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


