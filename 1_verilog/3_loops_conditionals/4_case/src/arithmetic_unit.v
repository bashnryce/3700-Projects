`timescale 1ns/1ps

module arithmetic_unit 
(
    input signed  [3:0] A,
    input signed  [3:0] B,
    input      [1:0] sel, 
    output reg signed [3:0] Q,  
    output reg       overflow
);

    always @(*) begin
        case (sel)
            2'b00: //adding a + b
            begin
                Q = A + B;
                if ((A>0 && B>0 && Q<0) || (A<0 && B<0 && Q>0))
                    overflow = 1;
                else
                    overflow = 0;
            end
            2'b01: //subtracting a - b
            begin
                Q = A - B;
                if ((A>0 && B<0 && Q<0) || (A<0 && B>0 && Q>0))
                    overflow = 1;
                else
                    overflow = 0;
            end
            2'b10: //bitwise OR A|B
            begin
                Q = A|B;
                overflow = 0;
            end
            2'b11: //bitwise AND A&B
            begin
                Q = A&B;
                overflow = 0;
            end
        endcase
    end

endmodule