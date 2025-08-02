`timescale 1ns/1ps

module thermometer_decoder
   # (parameter K = 4, parameter W = 15)
   (
   input      [W-1:0] a,
   output reg [K-1:0] q
   );

   integer 	    idx;
   
   always @(a) begin
      idx = W;
      while ((a[idx-1] == 0)&&(idx > 0))
	idx = idx - 1;
      q = idx;
   end

endmodule // thermometer_decoder
