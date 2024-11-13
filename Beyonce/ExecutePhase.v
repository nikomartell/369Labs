`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 09:36:17 PM
// Design Name: 
// Module Name: ExecutePhase
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ExecutePhase(
    //outputs from ID/EX Register
    input [31:0] reg_data1_in, //read data1 out
    input [31:0] reg_data2_in, //read data2 out
    input [31:0] sign_ext_offset_in, //sign extended out
    input [4:0] rd_in, //destination reg out
    input [4:0] rt_in, //target reg out
    input [4:0] rs_in, //for forwarding
    input [5:0] ALUop, //func out
    input [4:0] Shamt_in, //shamt out
    input [5:0] Func_in,
    
    //outputs from EX/Mem and Mem/WB
    //Forwarding inputs
    input [4:0] RegDst_ex_mem,
    input [4:0] RegDst_mem_wb,
    input [31:0] Ex_Mem_Data,
    input [31:0] Mem_Wb_Data,
    
    //control signals from ID/EX Register
    input alusrc_in,
    input [1:0] regdst_in,
    input [3:0] aluop_in,
    
    //control signals from EX/Mem and Mem/WB
    //Forwarding inputs
    input RegWrite_ex_mem,
    input RegWrite_mem_wb,
    
    //inputs to MEM/WB
    (* mark_debug = "true" *) output [31:0] ALU_result,
    output [4:0] regdst
    
    );
    wire [3:0] ALU_control;
    wire [31:0] ALU_src_out;
    wire zero;
    //Forwarding wires
    wire [1:0] ReadData1_mux;
    wire [1:0] ReadData2_mux;
    wire [31:0] ReadData1_mux_out;
    wire [31:0] ReadData2_mux_out;
    
    ALUController ALUCntrlr(ALUop, Func_in, ALU_control);
    
    
    ForwardingUnit Fwrd(
        //inputs
        .Rs(rs_in),
        .Rt(rt_in),
        .RegDst_ex_mem(RegDst_ex_mem),
        .RegDst_mem_wb(RegDst_mem_wb),
        .RegWrite_ex_mem(RegWrite_ex_mem),
        .RegWrite_mem_wb(RegWrite_mem_wb),
        
        //outputs
        .ReadData1_mux(ReadData1_mux),
        .ReadData2_mux(ReadData2_mux)
    );
    
    Mux32Bit3To1 ReadData1(
    //inputs 
        .inB(reg_data1_in),
        .inA(Mem_Wb_Data),
        .inC(Ex_Mem_Data),
        .sel(ReadData1_mux),
    //outputs
        .out(ReadData1_mux_out)
    );
    Mux32Bit3To1 ReadData2(
    //inputs 
        .inB(reg_data2_in),
        .inA(Mem_Wb_Data),
        .inC(Ex_Mem_Data),
        .sel(ReadData2_mux),
    //outputs
        .out(ReadData2_mux_out)
    );
    
    Mux32Bit2To1 ALUsrc(ALU_src_out, sign_ext_offset_in, ReadData2_mux_out, alusrc_in);

    
    ALU32Bit ALU(ALU_control, ReadData1_mux_out, ALU_src_out, Shamt_in, ALU_result, zero);
    
    Mux5Bit3To1 RegDst(rt_in, rd_in, 31, regdst_in, regdst);
    
    
endmodule
