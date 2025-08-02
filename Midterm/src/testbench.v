`timescale 1ns/1ps

module testbench();

    reg clk;
    reg rst;
    reg [7:0] sw;             
    reg power;  

    reg prev_AIN;              

    wire AIN;             
    wire GAIN;            
    wire SHUTDOWN_L; 

    initial begin
        clk = 0;
        rst = 1; //no reset
        sw = 1; //set volume to 1
        power = 1; //start on
        prev_AIN = 0;
    end

    initial forever #10 clk = ~clk;
 
    integer fid;
    initial fid = $fopen("top_test_result.txt", "w");

   // Simulated row/col for keypress position:
   reg [3:0]  row_pressed;
   reg [3:0]  col_pressed;
   
   // Interface wires:
   wire [3:0]  row_wire;
   wire [3:0]  col_wire;
  // wire [15:0] keys;
   wire        refresh;
   
   integer     clk_count     = 0;   
   integer     refresh_count = 0;

   // The row wire can be pulled down only if the column wire matches
   // the column where the button is pressed:
   assign row_wire[0] = &(col_wire===col_pressed) ? row_pressed[0] : 1 ;
   assign row_wire[1] = &(col_wire===col_pressed) ? row_pressed[1] : 1 ;
   assign row_wire[2] = &(col_wire===col_pressed) ? row_pressed[2] : 1 ;
   assign row_wire[3] = &(col_wire===col_pressed) ? row_pressed[3] : 1 ;


    top DUT (
        .clk(clk),
        .rst(~rst),
        .keypad_row(row_wire),
        .sw(sw),
        .power(power),
        .keypad_col(col_wire),
        .AIN(AIN),
        .GAIN(GAIN),
        .SHUTDOWN_L(SHUTDOWN_L)
    );

   // Timing to change key value every
   // refresh interval
   clock_divider #(.N(1_200_000)) clkdiv1
   (.clk(clk),.rst_l(rst),.div_clk(refresh));
   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      // Initially no button is pressed, we will start
      // pressing buttons in column zero:
      row_pressed   = 4'b1111;   
      col_pressed   = 4'bZZZ0;
      
      clk_count     = 0;
      refresh_count = 0;
   end

   // CREATE STIMULI:
    always @(posedge clk) begin

        prev_AIN <= AIN; //keep track of previous AIN output

        // Control the reset behavior:
        if (!rst) begin
            rst <= 1;
            row_pressed   <= 4'b1111; // No key pressed, all rows HIGH	 
        end
        else begin
            if (refresh) begin
                case (row_pressed)
                    4'b1111: row_pressed <= 4'b1110; // first row_pressed
                    4'b1110: row_pressed <= 4'b1101; // second row_pressed
                    4'b1101: row_pressed <= 4'b1011; // third row_pressed
                    4'b1011: row_pressed <= 4'b0111; // fourth row_pressed
                    4'b0111: // After the last row, we change column and 
                        begin  // start going through the rows again:
                            row_pressed <= 4'b1111; 
                            
                            case (col_pressed)
                                4'bZZZ0 : col_pressed <= 4'bZZ0Z;
                                4'bZZ0Z : col_pressed <= 4'bZ0ZZ;
                                4'bZ0ZZ : col_pressed <= 4'b0ZZZ;
                                4'b0ZZZ : col_pressed <= 4'bZZZ0;
                            endcase // case (col_pressed)
                        end
                endcase
            end
        end
    end

   integer last_clk;    //keeps track of clk_count for when AIN last changed from 0 to 1
   initial last_clk = 0; 

   
    always @(posedge clk) begin
        
        if((prev_AIN ^ AIN) && AIN) begin           //see if AIN changes and if it is 1
            last_clk <= clk_count;                  //if so write save clk_count to last_clk
            //$write("\nlast_clk: %d\n", last_clk);  //debugging line
        end
        
        if ((DUT.KP1.scan) || (prev_AIN ^ AIN)) begin //if we complete a keypad scan or AIN changes

            $write("clk: %d", clk_count);      
            $write("\tpressed(col: %b", col_pressed);
            $write(", row: %b)", row_pressed);
            $write("\tkeys: %b", DUT.keys);
            $write("\tbtn(state): %1d", DUT.PWM1.btn);
            $write("\tAIN: %b", AIN);
            $write("\tSet N: %3d", DUT.PWM1.N);

            if((prev_AIN ^ AIN) && !AIN) begin      //output calculated N value if AIN changes from 1 to 0
                $write("\tCalc N: %3d", ((clk_count-last_clk)/2) - 1);  //here we calcuate the N value that determines output frequency
            end                                                         //this can be compared to the set value of N to verify functionality

            $write("\n");
            
            $fwrite(fid,"clk:  %d", clk_count);
            $fwrite(fid,"\tcol: %b", col_wire);
            $fwrite(fid,"\trow: %b", row_wire);
            $fwrite(fid,"\tkeys: %b", DUT.keys);
            $fwrite(fid,"\tbtn(state): %1d", DUT.PWM1.btn);
            $fwrite(fid,"\tAIN: %b", AIN);
            $fwrite(fid,"\tSet N: %3d", DUT.PWM1.N);

            if((prev_AIN ^ AIN) && !AIN) begin
                $fwrite(fid,"\tCalc N: %3d", ((clk_count-last_clk)/2) - 1);
            end

            $fwrite(fid,"\n");

        end
    end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   // we want to test all button positions, but it
   // takes a full refresh cycle for each button,
   // so we want to terminate after at least 20
   // refresh events:
    always @(posedge clk) begin
        clk_count <= clk_count + 1;
        if (refresh)
            refresh_count <= refresh_count + 1;
        
        if (refresh_count == 21) begin
            $fclose(fid);
            $finish;
        end
    end



endmodule