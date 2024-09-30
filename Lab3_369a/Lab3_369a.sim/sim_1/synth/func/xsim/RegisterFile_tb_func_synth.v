// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Sep 30 14:38:35 2024
// Host        : DESKTOP-UHPRA57 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/mares/OneDrive/Documents/GitHub/369Lab1/Lab3_369a/Lab3_369a.sim/sim_1/synth/func/xsim/RegisterFile_tb_func_synth.v
// Design      : RegisterFile
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module RegisterFile
   (ReadRegister1,
    ReadRegister2,
    WriteRegister,
    WriteData,
    RegWrite,
    Clk,
    ReadData1,
    ReadData2);
  input [4:0]ReadRegister1;
  input [4:0]ReadRegister2;
  input [4:0]WriteRegister;
  input [31:0]WriteData;
  input RegWrite;
  input Clk;
  output [31:0]ReadData1;
  output [31:0]ReadData2;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [31:0]ReadData1;
  wire [31:0]ReadData1_OBUF;
  wire [31:0]ReadData2;
  wire [31:0]ReadData2_OBUF;
  wire [4:0]ReadRegister1;
  wire [4:0]ReadRegister1_IBUF;
  wire [4:0]ReadRegister2;
  wire [4:0]ReadRegister2_IBUF;
  wire RegWrite;
  wire RegWrite_IBUF;
  wire [31:0]WriteData;
  wire [31:0]WriteData_IBUF;
  wire [4:0]WriteRegister;
  wire [4:0]WriteRegister_IBUF;
  wire [1:0]NLW_RegFile_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_RegFile_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_RegFile_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_RegFile_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_RegFile_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RegFile_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  OBUF \ReadData1_OBUF[0]_inst 
       (.I(ReadData1_OBUF[0]),
        .O(ReadData1[0]));
  OBUF \ReadData1_OBUF[10]_inst 
       (.I(ReadData1_OBUF[10]),
        .O(ReadData1[10]));
  OBUF \ReadData1_OBUF[11]_inst 
       (.I(ReadData1_OBUF[11]),
        .O(ReadData1[11]));
  OBUF \ReadData1_OBUF[12]_inst 
       (.I(ReadData1_OBUF[12]),
        .O(ReadData1[12]));
  OBUF \ReadData1_OBUF[13]_inst 
       (.I(ReadData1_OBUF[13]),
        .O(ReadData1[13]));
  OBUF \ReadData1_OBUF[14]_inst 
       (.I(ReadData1_OBUF[14]),
        .O(ReadData1[14]));
  OBUF \ReadData1_OBUF[15]_inst 
       (.I(ReadData1_OBUF[15]),
        .O(ReadData1[15]));
  OBUF \ReadData1_OBUF[16]_inst 
       (.I(ReadData1_OBUF[16]),
        .O(ReadData1[16]));
  OBUF \ReadData1_OBUF[17]_inst 
       (.I(ReadData1_OBUF[17]),
        .O(ReadData1[17]));
  OBUF \ReadData1_OBUF[18]_inst 
       (.I(ReadData1_OBUF[18]),
        .O(ReadData1[18]));
  OBUF \ReadData1_OBUF[19]_inst 
       (.I(ReadData1_OBUF[19]),
        .O(ReadData1[19]));
  OBUF \ReadData1_OBUF[1]_inst 
       (.I(ReadData1_OBUF[1]),
        .O(ReadData1[1]));
  OBUF \ReadData1_OBUF[20]_inst 
       (.I(ReadData1_OBUF[20]),
        .O(ReadData1[20]));
  OBUF \ReadData1_OBUF[21]_inst 
       (.I(ReadData1_OBUF[21]),
        .O(ReadData1[21]));
  OBUF \ReadData1_OBUF[22]_inst 
       (.I(ReadData1_OBUF[22]),
        .O(ReadData1[22]));
  OBUF \ReadData1_OBUF[23]_inst 
       (.I(ReadData1_OBUF[23]),
        .O(ReadData1[23]));
  OBUF \ReadData1_OBUF[24]_inst 
       (.I(ReadData1_OBUF[24]),
        .O(ReadData1[24]));
  OBUF \ReadData1_OBUF[25]_inst 
       (.I(ReadData1_OBUF[25]),
        .O(ReadData1[25]));
  OBUF \ReadData1_OBUF[26]_inst 
       (.I(ReadData1_OBUF[26]),
        .O(ReadData1[26]));
  OBUF \ReadData1_OBUF[27]_inst 
       (.I(ReadData1_OBUF[27]),
        .O(ReadData1[27]));
  OBUF \ReadData1_OBUF[28]_inst 
       (.I(ReadData1_OBUF[28]),
        .O(ReadData1[28]));
  OBUF \ReadData1_OBUF[29]_inst 
       (.I(ReadData1_OBUF[29]),
        .O(ReadData1[29]));
  OBUF \ReadData1_OBUF[2]_inst 
       (.I(ReadData1_OBUF[2]),
        .O(ReadData1[2]));
  OBUF \ReadData1_OBUF[30]_inst 
       (.I(ReadData1_OBUF[30]),
        .O(ReadData1[30]));
  OBUF \ReadData1_OBUF[31]_inst 
       (.I(ReadData1_OBUF[31]),
        .O(ReadData1[31]));
  OBUF \ReadData1_OBUF[3]_inst 
       (.I(ReadData1_OBUF[3]),
        .O(ReadData1[3]));
  OBUF \ReadData1_OBUF[4]_inst 
       (.I(ReadData1_OBUF[4]),
        .O(ReadData1[4]));
  OBUF \ReadData1_OBUF[5]_inst 
       (.I(ReadData1_OBUF[5]),
        .O(ReadData1[5]));
  OBUF \ReadData1_OBUF[6]_inst 
       (.I(ReadData1_OBUF[6]),
        .O(ReadData1[6]));
  OBUF \ReadData1_OBUF[7]_inst 
       (.I(ReadData1_OBUF[7]),
        .O(ReadData1[7]));
  OBUF \ReadData1_OBUF[8]_inst 
       (.I(ReadData1_OBUF[8]),
        .O(ReadData1[8]));
  OBUF \ReadData1_OBUF[9]_inst 
       (.I(ReadData1_OBUF[9]),
        .O(ReadData1[9]));
  OBUF \ReadData2_OBUF[0]_inst 
       (.I(ReadData2_OBUF[0]),
        .O(ReadData2[0]));
  OBUF \ReadData2_OBUF[10]_inst 
       (.I(ReadData2_OBUF[10]),
        .O(ReadData2[10]));
  OBUF \ReadData2_OBUF[11]_inst 
       (.I(ReadData2_OBUF[11]),
        .O(ReadData2[11]));
  OBUF \ReadData2_OBUF[12]_inst 
       (.I(ReadData2_OBUF[12]),
        .O(ReadData2[12]));
  OBUF \ReadData2_OBUF[13]_inst 
       (.I(ReadData2_OBUF[13]),
        .O(ReadData2[13]));
  OBUF \ReadData2_OBUF[14]_inst 
       (.I(ReadData2_OBUF[14]),
        .O(ReadData2[14]));
  OBUF \ReadData2_OBUF[15]_inst 
       (.I(ReadData2_OBUF[15]),
        .O(ReadData2[15]));
  OBUF \ReadData2_OBUF[16]_inst 
       (.I(ReadData2_OBUF[16]),
        .O(ReadData2[16]));
  OBUF \ReadData2_OBUF[17]_inst 
       (.I(ReadData2_OBUF[17]),
        .O(ReadData2[17]));
  OBUF \ReadData2_OBUF[18]_inst 
       (.I(ReadData2_OBUF[18]),
        .O(ReadData2[18]));
  OBUF \ReadData2_OBUF[19]_inst 
       (.I(ReadData2_OBUF[19]),
        .O(ReadData2[19]));
  OBUF \ReadData2_OBUF[1]_inst 
       (.I(ReadData2_OBUF[1]),
        .O(ReadData2[1]));
  OBUF \ReadData2_OBUF[20]_inst 
       (.I(ReadData2_OBUF[20]),
        .O(ReadData2[20]));
  OBUF \ReadData2_OBUF[21]_inst 
       (.I(ReadData2_OBUF[21]),
        .O(ReadData2[21]));
  OBUF \ReadData2_OBUF[22]_inst 
       (.I(ReadData2_OBUF[22]),
        .O(ReadData2[22]));
  OBUF \ReadData2_OBUF[23]_inst 
       (.I(ReadData2_OBUF[23]),
        .O(ReadData2[23]));
  OBUF \ReadData2_OBUF[24]_inst 
       (.I(ReadData2_OBUF[24]),
        .O(ReadData2[24]));
  OBUF \ReadData2_OBUF[25]_inst 
       (.I(ReadData2_OBUF[25]),
        .O(ReadData2[25]));
  OBUF \ReadData2_OBUF[26]_inst 
       (.I(ReadData2_OBUF[26]),
        .O(ReadData2[26]));
  OBUF \ReadData2_OBUF[27]_inst 
       (.I(ReadData2_OBUF[27]),
        .O(ReadData2[27]));
  OBUF \ReadData2_OBUF[28]_inst 
       (.I(ReadData2_OBUF[28]),
        .O(ReadData2[28]));
  OBUF \ReadData2_OBUF[29]_inst 
       (.I(ReadData2_OBUF[29]),
        .O(ReadData2[29]));
  OBUF \ReadData2_OBUF[2]_inst 
       (.I(ReadData2_OBUF[2]),
        .O(ReadData2[2]));
  OBUF \ReadData2_OBUF[30]_inst 
       (.I(ReadData2_OBUF[30]),
        .O(ReadData2[30]));
  OBUF \ReadData2_OBUF[31]_inst 
       (.I(ReadData2_OBUF[31]),
        .O(ReadData2[31]));
  OBUF \ReadData2_OBUF[3]_inst 
       (.I(ReadData2_OBUF[3]),
        .O(ReadData2[3]));
  OBUF \ReadData2_OBUF[4]_inst 
       (.I(ReadData2_OBUF[4]),
        .O(ReadData2[4]));
  OBUF \ReadData2_OBUF[5]_inst 
       (.I(ReadData2_OBUF[5]),
        .O(ReadData2[5]));
  OBUF \ReadData2_OBUF[6]_inst 
       (.I(ReadData2_OBUF[6]),
        .O(ReadData2[6]));
  OBUF \ReadData2_OBUF[7]_inst 
       (.I(ReadData2_OBUF[7]),
        .O(ReadData2[7]));
  OBUF \ReadData2_OBUF[8]_inst 
       (.I(ReadData2_OBUF[8]),
        .O(ReadData2[8]));
  OBUF \ReadData2_OBUF[9]_inst 
       (.I(ReadData2_OBUF[9]),
        .O(ReadData2[9]));
  IBUF \ReadRegister1_IBUF[0]_inst 
       (.I(ReadRegister1[0]),
        .O(ReadRegister1_IBUF[0]));
  IBUF \ReadRegister1_IBUF[1]_inst 
       (.I(ReadRegister1[1]),
        .O(ReadRegister1_IBUF[1]));
  IBUF \ReadRegister1_IBUF[2]_inst 
       (.I(ReadRegister1[2]),
        .O(ReadRegister1_IBUF[2]));
  IBUF \ReadRegister1_IBUF[3]_inst 
       (.I(ReadRegister1[3]),
        .O(ReadRegister1_IBUF[3]));
  IBUF \ReadRegister1_IBUF[4]_inst 
       (.I(ReadRegister1[4]),
        .O(ReadRegister1_IBUF[4]));
  IBUF \ReadRegister2_IBUF[0]_inst 
       (.I(ReadRegister2[0]),
        .O(ReadRegister2_IBUF[0]));
  IBUF \ReadRegister2_IBUF[1]_inst 
       (.I(ReadRegister2[1]),
        .O(ReadRegister2_IBUF[1]));
  IBUF \ReadRegister2_IBUF[2]_inst 
       (.I(ReadRegister2[2]),
        .O(ReadRegister2_IBUF[2]));
  IBUF \ReadRegister2_IBUF[3]_inst 
       (.I(ReadRegister2[3]),
        .O(ReadRegister2_IBUF[3]));
  IBUF \ReadRegister2_IBUF[4]_inst 
       (.I(ReadRegister2[4]),
        .O(ReadRegister2_IBUF[4]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r1_0_31_0_5
       (.ADDRA(ReadRegister1_IBUF),
        .ADDRB(ReadRegister1_IBUF),
        .ADDRC(ReadRegister1_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[1:0]),
        .DIB(WriteData_IBUF[3:2]),
        .DIC(WriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1_OBUF[1:0]),
        .DOB(ReadData1_OBUF[3:2]),
        .DOC(ReadData1_OBUF[5:4]),
        .DOD(NLW_RegFile_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r1_0_31_12_17
       (.ADDRA(ReadRegister1_IBUF),
        .ADDRB(ReadRegister1_IBUF),
        .ADDRC(ReadRegister1_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[13:12]),
        .DIB(WriteData_IBUF[15:14]),
        .DIC(WriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1_OBUF[13:12]),
        .DOB(ReadData1_OBUF[15:14]),
        .DOC(ReadData1_OBUF[17:16]),
        .DOD(NLW_RegFile_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r1_0_31_18_23
       (.ADDRA(ReadRegister1_IBUF),
        .ADDRB(ReadRegister1_IBUF),
        .ADDRC(ReadRegister1_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[19:18]),
        .DIB(WriteData_IBUF[21:20]),
        .DIC(WriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1_OBUF[19:18]),
        .DOB(ReadData1_OBUF[21:20]),
        .DOC(ReadData1_OBUF[23:22]),
        .DOD(NLW_RegFile_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r1_0_31_24_29
       (.ADDRA(ReadRegister1_IBUF),
        .ADDRB(ReadRegister1_IBUF),
        .ADDRC(ReadRegister1_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[25:24]),
        .DIB(WriteData_IBUF[27:26]),
        .DIC(WriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1_OBUF[25:24]),
        .DOB(ReadData1_OBUF[27:26]),
        .DOC(ReadData1_OBUF[29:28]),
        .DOD(NLW_RegFile_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RegFile_reg_r1_0_31_30_31
       (.A0(WriteRegister_IBUF[0]),
        .A1(WriteRegister_IBUF[1]),
        .A2(WriteRegister_IBUF[2]),
        .A3(WriteRegister_IBUF[3]),
        .A4(WriteRegister_IBUF[4]),
        .D(WriteData_IBUF[30]),
        .DPO(ReadData1_OBUF[30]),
        .DPRA0(ReadRegister1_IBUF[0]),
        .DPRA1(ReadRegister1_IBUF[1]),
        .DPRA2(ReadRegister1_IBUF[2]),
        .DPRA3(ReadRegister1_IBUF[3]),
        .DPRA4(ReadRegister1_IBUF[4]),
        .SPO(NLW_RegFile_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RegFile_reg_r1_0_31_30_31__0
       (.A0(WriteRegister_IBUF[0]),
        .A1(WriteRegister_IBUF[1]),
        .A2(WriteRegister_IBUF[2]),
        .A3(WriteRegister_IBUF[3]),
        .A4(WriteRegister_IBUF[4]),
        .D(WriteData_IBUF[31]),
        .DPO(ReadData1_OBUF[31]),
        .DPRA0(ReadRegister1_IBUF[0]),
        .DPRA1(ReadRegister1_IBUF[1]),
        .DPRA2(ReadRegister1_IBUF[2]),
        .DPRA3(ReadRegister1_IBUF[3]),
        .DPRA4(ReadRegister1_IBUF[4]),
        .SPO(NLW_RegFile_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r1_0_31_6_11
       (.ADDRA(ReadRegister1_IBUF),
        .ADDRB(ReadRegister1_IBUF),
        .ADDRC(ReadRegister1_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[7:6]),
        .DIB(WriteData_IBUF[9:8]),
        .DIC(WriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData1_OBUF[7:6]),
        .DOB(ReadData1_OBUF[9:8]),
        .DOC(ReadData1_OBUF[11:10]),
        .DOD(NLW_RegFile_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r2_0_31_0_5
       (.ADDRA(ReadRegister2_IBUF),
        .ADDRB(ReadRegister2_IBUF),
        .ADDRC(ReadRegister2_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[1:0]),
        .DIB(WriteData_IBUF[3:2]),
        .DIC(WriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2_OBUF[1:0]),
        .DOB(ReadData2_OBUF[3:2]),
        .DOC(ReadData2_OBUF[5:4]),
        .DOD(NLW_RegFile_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r2_0_31_12_17
       (.ADDRA(ReadRegister2_IBUF),
        .ADDRB(ReadRegister2_IBUF),
        .ADDRC(ReadRegister2_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[13:12]),
        .DIB(WriteData_IBUF[15:14]),
        .DIC(WriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2_OBUF[13:12]),
        .DOB(ReadData2_OBUF[15:14]),
        .DOC(ReadData2_OBUF[17:16]),
        .DOD(NLW_RegFile_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r2_0_31_18_23
       (.ADDRA(ReadRegister2_IBUF),
        .ADDRB(ReadRegister2_IBUF),
        .ADDRC(ReadRegister2_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[19:18]),
        .DIB(WriteData_IBUF[21:20]),
        .DIC(WriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2_OBUF[19:18]),
        .DOB(ReadData2_OBUF[21:20]),
        .DOC(ReadData2_OBUF[23:22]),
        .DOD(NLW_RegFile_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r2_0_31_24_29
       (.ADDRA(ReadRegister2_IBUF),
        .ADDRB(ReadRegister2_IBUF),
        .ADDRC(ReadRegister2_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[25:24]),
        .DIB(WriteData_IBUF[27:26]),
        .DIC(WriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2_OBUF[25:24]),
        .DOB(ReadData2_OBUF[27:26]),
        .DOC(ReadData2_OBUF[29:28]),
        .DOD(NLW_RegFile_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RegFile_reg_r2_0_31_30_31
       (.A0(WriteRegister_IBUF[0]),
        .A1(WriteRegister_IBUF[1]),
        .A2(WriteRegister_IBUF[2]),
        .A3(WriteRegister_IBUF[3]),
        .A4(WriteRegister_IBUF[4]),
        .D(WriteData_IBUF[30]),
        .DPO(ReadData2_OBUF[30]),
        .DPRA0(ReadRegister2_IBUF[0]),
        .DPRA1(ReadRegister2_IBUF[1]),
        .DPRA2(ReadRegister2_IBUF[2]),
        .DPRA3(ReadRegister2_IBUF[3]),
        .DPRA4(ReadRegister2_IBUF[4]),
        .SPO(NLW_RegFile_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RegFile_reg_r2_0_31_30_31__0
       (.A0(WriteRegister_IBUF[0]),
        .A1(WriteRegister_IBUF[1]),
        .A2(WriteRegister_IBUF[2]),
        .A3(WriteRegister_IBUF[3]),
        .A4(WriteRegister_IBUF[4]),
        .D(WriteData_IBUF[31]),
        .DPO(ReadData2_OBUF[31]),
        .DPRA0(ReadRegister2_IBUF[0]),
        .DPRA1(ReadRegister2_IBUF[1]),
        .DPRA2(ReadRegister2_IBUF[2]),
        .DPRA3(ReadRegister2_IBUF[3]),
        .DPRA4(ReadRegister2_IBUF[4]),
        .SPO(NLW_RegFile_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegFile_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RegFile_reg_r2_0_31_6_11
       (.ADDRA(ReadRegister2_IBUF),
        .ADDRB(ReadRegister2_IBUF),
        .ADDRC(ReadRegister2_IBUF),
        .ADDRD(WriteRegister_IBUF),
        .DIA(WriteData_IBUF[7:6]),
        .DIB(WriteData_IBUF[9:8]),
        .DIC(WriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadData2_OBUF[7:6]),
        .DOB(ReadData2_OBUF[9:8]),
        .DOC(ReadData2_OBUF[11:10]),
        .DOD(NLW_RegFile_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(Clk_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  IBUF RegWrite_IBUF_inst
       (.I(RegWrite),
        .O(RegWrite_IBUF));
  IBUF \WriteData_IBUF[0]_inst 
       (.I(WriteData[0]),
        .O(WriteData_IBUF[0]));
  IBUF \WriteData_IBUF[10]_inst 
       (.I(WriteData[10]),
        .O(WriteData_IBUF[10]));
  IBUF \WriteData_IBUF[11]_inst 
       (.I(WriteData[11]),
        .O(WriteData_IBUF[11]));
  IBUF \WriteData_IBUF[12]_inst 
       (.I(WriteData[12]),
        .O(WriteData_IBUF[12]));
  IBUF \WriteData_IBUF[13]_inst 
       (.I(WriteData[13]),
        .O(WriteData_IBUF[13]));
  IBUF \WriteData_IBUF[14]_inst 
       (.I(WriteData[14]),
        .O(WriteData_IBUF[14]));
  IBUF \WriteData_IBUF[15]_inst 
       (.I(WriteData[15]),
        .O(WriteData_IBUF[15]));
  IBUF \WriteData_IBUF[16]_inst 
       (.I(WriteData[16]),
        .O(WriteData_IBUF[16]));
  IBUF \WriteData_IBUF[17]_inst 
       (.I(WriteData[17]),
        .O(WriteData_IBUF[17]));
  IBUF \WriteData_IBUF[18]_inst 
       (.I(WriteData[18]),
        .O(WriteData_IBUF[18]));
  IBUF \WriteData_IBUF[19]_inst 
       (.I(WriteData[19]),
        .O(WriteData_IBUF[19]));
  IBUF \WriteData_IBUF[1]_inst 
       (.I(WriteData[1]),
        .O(WriteData_IBUF[1]));
  IBUF \WriteData_IBUF[20]_inst 
       (.I(WriteData[20]),
        .O(WriteData_IBUF[20]));
  IBUF \WriteData_IBUF[21]_inst 
       (.I(WriteData[21]),
        .O(WriteData_IBUF[21]));
  IBUF \WriteData_IBUF[22]_inst 
       (.I(WriteData[22]),
        .O(WriteData_IBUF[22]));
  IBUF \WriteData_IBUF[23]_inst 
       (.I(WriteData[23]),
        .O(WriteData_IBUF[23]));
  IBUF \WriteData_IBUF[24]_inst 
       (.I(WriteData[24]),
        .O(WriteData_IBUF[24]));
  IBUF \WriteData_IBUF[25]_inst 
       (.I(WriteData[25]),
        .O(WriteData_IBUF[25]));
  IBUF \WriteData_IBUF[26]_inst 
       (.I(WriteData[26]),
        .O(WriteData_IBUF[26]));
  IBUF \WriteData_IBUF[27]_inst 
       (.I(WriteData[27]),
        .O(WriteData_IBUF[27]));
  IBUF \WriteData_IBUF[28]_inst 
       (.I(WriteData[28]),
        .O(WriteData_IBUF[28]));
  IBUF \WriteData_IBUF[29]_inst 
       (.I(WriteData[29]),
        .O(WriteData_IBUF[29]));
  IBUF \WriteData_IBUF[2]_inst 
       (.I(WriteData[2]),
        .O(WriteData_IBUF[2]));
  IBUF \WriteData_IBUF[30]_inst 
       (.I(WriteData[30]),
        .O(WriteData_IBUF[30]));
  IBUF \WriteData_IBUF[31]_inst 
       (.I(WriteData[31]),
        .O(WriteData_IBUF[31]));
  IBUF \WriteData_IBUF[3]_inst 
       (.I(WriteData[3]),
        .O(WriteData_IBUF[3]));
  IBUF \WriteData_IBUF[4]_inst 
       (.I(WriteData[4]),
        .O(WriteData_IBUF[4]));
  IBUF \WriteData_IBUF[5]_inst 
       (.I(WriteData[5]),
        .O(WriteData_IBUF[5]));
  IBUF \WriteData_IBUF[6]_inst 
       (.I(WriteData[6]),
        .O(WriteData_IBUF[6]));
  IBUF \WriteData_IBUF[7]_inst 
       (.I(WriteData[7]),
        .O(WriteData_IBUF[7]));
  IBUF \WriteData_IBUF[8]_inst 
       (.I(WriteData[8]),
        .O(WriteData_IBUF[8]));
  IBUF \WriteData_IBUF[9]_inst 
       (.I(WriteData[9]),
        .O(WriteData_IBUF[9]));
  IBUF \WriteRegister_IBUF[0]_inst 
       (.I(WriteRegister[0]),
        .O(WriteRegister_IBUF[0]));
  IBUF \WriteRegister_IBUF[1]_inst 
       (.I(WriteRegister[1]),
        .O(WriteRegister_IBUF[1]));
  IBUF \WriteRegister_IBUF[2]_inst 
       (.I(WriteRegister[2]),
        .O(WriteRegister_IBUF[2]));
  IBUF \WriteRegister_IBUF[3]_inst 
       (.I(WriteRegister[3]),
        .O(WriteRegister_IBUF[3]));
  IBUF \WriteRegister_IBUF[4]_inst 
       (.I(WriteRegister[4]),
        .O(WriteRegister_IBUF[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
