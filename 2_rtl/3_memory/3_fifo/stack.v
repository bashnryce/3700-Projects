`timescale 1ns/1ps

module stack #(
	      parameter WIDTH     = 8,
	      parameter DEPTH     = 5,
	      parameter ADR_WIDTH = 3
	      )
   (
    input 		   clk,
    
    // Transmit Interface
    input 		   tx_rdy,
    output reg 		   tx_done,
    input [WIDTH-1:0] 	   in_data,
    
    // Receive Interface
    output reg 		   rx_rdy,
    input 		   rx_done,
    output reg [WIDTH-1:0] out_data,
    
    // Indicators
    output reg 		   empty,
    output reg 		   full
    );
   
   reg 			   tx_state;
   reg [1:0] 		   rx_state;
   reg [ADR_WIDTH-1:0] 	   count;
   reg [ADR_WIDTH-1:0] 	   front;
   reg [ADR_WIDTH-1:0] 	   back;

   reg [WIDTH-1:0] 	   buffer [DEPTH-1:0];

   reg 			   decr;
   reg 			   incr;
   
   initial begin
      // TX initialization
      tx_done = 0;
      tx_state = 0;
      // RX initialization
      rx_rdy = 0;
      out_data = 0;
      rx_state = 0;
      // Buffer initialization
      empty = 1;
      full = 0;
      count = 0;
      front = 0;
      back = 0;
      decr = 0;
      incr = 0;
   end


   always @(posedge clk) begin

      out_data <= buffer[front];
       // $display("rx_rdy: %b, rx_done: %b", rx_rdy, rx_done);
      //-----------------
      // TX handshaking
      //-----------------
      case (tx_state)
         0: begin
            if(full || !tx_rdy) begin
               incr <= 0;
               tx_done <= 0;
               tx_state <= 0;
            end
            else if(tx_rdy && !full) begin
               incr <= 1;
               tx_done <= 1;
               tx_state <= 1;
            end
         end
         
         1: begin
            if(tx_rdy) begin
               incr <= 0;
               tx_state <= 1;
            end
            else begin
               tx_done <= 0;
               incr <= 0;
               tx_state <= 0;
            end
         end
      endcase // case (tx_state)
      
      //-----------------
      // RX handshaking
      //-----------------
      case (rx_state)
         0: begin
            if(empty) begin
               rx_rdy <= 0;
               decr <= 0;
               rx_state <= 0;
            end
            else begin
               rx_rdy <= 1;
               //out_data <= buffer[front];
               rx_state <= 1;
            end
         end
         
         1: begin
            if(rx_done) begin
               decr <= 1;
               rx_state <= 2;
            end
            else begin
               rx_rdy <= 1;
               rx_state <= 1;
            end

         end
         
         2: begin
            if(rx_done) begin
               decr <= 0;
               rx_state <= 2;
            end
            else begin
               decr <= 0;
               rx_rdy <= 0;
               rx_state <= 0;
            end
         end
         default: rx_state <= 0;
      endcase // case (rx_state)

      //-----------------
      // Buffer manager
      //-----------------
      // Add data
      if (incr && !decr && !full) begin
         buffer[front] <= in_data;

         count <= count + 1;
         empty <= 0;

         if(count == DEPTH-1)
            full <= 1;
         if(front < DEPTH-1)
            front <= front + 1;
         //else
         //   front <= 0;
      end 
      
      // Remove data
      else if (!incr && decr && !empty) begin
         //out_data <= buffer[front];

         count <= count - 1;
         full <= 0;
         
         if(count == 1)
            empty <= 1;

        if(!empty) //I ADDED THIS SO THAT THE FRONT IS THE ONLY TRACKER AND IT DECREMENTED PROPERLY
           front <= front - 1;
         else  
           front <= 0;
         //if(back < DEPTH-1)
         //   back <= back + 1;
         //else  
         //   back <= 0;
      end
      
      // Add and Remove data
      else if (incr && decr) begin
         //out_data <= buffer[front];
         buffer[front] <= in_data;

        // if(front < DEPTH-1)
        //    front <= front + 1;
        // else 
        //    front <= 0;

         //if(back < DEPTH-1)
         //   back <= back + 1;
         //else 
         //   back <= 0;
      end	
   end
endmodule // fifo
