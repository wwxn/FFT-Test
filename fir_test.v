// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Fri Jun 07 22:05:16 2019"

module fir_test(
	clk,
	rst_n,
	data_modulus
);


input wire	clk;
input wire	rst_n;
output wire	[11:0] data_modulus;

wire	SYNTHESIZED_WIRE_16;
wire	[11:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[0:11] SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[11:0] SYNTHESIZED_WIRE_14;
wire	[11:0] SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_16 = 1;
assign	SYNTHESIZED_WIRE_3 = 0;
assign	SYNTHESIZED_WIRE_18 = 1;
assign	SYNTHESIZED_WIRE_8 = 0;




fir	b2v_inst(
	.clk(clk),
	.reset_n(rst_n),
	.ast_sink_valid(SYNTHESIZED_WIRE_16),
	.ast_source_ready(SYNTHESIZED_WIRE_16),
	.ast_sink_data(SYNTHESIZED_WIRE_17)
	
	
	
	
	);


fft	b2v_inst1(
	.clk(clk),
	.reset_n(rst_n),
	.inverse(SYNTHESIZED_WIRE_3),
	.sink_valid(SYNTHESIZED_WIRE_18),
	.sink_sop(SYNTHESIZED_WIRE_5),
	.sink_eop(SYNTHESIZED_WIRE_6),
	.source_ready(SYNTHESIZED_WIRE_18),
	
	.sink_imag(SYNTHESIZED_WIRE_8),
	.sink_real(SYNTHESIZED_WIRE_17),
	
	.source_sop(SYNTHESIZED_WIRE_11),
	.source_eop(SYNTHESIZED_WIRE_12),
	.source_valid(SYNTHESIZED_WIRE_13),
	
	
	.source_imag(SYNTHESIZED_WIRE_14),
	.source_real(SYNTHESIZED_WIRE_15));


rom	b2v_inst2(
	.clock(clk),
	.address(SYNTHESIZED_WIRE_10),
	.q(SYNTHESIZED_WIRE_17));




address_add	b2v_inst5(
	.clk(clk),
	.rst_n(rst_n),
	.address(SYNTHESIZED_WIRE_10));



fft_control	b2v_inst7(
	.clk(clk),
	.rst_n(rst_n),
	.sink_sop(SYNTHESIZED_WIRE_5),
	.sink_eop(SYNTHESIZED_WIRE_6));



data_modulus	b2v_inst9(
	.clk_50m(clk),
	.rst_n(rst_n),
	.source_sop(SYNTHESIZED_WIRE_11),
	.source_eop(SYNTHESIZED_WIRE_12),
	.source_valid(SYNTHESIZED_WIRE_13),
	.source_imag(SYNTHESIZED_WIRE_14),
	.source_real(SYNTHESIZED_WIRE_15),
	
	
	
	.data_modulus(data_modulus));


endmodule
