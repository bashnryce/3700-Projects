`timescale 1ns/1ps

module testbench ();

reg clk;
reg rst;
reg request_char;

wire s_out;

integer clk_count;

reg last_s_out;

integer fid;
initial fid = $fopen("top_results.txt", "w");

initial begin
    clk = 0;
    rst = 0;
    request_char = 0;
    clk_count = 0;
    last_s_out = 0;
end

initial forever #10 clk = ~clk;

top DUT (
    .clk(clk),
    .rst(rst),
    .request_char(request_char),
    .s_out(s_out)
);

always @(posedge clk) begin

    request_char <= ~request_char;
    clk_count <= clk_count + 1;
    last_s_out <= s_out;

    //if(DUT.UART.done) begin  
    if(last_s_out ^ s_out) begin 

        $write("clk: %d", clk_count);
        $write("\t request_char: %d", request_char);
        $write("\t lfsr_to_ascii: %d", DUT.lfsr_to_ascii);
        $write("\t ascii_to_fifo: %d", DUT.ascii_to_fifo);
        $write("\t fifo_out_to_uart: %d", DUT.fifo_out_to_uart);
        $write("\t uart_done: %d", DUT.UART.done);
        $write("\t s_out: %b", s_out);
        $write("\n");

        $fwrite(fid,"clk: %d", clk_count);
        $fwrite(fid,"\t request_char: %d", request_char);
        $fwrite(fid,"\t lfsr_to_ascii: %d", DUT.lfsr_to_ascii);
        $fwrite(fid,"\t ascii_to_fifo: %d", DUT.ascii_to_fifo);
        $fwrite(fid,"\t fifo_out_to_uart: %d", DUT.fifo_out_to_uart);
        $fwrite(fid,"\t uart_done: %d", DUT.UART.done);
        $fwrite(fid,"\t s_out: %b", s_out);
        $fwrite(fid,"\n");

    end

    

    if(clk_count == 10000000) begin
        $fclose(fid);
        $finish; 
    end



end

endmodule