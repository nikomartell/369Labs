`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abril Torres
// 
// Create Date: 10/10/2024 05:14:47 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input [5:0] OPCode,
    input [5:0] Function, 
    input beq, 
    input blt, 
    input bgt,
    
    //Control signals 
    output reg RegWrite,
    output reg [3:0] ALUOp,
    output reg ALUSrc,
    output reg [2:0] RegDst,
    output reg MemWrite,
    output reg MemRead,
    output reg Branch,
    output reg MemToReg,
    output reg Jump,
    output reg [1:0] PCSrc,
    output reg StoreType,
    output reg LoadType
    ); 
    
    // Initialize outputs to default values
        initial begin 
    RegWrite <= 0;
    ALUSrc <= 0;
    RegDst <= 0;
    MemWrite <= 0;
    MemRead <= 0;
    MemToReg <= 0;
    PCSrc <= 0;
    Branch <= 0;
    Jump <= 0;
    LoadType <= 0;
    StoreType <= 0;
    ALUOp <= 0;
        end 
    
    always@(OPCode) begin 
    case (OPCode)
            //R-type, JR, SLL, SRL 
            6'b000000: begin 
                case(Function)
            //JR 
             6'b001000: begin
                ALUOp <= 2;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 1;
                LoadType <= 0;
                StoreType <= 0; 
             end 
            /*
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0; 
            end */
            // MUL
             6'b011100: begin 
                ALUOp <= 0;
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0; 
            end
            //ANDI
            6'b001100: begin 
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0; 
            end
            // ADDI
           6'b001000: begin  
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
            end
            //LW 
            6'b100011: begin 
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 1;
                StoreType <= 0;
            end
            //SW 
            6'b101011: begin
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 1;
            end
            //SB
            6'b101000: begin
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 1;
            end
            //LH 
            6'b100001: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 1;
                StoreType <= 0;
             end 
             //LB 
             6'b100000: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 1;
                StoreType <= 0;
             end 
             //SH 
             6'b101001: begin
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 1;
             end 
             //BGEZ
             6'b000001: begin 
             RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //BEQ
             6'b000100: begin
                RegWrite <= 0; 
                ALUOp <= 1; //sub 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0; 
             end
             //BNE 
             6'b000101: begin
             RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //BGTZ
             6'b000001: begin
             RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //BLEZ
             6'b000110: begin
             RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //BLTZ - same Op code as bgez - need to solve issue 
             6'b000001: begin
             RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 1;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //J 
             6'b000010: begin
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 1;
                LoadType <= 0;
                StoreType <= 0;
             end 
             
             //JAL 
             6'b000011: begin
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 1;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //OR 
             6'b100101: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //NOR 
             6'b100111: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
             //XOR 
             6'b100110: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
             end 
         
             //ORI
             6'b001101: begin 
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end
             //XORI 
             6'b001110: begin
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end
             //SLL
             6'b000000: begin 
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end
             //SRL
             6'b000010: begin 
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end
             //SLT
             6'b101010: begin 
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end
             //SLTI
             6'b001010: begin 
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                PCSrc <= 0;
                Branch <= 0;
                Jump <= 0;
                LoadType <= 0;
                StoreType <= 0;
                end 
                
        endcase     
      end 
 
endmodule
