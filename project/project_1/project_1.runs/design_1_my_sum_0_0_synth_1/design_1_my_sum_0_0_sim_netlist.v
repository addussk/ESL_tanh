// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 24 16:39:49 2018
// Host        : PC06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_sum_0_0_sim_netlist.v
// Design      : design_1_my_sum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_my_sum_0_0,my_sum,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "my_sum,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    axis_s_raw_tdata,
    axis_s_raw_tready,
    axis_s_raw_tvalid,
    axis_s_raw_tlast,
    axis_m_sum_tdata,
    axis_m_sum_tready,
    axis_m_sum_tvalid,
    axis_m_sum_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis_m_sum:axis_s_raw, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_s_raw TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_s_raw, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input [31:0]axis_s_raw_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_s_raw TREADY" *) output axis_s_raw_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_s_raw TVALID" *) input axis_s_raw_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_s_raw TLAST" *) input axis_s_raw_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_m_sum TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_m_sum, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output [31:0]axis_m_sum_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_m_sum TREADY" *) input axis_m_sum_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_m_sum TVALID" *) output axis_m_sum_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis_m_sum TLAST" *) output axis_m_sum_tlast;

  wire [31:0]axis_m_sum_tdata;
  wire axis_m_sum_tlast;
  wire axis_m_sum_tready;
  wire axis_m_sum_tvalid;
  wire [31:0]axis_s_raw_tdata;
  wire axis_s_raw_tlast;
  wire axis_s_raw_tready;
  wire axis_s_raw_tvalid;
  wire clk;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum U0
       (.axis_m_sum_tdata(axis_m_sum_tdata),
        .axis_m_sum_tlast(axis_m_sum_tlast),
        .axis_m_sum_tready(axis_m_sum_tready),
        .axis_m_sum_tvalid(axis_m_sum_tvalid),
        .axis_s_raw_tdata(axis_s_raw_tdata),
        .axis_s_raw_tlast(axis_s_raw_tlast),
        .axis_s_raw_tready(axis_s_raw_tready),
        .axis_s_raw_tvalid(axis_s_raw_tvalid),
        .clk(clk),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum
   (axis_m_sum_tdata,
    axis_m_sum_tvalid,
    axis_m_sum_tlast,
    axis_s_raw_tready,
    clk,
    axis_s_raw_tvalid,
    axis_s_raw_tlast,
    axis_m_sum_tready,
    axis_s_raw_tdata,
    reset);
  output [31:0]axis_m_sum_tdata;
  output axis_m_sum_tvalid;
  output axis_m_sum_tlast;
  output axis_s_raw_tready;
  input clk;
  input axis_s_raw_tvalid;
  input axis_s_raw_tlast;
  input axis_m_sum_tready;
  input [31:0]axis_s_raw_tdata;
  input reset;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \__0/i__n_0 ;
  wire \__1/i__n_0 ;
  wire \__2/i__n_0 ;
  wire [31:0]accumulator;
  wire accumulator0_carry__0_i_1_n_0;
  wire accumulator0_carry__0_i_2_n_0;
  wire accumulator0_carry__0_i_3_n_0;
  wire accumulator0_carry__0_i_4_n_0;
  wire accumulator0_carry__0_n_0;
  wire accumulator0_carry__0_n_1;
  wire accumulator0_carry__0_n_2;
  wire accumulator0_carry__0_n_3;
  wire accumulator0_carry__1_i_1_n_0;
  wire accumulator0_carry__1_i_2_n_0;
  wire accumulator0_carry__1_i_3_n_0;
  wire accumulator0_carry__1_i_4_n_0;
  wire accumulator0_carry__1_n_0;
  wire accumulator0_carry__1_n_1;
  wire accumulator0_carry__1_n_2;
  wire accumulator0_carry__1_n_3;
  wire accumulator0_carry__2_i_1_n_0;
  wire accumulator0_carry__2_i_2_n_0;
  wire accumulator0_carry__2_i_3_n_0;
  wire accumulator0_carry__2_i_4_n_0;
  wire accumulator0_carry__2_n_0;
  wire accumulator0_carry__2_n_1;
  wire accumulator0_carry__2_n_2;
  wire accumulator0_carry__2_n_3;
  wire accumulator0_carry__3_i_1_n_0;
  wire accumulator0_carry__3_i_2_n_0;
  wire accumulator0_carry__3_i_3_n_0;
  wire accumulator0_carry__3_i_4_n_0;
  wire accumulator0_carry__3_n_0;
  wire accumulator0_carry__3_n_1;
  wire accumulator0_carry__3_n_2;
  wire accumulator0_carry__3_n_3;
  wire accumulator0_carry__4_i_1_n_0;
  wire accumulator0_carry__4_i_2_n_0;
  wire accumulator0_carry__4_i_3_n_0;
  wire accumulator0_carry__4_i_4_n_0;
  wire accumulator0_carry__4_n_0;
  wire accumulator0_carry__4_n_1;
  wire accumulator0_carry__4_n_2;
  wire accumulator0_carry__4_n_3;
  wire accumulator0_carry__5_i_1_n_0;
  wire accumulator0_carry__5_i_2_n_0;
  wire accumulator0_carry__5_i_3_n_0;
  wire accumulator0_carry__5_i_4_n_0;
  wire accumulator0_carry__5_n_0;
  wire accumulator0_carry__5_n_1;
  wire accumulator0_carry__5_n_2;
  wire accumulator0_carry__5_n_3;
  wire accumulator0_carry__6_i_1_n_0;
  wire accumulator0_carry__6_i_2_n_0;
  wire accumulator0_carry__6_i_3_n_0;
  wire accumulator0_carry__6_i_4_n_0;
  wire accumulator0_carry__6_n_1;
  wire accumulator0_carry__6_n_2;
  wire accumulator0_carry__6_n_3;
  wire accumulator0_carry_i_1_n_0;
  wire accumulator0_carry_i_2_n_0;
  wire accumulator0_carry_i_3_n_0;
  wire accumulator0_carry_i_4_n_0;
  wire accumulator0_carry_n_0;
  wire accumulator0_carry_n_1;
  wire accumulator0_carry_n_2;
  wire accumulator0_carry_n_3;
  wire \accumulator[0]_i_1_n_0 ;
  wire \accumulator[10]_i_1_n_0 ;
  wire \accumulator[11]_i_1_n_0 ;
  wire \accumulator[12]_i_1_n_0 ;
  wire \accumulator[13]_i_1_n_0 ;
  wire \accumulator[14]_i_1_n_0 ;
  wire \accumulator[15]_i_1_n_0 ;
  wire \accumulator[16]_i_1_n_0 ;
  wire \accumulator[17]_i_1_n_0 ;
  wire \accumulator[18]_i_1_n_0 ;
  wire \accumulator[19]_i_1_n_0 ;
  wire \accumulator[1]_i_1_n_0 ;
  wire \accumulator[20]_i_1_n_0 ;
  wire \accumulator[21]_i_1_n_0 ;
  wire \accumulator[22]_i_1_n_0 ;
  wire \accumulator[23]_i_1_n_0 ;
  wire \accumulator[24]_i_1_n_0 ;
  wire \accumulator[25]_i_1_n_0 ;
  wire \accumulator[26]_i_1_n_0 ;
  wire \accumulator[27]_i_1_n_0 ;
  wire \accumulator[28]_i_1_n_0 ;
  wire \accumulator[29]_i_1_n_0 ;
  wire \accumulator[2]_i_1_n_0 ;
  wire \accumulator[30]_i_1_n_0 ;
  wire \accumulator[31]_i_1_n_0 ;
  wire \accumulator[3]_i_1_n_0 ;
  wire \accumulator[4]_i_1_n_0 ;
  wire \accumulator[5]_i_1_n_0 ;
  wire \accumulator[6]_i_1_n_0 ;
  wire \accumulator[7]_i_1_n_0 ;
  wire \accumulator[8]_i_1_n_0 ;
  wire \accumulator[9]_i_1_n_0 ;
  wire [31:0]axis_m_sum_tdata;
  wire \axis_m_sum_tdata[0]_i_1_n_0 ;
  wire \axis_m_sum_tdata[10]_i_1_n_0 ;
  wire \axis_m_sum_tdata[11]_i_1_n_0 ;
  wire \axis_m_sum_tdata[12]_i_1_n_0 ;
  wire \axis_m_sum_tdata[13]_i_1_n_0 ;
  wire \axis_m_sum_tdata[14]_i_1_n_0 ;
  wire \axis_m_sum_tdata[15]_i_1_n_0 ;
  wire \axis_m_sum_tdata[16]_i_1_n_0 ;
  wire \axis_m_sum_tdata[17]_i_1_n_0 ;
  wire \axis_m_sum_tdata[18]_i_1_n_0 ;
  wire \axis_m_sum_tdata[19]_i_1_n_0 ;
  wire \axis_m_sum_tdata[1]_i_1_n_0 ;
  wire \axis_m_sum_tdata[20]_i_1_n_0 ;
  wire \axis_m_sum_tdata[21]_i_1_n_0 ;
  wire \axis_m_sum_tdata[22]_i_1_n_0 ;
  wire \axis_m_sum_tdata[23]_i_1_n_0 ;
  wire \axis_m_sum_tdata[24]_i_1_n_0 ;
  wire \axis_m_sum_tdata[25]_i_1_n_0 ;
  wire \axis_m_sum_tdata[26]_i_1_n_0 ;
  wire \axis_m_sum_tdata[27]_i_1_n_0 ;
  wire \axis_m_sum_tdata[28]_i_1_n_0 ;
  wire \axis_m_sum_tdata[29]_i_1_n_0 ;
  wire \axis_m_sum_tdata[2]_i_1_n_0 ;
  wire \axis_m_sum_tdata[30]_i_1_n_0 ;
  wire \axis_m_sum_tdata[31]_i_1_n_0 ;
  wire \axis_m_sum_tdata[31]_i_2_n_0 ;
  wire \axis_m_sum_tdata[3]_i_1_n_0 ;
  wire \axis_m_sum_tdata[4]_i_1_n_0 ;
  wire \axis_m_sum_tdata[5]_i_1_n_0 ;
  wire \axis_m_sum_tdata[6]_i_1_n_0 ;
  wire \axis_m_sum_tdata[7]_i_1_n_0 ;
  wire \axis_m_sum_tdata[8]_i_1_n_0 ;
  wire \axis_m_sum_tdata[9]_i_1_n_0 ;
  wire axis_m_sum_tlast;
  wire axis_m_sum_tlast_i_1_n_0;
  wire axis_m_sum_tready;
  wire axis_m_sum_tvalid;
  wire axis_m_sum_tvalid_i_1_n_0;
  wire [31:0]axis_s_raw_tdata;
  wire axis_s_raw_tlast;
  wire axis_s_raw_tready;
  wire axis_s_raw_tready_i_1_n_0;
  wire axis_s_raw_tready_i_2_n_0;
  wire axis_s_raw_tvalid;
  wire clk;
  wire [31:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[20]_i_1_n_0 ;
  wire \counter[21]_i_1_n_0 ;
  wire \counter[22]_i_1_n_0 ;
  wire \counter[23]_i_1_n_0 ;
  wire \counter[24]_i_1_n_0 ;
  wire \counter[25]_i_1_n_0 ;
  wire \counter[26]_i_1_n_0 ;
  wire \counter[27]_i_1_n_0 ;
  wire \counter[28]_i_1_n_0 ;
  wire \counter[29]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[30]_i_1_n_0 ;
  wire \counter[31]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire [31:0]in4;
  wire [31:1]in8;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire reset;
  wire [3:3]NLW_accumulator0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\__0/i__n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\__0/i__n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\__0/i__n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "count:001,write_count:010,write_sum:100," *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(axis_s_raw_tready_i_1_n_0));
  (* FSM_ENCODED_STATES = "count:001,write_count:010,write_sum:100," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(axis_s_raw_tready_i_1_n_0));
  (* FSM_ENCODED_STATES = "count:001,write_count:010,write_sum:100," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF80FF80FF808080)) 
    \__0/i_ 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(axis_s_raw_tvalid),
        .I2(axis_s_raw_tlast),
        .I3(axis_m_sum_tready),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\__0/i__n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \__1/i_ 
       (.I0(axis_s_raw_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(axis_m_sum_tready),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\__1/i__n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \__2/i_ 
       (.I0(axis_s_raw_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(axis_m_sum_tready),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\__2/i__n_0 ));
  CARRY4 accumulator0_carry
       (.CI(1'b0),
        .CO({accumulator0_carry_n_0,accumulator0_carry_n_1,accumulator0_carry_n_2,accumulator0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[3:0]),
        .O(in4[3:0]),
        .S({accumulator0_carry_i_1_n_0,accumulator0_carry_i_2_n_0,accumulator0_carry_i_3_n_0,accumulator0_carry_i_4_n_0}));
  CARRY4 accumulator0_carry__0
       (.CI(accumulator0_carry_n_0),
        .CO({accumulator0_carry__0_n_0,accumulator0_carry__0_n_1,accumulator0_carry__0_n_2,accumulator0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[7:4]),
        .O(in4[7:4]),
        .S({accumulator0_carry__0_i_1_n_0,accumulator0_carry__0_i_2_n_0,accumulator0_carry__0_i_3_n_0,accumulator0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__0_i_1
       (.I0(accumulator[7]),
        .I1(axis_s_raw_tdata[7]),
        .O(accumulator0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__0_i_2
       (.I0(accumulator[6]),
        .I1(axis_s_raw_tdata[6]),
        .O(accumulator0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__0_i_3
       (.I0(accumulator[5]),
        .I1(axis_s_raw_tdata[5]),
        .O(accumulator0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__0_i_4
       (.I0(accumulator[4]),
        .I1(axis_s_raw_tdata[4]),
        .O(accumulator0_carry__0_i_4_n_0));
  CARRY4 accumulator0_carry__1
       (.CI(accumulator0_carry__0_n_0),
        .CO({accumulator0_carry__1_n_0,accumulator0_carry__1_n_1,accumulator0_carry__1_n_2,accumulator0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[11:8]),
        .O(in4[11:8]),
        .S({accumulator0_carry__1_i_1_n_0,accumulator0_carry__1_i_2_n_0,accumulator0_carry__1_i_3_n_0,accumulator0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__1_i_1
       (.I0(accumulator[11]),
        .I1(axis_s_raw_tdata[11]),
        .O(accumulator0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__1_i_2
       (.I0(accumulator[10]),
        .I1(axis_s_raw_tdata[10]),
        .O(accumulator0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__1_i_3
       (.I0(accumulator[9]),
        .I1(axis_s_raw_tdata[9]),
        .O(accumulator0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__1_i_4
       (.I0(accumulator[8]),
        .I1(axis_s_raw_tdata[8]),
        .O(accumulator0_carry__1_i_4_n_0));
  CARRY4 accumulator0_carry__2
       (.CI(accumulator0_carry__1_n_0),
        .CO({accumulator0_carry__2_n_0,accumulator0_carry__2_n_1,accumulator0_carry__2_n_2,accumulator0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[15:12]),
        .O(in4[15:12]),
        .S({accumulator0_carry__2_i_1_n_0,accumulator0_carry__2_i_2_n_0,accumulator0_carry__2_i_3_n_0,accumulator0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__2_i_1
       (.I0(accumulator[15]),
        .I1(axis_s_raw_tdata[15]),
        .O(accumulator0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__2_i_2
       (.I0(accumulator[14]),
        .I1(axis_s_raw_tdata[14]),
        .O(accumulator0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__2_i_3
       (.I0(accumulator[13]),
        .I1(axis_s_raw_tdata[13]),
        .O(accumulator0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__2_i_4
       (.I0(accumulator[12]),
        .I1(axis_s_raw_tdata[12]),
        .O(accumulator0_carry__2_i_4_n_0));
  CARRY4 accumulator0_carry__3
       (.CI(accumulator0_carry__2_n_0),
        .CO({accumulator0_carry__3_n_0,accumulator0_carry__3_n_1,accumulator0_carry__3_n_2,accumulator0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[19:16]),
        .O(in4[19:16]),
        .S({accumulator0_carry__3_i_1_n_0,accumulator0_carry__3_i_2_n_0,accumulator0_carry__3_i_3_n_0,accumulator0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__3_i_1
       (.I0(accumulator[19]),
        .I1(axis_s_raw_tdata[19]),
        .O(accumulator0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__3_i_2
       (.I0(accumulator[18]),
        .I1(axis_s_raw_tdata[18]),
        .O(accumulator0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__3_i_3
       (.I0(accumulator[17]),
        .I1(axis_s_raw_tdata[17]),
        .O(accumulator0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__3_i_4
       (.I0(accumulator[16]),
        .I1(axis_s_raw_tdata[16]),
        .O(accumulator0_carry__3_i_4_n_0));
  CARRY4 accumulator0_carry__4
       (.CI(accumulator0_carry__3_n_0),
        .CO({accumulator0_carry__4_n_0,accumulator0_carry__4_n_1,accumulator0_carry__4_n_2,accumulator0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[23:20]),
        .O(in4[23:20]),
        .S({accumulator0_carry__4_i_1_n_0,accumulator0_carry__4_i_2_n_0,accumulator0_carry__4_i_3_n_0,accumulator0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__4_i_1
       (.I0(accumulator[23]),
        .I1(axis_s_raw_tdata[23]),
        .O(accumulator0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__4_i_2
       (.I0(accumulator[22]),
        .I1(axis_s_raw_tdata[22]),
        .O(accumulator0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__4_i_3
       (.I0(accumulator[21]),
        .I1(axis_s_raw_tdata[21]),
        .O(accumulator0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__4_i_4
       (.I0(accumulator[20]),
        .I1(axis_s_raw_tdata[20]),
        .O(accumulator0_carry__4_i_4_n_0));
  CARRY4 accumulator0_carry__5
       (.CI(accumulator0_carry__4_n_0),
        .CO({accumulator0_carry__5_n_0,accumulator0_carry__5_n_1,accumulator0_carry__5_n_2,accumulator0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(accumulator[27:24]),
        .O(in4[27:24]),
        .S({accumulator0_carry__5_i_1_n_0,accumulator0_carry__5_i_2_n_0,accumulator0_carry__5_i_3_n_0,accumulator0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__5_i_1
       (.I0(accumulator[27]),
        .I1(axis_s_raw_tdata[27]),
        .O(accumulator0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__5_i_2
       (.I0(accumulator[26]),
        .I1(axis_s_raw_tdata[26]),
        .O(accumulator0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__5_i_3
       (.I0(accumulator[25]),
        .I1(axis_s_raw_tdata[25]),
        .O(accumulator0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__5_i_4
       (.I0(accumulator[24]),
        .I1(axis_s_raw_tdata[24]),
        .O(accumulator0_carry__5_i_4_n_0));
  CARRY4 accumulator0_carry__6
       (.CI(accumulator0_carry__5_n_0),
        .CO({NLW_accumulator0_carry__6_CO_UNCONNECTED[3],accumulator0_carry__6_n_1,accumulator0_carry__6_n_2,accumulator0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,accumulator[30:28]}),
        .O(in4[31:28]),
        .S({accumulator0_carry__6_i_1_n_0,accumulator0_carry__6_i_2_n_0,accumulator0_carry__6_i_3_n_0,accumulator0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__6_i_1
       (.I0(accumulator[31]),
        .I1(axis_s_raw_tdata[31]),
        .O(accumulator0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__6_i_2
       (.I0(accumulator[30]),
        .I1(axis_s_raw_tdata[30]),
        .O(accumulator0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__6_i_3
       (.I0(accumulator[29]),
        .I1(axis_s_raw_tdata[29]),
        .O(accumulator0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry__6_i_4
       (.I0(accumulator[28]),
        .I1(axis_s_raw_tdata[28]),
        .O(accumulator0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry_i_1
       (.I0(accumulator[3]),
        .I1(axis_s_raw_tdata[3]),
        .O(accumulator0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry_i_2
       (.I0(accumulator[2]),
        .I1(axis_s_raw_tdata[2]),
        .O(accumulator0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry_i_3
       (.I0(accumulator[1]),
        .I1(axis_s_raw_tdata[1]),
        .O(accumulator0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accumulator0_carry_i_4
       (.I0(accumulator[0]),
        .I1(axis_s_raw_tdata[0]),
        .O(accumulator0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[0]),
        .O(\accumulator[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[10]),
        .O(\accumulator[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[11]),
        .O(\accumulator[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[12]),
        .O(\accumulator[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[13]),
        .O(\accumulator[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[14]),
        .O(\accumulator[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[15]),
        .O(\accumulator[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[16]),
        .O(\accumulator[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[17]),
        .O(\accumulator[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[18]),
        .O(\accumulator[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[19]),
        .O(\accumulator[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[1]),
        .O(\accumulator[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[20]),
        .O(\accumulator[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[21]),
        .O(\accumulator[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[22]),
        .O(\accumulator[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[23]),
        .O(\accumulator[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[24]),
        .O(\accumulator[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[25]),
        .O(\accumulator[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[26]),
        .O(\accumulator[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[27]),
        .O(\accumulator[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[28]),
        .O(\accumulator[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[29]),
        .O(\accumulator[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[2]),
        .O(\accumulator[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[30]),
        .O(\accumulator[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[31]),
        .O(\accumulator[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[3]),
        .O(\accumulator[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[4]),
        .O(\accumulator[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[5]),
        .O(\accumulator[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[6]),
        .O(\accumulator[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[7]),
        .O(\accumulator[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[8]),
        .O(\accumulator[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in4[9]),
        .O(\accumulator[9]_i_1_n_0 ));
  FDRE \accumulator_reg[0] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[0]_i_1_n_0 ),
        .Q(accumulator[0]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[10] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[10]_i_1_n_0 ),
        .Q(accumulator[10]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[11] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[11]_i_1_n_0 ),
        .Q(accumulator[11]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[12] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[12]_i_1_n_0 ),
        .Q(accumulator[12]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[13] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[13]_i_1_n_0 ),
        .Q(accumulator[13]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[14] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[14]_i_1_n_0 ),
        .Q(accumulator[14]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[15] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[15]_i_1_n_0 ),
        .Q(accumulator[15]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[16] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[16]_i_1_n_0 ),
        .Q(accumulator[16]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[17] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[17]_i_1_n_0 ),
        .Q(accumulator[17]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[18] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[18]_i_1_n_0 ),
        .Q(accumulator[18]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[19] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[19]_i_1_n_0 ),
        .Q(accumulator[19]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[1] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[1]_i_1_n_0 ),
        .Q(accumulator[1]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[20] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[20]_i_1_n_0 ),
        .Q(accumulator[20]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[21] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[21]_i_1_n_0 ),
        .Q(accumulator[21]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[22] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[22]_i_1_n_0 ),
        .Q(accumulator[22]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[23] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[23]_i_1_n_0 ),
        .Q(accumulator[23]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[24] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[24]_i_1_n_0 ),
        .Q(accumulator[24]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[25] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[25]_i_1_n_0 ),
        .Q(accumulator[25]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[26] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[26]_i_1_n_0 ),
        .Q(accumulator[26]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[27] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[27]_i_1_n_0 ),
        .Q(accumulator[27]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[28] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[28]_i_1_n_0 ),
        .Q(accumulator[28]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[29] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[29]_i_1_n_0 ),
        .Q(accumulator[29]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[2] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[2]_i_1_n_0 ),
        .Q(accumulator[2]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[30] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[30]_i_1_n_0 ),
        .Q(accumulator[30]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[31] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[31]_i_1_n_0 ),
        .Q(accumulator[31]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[3] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[3]_i_1_n_0 ),
        .Q(accumulator[3]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[4] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[4]_i_1_n_0 ),
        .Q(accumulator[4]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[5] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[5]_i_1_n_0 ),
        .Q(accumulator[5]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[6] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[6]_i_1_n_0 ),
        .Q(accumulator[6]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[7] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[7]_i_1_n_0 ),
        .Q(accumulator[7]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[8] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[8]_i_1_n_0 ),
        .Q(accumulator[8]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \accumulator_reg[9] 
       (.C(clk),
        .CE(\__1/i__n_0 ),
        .D(\accumulator[9]_i_1_n_0 ),
        .Q(accumulator[9]),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[0]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[0]),
        .O(\axis_m_sum_tdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[10]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[10]),
        .O(\axis_m_sum_tdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[11]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[11]),
        .O(\axis_m_sum_tdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[12]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[12]),
        .O(\axis_m_sum_tdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[13]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[13]),
        .O(\axis_m_sum_tdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[14]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[14]),
        .O(\axis_m_sum_tdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[15]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[15]),
        .O(\axis_m_sum_tdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[16]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[16]),
        .O(\axis_m_sum_tdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[17]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[17]),
        .O(\axis_m_sum_tdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[18]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[18]),
        .O(\axis_m_sum_tdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[19]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[19]),
        .O(\axis_m_sum_tdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[1]),
        .O(\axis_m_sum_tdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[20]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[20]),
        .O(\axis_m_sum_tdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[21]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[21]),
        .O(\axis_m_sum_tdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[22]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[22]),
        .O(\axis_m_sum_tdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[23]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[23]),
        .O(\axis_m_sum_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[24]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[24]),
        .O(\axis_m_sum_tdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[25]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[25]),
        .O(\axis_m_sum_tdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[26]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[26]),
        .O(\axis_m_sum_tdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[27]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[27]),
        .O(\axis_m_sum_tdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[28]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[28]),
        .O(\axis_m_sum_tdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[29]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[29]),
        .O(\axis_m_sum_tdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[2]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[2]),
        .O(\axis_m_sum_tdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[30]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[30]),
        .O(\axis_m_sum_tdata[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axis_m_sum_tdata[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\axis_m_sum_tdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[31]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[31]),
        .O(\axis_m_sum_tdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[3]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[3]),
        .O(\axis_m_sum_tdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[4]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[4]),
        .O(\axis_m_sum_tdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[5]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[5]),
        .O(\axis_m_sum_tdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[6]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[6]),
        .O(\axis_m_sum_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[7]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[7]),
        .O(\axis_m_sum_tdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[8]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[8]),
        .O(\axis_m_sum_tdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \axis_m_sum_tdata[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(accumulator[9]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(counter[9]),
        .O(\axis_m_sum_tdata[9]_i_1_n_0 ));
  FDRE \axis_m_sum_tdata_reg[0] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[0]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[0]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[10] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[10]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[10]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[11] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[11]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[11]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[12] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[12]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[12]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[13] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[13]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[13]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[14] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[14]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[14]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[15] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[15]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[15]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[16] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[16]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[16]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[17] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[17]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[17]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[18] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[18]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[18]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[19] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[19]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[19]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[1] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[1]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[1]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[20] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[20]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[20]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[21] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[21]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[21]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[22] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[22]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[22]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[23] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[23]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[23]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[24] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[24]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[24]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[25] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[25]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[25]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[26] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[26]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[26]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[27] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[27]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[27]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[28] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[28]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[28]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[29] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[29]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[29]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[2] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[2]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[2]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[30] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[30]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[30]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[31] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[31]_i_2_n_0 ),
        .Q(axis_m_sum_tdata[31]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[3] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[3]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[3]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[4] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[4]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[4]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[5] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[5]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[5]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[6] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[6]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[6]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[7] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[7]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[7]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[8] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[8]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[8]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \axis_m_sum_tdata_reg[9] 
       (.C(clk),
        .CE(\axis_m_sum_tdata[31]_i_1_n_0 ),
        .D(\axis_m_sum_tdata[9]_i_1_n_0 ),
        .Q(axis_m_sum_tdata[9]),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT4 #(
    .INIT(16'hF1F0)) 
    axis_m_sum_tlast_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(axis_m_sum_tlast),
        .O(axis_m_sum_tlast_i_1_n_0));
  FDRE axis_m_sum_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_m_sum_tlast_i_1_n_0),
        .Q(axis_m_sum_tlast),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFBFA)) 
    axis_m_sum_tvalid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(axis_m_sum_tvalid),
        .O(axis_m_sum_tvalid_i_1_n_0));
  FDRE axis_m_sum_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_m_sum_tvalid_i_1_n_0),
        .Q(axis_m_sum_tvalid),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_s_raw_tready_i_1
       (.I0(reset),
        .O(axis_s_raw_tready_i_1_n_0));
  LUT4 #(
    .INIT(16'hCDCC)) 
    axis_s_raw_tready_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(axis_s_raw_tready),
        .O(axis_s_raw_tready_i_2_n_0));
  FDRE axis_s_raw_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_s_raw_tready_i_2_n_0),
        .Q(axis_s_raw_tready),
        .R(axis_s_raw_tready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[10]),
        .O(\counter[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[11]),
        .O(\counter[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[12]),
        .O(\counter[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[13]),
        .O(\counter[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[14]),
        .O(\counter[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[15]),
        .O(\counter[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[16]),
        .O(\counter[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[17]),
        .O(\counter[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[18]),
        .O(\counter[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[19]),
        .O(\counter[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[20]),
        .O(\counter[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[21]),
        .O(\counter[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[22]),
        .O(\counter[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[23]),
        .O(\counter[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[24]),
        .O(\counter[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[25]),
        .O(\counter[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[26]),
        .O(\counter[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[27]),
        .O(\counter[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[28]),
        .O(\counter[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[29]),
        .O(\counter[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[30]),
        .O(\counter[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[31]),
        .O(\counter[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[3]),
        .O(\counter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in8[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[16]_i_1_n_0 ),
        .Q(counter[16]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[17]_i_1_n_0 ),
        .Q(counter[17]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[18]_i_1_n_0 ),
        .Q(counter[18]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[19]_i_1_n_0 ),
        .Q(counter[19]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[20] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[20]_i_1_n_0 ),
        .Q(counter[20]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[21] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[21]_i_1_n_0 ),
        .Q(counter[21]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[22] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[22]_i_1_n_0 ),
        .Q(counter[22]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[23] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[23]_i_1_n_0 ),
        .Q(counter[23]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[24] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[24]_i_1_n_0 ),
        .Q(counter[24]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[25] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[25]_i_1_n_0 ),
        .Q(counter[25]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[26] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[26]_i_1_n_0 ),
        .Q(counter[26]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[27] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[27]_i_1_n_0 ),
        .Q(counter[27]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[28] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[28]_i_1_n_0 ),
        .Q(counter[28]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[29] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[29]_i_1_n_0 ),
        .Q(counter[29]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[30] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[30]_i_1_n_0 ),
        .Q(counter[30]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[31] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[31]_i_1_n_0 ),
        .Q(counter[31]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]),
        .R(axis_s_raw_tready_i_1_n_0));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(\__2/i__n_0 ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]),
        .R(axis_s_raw_tready_i_1_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S(counter[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(counter[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(counter[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S(counter[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S(counter[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S(counter[24:21]));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S(counter[28:25]));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],in8[31:29]}),
        .S({1'b0,counter[31:29]}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
