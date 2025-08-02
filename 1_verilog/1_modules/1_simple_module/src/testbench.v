`timescale 1ns/1ps


module testbench ();

   // DECLARE SIGNALS
   reg clk; // "reg" type signals are  controlled
   reg en;  // by the testbench
   reg d;

   wire q;  // "wire" type signals are controlled
            // by the module being tested
   
       
   // INSTANTIATE the DEVICE UNDER TEST (DUT)
   simple_module DUT(
		      .clk(clk),
		      .en(en),
		      .d(d),
		     .q(q)
		     );

   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      en  = 0;
      d   = 0;      
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      
      // A simple state machine that cycles through
      // all input values:

//      if ({en,d} == 2'b00)  // {en,d} CONCATENATES en,d into
//	{en,d} <= 2'b01;    // a 2-bit vector
//      else if ({en,d} == 2'b01)
//	{en,d} <= 2'b10;
//      else if ({en,d} == 2'b10)
//	{en,d} <= 2'b11;
//      else if ({en,d} == 2'b11)
//	{en,d} <= 2'b00;
  
        en <= d;
	d <= ~en;


   end

   integer clk_count = 0;   
   integer fid;
   initial fid = $fopen("test_result.txt","w");

   // WRITE OUTPUT TO CONSOLE:
   always @(posedge clk) begin
      $fwrite(fid, "clk: %d",clk_count);      
      $fwrite(fid, "\ten: %b", en);
      $fwrite(fid, "\td: %b", d);
      $fwrite(fid, "\tq: %b", q);
      $fwrite(fid, "\n");      
      
      $write("clk: %d",clk_count);      
      $write("\ten: %b", en);
      $write("\td: %b", d);
      $write("\tq: %b", q);
      $write("\n");      
   end


   // DEFINE WHEN TO TERMINATE SIMULATION:
   
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 10) begin
	$fclose(fid);
	$finish;
      end
      
   end

   
endmodule // testbench
