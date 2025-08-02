`timescale 1ns/1ps

module testbench();

    reg clk;
    reg rd;
    reg [7:0] adr;
    wire [7:0] dout;
    real      sin_x, sin_y;

    integer clk_count;
    integer fid;
    initial fid = $fopen("test_result.txt", "w");

    sin_table DUT 
    (
        .clk(clk),
        .rd(rd),
        .addr(adr),
        .d_out(dout)
    );

    initial begin
        clk = 0;
        rd = 1;
        adr = 0;
        clk_count = 0;
    end

    initial forever #10 clk = ~clk;

    // Get a new random adr every clk cycle:
    always @(posedge clk) begin
        adr = $random();
        clk_count = clk_count + 1;

        if(clk_count == 256) begin
            $fclose(fid);
	        $finish;
        end
    end

    // When dout changes, display it:
    always @(dout) begin
        sin_x = adr/255.0;
        sin_y = dout/255.0;
        $write("adr %3d  dout %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,dout,sin_x, sin_y, $sin(3.14159*sin_x/2));
        $fwrite(fid,"adr %3d  dout %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,dout,sin_x, sin_y, $sin(3.14159*sin_x/2));
    end


endmodule