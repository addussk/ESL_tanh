// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 24 16:39:49 2018
// Host        : PC06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_my_sum_0_0/design_1_my_sum_0_0_stub.v
// Design      : design_1_my_sum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "my_sum,Vivado 2018.2" *)
module design_1_my_sum_0_0(clk, reset, axis_s_raw_tdata, 
  axis_s_raw_tready, axis_s_raw_tvalid, axis_s_raw_tlast, axis_m_sum_tdata, 
  axis_m_sum_tready, axis_m_sum_tvalid, axis_m_sum_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,axis_s_raw_tdata[31:0],axis_s_raw_tready,axis_s_raw_tvalid,axis_s_raw_tlast,axis_m_sum_tdata[31:0],axis_m_sum_tready,axis_m_sum_tvalid,axis_m_sum_tlast" */;
  input clk;
  input reset;
  input [31:0]axis_s_raw_tdata;
  output axis_s_raw_tready;
  input axis_s_raw_tvalid;
  input axis_s_raw_tlast;
  output [31:0]axis_m_sum_tdata;
  input axis_m_sum_tready;
  output axis_m_sum_tvalid;
  output axis_m_sum_tlast;
endmodule
