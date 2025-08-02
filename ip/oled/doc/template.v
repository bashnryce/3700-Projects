// OLED Driver Instantiation Template
// Copy these lines into your top module

/*

 Your top module's IO ports should include
 the following signals:
  
// OLED header signals:
output      OLEDcs_n;
output      OLEDsdo;
output      OLEDsclk;
output      OLEDdc;
output      OLEDvbat;
output      OLEDvdd;
output      OLEDres;

*/

// Command signals:  
reg 	     OLEDshowchar;  // Display a character
reg 	     OLEDshowbmp;   // Display a bitmap from memory
reg 	     OLEDclear;     // Erase the display

// Select character and position:
reg [7:0] OLEDcharVal;
reg [1:0] OLEDcharRow;
reg [3:0] OLEDcharCol;

// Select bitmap (four pre-determined bitmaps available)
reg [1:0] OLEDbmp;

// Signals the OLED is ready to receive commands:
wire  OLEDready;
		   

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
