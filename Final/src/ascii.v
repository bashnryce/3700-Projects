`timescale 1ns/1ps

module ascii (
    input [7:0] raw_in,
    output reg [7:0] ascii_out
);

always @(*) begin

    if(raw_in < 94) begin
        ascii_out = raw_in + 33;
    end
    else if (raw_in < 188) begin
        ascii_out = raw_in - 61;
    end
    else begin
        ascii_out = raw_in - 129;
    end

end


endmodule