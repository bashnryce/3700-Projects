`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg signed [7:0] a;  // by the testbench
   reg signed [7:0] b;  // by the testbench

   reg up;
   reg dn;
   reg rst;

   wire signed [7:0] q; 

   integer clk_count = 0;   
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
    
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
      up = 1;  //start with incrementing will change after overflow occurs
      dn = 0;
      rst = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;

   up_down_counter DUT (.clk(clk), .up(up), .dn(dn), .a(a), .b(b), .q(q), .rst(rst));

   // CREATE STIMULI:
   always @(posedge clk) begin
      
      if((up && ((b+q > 127)||(q+b < -128))) || (dn && ((q-b > 127)||(q-b < -128)))) begin  //if overflow
         a <= $random(); 
         rst <= 1; //reset a
         b <= 0;
         {up, dn} <= ~{up, dn}; //swap between increment and decrement
         $write("\n");
         $write("overflow occures below");
         $write("\n");

         $fwrite(fid, "\n");
         $fwrite(fid, "overflow occures below");
         $fwrite(fid, "\n");
      end
      else begin
         rst <= 0; //turn off reset
         b <= $random(); //randomize b
         a <= $random();
      end 
   end

   

   // WRITE OUTPUT TO CONSOLE:
  
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %d", a);
      $write("\tb:  %d", b);
      $write("\tq:  %d", q);
      $write("\tup:  %b", up);
      $write("\tdn:  %b", dn);
      $write("\trst:  %b", rst);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %d", a);
      $fwrite(fid,"\tb:  %d", b);
      $fwrite(fid,"\tq:  %d", q);
      $fwrite(fid,"\tup:  %b", up);
      $fwrite(fid,"\tdn:  %b", dn);
      $fwrite(fid,"\trst:  %b", rst);
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 32) begin
         $fclose(fid);
         $finish;
      end
   end

   
endmodule // testbench
