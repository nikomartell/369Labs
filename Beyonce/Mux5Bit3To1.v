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
    input sel,
    output reg [4:0] out
 );
 
    always @(inA, inB, sel) begin 
        if (sel) begin
            out <= inA;
        end
        else begin 
            out <= inB;
        end
    end
    
endmodule
