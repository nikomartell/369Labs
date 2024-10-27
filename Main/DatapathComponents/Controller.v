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
    input [4:0] TargetReg,
    input beq, 
    input blt,
    input bgt,
    input zero,
    
    //Control signals 
    output reg RegWrite,
    output reg [3:0] ALUOp,
    output reg ALUSrc, //this is a mux 1-passes imm value
    output reg [2:0] RegDst, //this is a mux 0-passes rt, 1-passes rd 
    output reg MemWrite,
    output reg MemRead,
    output reg Branch,
    output reg [1:0] MemToReg, //this is a 2x1 mux
    output reg Jump,
    //output reg [1:0] StoreType, //this is a 3x1 mux
    //output reg [1:0] LoadType,  //this is a 3x1 mux
    output reg JumpReg
    ); 
    
    // Initialize outputs to default values
    initial begin 
    RegWrite <= 0;
    ALUSrc <= 0;
    RegDst <= 0;
    MemWrite <= 0;
    MemRead <= 0;
    MemToReg <= 0;
    Branch <= 0;
    Jump <= 0;
    //LoadType <= 0;
    //StoreType <= 0;
    ALUOp <= 0;
    JumpReg <= 0; 
    end 
    
    always@(OPCode) begin 
    //default values again to prevent latch inference 
    RegWrite <= 0;
    ALUSrc <= 0;
    RegDst <= 0;
    MemWrite <= 0;
    MemRead <= 0;
    MemToReg <= 0;
    Branch <= 0;
    Jump <= 0;
    //LoadType <= 0;
    //StoreType <= 0;
    ALUOp <= 0;
    JumpReg <= 0;
    
    case (OPCode)
            //R-type, JR, SLL, SRL 
            6'b000000: begin 
            case(Function)
            //JR 
             6'b001000: begin
                ALUOp <=  6'b000000;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0; 
                JumpReg <= 1;
             end 
            //R-type: and, add, sub, or, nor, xor, sll, slt, srl 
            default: begin
            //ALUOp is func 
                ALUOp <= 6'b000000; 
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0; 
                JumpReg <= 0;
            end 
            endcase 
            end 
            
            // MUL
             6'b011100: begin 
                ALUOp <=  6'b011100;
                RegWrite <= 1; 
                RegDst <= 1;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0; 
                JumpReg <= 0;
            end
            
            //Immediate
            //ANDI
            6'b001100: begin 
                ALUOp <= 6'b001100;  
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0; 
                JumpReg <= 0;
            end
            // ADDI
           6'b001000: begin  
                ALUOp <= 6'b001000;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
                JumpReg <= 0;

            end
            //ORI
             6'b001101: begin 
                ALUOp <= 6'b001101;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
                JumpReg <= 0;
                end
             //XORI 
             6'b001110: begin
                ALUOp <= 6'b001110;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
                JumpReg <= 0;
                end
              //SLTI
             6'b001010: begin 
                ALUOp <= 9;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 1;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
                JumpReg <= 0;
                end 
                
            //loads and stores    
            //LW 
            6'b100011: begin 
                ALUOp <= 6'b100011; 
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
            end
            //SW 
            6'b101011: begin
                ALUOp <=  6'b101011;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 0;
            end
            //SB
            6'b101000: begin
                ALUOp <= 6'b101000;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 0;
                //StoreType <= 2; //2 for byte, 1 for half, 0 for whole
            end
            //LH 
            6'b100001: begin
                ALUOp <=  6'b100001;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 1;
                //StoreType <= 0;
             end 
             //LB 
             6'b100000: begin
                ALUOp <= 6'b100000;
                RegWrite <= 1; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
                //LoadType <= 2;
             end 
             //SH 
             6'b101001: begin
                ALUOp <= 6'b101001;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 1;
                MemWrite <= 1; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 0;
             end 
             
             //branches 
             //bgez and bltz - solved issue with same op code
             6'b000001: begin
             case(TargetReg)
             //BGEZ
             5'b00001: begin 
                ALUOp <= 9;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if(bgt || zero) Branch <= 1;
                Jump <= 0;
             end 
             //BLTZ 
             5'b00000: begin
                ALUOp <= 11;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if(blt || zero) Branch <= 1;
                Jump <= 0;
             end 
             endcase
             end
             
             //BEQ
             6'b000100: begin
                ALUOp <= 4;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if(beq) Branch <= 1;
                Jump <= 0;
             end
             //BNE 
             6'b000101: begin
                ALUOp <= 5;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if(!beq) Branch <= 1;
                Jump <= 0;
             end 
             //BGTZ
             6'b000001: begin
                ALUOp <= 7;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if (bgt) Branch <= 1;
                Jump <= 0;
             end 
             //BLEZ
             6'b000110: begin
                ALUOp <= 13;
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                if(blt || zero) Branch <= 1;
                Jump <= 0;
             end 
             
             //jumps 
             //J 
             6'b000010: begin
                ALUOp <= 3; // we do not have jump in alu control
                RegWrite <= 0; 
                RegDst <= 0;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 0;
                MemToReg <= 0;
                Branch <= 0;
                Jump <= 1;
             end 
             
             //JAL 
             6'b000011: begin
                ALUOp <= 0; //arbitrary value
                RegWrite <= 1; 
                RegDst <= 2;
                ALUSrc <= 0;
                MemWrite <= 0; 
                MemRead <= 1;
                MemToReg <= 2;
                Branch <= 0;
                Jump <= 1;
             end 
          
            
        endcase     
      end 
 
endmodule
