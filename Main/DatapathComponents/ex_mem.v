module ex_mem (
    input clk,
    input reset,
    
    //input values
    input [31:0] branch_address_in, // not needed as branch moved to decode phase
    input alu_zero,    //zero not needed as branch moved to decode phase
    input [31:0] pc_in, //pc adder 4 in
    input [31:0] alu_result,
    input [31:0] read_data2, //read data2 in 
    input [4:0] regdst, //write register in mux 
    input zero_in, 
    
    output reg [31:0] branch_address_out,
    output reg zero_out,
    output reg [31:0] pc_out, //pc adder 4 out 
    output reg [31:0] alu_result_out,
    output reg [31:0] read_data2_out,
    output reg [4:0] regdst_out, //write reg out mux 
    
    //input control signals 
    input branch_in,
    input regwrite, //reg write in 
    input memwrite, 
    input memread, 
    input [1:0] memtoreg,
    input [1:0] decodeop_in,
   
    //output control signals 
    output reg branch_out, 
    output reg regwrite_out, 
    output reg memwrite_out,
    output reg memread_out, 
    output reg [1:0] memtoreg_out,
    output reg [1:0] decodeop_out
    
);

//
always @(posedge clk or posedge reset) begin
    if (reset) begin
        branch_address_out <= 32'b0;
        zero_out <= 1'b0;
        alu_result_out <= 32'b0;
        read_data2_out <= 32'b0;
        regdst_out <= 5'b0; //write register out
        pc_out <= 32'b0;
        
        //control signals reset 
        memread_out <= 1'b0;
        memwrite_out <= 1'b0;
        memtoreg_out <= 1'b0;
        regwrite_out <= 1'b0;
        branch_out <= 1'b0;
        decodeop_out <= 1'b0;
        
    end else begin
        branch_address_out <= branch_address_in;
        zero_out <= zero_in;
        alu_result_out <= alu_result;
        read_data2_out <= read_data2;
        regdst_out <= regdst;
        pc_out <= pc_in;
        
        //control signals passing 
        memread_out <= memread;
        memwrite_out <= memwrite;
        memtoreg_out <= memtoreg;
        regwrite_out <= regwrite;
        branch_out <= branch_in;
        decodeop_out <= decodeop_in;
    end
end
endmodule
