`timescale 1ns/1ps

module up_down_counter(

   input clk,
   input signed [7:0] a,
   input signed [7:0] b,
   input up, dn, rst,
   output reg signed [7:0] q

);

initial q = 0;


   always @(posedge clk) begin
      if (rst)
	      q <= a;
      else begin
      
	      if(up && (q+b <= 127) && (q+b >= -128))
		      q <= q + b;
	      else if(dn && (q-b <= 127) && (q-b >= -128))
		      q <= q - b;
      end
   end


endmodule
