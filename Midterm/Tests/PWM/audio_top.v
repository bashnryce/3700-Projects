`timescale 1ns/1ps

module audio_top (
	    input 	clk,
	    input 	rst_l,
	    input [15:0] keys,
	    input [7:0] volume,
	    output reg 	AIN,
	    output reg 	GAIN,
	    output reg 	SHUTDOWN_L
	 );

   //wire 		rst_n;
   //assign rst_n = ~rst;

   localparam no_btn = 0;
   localparam Mc_btn = 1;
   localparam D_btn = 2;
   localparam E_btn = 3;
   localparam F_btn = 4;
   localparam G_btn = 5;
   localparam A_btn = 6;
   localparam B_btn = 7;
   localparam C_btn = 8;


   reg [3:0] 		btn;
   reg [9:0] 		N;

   wire 		sout;
   
   pwm_audio PWM1 (
			.clk(clk),
			.rst_n(rst_l),
			.volume(volume),
			.N(N),
			.sout(sout)
			);

   initial begin
		btn        <= no_btn;
		GAIN       <= 1;
		SHUTDOWN_L <= 1;
		AIN        <= 0;	 
   end

   
   always @(posedge clk, negedge rst_l) begin

		if (!rst_l) begin
			btn        <= no_btn;
			GAIN       <= 1;
			SHUTDOWN_L <= 1;
			AIN        <= 0;	 
		end
		
		else begin

			if (btn == no_btn)
				AIN <= 0;
			else
				AIN <= sout;
		
			case (btn)
				no_btn: begin
					case(keys)
						1: begin
							btn <= Mc_btn;
							N   <= 747;
						end
						2: begin
							btn <= D_btn;
							N   <= 665;
						end
						4: begin
							btn <= E_btn;
							N   <= 593;
						end
						8: begin
							btn <= F_btn;
							N   <= 559;
						end
						16: begin
							btn <= G_btn;
							N   <= 498;
						end
						32: begin
							btn <= A_btn;
							N   <= 444;
						end
						64: begin
							btn <= B_btn;
							N   <= 395;
						end
						128: begin
							btn <= C_btn;
							N   <= 373;
						end
						default: begin
							btn        <= no_btn;
							GAIN       <= 1;
							SHUTDOWN_L <= 1;
							AIN        <= 0;
						end

					endcase	
				end
				Mc_btn: begin
					if (keys != 1)
						btn <= no_btn;	      
				end
				D_btn: begin
					if (keys != 2)
						btn <= no_btn;	      
				end
				E_btn: begin
					if (keys != 4)
						btn <= no_btn;	      
				end
				F_btn: begin
					if (keys != 8)
						btn <= no_btn;	      
				end
				G_btn: begin
					if (keys != 16)
						btn <= no_btn;	      
				end
				A_btn: begin
					if (keys != 32)
						btn <= no_btn;	      
				end
				B_btn: begin
					if (keys != 64)
						btn <= no_btn;	      
				end
				C_btn: begin
					if (keys != 128)
						btn <= no_btn;	      
				end
				default: begin
					btn        <= no_btn;
					GAIN       <= 1;
					SHUTDOWN_L <= 1;
					AIN        <= 0;
				end
			endcase 

		end
   end
   
   
endmodule
