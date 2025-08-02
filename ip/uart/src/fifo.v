module fifo #(
	      parameter WIDTH     = 8,
	      parameter ADR_WIDTH = 8,
	      parameter DEPTH     = 2**ADR_WIDTH
	      )
   (
    input 		   clk,
    
    // Transmit Interface
    input 		   wr_en,
    input [WIDTH-1:0] 	   data_in,
    
    // Receive Interface
    input 		   rd_en,
    output reg [WIDTH-1:0] data_out,
    
    // Indicators
    output reg 		   empty,
    output reg 		   full
    );
   
   reg [ADR_WIDTH:0] 	   count;
   reg [ADR_WIDTH-1:0] 	   front;
   reg [ADR_WIDTH-1:0] 	   back;

   reg [WIDTH-1:0] 	   buffer [DEPTH-1:0];

   reg 			   decr;
   reg 			   incr;

   reg 			   wr_en_d;
   reg 			   rd_en_d;
   
   integer 		   idx;
   
   initial begin
      // TX initialization
      full     = 0;      
      incr     = 0;
      wr_en_d = 0;
      
      // RX initialization
      empty    = 1;      
      decr     = 0;
      data_out = 0;
      rd_en_d = 0;
      
      // Buffer initialization
      count = 0;
      front = 0;
      back  = 0;      
      for (idx=0; idx<DEPTH; idx=idx+1) begin
	 buffer[idx] = 0;	 
      end
   end


/*   
   always @(*) begin
      if (count == 0)
	empty = 1;
      else
	empty = 0;
      if (count == DEPTH)
	full = 1;
      else
	full = 0;      
   end
*/
   reg wr;
   reg rd;
   
   always @(*) begin
      wr = !wr_en_d & wr_en;
      rd = !rd_en_d & rd_en;

      data_out = buffer[front];
      
      //------------------------------------------
      // TX handshaking
      //------------------------------------------
      // Handshake is just rising edge on wr_en
      // then return to zero
      if (!full && wr) begin
	 incr = 1;	      
      end
      else
	incr = 0;	   
      
      //---------------------------------------
      // RX handshaking
      //---------------------------------------
      // Handshake is just rising edge rd_en
      // then return to zero
      if (!empty && rd) begin	 
	 decr     = 1;	      
      end
      else
	decr = 0;	   
   end
   
   always @(posedge clk) begin
      rd_en_d <= rd_en;
      wr_en_d  <= rd_en;
   
      if (!full)
	buffer[back] <= data_in;

      
      //-----------------
      // Buffer manager
      //-----------------
      // Add data
      if (incr && !decr && !full) begin
	 if (back < (DEPTH-1))
	   back <= back + 1;
	 else
	   back <= 0;
	 count <= count + 1;
	 if (count == (DEPTH-1))
	   full <= 1;
	 empty <= 0;
	 
      end 
      
      // Remove data
      else if (!incr && decr && !empty) begin
	 if (front < (DEPTH-1))
	   front <= front + 1;
	 else
	   front <= 0;
	 count <= count - 1;
	 if (count == 1)
	   empty <= 1;
	 full <= 0;	 
      end
      
      // Add and Remove data
      else if (incr && decr) begin
	 if (front < (DEPTH-1))
	   front <= front + 1;
	 else
	   front <= 0;
	 if (back < (DEPTH-1))
	   back <= back + 1;
	 else
	   back <= 0;
      end	
   end
endmodule // fifo
