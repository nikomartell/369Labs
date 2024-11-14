`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - Mux5Bit3To1.v
// Description - Performs signal multiplexing between 3-5 Bit signals.
////////////////////////////////////////////////////////////////////////////////

module Mux5Bit3To1(
    input [4:0] inA,
    input [4:0] inB,
    input [4:0] inC,
    input [1:0] sel,
    output reg [4:0] out
 );
    
    always @(inA, inB, inC, sel) begin 
        case(sel) 
            0: begin
                out <= inB;
            end
            1: begin
                out <= inA;
            end
            2: begin
                out <= inC;
            end
        
        endcase
    end
    
endmodule
