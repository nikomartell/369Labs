`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - Mux5Bit3To1.v
// Description - Performs signal multiplexing between 3 32-Bit words.
////////////////////////////////////////////////////////////////////////////////

module Mux5Bit3To1(
    input [4:0] inA,
    input [4:0] inB,
    input [2:0] sel,
    output [4:0] out
 );
 
    assign out = (sel == 1) ? inB : ((sel == 0) ? inA : 5'd31);
    
endmodule
