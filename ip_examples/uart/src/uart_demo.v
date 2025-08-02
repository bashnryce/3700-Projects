`timescale 1ns/1ps

// This design echos back any data received on the UART //


module uart_demo 
(
 input	      clk,
 input	      rst,
 input	      dump, // transmit everything in the buffer
 input	      rx,
 output	      tx,

 // Seven-Segment Display
 output [3:0] an, 
 output [6:0] seg,
 output	      dp,

 // Shadow the UART signals on the JA header:
 output [1:0] JA
 );

   wire rst_n;
   assign rst_n = ~rst;

   wire [7:0] rx_data;
   reg [7:0]  tx_data;

   reg 	      tx_send;
   reg 	      rx_recv;

   reg dump_state;

   // Hardware shadow UART signals so they can be
   // viewed with a logic analyzer:
   assign JA[0] = rx;
   assign JA[1] = tx;

   // These are the inputs to the SevenSegmentDriver:
   reg [15:0] din;  // Number to display
   reg	      bcd;  // 1: Decimal format 0: Hex format
   reg [1:0]  dec;  // Decimal point position 0,1,2, or 3
   reg	      enable; // Turn display on(1) or off(0)

   
   initial begin
      dump_state = 0;
      bcd = 0;
      dec = 0;
      enable = 1;
      rx_recv = 0;
      
   end

   
   always @(posedge clk) begin
      din <= rx_data;
      
      if (!dump_state) begin
	 if (dump)
	   dump_state <= 1;	
      end
      else begin
	 // Empty the rx buffer and echo everything into the tx buffer
	 if (rx_ready && rx_recv) begin
	    rx_recv <= 0;	 
	    tx_send <= 0;	
	 end
	 else if (rx_ready && !rx_recv) begin
	    rx_recv <= 1;	
	    tx_send <= 1;	
	 end
	 else begin
	    rx_recv <= 0;	 
	    tx_send <= 0;
	    dump_state <= 0;	    
	 end

      end
   end

   always @(*) begin
      tx_data = rx_data;      
   end

   
   
   
   uart UART0
   (
    .clk(clk),
    .rst_n(rst_n),
    .rx(rx),
    .tx(tx),
    .tx_data(tx_data),
    .rx_data(rx_data),
    .tx_send(tx_send), 
    .tx_full(tx_full), 
    .rx_ready(rx_ready),
    .rx_recv(rx_recv)  
    );

wire [3:0] 				ones;
wire [3:0] 				tens;
wire [3:0] 				hundreds;
wire [3:0] 				thousands;



SevenSegmentDriver SevSeg 
  (
   .clk(clk),
   .din(din),
   .bcd(bcd),
   .dec(dec),
   .enable(enable),
   .an(an), 
   .seg(seg),
   .dp(dp),
   .ones(ones),
   .tens(tens),
   .hundreds(hundreds),
   .thousands(thousands)
   );
   
endmodule
