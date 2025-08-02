`timescale 1ns/1ps


module test_uart_demo (

	 );


   wire rx;
   wire tx;
   reg 	clk;
   reg 	rst;
   reg	dump;
   
   reg 	tx_start;
   reg [7:0] tx_d_out;
   wire      tx_done;
   
   integer clk_count = 0;
   integer msg_idx   = 0;
   integer msg_state = 0;

   reg [7:0] msg[4:0];
   
   integer   tcount;
   reg[14:0]   rval;
   
   initial begin
      clk = 0;
      rst = 1;
      tx_start = 0;
      dump = 0;
      rval = $random();
      tcount = 0;
      
      msg[0] = "h";
      msg[1] = "e";
      msg[2] = "l";
      msg[3] = "l";
      msg[4] = "o";
      
      forever #5 clk = ~clk;      
   end
   
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      rst <= 0;
      $monitor("UART RX: %h UART TX: %h", DUT.tx_data, DUT.rx_data);

      if (msg_idx < 5)
	tx_d_out <= msg[msg_idx];
      
      case (msg_state)
	0: begin
	   if (!rst) begin
	      dump <= 0;
	      msg_state <= 1;
	      msg_idx <= 0;
	      tx_start <= 0;
	      tcount <= 0;
	      rval <= $random();	      
	   end
	end	
	1: begin
	   if (!tx_done && !tx_start) begin
	      if (tcount>rval) begin
		 tx_start <= 1;
		 tcount   <= 0;
		 rval     <= $random();
	      end
	      else begin
		 tcount <= tcount + 1;	      
	      end	   
	   end
	   else if (tx_done && tx_start) begin
	      tx_start <= 0;
	      msg_idx <= msg_idx + 1;
	      if (msg_idx == 4) begin
		 msg_state <= 2;		 
	      end		
	   end
	end // case: 1
	2: begin
	   dump <= 1;
	   
	   if (DUT.UART0.rx_wr_en) begin	      
	      $display("RX data: %h",DUT.UART0.rx_d_in);	      	
	   end
	   if (!DUT.rx_ready) begin
	      dump <= 0;
	      msg_state <= 0;
	      msg_idx <= 0;
	      tx_start <= 0;	      
	   end

	   
	end	
      endcase

   end

   wire [3:0] an;
   wire [6:0] seg;
   wire	      dp;   
   wire [1:0] JA;
   

   uart_demo DUT
     (
      .clk(clk),
      .rst(rst),
      .rx(rx),
      .tx(tx),
      .dump(dump),
      .an(an),
      .seg(seg),
      .dp(dp),
      .JA(JA)
      );

   uart_tx UTX
     (
      .clk(clk),
      .rst_n(~rst),
      .d_out(tx_d_out),
      .start(tx_start),
      .done(tx_done),
      .tx(rx)
      );
   
endmodule
