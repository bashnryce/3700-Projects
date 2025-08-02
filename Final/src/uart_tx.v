`timescale 1ns/1ps

module uart_tx (
    input start,
    input clk, 
    input rst_l,
    input [7:0] d_out,
    output reg done,
    output reg tx
);

localparam WAIT = 0;
localparam SEND = 1;
localparam STOP = 2;

reg [1:0] state; 
reg [2:0] bit_index;

wire div_clk;

initial begin
    done = 0;
    tx = 1;
    state = WAIT;
    bit_index = 0;
end

clock_divider clk_div (.clk(clk), .rst_l(rst_l), .div_clk(div_clk));


always @(posedge div_clk) begin

    if(!rst_l) begin
        done = 0;
        tx = 1;
        state = WAIT;
        bit_index = 0;
    end

    else begin

        case (state)
            WAIT: begin
                if(start) begin
                    state <= SEND; 
                    bit_index <= 0;
                    tx <= 0;
                end
                else begin
                    state <= WAIT; 
                    tx <= 1;
                    done <= 0;
                end

            end
            SEND: begin
                if(bit_index < 7) begin
                    state <= SEND; 
                    tx <= d_out[bit_index];
                    bit_index <= bit_index + 1;
                end
                else begin //bit_index == 7
                    state <= STOP;
                    tx <= d_out[bit_index];
                end

            end
            STOP: begin
                if(start) begin
                    state <= STOP;
                    done <= 1;
                    tx <= 1;
                end
                else begin
                    state <= WAIT;
                    done <= 0;
                    tx <= 1; //might be unneccesary 
                end

            end
            default: begin
                done <= 0;
                tx <= 1;
                state <= WAIT;
                bit_index <= 0;
            end

        endcase

    end
end

endmodule