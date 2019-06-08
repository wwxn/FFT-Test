`timescale 1ns/1ns
module fir_tb();

reg	clk;
reg	rst_n;
wire	[11:0] data_modulus;

fir_test f1(
	clk,
	rst_n,
	data_modulus
);

initial
begin
	clk<=1'b0;
	rst_n<=1'b1;
	#10 rst_n<=1'b0;
	#10 rst_n<=1'b1;
end

always
begin
	#3;
	clk<=~clk;
end

endmodule 

