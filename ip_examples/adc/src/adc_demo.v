`timescale 1ns/1ps

module adc_demo (
	 input 		   clk,
	 input 		   rst,

	 input 		   vp, // ADC inputs
	 input 		   vn,
	 
	 input [15:0] 	   sw, 

	 output reg [7:0]  JC, // DAC output
	 output reg [15:0] led,
	 output [3:0] 	   an, // 7-segment
	 output [6:0] 	   seg,
	 output 	   dp
	 );

   reg 			  rst_n;
   always @* rst_n = ~rst;
   

  // Instantiation template for adc module
  // Top module should have:
  //    input vp,
  //    input vn,
  // And these correspond to header JXADC pins XA1P (pin 1) and XA1N.
  // On the Basys3 header they are at these locations:
  //
  //   3V,GND          v
  //    *  *  *  *  *  * <-- labeled pin 1
  //    *  *  *  *  *  * 
  //                   ^

   wire [15:0] 	      s_out;
   reg [1:0] 	      avg;
   

   reg adc_rst_n;
   initial adc_rst_n = 0;
   
   adc ADC_inst (
                 .clk(clk),
                 .rst_n(adc_rst_n),
                 .vp(vp),
                 .vn(vn),
                 .s_out(s_out),
                 .avg(avg)
                 );

   always @(posedge clk) begin
            if (!rst_n) begin
	       adc_rst_n <= 0;

	    end
            else begin
	       adc_rst_n <= 1;

	    end
   end


   // These are the inputs to the SevenSegmentDriver:
   reg [15:0] din;  // Number to display
   reg        bcd;  // 1: Decimal format 0: Hex format
   reg [1:0]  dec;  // Decimal point position 0,1,2, or 3
   reg        enable; // Turn display on(1) or off(0)

   // NOTE you will need to assign these signal values in an
   // always block somewhere in your top module.
   
   // When in bcd mode, these outputs provide access to the 
   // decimal digits of the displayed number, so you can use
   // the SevenSegmentDriver as a binary-to-BCD converter.
   wire [3:0] ones;
   wire [3:0] tens;
   wire [3:0] hundreds;
   wire [3:0] thousands;



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

   reg [31:0] temp;
   

   always @* begin
      avg = sw[15:14];

      // Display ADC binary output on leds:
      led = s_out;

      // ADC full-scale output is 4096 at 1V
      // This will scale it to "1000" = "1V"
      temp = s_out * 278;
      din = temp >> 10;
      
      dec = 0;
      enable = 1;
      bcd = 1;
      JC = sw[7:0];      
   end

   
endmodule //
