`timescale 1ns/1ps

module testbench();

reg clk;
reg [7:0] raw_in;
wire [7:0] ascii_out;

integer clk_count;

integer fid;
initial fid = $fopen("ascii_results.txt", "w");

initial begin
    clk = 0;
    raw_in = 0;
    clk_count = 0;
end

initial forever #10 clk = ~clk;


ascii DUT (
    .raw_in(raw_in),
    .ascii_out(ascii_out)
);

always @(posedge clk) begin

    raw_in <= raw_in + 1;
    clk_count <= clk_count + 1;

    $write("clk: %d", clk_count);
    $write("\traw_in: %d", raw_in);
    $write("\tascii_out: %d", ascii_out);
    $write("\n");

    $fwrite(fid,"clk: %d", clk_count);
    $fwrite(fid,"\traw_in: %d", raw_in);
    $fwrite(fid,"\tascii_out: %d", ascii_out);
    $fwrite(fid,"\n");

    if(clk_count == 256) begin
        $fclose(fid);
        $finish; 
    end

end

endmodule