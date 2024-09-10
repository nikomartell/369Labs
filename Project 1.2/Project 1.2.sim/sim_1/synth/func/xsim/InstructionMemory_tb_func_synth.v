// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 10 11:17:34 2024
// Host        : DESKTOP-UHPRA57 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/mares/OneDrive/Documents/GitHub/369Lab1/Project
//               1.2/Project 1.2.sim/sim_1/synth/func/xsim/InstructionMemory_tb_func_synth.v}
// Design      : Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClkDiv
   (ClkOut,
    Clk_IBUF_BUFG);
  output ClkOut;
  input Clk_IBUF_BUFG;

  wire ClkOut;
  wire ClkOut_0;
  wire ClkOut_i_1_n_0;
  wire Clk_IBUF_BUFG;
  wire \DivCnt[0]_i_3_n_0 ;
  wire \DivCnt[0]_i_4_n_0 ;
  wire \DivCnt[0]_i_5_n_0 ;
  wire \DivCnt[0]_i_6_n_0 ;
  wire \DivCnt[0]_i_7_n_0 ;
  wire \DivCnt[0]_i_8_n_0 ;
  wire \DivCnt[0]_i_9_n_0 ;
  wire [25:0]DivCnt_reg;
  wire \DivCnt_reg[0]_i_2_n_0 ;
  wire \DivCnt_reg[0]_i_2_n_1 ;
  wire \DivCnt_reg[0]_i_2_n_2 ;
  wire \DivCnt_reg[0]_i_2_n_3 ;
  wire \DivCnt_reg[0]_i_2_n_4 ;
  wire \DivCnt_reg[0]_i_2_n_5 ;
  wire \DivCnt_reg[0]_i_2_n_6 ;
  wire \DivCnt_reg[0]_i_2_n_7 ;
  wire \DivCnt_reg[12]_i_1_n_0 ;
  wire \DivCnt_reg[12]_i_1_n_1 ;
  wire \DivCnt_reg[12]_i_1_n_2 ;
  wire \DivCnt_reg[12]_i_1_n_3 ;
  wire \DivCnt_reg[12]_i_1_n_4 ;
  wire \DivCnt_reg[12]_i_1_n_5 ;
  wire \DivCnt_reg[12]_i_1_n_6 ;
  wire \DivCnt_reg[12]_i_1_n_7 ;
  wire \DivCnt_reg[16]_i_1_n_0 ;
  wire \DivCnt_reg[16]_i_1_n_1 ;
  wire \DivCnt_reg[16]_i_1_n_2 ;
  wire \DivCnt_reg[16]_i_1_n_3 ;
  wire \DivCnt_reg[16]_i_1_n_4 ;
  wire \DivCnt_reg[16]_i_1_n_5 ;
  wire \DivCnt_reg[16]_i_1_n_6 ;
  wire \DivCnt_reg[16]_i_1_n_7 ;
  wire \DivCnt_reg[20]_i_1_n_0 ;
  wire \DivCnt_reg[20]_i_1_n_1 ;
  wire \DivCnt_reg[20]_i_1_n_2 ;
  wire \DivCnt_reg[20]_i_1_n_3 ;
  wire \DivCnt_reg[20]_i_1_n_4 ;
  wire \DivCnt_reg[20]_i_1_n_5 ;
  wire \DivCnt_reg[20]_i_1_n_6 ;
  wire \DivCnt_reg[20]_i_1_n_7 ;
  wire \DivCnt_reg[24]_i_1_n_3 ;
  wire \DivCnt_reg[24]_i_1_n_6 ;
  wire \DivCnt_reg[24]_i_1_n_7 ;
  wire \DivCnt_reg[4]_i_1_n_0 ;
  wire \DivCnt_reg[4]_i_1_n_1 ;
  wire \DivCnt_reg[4]_i_1_n_2 ;
  wire \DivCnt_reg[4]_i_1_n_3 ;
  wire \DivCnt_reg[4]_i_1_n_4 ;
  wire \DivCnt_reg[4]_i_1_n_5 ;
  wire \DivCnt_reg[4]_i_1_n_6 ;
  wire \DivCnt_reg[4]_i_1_n_7 ;
  wire \DivCnt_reg[8]_i_1_n_0 ;
  wire \DivCnt_reg[8]_i_1_n_1 ;
  wire \DivCnt_reg[8]_i_1_n_2 ;
  wire \DivCnt_reg[8]_i_1_n_3 ;
  wire \DivCnt_reg[8]_i_1_n_4 ;
  wire \DivCnt_reg[8]_i_1_n_5 ;
  wire \DivCnt_reg[8]_i_1_n_6 ;
  wire \DivCnt_reg[8]_i_1_n_7 ;
  wire [3:1]\NLW_DivCnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_DivCnt_reg[24]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    ClkOut_i_1
       (.I0(ClkOut_0),
        .I1(ClkOut),
        .O(ClkOut_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ClkOut_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ClkOut_i_1_n_0),
        .Q(ClkOut),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \DivCnt[0]_i_1 
       (.I0(\DivCnt[0]_i_3_n_0 ),
        .I1(\DivCnt[0]_i_4_n_0 ),
        .I2(\DivCnt[0]_i_5_n_0 ),
        .I3(\DivCnt[0]_i_6_n_0 ),
        .I4(\DivCnt[0]_i_7_n_0 ),
        .I5(\DivCnt[0]_i_8_n_0 ),
        .O(ClkOut_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \DivCnt[0]_i_3 
       (.I0(DivCnt_reg[7]),
        .I1(DivCnt_reg[25]),
        .I2(DivCnt_reg[21]),
        .I3(DivCnt_reg[15]),
        .O(\DivCnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \DivCnt[0]_i_4 
       (.I0(DivCnt_reg[20]),
        .I1(DivCnt_reg[13]),
        .I2(DivCnt_reg[11]),
        .I3(DivCnt_reg[18]),
        .O(\DivCnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \DivCnt[0]_i_5 
       (.I0(DivCnt_reg[1]),
        .I1(DivCnt_reg[10]),
        .I2(DivCnt_reg[2]),
        .I3(DivCnt_reg[5]),
        .O(\DivCnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \DivCnt[0]_i_6 
       (.I0(DivCnt_reg[23]),
        .I1(DivCnt_reg[3]),
        .I2(DivCnt_reg[22]),
        .I3(DivCnt_reg[4]),
        .O(\DivCnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \DivCnt[0]_i_7 
       (.I0(DivCnt_reg[14]),
        .I1(DivCnt_reg[6]),
        .I2(DivCnt_reg[16]),
        .I3(DivCnt_reg[0]),
        .O(\DivCnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \DivCnt[0]_i_8 
       (.I0(DivCnt_reg[19]),
        .I1(DivCnt_reg[8]),
        .I2(DivCnt_reg[9]),
        .I3(DivCnt_reg[12]),
        .I4(DivCnt_reg[24]),
        .I5(DivCnt_reg[17]),
        .O(\DivCnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DivCnt[0]_i_9 
       (.I0(DivCnt_reg[0]),
        .O(\DivCnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[0]_i_2_n_7 ),
        .Q(DivCnt_reg[0]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\DivCnt_reg[0]_i_2_n_0 ,\DivCnt_reg[0]_i_2_n_1 ,\DivCnt_reg[0]_i_2_n_2 ,\DivCnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\DivCnt_reg[0]_i_2_n_4 ,\DivCnt_reg[0]_i_2_n_5 ,\DivCnt_reg[0]_i_2_n_6 ,\DivCnt_reg[0]_i_2_n_7 }),
        .S({DivCnt_reg[3:1],\DivCnt[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[8]_i_1_n_5 ),
        .Q(DivCnt_reg[10]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[8]_i_1_n_4 ),
        .Q(DivCnt_reg[11]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[12]_i_1_n_7 ),
        .Q(DivCnt_reg[12]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[12]_i_1 
       (.CI(\DivCnt_reg[8]_i_1_n_0 ),
        .CO({\DivCnt_reg[12]_i_1_n_0 ,\DivCnt_reg[12]_i_1_n_1 ,\DivCnt_reg[12]_i_1_n_2 ,\DivCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DivCnt_reg[12]_i_1_n_4 ,\DivCnt_reg[12]_i_1_n_5 ,\DivCnt_reg[12]_i_1_n_6 ,\DivCnt_reg[12]_i_1_n_7 }),
        .S(DivCnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[12]_i_1_n_6 ),
        .Q(DivCnt_reg[13]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[12]_i_1_n_5 ),
        .Q(DivCnt_reg[14]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[12]_i_1_n_4 ),
        .Q(DivCnt_reg[15]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[16]_i_1_n_7 ),
        .Q(DivCnt_reg[16]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[16]_i_1 
       (.CI(\DivCnt_reg[12]_i_1_n_0 ),
        .CO({\DivCnt_reg[16]_i_1_n_0 ,\DivCnt_reg[16]_i_1_n_1 ,\DivCnt_reg[16]_i_1_n_2 ,\DivCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DivCnt_reg[16]_i_1_n_4 ,\DivCnt_reg[16]_i_1_n_5 ,\DivCnt_reg[16]_i_1_n_6 ,\DivCnt_reg[16]_i_1_n_7 }),
        .S(DivCnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[16]_i_1_n_6 ),
        .Q(DivCnt_reg[17]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[16]_i_1_n_5 ),
        .Q(DivCnt_reg[18]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[16]_i_1_n_4 ),
        .Q(DivCnt_reg[19]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[0]_i_2_n_6 ),
        .Q(DivCnt_reg[1]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[20]_i_1_n_7 ),
        .Q(DivCnt_reg[20]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[20]_i_1 
       (.CI(\DivCnt_reg[16]_i_1_n_0 ),
        .CO({\DivCnt_reg[20]_i_1_n_0 ,\DivCnt_reg[20]_i_1_n_1 ,\DivCnt_reg[20]_i_1_n_2 ,\DivCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DivCnt_reg[20]_i_1_n_4 ,\DivCnt_reg[20]_i_1_n_5 ,\DivCnt_reg[20]_i_1_n_6 ,\DivCnt_reg[20]_i_1_n_7 }),
        .S(DivCnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[20]_i_1_n_6 ),
        .Q(DivCnt_reg[21]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[20]_i_1_n_5 ),
        .Q(DivCnt_reg[22]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[20]_i_1_n_4 ),
        .Q(DivCnt_reg[23]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[24]_i_1_n_7 ),
        .Q(DivCnt_reg[24]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[24]_i_1 
       (.CI(\DivCnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_DivCnt_reg[24]_i_1_CO_UNCONNECTED [3:1],\DivCnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DivCnt_reg[24]_i_1_O_UNCONNECTED [3:2],\DivCnt_reg[24]_i_1_n_6 ,\DivCnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,DivCnt_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[24]_i_1_n_6 ),
        .Q(DivCnt_reg[25]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[0]_i_2_n_5 ),
        .Q(DivCnt_reg[2]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[0]_i_2_n_4 ),
        .Q(DivCnt_reg[3]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[4]_i_1_n_7 ),
        .Q(DivCnt_reg[4]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[4]_i_1 
       (.CI(\DivCnt_reg[0]_i_2_n_0 ),
        .CO({\DivCnt_reg[4]_i_1_n_0 ,\DivCnt_reg[4]_i_1_n_1 ,\DivCnt_reg[4]_i_1_n_2 ,\DivCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DivCnt_reg[4]_i_1_n_4 ,\DivCnt_reg[4]_i_1_n_5 ,\DivCnt_reg[4]_i_1_n_6 ,\DivCnt_reg[4]_i_1_n_7 }),
        .S(DivCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[4]_i_1_n_6 ),
        .Q(DivCnt_reg[5]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[4]_i_1_n_5 ),
        .Q(DivCnt_reg[6]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[4]_i_1_n_4 ),
        .Q(DivCnt_reg[7]),
        .R(ClkOut_0));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[8]_i_1_n_7 ),
        .Q(DivCnt_reg[8]),
        .R(ClkOut_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \DivCnt_reg[8]_i_1 
       (.CI(\DivCnt_reg[4]_i_1_n_0 ),
        .CO({\DivCnt_reg[8]_i_1_n_0 ,\DivCnt_reg[8]_i_1_n_1 ,\DivCnt_reg[8]_i_1_n_2 ,\DivCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DivCnt_reg[8]_i_1_n_4 ,\DivCnt_reg[8]_i_1_n_5 ,\DivCnt_reg[8]_i_1_n_6 ,\DivCnt_reg[8]_i_1_n_7 }),
        .S(DivCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DivCnt_reg[8]_i_1_n_6 ),
        .Q(DivCnt_reg[9]),
        .R(ClkOut_0));
endmodule

module InstructionFetchUnit
   (\PCResult_reg[4] ,
    out7_OBUF,
    \PCResult_reg[8] ,
    \PCResult_reg[14] ,
    ClkOut,
    Reset_IBUF,
    sel0,
    \out7[6] );
  output [2:0]\PCResult_reg[4] ;
  output [6:0]out7_OBUF;
  output [0:0]\PCResult_reg[8] ;
  output \PCResult_reg[14] ;
  input ClkOut;
  input Reset_IBUF;
  input [2:0]sel0;
  input \out7[6] ;

  wire ClkOut;
  wire \PCResult_reg[14] ;
  wire [2:0]\PCResult_reg[4] ;
  wire [0:0]\PCResult_reg[8] ;
  wire Reset_IBUF;
  wire [3:1]data1;
  wire \display/in40 ;
  wire instruction_memory_n_4;
  wire instruction_memory_n_5;
  wire \out7[6] ;
  wire [6:0]out7_OBUF;
  wire [6:3]sel;
  wire [2:0]sel0;

  InstructionMemory instruction_memory
       (.\PCResult_reg[2] (instruction_memory_n_5),
        .\PCResult_reg[5] (instruction_memory_n_4),
        .\PCResult_reg[8] (\PCResult_reg[8] ),
        .S(\PCResult_reg[4] [2:1]),
        .data1({data1[3],data1[1]}),
        .in40(\display/in40 ),
        .\out7_OBUF[5]_inst_i_3 (\PCResult_reg[4] [0]),
        .sel(sel));
  ProgramCounter program_counter
       (.ClkOut(ClkOut),
        .\PCResult_reg[14]_0 (\PCResult_reg[14] ),
        .\PCResult_reg[2]_0 (\PCResult_reg[4] [0]),
        .Reset_IBUF(Reset_IBUF),
        .S({sel[3],\PCResult_reg[4] [2:1]}),
        .data1({data1[3],data1[1]}),
        .in40(\display/in40 ),
        .\out7[6] (\out7[6] ),
        .out7_OBUF(out7_OBUF),
        .\out7_OBUF[0]_inst_i_1_0 (instruction_memory_n_4),
        .\out7_OBUF[2]_inst_i_1_0 (instruction_memory_n_5),
        .sel(sel[6:4]),
        .sel0(sel0));
endmodule

module InstructionMemory
   (data1,
    \PCResult_reg[8] ,
    in40,
    \PCResult_reg[5] ,
    \PCResult_reg[2] ,
    sel,
    S,
    \out7_OBUF[5]_inst_i_3 );
  output [1:0]data1;
  output [0:0]\PCResult_reg[8] ;
  output in40;
  output \PCResult_reg[5] ;
  output \PCResult_reg[2] ;
  input [3:0]sel;
  input [1:0]S;
  input \out7_OBUF[5]_inst_i_3 ;

  wire \PCResult_reg[2] ;
  wire \PCResult_reg[5] ;
  wire [0:0]\PCResult_reg[8] ;
  wire [1:0]S;
  wire [1:0]data1;
  wire in40;
  wire \out7_OBUF[5]_inst_i_3 ;
  wire \out7_OBUF[6]_inst_i_17_n_0 ;
  wire \out7_OBUF[6]_inst_i_18_n_0 ;
  wire \out7_OBUF[6]_inst_i_19_n_0 ;
  wire \out7_OBUF[6]_inst_i_20_n_0 ;
  wire [3:0]sel;

  LUT6 #(
    .INIT(64'hEEEEEAAA00000000)) 
    \out7_OBUF[6]_inst_i_13 
       (.I0(sel[2]),
        .I1(sel[1]),
        .I2(S[0]),
        .I3(S[1]),
        .I4(sel[0]),
        .I5(sel[3]),
        .O(in40));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out7_OBUF[6]_inst_i_15 
       (.I0(\out7_OBUF[5]_inst_i_3 ),
        .I1(S[0]),
        .O(\PCResult_reg[2] ));
  LUT6 #(
    .INIT(64'h999C9C9CC666C666)) 
    \out7_OBUF[6]_inst_i_16 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(S[1]),
        .I3(S[0]),
        .I4(\out7_OBUF[5]_inst_i_3 ),
        .I5(sel[0]),
        .O(data1[0]));
  LUT6 #(
    .INIT(64'hEEEEEAAA00000000)) 
    \out7_OBUF[6]_inst_i_17 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(\out7_OBUF[5]_inst_i_3 ),
        .I3(S[0]),
        .I4(S[1]),
        .I5(sel[2]),
        .O(\out7_OBUF[6]_inst_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h000015FF)) 
    \out7_OBUF[6]_inst_i_18 
       (.I0(sel[0]),
        .I1(S[0]),
        .I2(S[1]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(\out7_OBUF[6]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h11111555A8A88888)) 
    \out7_OBUF[6]_inst_i_19 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(S[0]),
        .I3(\out7_OBUF[5]_inst_i_3 ),
        .I4(S[1]),
        .I5(sel[2]),
        .O(\out7_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAAA55777777)) 
    \out7_OBUF[6]_inst_i_20 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(\out7_OBUF[5]_inst_i_3 ),
        .I3(S[0]),
        .I4(S[1]),
        .I5(sel[2]),
        .O(\out7_OBUF[6]_inst_i_20_n_0 ));
  MUXF7 \out7_OBUF[6]_inst_i_6 
       (.I0(\out7_OBUF[6]_inst_i_17_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_18_n_0 ),
        .O(data1[1]),
        .S(sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h96A6)) 
    \out7_OBUF[6]_inst_i_7 
       (.I0(sel[0]),
        .I1(S[1]),
        .I2(S[0]),
        .I3(\out7_OBUF[5]_inst_i_3 ),
        .O(\PCResult_reg[5] ));
  MUXF7 \out7_OBUF[6]_inst_i_9 
       (.I0(\out7_OBUF[6]_inst_i_19_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_20_n_0 ),
        .O(\PCResult_reg[8] ),
        .S(sel[3]));
endmodule

module ProgramCounter
   (\PCResult_reg[2]_0 ,
    S,
    sel,
    out7_OBUF,
    \PCResult_reg[14]_0 ,
    ClkOut,
    Reset_IBUF,
    sel0,
    \out7[6] ,
    \out7_OBUF[2]_inst_i_1_0 ,
    data1,
    in40,
    \out7_OBUF[0]_inst_i_1_0 );
  output \PCResult_reg[2]_0 ;
  output [2:0]S;
  output [2:0]sel;
  output [6:0]out7_OBUF;
  output \PCResult_reg[14]_0 ;
  input ClkOut;
  input Reset_IBUF;
  input [2:0]sel0;
  input \out7[6] ;
  input \out7_OBUF[2]_inst_i_1_0 ;
  input [1:0]data1;
  input in40;
  input \out7_OBUF[0]_inst_i_1_0 ;

  wire ClkOut;
  wire \PCResult[2]_i_2_n_0 ;
  wire \PCResult_reg[10]_i_1_n_0 ;
  wire \PCResult_reg[10]_i_1_n_1 ;
  wire \PCResult_reg[10]_i_1_n_2 ;
  wire \PCResult_reg[10]_i_1_n_3 ;
  wire \PCResult_reg[10]_i_1_n_4 ;
  wire \PCResult_reg[10]_i_1_n_5 ;
  wire \PCResult_reg[10]_i_1_n_6 ;
  wire \PCResult_reg[10]_i_1_n_7 ;
  wire \PCResult_reg[14]_0 ;
  wire \PCResult_reg[14]_i_1_n_3 ;
  wire \PCResult_reg[14]_i_1_n_6 ;
  wire \PCResult_reg[14]_i_1_n_7 ;
  wire \PCResult_reg[2]_0 ;
  wire \PCResult_reg[2]_i_1_n_0 ;
  wire \PCResult_reg[2]_i_1_n_1 ;
  wire \PCResult_reg[2]_i_1_n_2 ;
  wire \PCResult_reg[2]_i_1_n_3 ;
  wire \PCResult_reg[2]_i_1_n_4 ;
  wire \PCResult_reg[2]_i_1_n_5 ;
  wire \PCResult_reg[2]_i_1_n_6 ;
  wire \PCResult_reg[2]_i_1_n_7 ;
  wire \PCResult_reg[6]_i_1_n_0 ;
  wire \PCResult_reg[6]_i_1_n_1 ;
  wire \PCResult_reg[6]_i_1_n_2 ;
  wire \PCResult_reg[6]_i_1_n_3 ;
  wire \PCResult_reg[6]_i_1_n_4 ;
  wire \PCResult_reg[6]_i_1_n_5 ;
  wire \PCResult_reg[6]_i_1_n_6 ;
  wire \PCResult_reg[6]_i_1_n_7 ;
  wire \PCResult_reg_n_0_[10] ;
  wire \PCResult_reg_n_0_[11] ;
  wire \PCResult_reg_n_0_[9] ;
  wire Reset_IBUF;
  wire [2:0]S;
  wire [1:0]data1;
  wire [3:0]data7;
  wire in40;
  wire \out7[6] ;
  wire [6:0]out7_OBUF;
  wire \out7_OBUF[0]_inst_i_1_0 ;
  wire \out7_OBUF[2]_inst_i_1_0 ;
  wire \out7_OBUF[5]_inst_i_2_n_0 ;
  wire \out7_OBUF[5]_inst_i_3_n_0 ;
  wire \out7_OBUF[6]_inst_i_12_n_0 ;
  wire \out7_OBUF[6]_inst_i_14_n_0 ;
  wire \out7_OBUF[6]_inst_i_2_n_0 ;
  wire \out7_OBUF[6]_inst_i_4_n_0 ;
  wire \out7_OBUF[6]_inst_i_5_n_0 ;
  wire \out7_OBUF[6]_inst_i_8_n_0 ;
  wire [2:0]sel;
  wire [2:0]sel0;
  wire [3:1]\NLW_PCResult_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_PCResult_reg[14]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \PCResult[2]_i_2 
       (.I0(\PCResult_reg[2]_0 ),
        .O(\PCResult[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[10] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[10]_i_1_n_7 ),
        .Q(\PCResult_reg_n_0_[10] ));
  CARRY4 \PCResult_reg[10]_i_1 
       (.CI(\PCResult_reg[6]_i_1_n_0 ),
        .CO({\PCResult_reg[10]_i_1_n_0 ,\PCResult_reg[10]_i_1_n_1 ,\PCResult_reg[10]_i_1_n_2 ,\PCResult_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PCResult_reg[10]_i_1_n_4 ,\PCResult_reg[10]_i_1_n_5 ,\PCResult_reg[10]_i_1_n_6 ,\PCResult_reg[10]_i_1_n_7 }),
        .S({data7[1:0],\PCResult_reg_n_0_[11] ,\PCResult_reg_n_0_[10] }));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[11] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[10]_i_1_n_6 ),
        .Q(\PCResult_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[12] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[10]_i_1_n_5 ),
        .Q(data7[0]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[13] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[10]_i_1_n_4 ),
        .Q(data7[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[14] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[14]_i_1_n_7 ),
        .Q(data7[2]));
  CARRY4 \PCResult_reg[14]_i_1 
       (.CI(\PCResult_reg[10]_i_1_n_0 ),
        .CO({\NLW_PCResult_reg[14]_i_1_CO_UNCONNECTED [3:1],\PCResult_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PCResult_reg[14]_i_1_O_UNCONNECTED [3:2],\PCResult_reg[14]_i_1_n_6 ,\PCResult_reg[14]_i_1_n_7 }),
        .S({1'b0,1'b0,data7[3:2]}));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[15] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[14]_i_1_n_6 ),
        .Q(data7[3]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[2] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[2]_i_1_n_7 ),
        .Q(\PCResult_reg[2]_0 ));
  CARRY4 \PCResult_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\PCResult_reg[2]_i_1_n_0 ,\PCResult_reg[2]_i_1_n_1 ,\PCResult_reg[2]_i_1_n_2 ,\PCResult_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\PCResult_reg[2]_i_1_n_4 ,\PCResult_reg[2]_i_1_n_5 ,\PCResult_reg[2]_i_1_n_6 ,\PCResult_reg[2]_i_1_n_7 }),
        .S({S,\PCResult[2]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[3] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[2]_i_1_n_6 ),
        .Q(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[4] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[2]_i_1_n_5 ),
        .Q(S[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[5] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[2]_i_1_n_4 ),
        .Q(S[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[6] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[6]_i_1_n_7 ),
        .Q(sel[0]));
  CARRY4 \PCResult_reg[6]_i_1 
       (.CI(\PCResult_reg[2]_i_1_n_0 ),
        .CO({\PCResult_reg[6]_i_1_n_0 ,\PCResult_reg[6]_i_1_n_1 ,\PCResult_reg[6]_i_1_n_2 ,\PCResult_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PCResult_reg[6]_i_1_n_4 ,\PCResult_reg[6]_i_1_n_5 ,\PCResult_reg[6]_i_1_n_6 ,\PCResult_reg[6]_i_1_n_7 }),
        .S({\PCResult_reg_n_0_[9] ,sel}));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[7] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[6]_i_1_n_6 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[8] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[6]_i_1_n_5 ),
        .Q(sel[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[9] 
       (.C(ClkOut),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(\PCResult_reg[6]_i_1_n_4 ),
        .Q(\PCResult_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h202A202A8A801015)) 
    \out7_OBUF[0]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7_OBUF[5]_inst_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(\out7_OBUF[5]_inst_i_3_n_0 ),
        .I4(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I5(\out7[6] ),
        .O(out7_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA890)) 
    \out7_OBUF[1]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_5_n_0 ),
        .I2(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I3(\out7[6] ),
        .O(out7_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A8C)) 
    \out7_OBUF[2]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I2(\out7_OBUF[6]_inst_i_5_n_0 ),
        .I3(\out7[6] ),
        .O(out7_OBUF[2]));
  LUT6 #(
    .INIT(64'h3434348282823482)) 
    \out7_OBUF[3]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7[6] ),
        .I2(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I3(\out7_OBUF[5]_inst_i_3_n_0 ),
        .I4(sel0[2]),
        .I5(\out7_OBUF[5]_inst_i_2_n_0 ),
        .O(out7_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1091)) 
    \out7_OBUF[4]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7[6] ),
        .I2(\out7_OBUF[6]_inst_i_5_n_0 ),
        .I3(\out7_OBUF[6]_inst_i_4_n_0 ),
        .O(out7_OBUF[4]));
  LUT6 #(
    .INIT(64'h45400000656ADFD5)) 
    \out7_OBUF[5]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7_OBUF[5]_inst_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(\out7_OBUF[5]_inst_i_3_n_0 ),
        .I4(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I5(\out7[6] ),
        .O(out7_OBUF[5]));
  LUT5 #(
    .INIT(32'hAAF0CC00)) 
    \out7_OBUF[5]_inst_i_2 
       (.I0(data7[1]),
        .I1(\PCResult_reg_n_0_[9] ),
        .I2(S[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\out7_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000F606)) 
    \out7_OBUF[5]_inst_i_3 
       (.I0(S[0]),
        .I1(\PCResult_reg[2]_0 ),
        .I2(sel0[0]),
        .I3(data1[0]),
        .I4(sel0[1]),
        .O(\out7_OBUF[5]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4092)) 
    \out7_OBUF[6]_inst_i_1 
       (.I0(\out7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out7[6] ),
        .I2(\out7_OBUF[6]_inst_i_4_n_0 ),
        .I3(\out7_OBUF[6]_inst_i_5_n_0 ),
        .O(out7_OBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_11 
       (.I0(data7[2]),
        .I1(\PCResult_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(sel[0]),
        .I4(sel0[0]),
        .I5(\PCResult_reg[2]_0 ),
        .O(\PCResult_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \out7_OBUF[6]_inst_i_12 
       (.I0(data7[0]),
        .I1(sel[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(S[1]),
        .O(\out7_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9AA6FFFF96A60000)) 
    \out7_OBUF[6]_inst_i_14 
       (.I0(sel[0]),
        .I1(S[2]),
        .I2(S[1]),
        .I3(S[0]),
        .I4(sel0[0]),
        .I5(\PCResult_reg[2]_0 ),
        .O(\out7_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000DCDFFFFFDCDF)) 
    \out7_OBUF[6]_inst_i_2 
       (.I0(data1[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\out7_OBUF[0]_inst_i_1_0 ),
        .I4(sel0[2]),
        .I5(\out7_OBUF[6]_inst_i_8_n_0 ),
        .O(\out7_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out7_OBUF[6]_inst_i_4 
       (.I0(\out7_OBUF[6]_inst_i_12_n_0 ),
        .I1(sel0[2]),
        .I2(in40),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\out7_OBUF[6]_inst_i_14_n_0 ),
        .O(\out7_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \out7_OBUF[6]_inst_i_5 
       (.I0(\out7_OBUF[5]_inst_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\out7_OBUF[2]_inst_i_1_0 ),
        .I3(sel0[0]),
        .I4(data1[0]),
        .I5(sel0[1]),
        .O(\out7_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_8 
       (.I0(data7[3]),
        .I1(\PCResult_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(sel[1]),
        .I4(sel0[0]),
        .I5(S[0]),
        .O(\out7_OBUF[6]_inst_i_8_n_0 ));
endmodule

(* NotValidForBitStream *)
module Top
   (Reset,
    Clk,
    out7,
    en_out);
  input Reset;
  input Clk;
  output [6:0]out7;
  output [7:0]en_out;

  wire Clk;
  wire ClkOut;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Reset;
  wire Reset_IBUF;
  wire [2:2]data1;
  wire display_n_3;
  wire [7:0]en_out;
  wire [7:0]en_out_OBUF;
  wire instruction_fetch_n_11;
  wire [6:0]out7;
  wire [6:0]out7_OBUF;
  wire [2:0]sel;
  wire [2:0]sel0;

  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  ClkDiv clock
       (.ClkOut(ClkOut),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG));
  Two4DigitDisplay display
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .\cnt_reg[18]_0 (display_n_3),
        .data1(data1),
        .en_out_OBUF(en_out_OBUF),
        .\out7_OBUF[0]_inst_i_1 (instruction_fetch_n_11),
        .sel(sel),
        .sel0(sel0));
  OBUF \en_out_OBUF[0]_inst 
       (.I(en_out_OBUF[0]),
        .O(en_out[0]));
  OBUF \en_out_OBUF[1]_inst 
       (.I(en_out_OBUF[1]),
        .O(en_out[1]));
  OBUF \en_out_OBUF[2]_inst 
       (.I(en_out_OBUF[2]),
        .O(en_out[2]));
  OBUF \en_out_OBUF[3]_inst 
       (.I(en_out_OBUF[3]),
        .O(en_out[3]));
  OBUF \en_out_OBUF[4]_inst 
       (.I(en_out_OBUF[4]),
        .O(en_out[4]));
  OBUF \en_out_OBUF[5]_inst 
       (.I(en_out_OBUF[5]),
        .O(en_out[5]));
  OBUF \en_out_OBUF[6]_inst 
       (.I(en_out_OBUF[6]),
        .O(en_out[6]));
  OBUF \en_out_OBUF[7]_inst 
       (.I(en_out_OBUF[7]),
        .O(en_out[7]));
  InstructionFetchUnit instruction_fetch
       (.ClkOut(ClkOut),
        .\PCResult_reg[14] (instruction_fetch_n_11),
        .\PCResult_reg[4] (sel),
        .\PCResult_reg[8] (data1),
        .Reset_IBUF(Reset_IBUF),
        .\out7[6] (display_n_3),
        .out7_OBUF(out7_OBUF),
        .sel0(sel0));
  OBUF \out7_OBUF[0]_inst 
       (.I(out7_OBUF[0]),
        .O(out7[0]));
  OBUF \out7_OBUF[1]_inst 
       (.I(out7_OBUF[1]),
        .O(out7[1]));
  OBUF \out7_OBUF[2]_inst 
       (.I(out7_OBUF[2]),
        .O(out7[2]));
  OBUF \out7_OBUF[3]_inst 
       (.I(out7_OBUF[3]),
        .O(out7[3]));
  OBUF \out7_OBUF[4]_inst 
       (.I(out7_OBUF[4]),
        .O(out7[4]));
  OBUF \out7_OBUF[5]_inst 
       (.I(out7_OBUF[5]),
        .O(out7[5]));
  OBUF \out7_OBUF[6]_inst 
       (.I(out7_OBUF[6]),
        .O(out7[6]));
endmodule

module Two4DigitDisplay
   (sel0,
    \cnt_reg[18]_0 ,
    en_out_OBUF,
    Clk_IBUF_BUFG,
    data1,
    \out7_OBUF[0]_inst_i_1 ,
    sel);
  output [2:0]sel0;
  output \cnt_reg[18]_0 ;
  output [7:0]en_out_OBUF;
  input Clk_IBUF_BUFG;
  input [0:0]data1;
  input \out7_OBUF[0]_inst_i_1 ;
  input [2:0]sel;

  wire Clk_IBUF_BUFG;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[18]_0 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [0:0]data1;
  wire [7:0]en_out_OBUF;
  wire \out7_OBUF[0]_inst_i_1 ;
  wire \out7_OBUF[6]_inst_i_10_n_0 ;
  wire [2:0]sel;
  wire [2:0]sel0;
  wire [3:3]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3],\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({sel0,\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \en_out_OBUF[0]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(en_out_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \en_out_OBUF[1]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(en_out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \en_out_OBUF[2]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(en_out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \en_out_OBUF[3]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(en_out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \en_out_OBUF[4]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(en_out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \en_out_OBUF[5]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(en_out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \en_out_OBUF[6]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(en_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \en_out_OBUF[7]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(en_out_OBUF[7]));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFEFF)) 
    \out7_OBUF[6]_inst_i_10 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(sel[2]),
        .O(\out7_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000DF00FF00DF00)) 
    \out7_OBUF[6]_inst_i_3 
       (.I0(data1),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\out7_OBUF[6]_inst_i_10_n_0 ),
        .I4(sel0[2]),
        .I5(\out7_OBUF[0]_inst_i_1 ),
        .O(\cnt_reg[18]_0 ));
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
