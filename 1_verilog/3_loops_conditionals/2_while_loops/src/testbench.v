`timescale 1ns/1ps

// `define K 3
// `define W 2**`K-1

module testbench ();
   
   // DECLARE SIGNALS
   reg  clk;     
   reg [6:0] sw;
   reg sel;
   wire [6:0] led;
 
   integer clk_count = 0;   

   top DUT (.sw(sw), .sel(sel), .led(led));
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      sw  = 0;
      sel = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      //{sel, sw} <= {sel, sw} + 1;
      sw <= sw + 1;
      if(clk_count == 8)begin
         sel <= 1;
         sw <= 0;
      end

      else if(clk_count > 8) begin
         sw[6:0] <= {sw[5:0],  1'b1};
      end

   end


   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\tsw:  %b", sw);
      $write("\tsel:  %b", sel);
      $write("\tled:  %b", led);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\tsw:  %b", sw);
      $fwrite(fid,"\tsel:  %b", sel);
      $fwrite(fid,"\tled:  %b", led);
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 17) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench
