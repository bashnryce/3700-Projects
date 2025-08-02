`timescale 1ns/1ps


module sevensegment_demo 
  (
   input	 clk,
   input	 rst,

   // Inputs
   input [15:0]	 sw,
   input	 btnU,
   input	 btnL,
   input	 btnR,

   output reg [15:0] led,
   
   // 7-seg outputs (from template)
   output [3:0]	 an, 
   output [6:0]	 seg,
   output	 dp
   
   );


   // Button debouncers:
   wire		 btnU_db;
   wire		 btnR_db;
   wire		 btnL_db;
   
   debouncer DBU 
     (
      .clk(clk),
      .btn(btnU),
      .btn_db(btnU_db)
      );   
   debouncer DBR 
     (
      .clk(clk),
      .btn(btnR),
      .btn_db(btnR_db)
      );   
   debouncer DBL
     (
      .clk(clk),
      .btn(btnL),
      .btn_db(btnL_db)
      );   

   // Instantiation template for Seven-Segment Decoder
   
   /* SevenSegmentDriver module should be placed 
    in your top module. The top-level I/O ports 
    should include these:
    
    output [3:0] an, 
    output [6:0] seg,
    output       dp,
    
    */
   // When in bcd mode, these outputs provide access to the 
   // decimal digits of the displayed number, so you can use
   // the SevenSegmentDriver as a binary-to-BCD converter.
   wire [3:0]	ones;
   wire [3:0]	tens;
   wire [3:0]	hundreds;
   wire [3:0]	thousands;

   // These are the inputs to the SevenSegmentDriver:
   reg [15:0]	 din;  // Number to display
   reg		 bcd;  // 1: Decimal format 0: Hex format
   reg [1:0]	 dec;  // Decimal point position 0,1,2, or 3
   reg		 enable; // Turn display on(1) or off(0)

   // NOTE you will need to assign these signal values in an
   // always block somewhere in your top module.
   initial begin
      bcd = 1;
      din = 0;
      dec = 0;
      enable = 0;
   end
   
   always @(posedge clk) begin
      din <= sw;
      // Should probably debounce these...
      if (btnU_db)
	enable <= ~enable;
      if (btnL_db)
	bcd <= ~bcd;
      if (btnR_db)
	dec <= dec + 1;

      led[15:12] <= thousands;
      led[11:8]  <= hundreds;
      led[7:4]   <= tens;
      led[3:0]   <= ones;      
      
   end


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
