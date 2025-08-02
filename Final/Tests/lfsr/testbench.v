`timescale 1ns/1ps

module testbench();

    reg clk;
    reg rst_l;
    reg [7:0] seed;
    reg request;
    wire [7:0] num_out;

    reg [7:0] rand_num;
    integer clk_count;

    integer fid;
    initial fid = $fopen("lfsr_results.txt", "w");

    initial begin
        clk = 0;
        rst_l = 1;
        seed = 1;
        request = 0;
        rand_num = 0;
        clk_count = 0;
    end

    initial forever #10 clk = ~clk;

    lfsr DUT(
        .clk(clk),
        .rst_l(rst_l),
        .seed(seed),
        .request(request),
        .num_out(num_out)
    );

    

    always @(posedge clk) begin
        rand_num <= $random();

        if(rand_num == 100) begin
            request <= 1;
        end
        else begin
            request <= 0;
        end

        if(request) begin

            $write("clk: %d", clk_count);
            $write("\tregval: %b", DUT.shiftreg);
            //$write("\tidx: %d", DUT.idx);
            $write("\trequest: %b", request);
            $write("\tnum_out: %b", num_out);
            $write("\n");

            $fwrite(fid,"clk: %d", clk_count);
            $fwrite(fid,"\tregval: %b", DUT.shiftreg);
            //$fwrite(fid,"\tidx: %d", DUT.idx);
            $fwrite(fid,"\trequest: %b", request);
            $fwrite(fid,"\tnum_out: %b", num_out);
            $fwrite(fid,"\n");

        end

        clk_count <= clk_count + 1;

        if(clk_count == 100000) begin
            $fclose(fid);
	        $finish;
        end

    end

    


endmodule