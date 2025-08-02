`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg [7:0] a;  // by the testbench
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      a <= $random();
   end

   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
    integer clk_count = 0;    
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b", a);
      $write("\t~a: %b", ~a);
      $write("\t~&a: %b", ~&a);  //NAND
      $write("\t~|a: %b", ~|a);  //NOR
      $write("\t&(~a): %b", &(~a));  //should = ~|a
      $write("\t|(~a): %b", |(~a));  //should = ~&a
      $write("\t^a: %b", ^a);     
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\t~a:  %b", ~a);
      $fwrite(fid,"\t~&a: %b", ~&a);  //NAND
      $fwrite(fid,"\t~|a: %b", ~|a);  //NOR
      $fwrite(fid,"\t&(~a): %b", &(~a));  //should = ~|a
      $fwrite(fid,"\t|(~a): %b", |(~a));  //should = ~&a     
      $fwrite(fid,"\t^a: %b", ^a);     
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
 
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 8) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench
