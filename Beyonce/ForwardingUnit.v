`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 03:25:04 PM
// Design Name: 
// Module Name: ForwardingUnit
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


module ForwardingUnit(
    input [4:0] Rs,
    input [4:0] Rt, 
    input [4:0] RegDst_ex_mem,
    input [4:0] RegDst_mem_wb,
    input RegWrite_ex_mem,
    input RegWrite_mem_wb,
    
    output reg [1:0] ReadData1_mux, //control signal to 3x1 mux for i/p to ALU
    output reg [1:0] ReadData2_mux  //control signal to 3x1 mux for i/p to ALU
    );
    
    always @(*) begin 
        ReadData1_mux <= 0;
        ReadData2_mux <= 0;
        
        if (RegWrite_mem_wb && (Rs == RegDst_mem_wb)) begin 
            ReadData1_mux <= 2'b01;
        end
        else if (RegWrite_ex_mem && (Rs == RegDst_ex_mem)) begin 
            ReadData1_mux <= 2'b10;
        end
        
        
        if (RegWrite_ex_mem && (Rt == RegWrite_ex_mem)) begin 
            ReadData2_mux <= 2'b01;
        end
        else if (RegWrite_mem_wb && (Rt == RegDst_mem_wb)) begin 
            ReadData2_mux <= 2'b10;
        end
    end
    
    
endmodule
