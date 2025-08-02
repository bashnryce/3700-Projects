`timescale 1ns/1ps

module  test_fifo (

	 );

   parameter WIDTH=8;
   parameter ADR_WIDTH=3;
   parameter DEPTH=2**ADR_WIDTH;
   
   reg clk;

   initial begin
      clk = 0;
      forever #10 clk = ~clk;
   end

   reg wr_en;
   reg rd_en;
   reg [7:0] data_in;
   wire	     empty;
   wire	     full;
   wire [7:0] data_out;
   
   fifo #(.WIDTH(WIDTH),.DEPTH(DEPTH),.ADR_WIDTH(ADR_WIDTH)) 
   DUT
     (
    .clk(clk),    
    .wr_en(wr_en),
    .data_in(data_in),
    .rd_en(rd_en),
    .data_out(data_out),
    .empty(empty),
    .full(full)
    );

   integer clk_count;
   
   initial begin
      data_in = $random();
      wr_en = 0;
      rd_en = 0;
      clk_count = 0;
      
   end

   
   
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      
      if (clk_count < 20) begin
	 if (wr_en) begin
	    data_in <= $random();
	    wr_en <= 0;
	    $display("Writing %2h  empty: %b full: %b count: %d",data_in,empty,full,DUT.count);	    
	 end
	 else begin
	    wr_en <= 1;	    
	 end
      end
      else if (clk_count < 40) begin
	 if (rd_en) begin
	    rd_en <= 0;	   
	 end
	 else begin
	    $display("Reading %2h  empty: %b full: %b  count: %d",data_out,empty,full,DUT.count);
	    rd_en <= 1;	    
	 end
	 
      end
      else
	$finish;
      
	
   end
   
endmodule
