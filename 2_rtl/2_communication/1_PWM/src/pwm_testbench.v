`timescale 1ns/1ps

module pwm_testbench ();

    reg clk;
    reg [7:0] din;

    wire sout;

    integer clk_count;
    integer din_count;
    integer sout_count;

    integer fid;
    initial fid = $fopen("test_result.txt", "w");

    initial begin
        clk = 0;
        din = 0;
        clk_count = 0;
        din_count = 0;
        sout_count = 0;
    end

    initial forever #10 clk = ~clk;

    pwm DUT 
        (
        .clk(clk),
        .din(din),
        .sout(sout)
        );

    always @(posedge clk) begin     //stimulus behavior
        clk_count <= clk_count + 1;
        
        if(sout) begin
            sout_count = sout_count + 1;
        end

        if (clk_count >= 255) begin
            din <= din + 1;
            din_count <= din_count + 1;
            clk_count <= 0;
            sout_count = 0;
        end

        if(din_count == 256) begin
            $fclose(fid);
            $finish; 
        end
    end

    always @(posedge clk) begin     //data collection
        $write("clk: %3d", clk_count);
        $write("  din: %d", din);
        $write("  sout: %b", sout);
        $write("  sout_count: %d", sout_count);
        $write("\n");

        $fwrite(fid,"clk: %3d", clk_count);
        $fwrite(fid,"  din: %d", din);
        $fwrite(fid,"  sout: %b", sout);
        $fwrite(fid,"  sout_count: %d", sout_count);
        $fwrite(fid,"\n");
    end 


endmodule