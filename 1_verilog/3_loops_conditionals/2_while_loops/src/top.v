`timescale 1ns/1ps

`define K 3
`define W 2**`K-1

module top
    (
    input [6:0] sw,
    input sel, 
    output [6:0] led
    );

    wire [2:0] decoder_LEDs; 
    wire [6:0] encoder_LEDs;

    defparam TET.W = `W;
    defparam TET.K = `K;
    defparam TDT.W = `W;
    defparam TDT.K = `K;

    thermometer_decoder TDT (.a(sw), .q(decoder_LEDs));

    thermometer_encoder TET (.a(sw[2:0]), .q(encoder_LEDs));

    assign led = sel ? {4'b0000, decoder_LEDs} : encoder_LEDs;

endmodule