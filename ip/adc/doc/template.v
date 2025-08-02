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
   
