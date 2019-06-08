module address_add
(
	input clk,
	input rst_n,
	output reg [7:0] address
);

always@(posedge clk)
if(!rst_n)
	address<=8'd0;
else
	address<=address+1'b1;
	
	
endmodule 