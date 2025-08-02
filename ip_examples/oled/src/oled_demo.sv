`timescale 1ns/1ps

module oled_demo 
  (
   
   input 	clk,
   input 	rst,

   input 	btnU,
   input 	btnL,
   input 	btnR,
   
   input [15:0] sw,
		   
   output reg	led, // just one led
		   
   // OLED header signals:
   output 	OLEDcs_n,
   output 	OLEDsdo,
   output 	OLEDsclk,
   output 	OLEDdc,
   output 	OLEDvbat,
   output 	OLEDvdd,
   output 	OLEDres
   );


   reg 	       rst_n;
   
   // Command signals:  
   reg 	       OLEDshowchar;  // Display a character
   reg 	       OLEDshowbmp;   // Display a bitmap from memory
   reg 	       OLEDclear;     // Erase the display
   
   // Select character and position:
   reg [7:0]   OLEDcharVal;
   reg [1:0]   OLEDcharRow;
   reg [3:0]   OLEDcharCol;

   // Select bitmap (four pre-determined bitmaps available)
   reg [1:0] OLEDbmp;

   // Signals the OLED is ready to receive commands:
   wire        OLEDready;

   always @(*) begin
      // Set char/bitmap modes using switches
      OLEDcharVal  = sw[7:0];
      OLEDcharRow  = sw[9:8];
      OLEDcharCol  = sw[13:10];
      OLEDbmp      = sw[15:14];

      // Map commands to buttons:
      OLEDshowchar = btnU;
      OLEDshowbmp = btnL;
      OLEDclear = btnR;

      // Show the ready status on the led:
      led = OLEDready;
      
      rst_n        = ~rst;      
   end

   // Driver instance:
   oledDriver OLED 
     (
      .clk(clk),
      .rst_n(rst_n),
      .showchar(OLEDshowchar),
      .showbmp(OLEDshowbmp),
      .clear(OLEDclear),
      .charval(OLEDcharVal),
      .char_row(OLEDcharRow),
      .char_col(OLEDcharCol),
      .bmp(OLEDbmp),
      .ready(OLEDready),
      .cs_n(OLEDcs_n),
      .sdo(OLEDsdo),
      .sclk(OLEDsclk),
      .dc(OLEDdc),
      .vbat(OLEDvbat),
      .vdd(OLEDvdd),
      .res(OLEDres)
      );
   

endmodule
