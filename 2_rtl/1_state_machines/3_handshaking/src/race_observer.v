`timescale 1ns/1ps

module race_observer
(
    input clk,
    input rst_l,
    input start,
    output reg done
);

    wire t;
    reg [1:0] state;

    random_timer rt1 (.clk(clk), .t(t));

    always @(posedge clk, negedge rst_l) begin

        if(!rst_l) begin
            state <= 0;
            done <= 0;
        end

        else begin

            case (state)
                0: begin //waiting
                    if(start) begin
                        done <= 0;
                        state <= 1;
                    end
                    else begin
                        done <= 0;
                        state <= 0;
                    end
                end

                1: begin //Wait for T
                    if (t) begin
                        done <= 1;
                        state <= 2;
                    end
                    else begin
                        done <= 0;
                        state <=1;
                    end
                end

                2: begin //Done
                    if(start) begin
                        done <= 1;
                        state <= 2;
                    end
                    else begin
                        done <= 0;
                        state <= 0;
                    end
                end

                default: begin
                    state <= 0;
                    done <= 0;
                end
            endcase

        end
    end

endmodule