`timescale 1ns/1ps

module top
    (
    input [7:0] a,
    input clk,
    input load,
    output reg [3:0] q 
    );

    reg [7:0]  _a;
    wire [3:0] _q;

    add_bits add_bits_instance (.a(_a), .q(_q));

    always @(posedge clk) begin
            q <= _q;
            if(load)
                _a <= a;
    end

   
endmodule // top

   
