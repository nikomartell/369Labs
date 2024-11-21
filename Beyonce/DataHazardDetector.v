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
// Additional Comments: combinational so no clock
//////////////////////////////////////////////////////////////////////////////////

module DataHazardDetector(
    input [4:0] IF_IDRs,
    input [4:0] IF_IDRt,
    input [4:0] ID_EXRt,
    input [4:0] EX_MemRegdst,
    input [5:0] OPCode,
    input ID_EXMemRead,
    input IF_IDBranchSignal,
    input ID_EXRegWrite,
    input EX_MEMRegWrite,
    input JR_Signal, // added for jr hazard
    output reg PCWrite,    //Controls PC
    output reg IF_IDWrite, //Controls IF_ID Register 
    output reg Stall       //ID_EX Reguster to reset
    
);

//if write && Branch -> Branch
//if rt is 0 and bad branch the must take the regwrite wire to ensure that the it isnt stupid 

        parameter LW = 6'b100011;
        parameter LH = 6'b100001;
        parameter LB = 6'b100000;
        parameter BNE = 6'b000101;
        parameter BEQ =  6'b000100; 
        parameter BGEZ = 6'b000001;
        parameter BLTZ = 6'b000001;
        parameter BGTZ = 6'b000111;
        parameter BLEZ = 6'b000110;
        
       
always @(*) begin 
    // Reset the control signals to 0 (output registers) 
    PCWrite = 1;
    IF_IDWrite = 1;
    Stall = 0;

    // Load-use hazard: stall conditions
    //(OPCode != LW) & (OPCode != LH) & (OPCode != LB)
    if (ID_EXMemRead &
       (
       (ID_EXRt == IF_IDRs) | (ID_EXRt == IF_IDRt) 
       )
       ) begin
        PCWrite = 0;
        IF_IDWrite = 0;
        Stall = 1;         
    end 
    
    // Branch hazard: stall/flush conditions
    
    if ((IF_IDBranchSignal | JR_Signal | (OPCode == BNE) |(OPCode == BEQ) | (OPCode == BGEZ) | (OPCode == BLTZ) | (OPCode == BGTZ) | (OPCode == BLEZ)) 
    & (ID_EXRegWrite | EX_MEMRegWrite) & 
    ((EX_MemRegdst == IF_IDRs) & (IF_IDRs != 0)) | 
    ((EX_MemRegdst == IF_IDRt) & (IF_IDRt != 0)) | 
        ((ID_EXRt == IF_IDRs) & (IF_IDRs != 0)) | 
        ((ID_EXRt == IF_IDRt) & (IF_IDRt != 0))) begin
        PCWrite = 0;
        IF_IDWrite = 0;
        Stall = 1;
        
    end 
end 

endmodule
