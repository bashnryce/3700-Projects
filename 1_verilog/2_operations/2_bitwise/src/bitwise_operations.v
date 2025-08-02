`timescale 1ns/1ps

module bitwise_operations(

   input clk,
   input [6:0] a,
   input [6:0] b,
   input [1:0] op,
   output reg [6:0] q

);

always @(posedge clk) begin

	if(op == 0) 
		q <= a&b;
	else if(op == 1)
		q <= a|b;
	else if(op == 2)
		q <= a^b;
	else if(op == 3)
		q <= ~(a|b);

end



endmodule
