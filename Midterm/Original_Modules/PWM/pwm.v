`timescale 1ns/1ps

module pwm (
    input clk,
    input [7:0] din,
    output reg sout
);

    reg [7:0] clk_count; // 8-bit counter

    initial begin
        sout = 0;
        clk_count = 0;
    end

    // Combinational logic to update sout immediately when din changes
    always @(*) begin
        if (clk_count < din) 
            sout = 1;
        else 
            sout = 0;
    end

    // Synchronous counter update on clock edge
    always @(posedge clk) begin
        if (clk_count == 255)
            clk_count <= 0;
        else
            clk_count <= clk_count + 1;
    end

endmodule
