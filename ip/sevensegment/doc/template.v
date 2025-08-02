// Instantiation template for Seven-Segment Decoder

/* SevenSegmentDriver module should be placed 
   in your top module. The top-level I/O ports 
   should include these:
 
      output [3:0] an, 
      output [6:0] seg,
      output       dp,

 */

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
