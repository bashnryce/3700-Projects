`timescale 1ns/1ps

module testbench(); 

    reg clk;
    reg rd;
    reg wr;

    reg [7:0] addr;
    reg [7:0] d_in;

    wire [7:0] d_out;

    reg [3:0] state; //this is the step in the test procedure for a given address

    integer addr_count;
    integer fid;
    initial fid = $fopen("test_result.txt", "w");

    initial begin
        clk = 0;
        rd = 0;
        wr = 0;
        addr = 0;
        d_in = 0;
        state = 0; //reset state
        addr_count = 0;
    end

    initial forever #10 clk = ~clk;

    single_port_RAM DUT 
    (
        .clk(clk),
        .rd(rd),
        .wr(wr),
        .addr(addr),
        .d_in(d_in),
        .d_out(d_out)
    );

    always @(posedge clk) begin

        if(addr_count == 256) begin
            $fclose(fid);
            $finish;
        end 

        case (state)
        
            0: begin //rst and write address
                rd = 0;
                wr = 0;
                state <= 1;
                $write("Address %h\n", addr);
                $fwrite(fid, "Address %h\n", addr);
            end
            1: begin //random value for d_in
                rd = 0;
                wr = 0;
                d_in <= $random;
                state <= 2;
            end
            2: begin //Write
                rd = 0;
                wr = 1;
                state <= 3;
            end
            3: begin //read
                rd = 1;
                wr = 0;
                state <= 4;
            end
            4: begin //log d_in and d_out
                rd = 0;
                wr = 0;
                $write("\t1: d_in = %h d_out = %h  <-- write then read\n", d_in, d_out);
                $fwrite(fid, "\t1: d_in = %h d_out = %h  <-- write then read\n", d_in, d_out);
                state <= 5;
            end
            5: begin //new random value for d_in
                rd = 0;
                wr = 0;
                d_in <= $random;
                state <= 6;
            end
            6: begin //read and write same time
                rd = 1;
                wr = 1;
                state <= 7;
            end
            7: begin //log 
                rd = 0;
                wr = 0;
                $write("\t2: d_in = %h d_out = %h  <-- write/read simultaneous\n", d_in, d_out);
                $fwrite(fid, "\t2: d_in = %h d_out = %h  <-- write/read simultaneous\n", d_in, d_out);
                state <= 8;
            end
            8: begin //read
                rd = 1;
                wr = 0;
                state <= 9;
            end
            9: begin //log and new address assign
                rd = 0;
                wr = 0;
                $write("\t3: d_in = %h d_out = %h  <-- read\n\n", d_in, d_out);
                $fwrite(fid, "\t3: d_in = %h d_out = %h  <-- read\n\n", d_in, d_out);
                state <= 0;
                addr <= addr + 1;
                addr_count <= addr_count + 1;
            end
            default: begin
                state <= 0;
            end
        endcase

    end


endmodule