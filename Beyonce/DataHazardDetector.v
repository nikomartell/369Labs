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
    input ID_EXMemRead,
    input IF_IDBranchSignal,
    
    output reg PCWrite,
    output reg IF_IDWrite,
    output reg HazardDetect_Mux,
    
    // Control signals into data hazard 
    input regwrite_in,
    input [3:0] aluop_in,
    input alusrc_in,
    input [1:0] regdst_in,
    input memwrite_in, 
    input memread_in,
    input branch,
    input [1:0] memtoreg_in, 
    input jump, 
    input jumpreg,

    // Control signals pass so they can be reset to 0 which is a stall
        output reg regwrite_out,
        output reg [3:0] aluop_out,
        output reg alusrc_out,
        output reg [1:0] regdst_out,
        output reg memwrite_out, 
        output reg memread_out,
        output reg branch_out,
        output reg [1:0] memtoreg_out, 
        output reg jump_out, 
        output reg jumpreg_out
);
 
always @(*) begin 
    // Reset the control signals to 0 (output registers) 
    PCWrite = 0;
    IF_IDWrite = 0;
    HazardDetect_Mux = 0;
    regwrite_out = 0;
    aluop_out = 0;
    alusrc_out = 0;
    regdst_out = 0;
    memwrite_out = 0;
    memread_out = 0;
    branch_out = 0;
    memtoreg_out = 0;
    jump_out = 0;
    jumpreg_out = 0;

    // Load-use hazard: stall conditions
    if (ID_EXMemRead & ((ID_EXRt == IF_IDRs) | (ID_EXRt == IF_IDRt) |  
                         (IF_IDRt == EX_MemRegdst) | (IF_IDRs == EX_MemRegdst))) begin
        PCWrite = 1;
        IF_IDWrite = 1;
        HazardDetect_Mux = 1;
        regwrite_out = 0;
        aluop_out = 0;
        alusrc_out = 0;
        regdst_out = 0;
        memwrite_out = 0;
        memread_out = 0;
        branch_out = 0;
        memtoreg_out = 0;
        jump_out = 0;
        jumpreg_out = 0;
        
    end 

    // Branch hazard: stall/flush conditions
    if (IF_IDBranchSignal & ((ID_EXRt == IF_IDRs) | (ID_EXRt == IF_IDRt) |  
                              (IF_IDRt == EX_MemRegdst) | (IF_IDRs == EX_MemRegdst))) begin
        PCWrite = 1;
        IF_IDWrite = 1;
        HazardDetect_Mux = 1;
        regwrite_out = 0;
        aluop_out = 0;
        alusrc_out = 0;
        regdst_out = 0;
        memwrite_out = 0;
        memread_out = 0;
        branch_out = 0;
        memtoreg_out = 0;
        jump_out = 0;
        jumpreg_out = 0;
    end 
end 

endmodule
