-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 24 16:39:49 2018
-- Host        : PC06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_sum_0_0_sim_netlist.vhdl
-- Design      : design_1_my_sum_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum is
  port (
    axis_m_sum_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_m_sum_tvalid : out STD_LOGIC;
    axis_m_sum_tlast : out STD_LOGIC;
    axis_s_raw_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    axis_s_raw_tvalid : in STD_LOGIC;
    axis_s_raw_tlast : in STD_LOGIC;
    axis_m_sum_tready : in STD_LOGIC;
    axis_s_raw_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \__0/i__n_0\ : STD_LOGIC;
  signal \__1/i__n_0\ : STD_LOGIC;
  signal \__2/i__n_0\ : STD_LOGIC;
  signal accumulator : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \accumulator0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__0_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__0_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__0_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__0_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__1_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__1_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__1_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__2_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__2_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__2_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__3_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__3_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__3_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__4_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__4_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__4_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__5_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__5_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__5_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__5_n_3\ : STD_LOGIC;
  signal \accumulator0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \accumulator0_carry__6_n_1\ : STD_LOGIC;
  signal \accumulator0_carry__6_n_2\ : STD_LOGIC;
  signal \accumulator0_carry__6_n_3\ : STD_LOGIC;
  signal accumulator0_carry_i_1_n_0 : STD_LOGIC;
  signal accumulator0_carry_i_2_n_0 : STD_LOGIC;
  signal accumulator0_carry_i_3_n_0 : STD_LOGIC;
  signal accumulator0_carry_i_4_n_0 : STD_LOGIC;
  signal accumulator0_carry_n_0 : STD_LOGIC;
  signal accumulator0_carry_n_1 : STD_LOGIC;
  signal accumulator0_carry_n_2 : STD_LOGIC;
  signal accumulator0_carry_n_3 : STD_LOGIC;
  signal \accumulator[0]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[10]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[11]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[12]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[13]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[14]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[15]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[16]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[17]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[18]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[19]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[1]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[20]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[21]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[22]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[23]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[24]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[25]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[26]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[27]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[28]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[29]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[2]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[30]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[31]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[3]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[4]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[5]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[6]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[7]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[8]_i_1_n_0\ : STD_LOGIC;
  signal \accumulator[9]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axis_m_sum_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^axis_m_sum_tlast\ : STD_LOGIC;
  signal axis_m_sum_tlast_i_1_n_0 : STD_LOGIC;
  signal \^axis_m_sum_tvalid\ : STD_LOGIC;
  signal axis_m_sum_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^axis_s_raw_tready\ : STD_LOGIC;
  signal axis_s_raw_tready_i_1_n_0 : STD_LOGIC;
  signal axis_s_raw_tready_i_2_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_accumulator0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "count:001,write_count:010,write_sum:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "count:001,write_count:010,write_sum:100,";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "count:001,write_count:010,write_sum:100,";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
begin
  axis_m_sum_tlast <= \^axis_m_sum_tlast\;
  axis_m_sum_tvalid <= \^axis_m_sum_tvalid\;
  axis_s_raw_tready <= \^axis_s_raw_tready\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \__0/i__n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \__0/i__n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \__0/i__n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => axis_s_raw_tready_i_1_n_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => axis_s_raw_tready_i_1_n_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => axis_s_raw_tready_i_1_n_0
    );
\__0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FF80FF808080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => axis_s_raw_tvalid,
      I2 => axis_s_raw_tlast,
      I3 => axis_m_sum_tready,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \__0/i__n_0\
    );
\__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => axis_s_raw_tvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => axis_m_sum_tready,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \__1/i__n_0\
    );
\__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => axis_s_raw_tvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => axis_m_sum_tready,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \__2/i__n_0\
    );
accumulator0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => accumulator0_carry_n_0,
      CO(2) => accumulator0_carry_n_1,
      CO(1) => accumulator0_carry_n_2,
      CO(0) => accumulator0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(3 downto 0),
      O(3 downto 0) => in4(3 downto 0),
      S(3) => accumulator0_carry_i_1_n_0,
      S(2) => accumulator0_carry_i_2_n_0,
      S(1) => accumulator0_carry_i_3_n_0,
      S(0) => accumulator0_carry_i_4_n_0
    );
\accumulator0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => accumulator0_carry_n_0,
      CO(3) => \accumulator0_carry__0_n_0\,
      CO(2) => \accumulator0_carry__0_n_1\,
      CO(1) => \accumulator0_carry__0_n_2\,
      CO(0) => \accumulator0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(7 downto 4),
      O(3 downto 0) => in4(7 downto 4),
      S(3) => \accumulator0_carry__0_i_1_n_0\,
      S(2) => \accumulator0_carry__0_i_2_n_0\,
      S(1) => \accumulator0_carry__0_i_3_n_0\,
      S(0) => \accumulator0_carry__0_i_4_n_0\
    );
\accumulator0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(7),
      I1 => axis_s_raw_tdata(7),
      O => \accumulator0_carry__0_i_1_n_0\
    );
\accumulator0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(6),
      I1 => axis_s_raw_tdata(6),
      O => \accumulator0_carry__0_i_2_n_0\
    );
\accumulator0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(5),
      I1 => axis_s_raw_tdata(5),
      O => \accumulator0_carry__0_i_3_n_0\
    );
\accumulator0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(4),
      I1 => axis_s_raw_tdata(4),
      O => \accumulator0_carry__0_i_4_n_0\
    );
\accumulator0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__0_n_0\,
      CO(3) => \accumulator0_carry__1_n_0\,
      CO(2) => \accumulator0_carry__1_n_1\,
      CO(1) => \accumulator0_carry__1_n_2\,
      CO(0) => \accumulator0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(11 downto 8),
      O(3 downto 0) => in4(11 downto 8),
      S(3) => \accumulator0_carry__1_i_1_n_0\,
      S(2) => \accumulator0_carry__1_i_2_n_0\,
      S(1) => \accumulator0_carry__1_i_3_n_0\,
      S(0) => \accumulator0_carry__1_i_4_n_0\
    );
\accumulator0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(11),
      I1 => axis_s_raw_tdata(11),
      O => \accumulator0_carry__1_i_1_n_0\
    );
\accumulator0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(10),
      I1 => axis_s_raw_tdata(10),
      O => \accumulator0_carry__1_i_2_n_0\
    );
\accumulator0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(9),
      I1 => axis_s_raw_tdata(9),
      O => \accumulator0_carry__1_i_3_n_0\
    );
\accumulator0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(8),
      I1 => axis_s_raw_tdata(8),
      O => \accumulator0_carry__1_i_4_n_0\
    );
\accumulator0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__1_n_0\,
      CO(3) => \accumulator0_carry__2_n_0\,
      CO(2) => \accumulator0_carry__2_n_1\,
      CO(1) => \accumulator0_carry__2_n_2\,
      CO(0) => \accumulator0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(15 downto 12),
      O(3 downto 0) => in4(15 downto 12),
      S(3) => \accumulator0_carry__2_i_1_n_0\,
      S(2) => \accumulator0_carry__2_i_2_n_0\,
      S(1) => \accumulator0_carry__2_i_3_n_0\,
      S(0) => \accumulator0_carry__2_i_4_n_0\
    );
\accumulator0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(15),
      I1 => axis_s_raw_tdata(15),
      O => \accumulator0_carry__2_i_1_n_0\
    );
\accumulator0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(14),
      I1 => axis_s_raw_tdata(14),
      O => \accumulator0_carry__2_i_2_n_0\
    );
\accumulator0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(13),
      I1 => axis_s_raw_tdata(13),
      O => \accumulator0_carry__2_i_3_n_0\
    );
\accumulator0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(12),
      I1 => axis_s_raw_tdata(12),
      O => \accumulator0_carry__2_i_4_n_0\
    );
\accumulator0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__2_n_0\,
      CO(3) => \accumulator0_carry__3_n_0\,
      CO(2) => \accumulator0_carry__3_n_1\,
      CO(1) => \accumulator0_carry__3_n_2\,
      CO(0) => \accumulator0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(19 downto 16),
      O(3 downto 0) => in4(19 downto 16),
      S(3) => \accumulator0_carry__3_i_1_n_0\,
      S(2) => \accumulator0_carry__3_i_2_n_0\,
      S(1) => \accumulator0_carry__3_i_3_n_0\,
      S(0) => \accumulator0_carry__3_i_4_n_0\
    );
\accumulator0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(19),
      I1 => axis_s_raw_tdata(19),
      O => \accumulator0_carry__3_i_1_n_0\
    );
\accumulator0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(18),
      I1 => axis_s_raw_tdata(18),
      O => \accumulator0_carry__3_i_2_n_0\
    );
\accumulator0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(17),
      I1 => axis_s_raw_tdata(17),
      O => \accumulator0_carry__3_i_3_n_0\
    );
\accumulator0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(16),
      I1 => axis_s_raw_tdata(16),
      O => \accumulator0_carry__3_i_4_n_0\
    );
\accumulator0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__3_n_0\,
      CO(3) => \accumulator0_carry__4_n_0\,
      CO(2) => \accumulator0_carry__4_n_1\,
      CO(1) => \accumulator0_carry__4_n_2\,
      CO(0) => \accumulator0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(23 downto 20),
      O(3 downto 0) => in4(23 downto 20),
      S(3) => \accumulator0_carry__4_i_1_n_0\,
      S(2) => \accumulator0_carry__4_i_2_n_0\,
      S(1) => \accumulator0_carry__4_i_3_n_0\,
      S(0) => \accumulator0_carry__4_i_4_n_0\
    );
\accumulator0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(23),
      I1 => axis_s_raw_tdata(23),
      O => \accumulator0_carry__4_i_1_n_0\
    );
\accumulator0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(22),
      I1 => axis_s_raw_tdata(22),
      O => \accumulator0_carry__4_i_2_n_0\
    );
\accumulator0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(21),
      I1 => axis_s_raw_tdata(21),
      O => \accumulator0_carry__4_i_3_n_0\
    );
\accumulator0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(20),
      I1 => axis_s_raw_tdata(20),
      O => \accumulator0_carry__4_i_4_n_0\
    );
\accumulator0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__4_n_0\,
      CO(3) => \accumulator0_carry__5_n_0\,
      CO(2) => \accumulator0_carry__5_n_1\,
      CO(1) => \accumulator0_carry__5_n_2\,
      CO(0) => \accumulator0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulator(27 downto 24),
      O(3 downto 0) => in4(27 downto 24),
      S(3) => \accumulator0_carry__5_i_1_n_0\,
      S(2) => \accumulator0_carry__5_i_2_n_0\,
      S(1) => \accumulator0_carry__5_i_3_n_0\,
      S(0) => \accumulator0_carry__5_i_4_n_0\
    );
\accumulator0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(27),
      I1 => axis_s_raw_tdata(27),
      O => \accumulator0_carry__5_i_1_n_0\
    );
\accumulator0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(26),
      I1 => axis_s_raw_tdata(26),
      O => \accumulator0_carry__5_i_2_n_0\
    );
\accumulator0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(25),
      I1 => axis_s_raw_tdata(25),
      O => \accumulator0_carry__5_i_3_n_0\
    );
\accumulator0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(24),
      I1 => axis_s_raw_tdata(24),
      O => \accumulator0_carry__5_i_4_n_0\
    );
\accumulator0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulator0_carry__5_n_0\,
      CO(3) => \NLW_accumulator0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \accumulator0_carry__6_n_1\,
      CO(1) => \accumulator0_carry__6_n_2\,
      CO(0) => \accumulator0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => accumulator(30 downto 28),
      O(3 downto 0) => in4(31 downto 28),
      S(3) => \accumulator0_carry__6_i_1_n_0\,
      S(2) => \accumulator0_carry__6_i_2_n_0\,
      S(1) => \accumulator0_carry__6_i_3_n_0\,
      S(0) => \accumulator0_carry__6_i_4_n_0\
    );
\accumulator0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(31),
      I1 => axis_s_raw_tdata(31),
      O => \accumulator0_carry__6_i_1_n_0\
    );
\accumulator0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(30),
      I1 => axis_s_raw_tdata(30),
      O => \accumulator0_carry__6_i_2_n_0\
    );
\accumulator0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(29),
      I1 => axis_s_raw_tdata(29),
      O => \accumulator0_carry__6_i_3_n_0\
    );
\accumulator0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(28),
      I1 => axis_s_raw_tdata(28),
      O => \accumulator0_carry__6_i_4_n_0\
    );
accumulator0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(3),
      I1 => axis_s_raw_tdata(3),
      O => accumulator0_carry_i_1_n_0
    );
accumulator0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(2),
      I1 => axis_s_raw_tdata(2),
      O => accumulator0_carry_i_2_n_0
    );
accumulator0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(1),
      I1 => axis_s_raw_tdata(1),
      O => accumulator0_carry_i_3_n_0
    );
accumulator0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulator(0),
      I1 => axis_s_raw_tdata(0),
      O => accumulator0_carry_i_4_n_0
    );
\accumulator[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(0),
      O => \accumulator[0]_i_1_n_0\
    );
\accumulator[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(10),
      O => \accumulator[10]_i_1_n_0\
    );
\accumulator[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(11),
      O => \accumulator[11]_i_1_n_0\
    );
\accumulator[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(12),
      O => \accumulator[12]_i_1_n_0\
    );
\accumulator[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(13),
      O => \accumulator[13]_i_1_n_0\
    );
\accumulator[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(14),
      O => \accumulator[14]_i_1_n_0\
    );
\accumulator[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(15),
      O => \accumulator[15]_i_1_n_0\
    );
\accumulator[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(16),
      O => \accumulator[16]_i_1_n_0\
    );
\accumulator[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(17),
      O => \accumulator[17]_i_1_n_0\
    );
\accumulator[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(18),
      O => \accumulator[18]_i_1_n_0\
    );
\accumulator[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(19),
      O => \accumulator[19]_i_1_n_0\
    );
\accumulator[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(1),
      O => \accumulator[1]_i_1_n_0\
    );
\accumulator[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(20),
      O => \accumulator[20]_i_1_n_0\
    );
\accumulator[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(21),
      O => \accumulator[21]_i_1_n_0\
    );
\accumulator[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(22),
      O => \accumulator[22]_i_1_n_0\
    );
\accumulator[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(23),
      O => \accumulator[23]_i_1_n_0\
    );
\accumulator[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(24),
      O => \accumulator[24]_i_1_n_0\
    );
\accumulator[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(25),
      O => \accumulator[25]_i_1_n_0\
    );
\accumulator[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(26),
      O => \accumulator[26]_i_1_n_0\
    );
\accumulator[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(27),
      O => \accumulator[27]_i_1_n_0\
    );
\accumulator[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(28),
      O => \accumulator[28]_i_1_n_0\
    );
\accumulator[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(29),
      O => \accumulator[29]_i_1_n_0\
    );
\accumulator[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(2),
      O => \accumulator[2]_i_1_n_0\
    );
\accumulator[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(30),
      O => \accumulator[30]_i_1_n_0\
    );
\accumulator[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(31),
      O => \accumulator[31]_i_1_n_0\
    );
\accumulator[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(3),
      O => \accumulator[3]_i_1_n_0\
    );
\accumulator[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(4),
      O => \accumulator[4]_i_1_n_0\
    );
\accumulator[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(5),
      O => \accumulator[5]_i_1_n_0\
    );
\accumulator[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(6),
      O => \accumulator[6]_i_1_n_0\
    );
\accumulator[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(7),
      O => \accumulator[7]_i_1_n_0\
    );
\accumulator[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(8),
      O => \accumulator[8]_i_1_n_0\
    );
\accumulator[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in4(9),
      O => \accumulator[9]_i_1_n_0\
    );
\accumulator_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[0]_i_1_n_0\,
      Q => accumulator(0),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[10]_i_1_n_0\,
      Q => accumulator(10),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[11]_i_1_n_0\,
      Q => accumulator(11),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[12]_i_1_n_0\,
      Q => accumulator(12),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[13]_i_1_n_0\,
      Q => accumulator(13),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[14]_i_1_n_0\,
      Q => accumulator(14),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[15]_i_1_n_0\,
      Q => accumulator(15),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[16]_i_1_n_0\,
      Q => accumulator(16),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[17]_i_1_n_0\,
      Q => accumulator(17),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[18]_i_1_n_0\,
      Q => accumulator(18),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[19]_i_1_n_0\,
      Q => accumulator(19),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[1]_i_1_n_0\,
      Q => accumulator(1),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[20]_i_1_n_0\,
      Q => accumulator(20),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[21]_i_1_n_0\,
      Q => accumulator(21),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[22]_i_1_n_0\,
      Q => accumulator(22),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[23]_i_1_n_0\,
      Q => accumulator(23),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[24]_i_1_n_0\,
      Q => accumulator(24),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[25]_i_1_n_0\,
      Q => accumulator(25),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[26]_i_1_n_0\,
      Q => accumulator(26),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[27]_i_1_n_0\,
      Q => accumulator(27),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[28]_i_1_n_0\,
      Q => accumulator(28),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[29]_i_1_n_0\,
      Q => accumulator(29),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[2]_i_1_n_0\,
      Q => accumulator(2),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[30]_i_1_n_0\,
      Q => accumulator(30),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[31]_i_1_n_0\,
      Q => accumulator(31),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[3]_i_1_n_0\,
      Q => accumulator(3),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[4]_i_1_n_0\,
      Q => accumulator(4),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[5]_i_1_n_0\,
      Q => accumulator(5),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[6]_i_1_n_0\,
      Q => accumulator(6),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[7]_i_1_n_0\,
      Q => accumulator(7),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[8]_i_1_n_0\,
      Q => accumulator(8),
      R => axis_s_raw_tready_i_1_n_0
    );
\accumulator_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__1/i__n_0\,
      D => \accumulator[9]_i_1_n_0\,
      Q => accumulator(9),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(0),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(0),
      O => \axis_m_sum_tdata[0]_i_1_n_0\
    );
\axis_m_sum_tdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(10),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(10),
      O => \axis_m_sum_tdata[10]_i_1_n_0\
    );
\axis_m_sum_tdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(11),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(11),
      O => \axis_m_sum_tdata[11]_i_1_n_0\
    );
\axis_m_sum_tdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(12),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(12),
      O => \axis_m_sum_tdata[12]_i_1_n_0\
    );
\axis_m_sum_tdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(13),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(13),
      O => \axis_m_sum_tdata[13]_i_1_n_0\
    );
\axis_m_sum_tdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(14),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(14),
      O => \axis_m_sum_tdata[14]_i_1_n_0\
    );
\axis_m_sum_tdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(15),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(15),
      O => \axis_m_sum_tdata[15]_i_1_n_0\
    );
\axis_m_sum_tdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(16),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(16),
      O => \axis_m_sum_tdata[16]_i_1_n_0\
    );
\axis_m_sum_tdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(17),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(17),
      O => \axis_m_sum_tdata[17]_i_1_n_0\
    );
\axis_m_sum_tdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(18),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(18),
      O => \axis_m_sum_tdata[18]_i_1_n_0\
    );
\axis_m_sum_tdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(19),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(19),
      O => \axis_m_sum_tdata[19]_i_1_n_0\
    );
\axis_m_sum_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(1),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(1),
      O => \axis_m_sum_tdata[1]_i_1_n_0\
    );
\axis_m_sum_tdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(20),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(20),
      O => \axis_m_sum_tdata[20]_i_1_n_0\
    );
\axis_m_sum_tdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(21),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(21),
      O => \axis_m_sum_tdata[21]_i_1_n_0\
    );
\axis_m_sum_tdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(22),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(22),
      O => \axis_m_sum_tdata[22]_i_1_n_0\
    );
\axis_m_sum_tdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(23),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(23),
      O => \axis_m_sum_tdata[23]_i_1_n_0\
    );
\axis_m_sum_tdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(24),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(24),
      O => \axis_m_sum_tdata[24]_i_1_n_0\
    );
\axis_m_sum_tdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(25),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(25),
      O => \axis_m_sum_tdata[25]_i_1_n_0\
    );
\axis_m_sum_tdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(26),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(26),
      O => \axis_m_sum_tdata[26]_i_1_n_0\
    );
\axis_m_sum_tdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(27),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(27),
      O => \axis_m_sum_tdata[27]_i_1_n_0\
    );
\axis_m_sum_tdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(28),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(28),
      O => \axis_m_sum_tdata[28]_i_1_n_0\
    );
\axis_m_sum_tdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(29),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(29),
      O => \axis_m_sum_tdata[29]_i_1_n_0\
    );
\axis_m_sum_tdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(2),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(2),
      O => \axis_m_sum_tdata[2]_i_1_n_0\
    );
\axis_m_sum_tdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(30),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(30),
      O => \axis_m_sum_tdata[30]_i_1_n_0\
    );
\axis_m_sum_tdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \axis_m_sum_tdata[31]_i_1_n_0\
    );
\axis_m_sum_tdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(31),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(31),
      O => \axis_m_sum_tdata[31]_i_2_n_0\
    );
\axis_m_sum_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(3),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(3),
      O => \axis_m_sum_tdata[3]_i_1_n_0\
    );
\axis_m_sum_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(4),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(4),
      O => \axis_m_sum_tdata[4]_i_1_n_0\
    );
\axis_m_sum_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(5),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(5),
      O => \axis_m_sum_tdata[5]_i_1_n_0\
    );
\axis_m_sum_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(6),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(6),
      O => \axis_m_sum_tdata[6]_i_1_n_0\
    );
\axis_m_sum_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(7),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(7),
      O => \axis_m_sum_tdata[7]_i_1_n_0\
    );
\axis_m_sum_tdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(8),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(8),
      O => \axis_m_sum_tdata[8]_i_1_n_0\
    );
\axis_m_sum_tdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => accumulator(9),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => counter(9),
      O => \axis_m_sum_tdata[9]_i_1_n_0\
    );
\axis_m_sum_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[0]_i_1_n_0\,
      Q => axis_m_sum_tdata(0),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[10]_i_1_n_0\,
      Q => axis_m_sum_tdata(10),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[11]_i_1_n_0\,
      Q => axis_m_sum_tdata(11),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[12]_i_1_n_0\,
      Q => axis_m_sum_tdata(12),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[13]_i_1_n_0\,
      Q => axis_m_sum_tdata(13),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[14]_i_1_n_0\,
      Q => axis_m_sum_tdata(14),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[15]_i_1_n_0\,
      Q => axis_m_sum_tdata(15),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[16]_i_1_n_0\,
      Q => axis_m_sum_tdata(16),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[17]_i_1_n_0\,
      Q => axis_m_sum_tdata(17),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[18]_i_1_n_0\,
      Q => axis_m_sum_tdata(18),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[19]_i_1_n_0\,
      Q => axis_m_sum_tdata(19),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[1]_i_1_n_0\,
      Q => axis_m_sum_tdata(1),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[20]_i_1_n_0\,
      Q => axis_m_sum_tdata(20),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[21]_i_1_n_0\,
      Q => axis_m_sum_tdata(21),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[22]_i_1_n_0\,
      Q => axis_m_sum_tdata(22),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[23]_i_1_n_0\,
      Q => axis_m_sum_tdata(23),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[24]_i_1_n_0\,
      Q => axis_m_sum_tdata(24),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[25]_i_1_n_0\,
      Q => axis_m_sum_tdata(25),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[26]_i_1_n_0\,
      Q => axis_m_sum_tdata(26),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[27]_i_1_n_0\,
      Q => axis_m_sum_tdata(27),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[28]_i_1_n_0\,
      Q => axis_m_sum_tdata(28),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[29]_i_1_n_0\,
      Q => axis_m_sum_tdata(29),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[2]_i_1_n_0\,
      Q => axis_m_sum_tdata(2),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[30]_i_1_n_0\,
      Q => axis_m_sum_tdata(30),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[31]_i_2_n_0\,
      Q => axis_m_sum_tdata(31),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[3]_i_1_n_0\,
      Q => axis_m_sum_tdata(3),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[4]_i_1_n_0\,
      Q => axis_m_sum_tdata(4),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[5]_i_1_n_0\,
      Q => axis_m_sum_tdata(5),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[6]_i_1_n_0\,
      Q => axis_m_sum_tdata(6),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[7]_i_1_n_0\,
      Q => axis_m_sum_tdata(7),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[8]_i_1_n_0\,
      Q => axis_m_sum_tdata(8),
      R => axis_s_raw_tready_i_1_n_0
    );
\axis_m_sum_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axis_m_sum_tdata[31]_i_1_n_0\,
      D => \axis_m_sum_tdata[9]_i_1_n_0\,
      Q => axis_m_sum_tdata(9),
      R => axis_s_raw_tready_i_1_n_0
    );
axis_m_sum_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^axis_m_sum_tlast\,
      O => axis_m_sum_tlast_i_1_n_0
    );
axis_m_sum_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_m_sum_tlast_i_1_n_0,
      Q => \^axis_m_sum_tlast\,
      R => axis_s_raw_tready_i_1_n_0
    );
axis_m_sum_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^axis_m_sum_tvalid\,
      O => axis_m_sum_tvalid_i_1_n_0
    );
axis_m_sum_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_m_sum_tvalid_i_1_n_0,
      Q => \^axis_m_sum_tvalid\,
      R => axis_s_raw_tready_i_1_n_0
    );
axis_s_raw_tready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => axis_s_raw_tready_i_1_n_0
    );
axis_s_raw_tready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDCC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^axis_s_raw_tready\,
      O => axis_s_raw_tready_i_2_n_0
    );
axis_s_raw_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_s_raw_tready_i_2_n_0,
      Q => \^axis_s_raw_tready\,
      R => axis_s_raw_tready_i_1_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(11),
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(12),
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(13),
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(14),
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(15),
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(16),
      O => \counter[16]_i_1_n_0\
    );
\counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(17),
      O => \counter[17]_i_1_n_0\
    );
\counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(18),
      O => \counter[18]_i_1_n_0\
    );
\counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(19),
      O => \counter[19]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(20),
      O => \counter[20]_i_1_n_0\
    );
\counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(21),
      O => \counter[21]_i_1_n_0\
    );
\counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(22),
      O => \counter[22]_i_1_n_0\
    );
\counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(23),
      O => \counter[23]_i_1_n_0\
    );
\counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(24),
      O => \counter[24]_i_1_n_0\
    );
\counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(25),
      O => \counter[25]_i_1_n_0\
    );
\counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(26),
      O => \counter[26]_i_1_n_0\
    );
\counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(27),
      O => \counter[27]_i_1_n_0\
    );
\counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(28),
      O => \counter[28]_i_1_n_0\
    );
\counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(29),
      O => \counter[29]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(30),
      O => \counter[30]_i_1_n_0\
    );
\counter[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(31),
      O => \counter[31]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(3),
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(4),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(5),
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => in8(9),
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[11]_i_1_n_0\,
      Q => counter(11),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[12]_i_1_n_0\,
      Q => counter(12),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[13]_i_1_n_0\,
      Q => counter(13),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[14]_i_1_n_0\,
      Q => counter(14),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[15]_i_1_n_0\,
      Q => counter(15),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[16]_i_1_n_0\,
      Q => counter(16),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[17]_i_1_n_0\,
      Q => counter(17),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[18]_i_1_n_0\,
      Q => counter(18),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[19]_i_1_n_0\,
      Q => counter(19),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[20]_i_1_n_0\,
      Q => counter(20),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[21]_i_1_n_0\,
      Q => counter(21),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[22]_i_1_n_0\,
      Q => counter(22),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[23]_i_1_n_0\,
      Q => counter(23),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[24]_i_1_n_0\,
      Q => counter(24),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[25]_i_1_n_0\,
      Q => counter(25),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[26]_i_1_n_0\,
      Q => counter(26),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[27]_i_1_n_0\,
      Q => counter(27),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[28]_i_1_n_0\,
      Q => counter(28),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[29]_i_1_n_0\,
      Q => counter(29),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[30]_i_1_n_0\,
      Q => counter(30),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[31]_i_1_n_0\,
      Q => counter(31),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8),
      R => axis_s_raw_tready_i_1_n_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \__2/i__n_0\,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9),
      R => axis_s_raw_tready_i_1_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(28 downto 25),
      S(3 downto 0) => counter(28 downto 25)
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in8(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter(31 downto 29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_my_sum_0_0,my_sum,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_sum,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of axis_m_sum_tlast : signal is "xilinx.com:interface:axis:1.0 axis_m_sum TLAST";
  attribute x_interface_info of axis_m_sum_tready : signal is "xilinx.com:interface:axis:1.0 axis_m_sum TREADY";
  attribute x_interface_info of axis_m_sum_tvalid : signal is "xilinx.com:interface:axis:1.0 axis_m_sum TVALID";
  attribute x_interface_info of axis_s_raw_tlast : signal is "xilinx.com:interface:axis:1.0 axis_s_raw TLAST";
  attribute x_interface_info of axis_s_raw_tready : signal is "xilinx.com:interface:axis:1.0 axis_s_raw TREADY";
  attribute x_interface_info of axis_s_raw_tvalid : signal is "xilinx.com:interface:axis:1.0 axis_s_raw TVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis_m_sum:axis_s_raw, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
  attribute x_interface_info of axis_m_sum_tdata : signal is "xilinx.com:interface:axis:1.0 axis_m_sum TDATA";
  attribute x_interface_parameter of axis_m_sum_tdata : signal is "XIL_INTERFACENAME axis_m_sum, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of axis_s_raw_tdata : signal is "xilinx.com:interface:axis:1.0 axis_s_raw TDATA";
  attribute x_interface_parameter of axis_s_raw_tdata : signal is "XIL_INTERFACENAME axis_s_raw, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_sum
     port map (
      axis_m_sum_tdata(31 downto 0) => axis_m_sum_tdata(31 downto 0),
      axis_m_sum_tlast => axis_m_sum_tlast,
      axis_m_sum_tready => axis_m_sum_tready,
      axis_m_sum_tvalid => axis_m_sum_tvalid,
      axis_s_raw_tdata(31 downto 0) => axis_s_raw_tdata(31 downto 0),
      axis_s_raw_tlast => axis_s_raw_tlast,
      axis_s_raw_tready => axis_s_raw_tready,
      axis_s_raw_tvalid => axis_s_raw_tvalid,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
