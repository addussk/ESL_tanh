-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 24 16:39:49 2018
-- Host        : PC06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_my_sum_0_0/design_1_my_sum_0_0_stub.vhdl
-- Design      : design_1_my_sum_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_my_sum_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    axis_s_raw_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_s_raw_tready : out STD_LOGIC;
    axis_s_raw_tvalid : in STD_LOGIC;
    axis_s_raw_tlast : in STD_LOGIC;
    axis_m_sum_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_m_sum_tready : in STD_LOGIC;
    axis_m_sum_tvalid : out STD_LOGIC;
    axis_m_sum_tlast : out STD_LOGIC
  );

end design_1_my_sum_0_0;

architecture stub of design_1_my_sum_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,axis_s_raw_tdata[31:0],axis_s_raw_tready,axis_s_raw_tvalid,axis_s_raw_tlast,axis_m_sum_tdata[31:0],axis_m_sum_tready,axis_m_sum_tvalid,axis_m_sum_tlast";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_sum,Vivado 2018.2";
begin
end;