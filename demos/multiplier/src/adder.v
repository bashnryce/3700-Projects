`timescale 1ns/1ps

module adder
  #(
    parameter N=4
    )
   (
    input [N-1:0] a,
    input [N-1:0] b,
    output reg[N:0]  s
    );


   always @(*) s = a + b;

   
   // Create a vector for the carry signals:
   /*
   wire [N:0] 	   c;

   assign     c[0]  = 0;
   assign     s[N]  = c[N];


   genvar 	   i;

   generate
      for (i=0; i<N; i=i+1) begin
	 full_adder fa (.a(a[i]),.b(b[i]),.c_in(c[i]),.s(s[i]),.c_out(c[i+1]));
      end
   endgenerate
    */
endmodule // adder

