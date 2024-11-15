module Mux32Bit3To1(out, inA, inB, inC, sel);

    output reg [31:0] out;
    
    input [31:0] inA;
    input [31:0] inB;
    input [31:0] inC; 
    input [1:0] sel;

   always @(*) begin
    case (sel)
        2'b00: out = inB;  // Select inA
        2'b01: out = inA;  // Select inB
        2'b10: out = inC;  // Select inC
        2'b11: out = 32'b0; // Default case
    endcase
    end

endmodule
