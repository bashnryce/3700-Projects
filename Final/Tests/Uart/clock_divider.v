`timescale 1ns/1ps

module clock_divider 
#(parameter N = 5208) //produces 9600 Hz clock with 100MHz input
(
    input clk,
    input rst_l,
    output reg div_clk
);

    integer clk_count;
    initial begin
        clk_count = 0;
        div_clk = 0;
    end

    always @(posedge clk, negedge rst_l) begin

        if (!rst_l) begin
            clk_count <= 0;
            div_clk <= 0;
        end

        else begin
            if (clk_count == N) begin
                clk_count <= 0;
                div_clk <= ~div_clk;
            end
            else begin
                clk_count <= clk_count + 1;
            end
        end
    end
    
endmodule
