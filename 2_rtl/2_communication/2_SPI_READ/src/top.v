`timescale 1ns/1ps

module top 
    #(
        parameter refresh_period = 40_000
    )
    (
        input clk,
        input rst,
        input SDO,
        output SCLK, 
        output CS,
        output reg [15:0] led
    );

    wire rst_invert = !rst;
    reg i_rd;
    wire i_d_ready; 
    wire [15:0] led_buffer;

    reg [31:0] sclk_count;

    initial begin
        led = 0;
        i_rd = 0;
        sclk_count = 0;
    end

    simpleSPI SPI1 (
                    .clk(clk), 
                    .rst_l(rst_invert),
                    .SDO(SDO),
                    .CS(CS),
                    .SCLK(SCLK),
                    .rd(i_rd), //input
                    .d_ready(i_d_ready), //output
                    .d(led_buffer)
                    );

    always @(negedge SCLK) begin

        if ((!i_d_ready) && sclk_count == 5) begin              //rd start transaction
                i_rd <= 1;
            end

        else if (i_d_ready) begin                                 //SPI finishes sets d_ready flag
            led <= led_buffer;                                  //controller "consumes data" lowers rd to signal data recieved
            i_rd <= 0;
            sclk_count <= 0;
        end
           
        else begin
            sclk_count <= sclk_count + 1;
        end

    end


endmodule