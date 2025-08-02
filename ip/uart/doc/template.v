// Instantiation template for UART

/* 
 Top-level I/O ports:
 
  input	  rx,
  output  tx,

 */

// To transmit data, assign the data to `tx_data` then
// assert `tx_send` for just one clock cycle. This should 
// load the data into an internal FIFO and it is automatically
// transmitted. The FIFO depth is 256.
//
// When data is received by the UART, it is saved in an internal
// FIFO buffer. When the FIFO has data, the signal `rx_ready` is
// raised. To collect the data, assign it from `rx_data` to your
// 8-bit register, then assert `rx_recv` for one clock cycle to
// notify the UART that you collected the data.

// TX Signals:
reg [7:0]  tx_data;  // Your data to transmit
reg 	   tx_send;  // Tell the UART to send your data
wire       tx_full;  // UART tells you it's TX buffer is full



// Output Signals from UART:
wire       rx_ready; // UART tells you that it has data
wire [7:0] rx_data;  // UART's data for you
reg 	   rx_recv;  // Tell the UART it can move on to the next data


// Instantiation:

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

