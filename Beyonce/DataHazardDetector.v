`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 01:57:59 PM
// Design Name: 
// Module Name: DataHazardDetector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: combinational so non blocking so no clock 
// 
//////////////////////////////////////////////////////////////////////////////////
module DataHazardDetector(
    input [4:0] IF_IDRs,
    input [4:0] IF_IDRt,
    input [4:0] ID_EXRt,
    input [4:0] EX_MemRegdst,
    input ID_EXMemRead,
    input IF_IDBranchSignal,
    
    output reg PCWrite,
    output reg IF_IDWrite,
    output reg HazardDetect_Mux
    );
 
    always @(*) begin 
    PCWrite = 0;
    IF_IDWrite = 0;
    HazardDetect_Mux = 0;
    
    //load cases - stalls
    if (ID_EXMemRead & ((ID_EXRt == IF_IDRs) | (ID_EXRt == IF_IDRt) |  (IF_IDRt == EX_MemRegdst) | (IF_IDRs == EX_MemRegdst)))begin
    PCWrite = 1;
    IF_IDWrite = 1;
    HazardDetect_Mux = 1;
    end 
    
    //branches - flushes and stalls
    if (IF_IDBranchSignal & ((ID_EXRt == IF_IDRs) | (ID_EXRt == IF_IDRt) |  (IF_IDRt == EX_MemRegdst) | (IF_IDRs == EX_MemRegdst)))begin
    PCWrite = 1;
    IF_IDWrite = 1;
    HazardDetect_Mux = 1;
    end 
    
  end 
    
endmodule
