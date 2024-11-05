`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 07:44:47 PM
// Design Name: 
// Module Name: StoreDataUnit
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


module StoreDataUnit(
    // Inputs
    // Clk
    input Clk,
    
    // 2 LSB of ALUResult
    input [1:0] ALUResult,
    
    // 32 Bit Data Read from Memory
    input [31:0] ReadDataMemory_Word,
    
    // Read Data for Target Register
    input [31:0] ReadData2,
    
    // Outputs
    output reg [31:0] StoreHalf,
    output reg [31:0] StoreByte
);
    
    always @(negedge Clk) begin
        case (ALUResult)
            0: begin
                StoreHalf <= {ReadDataMemory_Word[31:16], ReadData2[15:0]}; 
                StoreByte <= {ReadDataMemory_Word[31:8], ReadData2[7:0]};
            end
            1:
                StoreByte <= {ReadDataMemory_Word[31:16], ReadData2[7:0], ReadDataMemory_Word[7:0]};
            2: begin
               StoreHalf <= {ReadData2[15:0], ReadDataMemory_Word[15:0]}; 
               StoreByte <= {ReadDataMemory_Word[31:24], ReadData2[7:0], ReadDataMemory_Word[15:0] };  
            end
            3:
               StoreByte <= {ReadData2[7:0], ReadDataMemory_Word[23:0]};        
        endcase    
    end
        
endmodule
