`timescale 1ns/1ps

module lfsr(

    input clk,
    input rst_l,
    input [7:0] seed,
    input request,
    output reg [7:0] num_out

);

reg [7:0] shiftreg;

initial begin
    shiftreg <= 12;
    num_out <= 0;
end

integer idx;

always @(posedge clk) begin

    if(!rst_l) begin
        shiftreg <= seed;
    end
    else begin
    
        for(idx = 0; idx < 8; idx = idx + 1) begin

            if(idx == 7) begin
                shiftreg[7] <= shiftreg[0];
            end
            else if((idx == 6) || (idx == 5) || (idx == 4)) begin
                shiftreg[idx] <= shiftreg[idx+1]^shiftreg[0];
            end
            else begin
                shiftreg[idx] <= shiftreg[idx+1];
            end

        end

        if(request) begin
            num_out <= shiftreg;
        end

    end

end
endmodule