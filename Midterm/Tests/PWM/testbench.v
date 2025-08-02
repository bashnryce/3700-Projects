`timescale 1ns/1ps

module testbench(); 

    reg clk;
    reg rst_l;
    reg [15:0] keys;
    reg [7:0] volume;

    wire AIN;
    wire GAIN;
    wire SHUTDOWN_L;

    reg prev_AIN;

    integer clk_count = 0;   
    integer fid;
    initial fid = $fopen("audio_test_result.txt", "w");

    localparam ClkCycles = 1_000_000;

    initial begin

        clk = 0;
        rst_l = 1;
        keys = 0;
        volume = 1;
        prev_AIN = 0;

    end

    initial forever #10 clk = ~clk;

    audio_top DUT (
        .clk(clk),
        .rst_l(rst_l),
        .keys(keys),
        .volume(volume),
        .AIN(AIN),
        .GAIN(GAIN),
        .SHUTDOWN_L(SHUTDOWN_L)
    );

    always @(posedge clk) begin

        clk_count <= clk_count + 1;
        prev_AIN <= AIN;

        if(clk_count == ClkCycles)begin
            keys <= 1;
        end

        if(clk_count % ClkCycles == 0 && clk_count != ClkCycles) begin
            keys <= {keys[14:0], 1'b0};
        end

        if(prev_AIN ^ AIN) begin

            $write("clk: %3d", clk_count);
            $write("\trst_l: %b", rst_l);
            $write("\tkeys: %b", keys);
            $write("\tAIN: %b", AIN);
            $write("\n");
          
            $fwrite(fid, "clk: %3d", clk_count);
            $fwrite(fid, "\trst_l: %b", rst_l);
            $fwrite(fid, "\tkeys: %b", keys);
            $fwrite(fid, "\tAIN: %b", AIN);
            $fwrite(fid, "\n");

        end

           

        if(keys == 0 && clk_count > ClkCycles*2) begin
            $fclose(fid);
            $finish;
        end


    end

endmodule