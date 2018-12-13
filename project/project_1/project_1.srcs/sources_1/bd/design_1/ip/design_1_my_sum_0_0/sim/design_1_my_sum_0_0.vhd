-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:my_sum:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_my_sum_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    axis_s_raw_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axis_s_raw_tready : OUT STD_LOGIC;
    axis_s_raw_tvalid : IN STD_LOGIC;
    axis_s_raw_tlast : IN STD_LOGIC;
    axis_m_sum_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axis_m_sum_tready : IN STD_LOGIC;
    axis_m_sum_tvalid : OUT STD_LOGIC;
    axis_m_sum_tlast : OUT STD_LOGIC
  );
END design_1_my_sum_0_0;

ARCHITECTURE design_1_my_sum_0_0_arch OF design_1_my_sum_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_my_sum_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT my_sum IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      axis_s_raw_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axis_s_raw_tready : OUT STD_LOGIC;
      axis_s_raw_tvalid : IN STD_LOGIC;
      axis_s_raw_tlast : IN STD_LOGIC;
      axis_m_sum_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axis_m_sum_tready : IN STD_LOGIC;
      axis_m_sum_tvalid : OUT STD_LOGIC;
      axis_m_sum_tlast : OUT STD_LOGIC
    );
  END COMPONENT my_sum;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_my_sum_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF axis_m_sum_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_m_sum TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axis_m_sum_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_m_sum TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axis_m_sum_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_m_sum TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_m_sum_tdata: SIGNAL IS "XIL_INTERFACENAME axis_m_sum, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF axis_m_sum_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_m_sum TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axis_s_raw_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_s_raw TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axis_s_raw_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_s_raw TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axis_s_raw_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_s_raw TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_s_raw_tdata: SIGNAL IS "XIL_INTERFACENAME axis_s_raw, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF axis_s_raw_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 axis_s_raw TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis_m_sum:axis_s_raw, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : my_sum
    PORT MAP (
      clk => clk,
      reset => reset,
      axis_s_raw_tdata => axis_s_raw_tdata,
      axis_s_raw_tready => axis_s_raw_tready,
      axis_s_raw_tvalid => axis_s_raw_tvalid,
      axis_s_raw_tlast => axis_s_raw_tlast,
      axis_m_sum_tdata => axis_m_sum_tdata,
      axis_m_sum_tready => axis_m_sum_tready,
      axis_m_sum_tvalid => axis_m_sum_tvalid,
      axis_m_sum_tlast => axis_m_sum_tlast
    );
END design_1_my_sum_0_0_arch;
