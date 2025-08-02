module top (

    input clk,
    input rst,
    input request_char,
    output s_out

);
    wire rst_l;
    assign rst_l = ~rst;

    reg request_buff; //adding this to add some logic between the button and fifo

    initial begin
        request_buff = 0;
    end

    wire [7:0] lfsr_to_ascii;

    lfsr RAND (
        .clk(clk),
        .rst_l(rst_l),
        .seed(8'b10101010),
        .request(1'b1),
        .num_out(lfsr_to_ascii)
    );

    wire [7:0] ascii_to_fifo;

    ascii CNVT (
        .raw_in(lfsr_to_ascii),
        .ascii_out(ascii_to_fifo)
    );

    wire rx_rdy_to_uart_start;
    wire uart_done_to_rx_done;
    wire [7:0] fifo_out_to_uart;

    

    fifo BUFFER (
        .clk(clk),
        .tx_rdy(request_buff), //on the random button bouncing pull a char into the buffer from the lfsr
        .in_data(ascii_to_fifo),
        .rx_rdy(rx_rdy_to_uart_start),
        .rx_done(uart_done_to_rx_done),
        .out_data(fifo_out_to_uart)
    );

    uart_tx UART (
        .clk(clk),
        .rst_l(rst_l),
        .start(rx_rdy_to_uart_start),
        .d_out(fifo_out_to_uart),
        .done(uart_done_to_rx_done),
        .tx(s_out)
    );


    always @(posedge clk) begin                 //this is used to change the random contineous 1's from the button to 
        if(request_char) begin                  //alternating 0 to 1 that the fifo tx needs.
            request_buff <= ~ request_buff;     //this allows it to reliable produce more than 1 character for each button press
        end
    end

endmodule