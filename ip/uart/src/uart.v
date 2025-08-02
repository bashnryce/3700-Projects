`timescale 1ns/1ps


module  uart
   (
    input 	 clk,
    input 	 rst_n,

    // UART wires:
    input 	 rx,
    output 	 tx,

    // Data ports:
    input [7:0]  tx_data,
    output [7:0] rx_data,

    // TX handshaking
    input 	 tx_send, // Add tx_data to the TX buffer on rising edge of this signal
    output 	 tx_full, // TX buffer full

    // RX handshaking
    output reg 	 rx_ready, // RX buffer is not empty
    input 	 rx_recv   // One byte of RX data has been collected on rising edge of this signal
  );

   //-------------------------------------------
   // UART Transmitter with FIFO buffer
   //-------------------------------------------
   wire [7:0] 	     tx_d_out;
   reg 		     tx_start;
   reg 		     tx_rd_en;
   reg 		     tx_wr_en;
   reg 		     tx_send_d;
   
   wire 	     tx_done;

   initial begin
      tx_start = 0;
      tx_rd_en = 0;
      tx_wr_en = 0;
      tx_send_d = 0;      
   end
   
   always @(posedge clk) begin
      // TX buffer to UART_TX interface
      if (tx_start && tx_done) begin
	 tx_start <= 0;
      end
      else if (tx_start && !tx_done) begin
	 tx_rd_en <= 0;	 
      end
      else if (!tx_start && tx_done) begin
	 // waiting
      end
      else begin
	 if (!tx_empty) begin
	    tx_start <= 1;
	    tx_rd_en <= 1;	    
	 end
      end
      tx_send_d <= tx_send;      
   end

   always @(*) begin
      // Application to TX buffer interface
      // Add data on any rising edge of tx_send
      tx_wr_en = tx_send & ~tx_send_d;      
   end
   
   
   fifo txbuffer 
     (
      .clk(clk),
      .wr_en(tx_wr_en),
      .rd_en(tx_rd_en),
      .data_in(tx_data),
      .data_out(tx_d_out),
      .full(tx_full),
      .empty(tx_empty)
      );

   uart_tx UTX
     (
      .clk(clk),
      .rst_n(rst_n),
      .d_out(tx_d_out),
      .start(tx_start),
      .done(tx_done),
      .tx(tx)
      );

   
   //-------------------------------------------
   // UART Receiver with FIFO buffer
   //-------------------------------------------

   reg rx_wr_en;
   reg rx_rd_en;
   reg rx_ack;
   reg rx_recv_d;
   
   wire [7:0] rx_d_in;
   wire       rx_d_ready;

   initial begin
      rx_wr_en = 0;
      rx_rd_en = 0;
      rx_ack   = 0;
      rx_recv_d = 0;      
   end

   
   always @(posedge clk) begin
      rx_recv_d <= rx_recv;
      if (rx_d_ready && rx_ack) begin
	 rx_wr_en <= 0;	 	 
      end
      else if (!rx_d_ready && rx_ack) begin
	 rx_wr_en <= 0;
	 rx_ack   <= 0;	 
      end
      else if (rx_d_ready && !rx_ack) begin
	 rx_wr_en <= 1;
	 rx_ack   <= 1;	 
      end
      else begin
	 rx_wr_en <= 0;	 
      end
   end

   always @(*) begin
      rx_rd_en = rx_recv & ~rx_recv_d;
      rx_ready = ~rx_empty;
      
   end

   
   fifo rxbuffer 
     (
      .clk(clk),
      .wr_en(rx_wr_en),
      .rd_en(rx_rd_en),
      .data_in(rx_d_in),
      .data_out(rx_data),
      .full(rx_full),
      .empty(rx_empty)
      );

   
   uart_rx URX
     (
      .clk(clk),
      .rst_n(rst_n),
      .rx(rx),
      .ack(rx_ack),
      .d_ready(rx_d_ready),
      .d_in(rx_d_in)
  );
endmodule
