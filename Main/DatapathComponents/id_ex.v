module id_ex (
    input clk,
    input reset,
    
    input [31:0] pc_in, //address passed
    input [31:0] reg_data1, //read data 1 
    input [31:0] reg_data2, //read data 2
    input [31:0] sign_ext_offset, //sign extended in
    input [4:0] rd, //destination reg in
    input [4:0] rt, //target reg in 
    input [5:0] ALUop, //func in
    input Shamt, //shamt in
    
    output reg [31:0] pc_out, // address out
    output reg [31:0] reg_data1_out, //read data1 out
    output reg [31:0] reg_data2_out, //read data2 out
    output reg [31:0] sign_ext_offset_out, //sign extended out
    output reg [4:0] rd_out, 
    output reg [4:0] rt_out,
    output reg [5:0] ALUop_out, //func out
    output reg Shamt_out

//input control signals 
    input ALUSrc_in,
    input [2:0] RegDst_in,
    input Branch_in,
    input RegWrite_in,
    input [3:0] ALUOp_in,
    input MemWrite_in,
    input MemRead_in,
    input [1:0] MemtoReg_in,
    input [1:0] LoadType_in,
    input [1:0] StoreType_in,

//output control signals 
    output reg ALUSrc_out,
    output reg [2:0] RegDst_out,
    output reg Branch_out,
    output reg RegWrite_out,
    output reg [3:0] ALUOp_out,
    output reg MemWrite_out,
    output reg MemRead_out,
    output reg [1:0] MemtoReg_out,
    output reg [1:0] LoadType_out,
    output reg [1:0] StoreType_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin 
        pc_out <= 32'b0;
        reg_data1_out <= 32'b0;
        reg_data2_out <= 32'b0;
        sign_ext_offset_out <= 32'b0;
        rd_out <= 5'b0;
        rt_out <= 5'b0;
        ALUop_out <= 6'b0;
        Shamt_out <= 5'b0;
        
        //control signals reset 
            ALUSrc_out <= 1'b0;
            RegDst_out <= 1'b0;
            Branch_out <= 1'b0;
            RegWrite_out <= 1'b0;
            ALUOp_out <= 4'b0000;
            MemWrite_out <= 1'b0;
            MemRead_out <= 1'b0;
            MemtoReg_out <= 1'b0;
            LoadType_out <= 2'b0;
            StoreType_out <= 2'b0;
            
    end else begin
        pc_out <= pc_in;
        reg_data1_out <= reg_data1;
        reg_data2_out <= reg_data2;
        sign_ext_offset_out <= sign_ext_offset;
        rd_out <= rd;
        rt_out <= rt;
        ALUop_out <= ALUop;
        Shamt_out <= Shamt;
        
        //control signals pass through 
            ALUSrc_out <= ALUSrc_in;
            RegDst_out <= RegDst_in;
            Branch_out <= Branch_in;
            RegWrite_out <= RegWrite_in;
            ALUOp_out <= ALUOp_in;
            MemWrite_out <= MemWrite_in;
            MemRead_out <= MemRead_in;
            MemtoReg_out <= MemtoReg_in;
            LoadType_out <= LoadType_in;
            StoreType_out <= StoreType_in;
        
    end
end

endmodule
