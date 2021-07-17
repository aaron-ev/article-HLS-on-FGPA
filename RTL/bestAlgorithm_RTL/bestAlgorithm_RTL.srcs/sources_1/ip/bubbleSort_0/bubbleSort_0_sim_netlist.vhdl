-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Jul 15 12:00:16 2021
-- Host        : DESKTOP-92AEKAJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/aaron/Desktop/git_article/RTL/bestAlgorithm_RTL/bestAlgorithm_RTL.srcs/sources_1/ip/bubbleSort_0/bubbleSort_0_sim_netlist.vhdl
-- Design      : bubbleSort_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bubbleSort_0_bubbleSort is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    indexOutputData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    operation_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_ce1 : out STD_LOGIC;
    A_we1 : out STD_LOGIC;
    A_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bubbleSort_0_bubbleSort : entity is "bubbleSort";
  attribute ap_ST_st1_fsm_0 : string;
  attribute ap_ST_st1_fsm_0 of bubbleSort_0_bubbleSort : entity is "4'b0001";
  attribute ap_ST_st2_fsm_1 : string;
  attribute ap_ST_st2_fsm_1 of bubbleSort_0_bubbleSort : entity is "4'b0010";
  attribute ap_ST_st3_fsm_2 : string;
  attribute ap_ST_st3_fsm_2 of bubbleSort_0_bubbleSort : entity is "4'b0100";
  attribute ap_ST_st4_fsm_3 : string;
  attribute ap_ST_st4_fsm_3 of bubbleSort_0_bubbleSort : entity is "4'b1000";
  attribute ap_const_lv16_0 : string;
  attribute ap_const_lv16_0 of bubbleSort_0_bubbleSort : entity is "16'b0000000000000000";
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of bubbleSort_0_bubbleSort : entity is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of bubbleSort_0_bubbleSort : entity is "2'b01";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of bubbleSort_0_bubbleSort : entity is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of bubbleSort_0_bubbleSort : entity is 1;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of bubbleSort_0_bubbleSort : entity is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of bubbleSort_0_bubbleSort : entity is 3;
  attribute ap_const_lv3_3 : string;
  attribute ap_const_lv3_3 of bubbleSort_0_bubbleSort : entity is "3'b011";
  attribute ap_const_lv3_7 : string;
  attribute ap_const_lv3_7 of bubbleSort_0_bubbleSort : entity is "3'b111";
  attribute hls_module : string;
  attribute hls_module of bubbleSort_0_bubbleSort : entity is "yes";
end bubbleSort_0_bubbleSort;

architecture STRUCTURE of bubbleSort_0_bubbleSort is
  signal \<const0>\ : STD_LOGIC;
  signal A_addr_1_reg_156 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A_addr_reg_151 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^a_ce0\ : STD_LOGIC;
  signal \^a_q0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^a_q1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^a_we0\ : STD_LOGIC;
  signal A_we1_INST_0_i_10_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_11_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_12_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_13_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_14_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_15_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_16_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_17_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_18_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_1_n_1 : STD_LOGIC;
  signal A_we1_INST_0_i_1_n_2 : STD_LOGIC;
  signal A_we1_INST_0_i_1_n_3 : STD_LOGIC;
  signal A_we1_INST_0_i_2_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_2_n_1 : STD_LOGIC;
  signal A_we1_INST_0_i_2_n_2 : STD_LOGIC;
  signal A_we1_INST_0_i_2_n_3 : STD_LOGIC;
  signal A_we1_INST_0_i_3_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_4_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_5_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_6_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_7_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_8_n_0 : STD_LOGIC;
  signal A_we1_INST_0_i_9_n_0 : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ap_done\ : STD_LOGIC;
  signal ap_sig_54 : STD_LOGIC;
  signal ap_sig_80 : STD_LOGIC;
  signal ap_sig_88 : STD_LOGIC;
  signal exitcond_i_fu_102_p2 : STD_LOGIC;
  signal indvars_iv_i_reg_67 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal indvars_iv_i_reg_6700_out : STD_LOGIC;
  signal \indvars_iv_i_reg_67[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvars_iv_i_reg_67[1]_i_1_n_0\ : STD_LOGIC;
  signal \indvars_iv_i_reg_67[2]_i_1_n_0\ : STD_LOGIC;
  signal \indvars_iv_i_reg_67[2]_i_3_n_0\ : STD_LOGIC;
  signal \indvars_iv_i_reg_67__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal j_i_reg_79 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \j_i_reg_79[0]_i_1_n_0\ : STD_LOGIC;
  signal \j_i_reg_79[1]_i_1_n_0\ : STD_LOGIC;
  signal j_reg_146 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \j_reg_146[0]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg_146[1]_i_1_n_0\ : STD_LOGIC;
  signal tmp_5_i_fu_119_p1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tmp_6_i_fu_130_p2 : STD_LOGIC;
  signal NLW_A_we1_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_A_we1_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_addr_1_reg_156[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A_addr_1_reg_156[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \A_address0[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A_address0[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A_address1[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A_address1[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of A_ce1_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of A_we1_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \indvars_iv_i_reg_67[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indvars_iv_i_reg_67[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \j_reg_146[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j_reg_146[1]_i_1\ : label is "soft_lutpair4";
begin
  A_ce0 <= \^a_ce0\;
  A_ce1 <= \^a_ce0\;
  A_d0(15 downto 0) <= \^a_q1\(15 downto 0);
  A_d1(15 downto 0) <= \^a_q0\(15 downto 0);
  A_we0 <= \^a_we0\;
  A_we1 <= \^a_we0\;
  \^a_q0\(15 downto 0) <= A_q0(15 downto 0);
  \^a_q1\(15 downto 0) <= A_q1(15 downto 0);
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  ap_return(15) <= \<const0>\;
  ap_return(14) <= \<const0>\;
  ap_return(13) <= \<const0>\;
  ap_return(12) <= \<const0>\;
  ap_return(11) <= \<const0>\;
  ap_return(10) <= \<const0>\;
  ap_return(9) <= \<const0>\;
  ap_return(8) <= \<const0>\;
  ap_return(7) <= \<const0>\;
  ap_return(6) <= \<const0>\;
  ap_return(5) <= \<const0>\;
  ap_return(4) <= \<const0>\;
  ap_return(3) <= \<const0>\;
  ap_return(2) <= \<const0>\;
  ap_return(1) <= \<const0>\;
  ap_return(0) <= \<const0>\;
\A_addr_1_reg_156[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_i_reg_79(0),
      O => tmp_5_i_fu_119_p1(0)
    );
\A_addr_1_reg_156[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_i_reg_79(0),
      I1 => j_i_reg_79(1),
      O => tmp_5_i_fu_119_p1(1)
    );
\A_addr_1_reg_156_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \ap_CS_fsm[3]_i_1_n_0\,
      D => tmp_5_i_fu_119_p1(0),
      Q => A_addr_1_reg_156(0),
      R => '0'
    );
\A_addr_1_reg_156_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \ap_CS_fsm[3]_i_1_n_0\,
      D => tmp_5_i_fu_119_p1(1),
      Q => A_addr_1_reg_156(1),
      R => '0'
    );
\A_addr_reg_151_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \ap_CS_fsm[3]_i_1_n_0\,
      D => j_i_reg_79(0),
      Q => A_addr_reg_151(0),
      R => '0'
    );
\A_addr_reg_151_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \ap_CS_fsm[3]_i_1_n_0\,
      D => j_i_reg_79(1),
      Q => A_addr_reg_151(1),
      R => '0'
    );
\A_address0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_addr_reg_151(0),
      I1 => ap_sig_80,
      I2 => j_i_reg_79(0),
      O => A_address0(0)
    );
\A_address0[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_addr_reg_151(1),
      I1 => ap_sig_80,
      I2 => j_i_reg_79(1),
      O => A_address0(1)
    );
\A_address1[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => A_addr_1_reg_156(0),
      I1 => ap_sig_80,
      I2 => j_i_reg_79(0),
      O => A_address1(0)
    );
\A_address1[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => A_addr_1_reg_156(1),
      I1 => ap_sig_80,
      I2 => j_i_reg_79(0),
      I3 => j_i_reg_79(1),
      O => A_address1(1)
    );
A_ce1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_sig_54,
      I1 => ap_sig_80,
      O => \^a_ce0\
    );
A_we1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_sig_80,
      I1 => tmp_6_i_fu_130_p2,
      O => \^a_we0\
    );
A_we1_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => A_we1_INST_0_i_2_n_0,
      CO(3) => tmp_6_i_fu_130_p2,
      CO(2) => A_we1_INST_0_i_1_n_1,
      CO(1) => A_we1_INST_0_i_1_n_2,
      CO(0) => A_we1_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => A_we1_INST_0_i_3_n_0,
      DI(2) => A_we1_INST_0_i_4_n_0,
      DI(1) => A_we1_INST_0_i_5_n_0,
      DI(0) => A_we1_INST_0_i_6_n_0,
      O(3 downto 0) => NLW_A_we1_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => A_we1_INST_0_i_7_n_0,
      S(2) => A_we1_INST_0_i_8_n_0,
      S(1) => A_we1_INST_0_i_9_n_0,
      S(0) => A_we1_INST_0_i_10_n_0
    );
A_we1_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(8),
      I1 => \^a_q1\(8),
      I2 => \^a_q0\(9),
      I3 => \^a_q1\(9),
      O => A_we1_INST_0_i_10_n_0
    );
A_we1_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(6),
      I1 => \^a_q1\(6),
      I2 => \^a_q1\(7),
      I3 => \^a_q0\(7),
      O => A_we1_INST_0_i_11_n_0
    );
A_we1_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(4),
      I1 => \^a_q1\(4),
      I2 => \^a_q1\(5),
      I3 => \^a_q0\(5),
      O => A_we1_INST_0_i_12_n_0
    );
A_we1_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(2),
      I1 => \^a_q1\(2),
      I2 => \^a_q1\(3),
      I3 => \^a_q0\(3),
      O => A_we1_INST_0_i_13_n_0
    );
A_we1_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(0),
      I1 => \^a_q1\(0),
      I2 => \^a_q1\(1),
      I3 => \^a_q0\(1),
      O => A_we1_INST_0_i_14_n_0
    );
A_we1_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(6),
      I1 => \^a_q1\(6),
      I2 => \^a_q0\(7),
      I3 => \^a_q1\(7),
      O => A_we1_INST_0_i_15_n_0
    );
A_we1_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(4),
      I1 => \^a_q1\(4),
      I2 => \^a_q0\(5),
      I3 => \^a_q1\(5),
      O => A_we1_INST_0_i_16_n_0
    );
A_we1_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(2),
      I1 => \^a_q1\(2),
      I2 => \^a_q0\(3),
      I3 => \^a_q1\(3),
      O => A_we1_INST_0_i_17_n_0
    );
A_we1_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(0),
      I1 => \^a_q1\(0),
      I2 => \^a_q0\(1),
      I3 => \^a_q1\(1),
      O => A_we1_INST_0_i_18_n_0
    );
A_we1_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => A_we1_INST_0_i_2_n_0,
      CO(2) => A_we1_INST_0_i_2_n_1,
      CO(1) => A_we1_INST_0_i_2_n_2,
      CO(0) => A_we1_INST_0_i_2_n_3,
      CYINIT => '0',
      DI(3) => A_we1_INST_0_i_11_n_0,
      DI(2) => A_we1_INST_0_i_12_n_0,
      DI(1) => A_we1_INST_0_i_13_n_0,
      DI(0) => A_we1_INST_0_i_14_n_0,
      O(3 downto 0) => NLW_A_we1_INST_0_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => A_we1_INST_0_i_15_n_0,
      S(2) => A_we1_INST_0_i_16_n_0,
      S(1) => A_we1_INST_0_i_17_n_0,
      S(0) => A_we1_INST_0_i_18_n_0
    );
A_we1_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(14),
      I1 => \^a_q1\(14),
      I2 => \^a_q0\(15),
      I3 => \^a_q1\(15),
      O => A_we1_INST_0_i_3_n_0
    );
A_we1_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(12),
      I1 => \^a_q1\(12),
      I2 => \^a_q1\(13),
      I3 => \^a_q0\(13),
      O => A_we1_INST_0_i_4_n_0
    );
A_we1_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(10),
      I1 => \^a_q1\(10),
      I2 => \^a_q1\(11),
      I3 => \^a_q0\(11),
      O => A_we1_INST_0_i_5_n_0
    );
A_we1_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^a_q0\(8),
      I1 => \^a_q1\(8),
      I2 => \^a_q1\(9),
      I3 => \^a_q0\(9),
      O => A_we1_INST_0_i_6_n_0
    );
A_we1_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(14),
      I1 => \^a_q1\(14),
      I2 => \^a_q1\(15),
      I3 => \^a_q0\(15),
      O => A_we1_INST_0_i_7_n_0
    );
A_we1_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(12),
      I1 => \^a_q1\(12),
      I2 => \^a_q0\(13),
      I3 => \^a_q1\(13),
      O => A_we1_INST_0_i_8_n_0
    );
A_we1_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^a_q0\(10),
      I1 => \^a_q1\(10),
      I2 => \^a_q0\(11),
      I3 => \^a_q1\(11),
      O => A_we1_INST_0_i_9_n_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => operation_V(0),
      I3 => indvars_iv_i_reg_67(2),
      I4 => ap_sig_88,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => exitcond_i_fu_102_p2,
      I3 => ap_sig_54,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => j_i_reg_79(0),
      I1 => \indvars_iv_i_reg_67__0\(0),
      I2 => indvars_iv_i_reg_67(2),
      I3 => \indvars_iv_i_reg_67__0\(1),
      I4 => j_i_reg_79(1),
      O => exitcond_i_fu_102_p2
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => operation_V(0),
      I1 => indvars_iv_i_reg_67(2),
      I2 => ap_sig_88,
      I3 => ap_sig_80,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA28AAAAAAAAAA28"
    )
        port map (
      I0 => ap_sig_54,
      I1 => j_i_reg_79(1),
      I2 => \indvars_iv_i_reg_67__0\(1),
      I3 => indvars_iv_i_reg_67(2),
      I4 => \indvars_iv_i_reg_67__0\(0),
      I5 => j_i_reg_79(0),
      O => \ap_CS_fsm[3]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_sig_88,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_sig_54,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[3]_i_1_n_0\,
      Q => ap_sig_80,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ap_sig_88,
      I1 => indvars_iv_i_reg_67(2),
      I2 => operation_V(0),
      O => \^ap_done\
    );
\indvars_iv_i_reg_67[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F666666"
    )
        port map (
      I0 => \indvars_iv_i_reg_67__0\(0),
      I1 => indvars_iv_i_reg_6700_out,
      I2 => operation_V(0),
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_start,
      O => \indvars_iv_i_reg_67[0]_i_1_n_0\
    );
\indvars_iv_i_reg_67[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6FFA6A6A6A6A6A6"
    )
        port map (
      I0 => \indvars_iv_i_reg_67__0\(1),
      I1 => indvars_iv_i_reg_6700_out,
      I2 => \indvars_iv_i_reg_67__0\(0),
      I3 => operation_V(0),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_start,
      O => \indvars_iv_i_reg_67[1]_i_1_n_0\
    );
\indvars_iv_i_reg_67[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA6"
    )
        port map (
      I0 => indvars_iv_i_reg_67(2),
      I1 => indvars_iv_i_reg_6700_out,
      I2 => \indvars_iv_i_reg_67__0\(0),
      I3 => \indvars_iv_i_reg_67__0\(1),
      I4 => \indvars_iv_i_reg_67[2]_i_3_n_0\,
      O => \indvars_iv_i_reg_67[2]_i_1_n_0\
    );
\indvars_iv_i_reg_67[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000900000000"
    )
        port map (
      I0 => j_i_reg_79(1),
      I1 => \indvars_iv_i_reg_67__0\(1),
      I2 => indvars_iv_i_reg_67(2),
      I3 => \indvars_iv_i_reg_67__0\(0),
      I4 => j_i_reg_79(0),
      I5 => ap_sig_54,
      O => indvars_iv_i_reg_6700_out
    );
\indvars_iv_i_reg_67[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => operation_V(0),
      O => \indvars_iv_i_reg_67[2]_i_3_n_0\
    );
\indvars_iv_i_reg_67_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \indvars_iv_i_reg_67[0]_i_1_n_0\,
      Q => \indvars_iv_i_reg_67__0\(0),
      R => '0'
    );
\indvars_iv_i_reg_67_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \indvars_iv_i_reg_67[1]_i_1_n_0\,
      Q => \indvars_iv_i_reg_67__0\(1),
      R => '0'
    );
\indvars_iv_i_reg_67_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \indvars_iv_i_reg_67[2]_i_1_n_0\,
      Q => indvars_iv_i_reg_67(2),
      R => '0'
    );
\j_i_reg_79[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E200E2E2"
    )
        port map (
      I0 => j_i_reg_79(0),
      I1 => ap_sig_80,
      I2 => j_reg_146(0),
      I3 => indvars_iv_i_reg_67(2),
      I4 => ap_sig_88,
      I5 => operation_V(0),
      O => \j_i_reg_79[0]_i_1_n_0\
    );
\j_i_reg_79[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E200E2E2"
    )
        port map (
      I0 => j_i_reg_79(1),
      I1 => ap_sig_80,
      I2 => j_reg_146(1),
      I3 => indvars_iv_i_reg_67(2),
      I4 => ap_sig_88,
      I5 => operation_V(0),
      O => \j_i_reg_79[1]_i_1_n_0\
    );
\j_i_reg_79_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_i_reg_79[0]_i_1_n_0\,
      Q => j_i_reg_79(0),
      R => '0'
    );
\j_i_reg_79_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_i_reg_79[1]_i_1_n_0\,
      Q => j_i_reg_79(1),
      R => '0'
    );
\j_reg_146[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => j_i_reg_79(0),
      I1 => ap_sig_54,
      I2 => j_reg_146(0),
      O => \j_reg_146[0]_i_1_n_0\
    );
\j_reg_146[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => j_i_reg_79(0),
      I1 => j_i_reg_79(1),
      I2 => ap_sig_54,
      I3 => j_reg_146(1),
      O => \j_reg_146[1]_i_1_n_0\
    );
\j_reg_146_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_146[0]_i_1_n_0\,
      Q => j_reg_146(0),
      R => '0'
    );
\j_reg_146_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_146[1]_i_1_n_0\,
      Q => j_reg_146(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bubbleSort_0 is
  port (
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_ce1 : out STD_LOGIC;
    A_we1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 15 downto 0 );
    indexOutputData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    operation_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bubbleSort_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bubbleSort_0 : entity is "bubbleSort_0,bubbleSort,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bubbleSort_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bubbleSort_0 : entity is "bubbleSort,Vivado 2016.1";
  attribute hls_module : string;
  attribute hls_module of bubbleSort_0 : entity is "yes";
end bubbleSort_0;

architecture STRUCTURE of bubbleSort_0 is
  attribute ap_ST_st1_fsm_0 : string;
  attribute ap_ST_st1_fsm_0 of inst : label is "4'b0001";
  attribute ap_ST_st2_fsm_1 : string;
  attribute ap_ST_st2_fsm_1 of inst : label is "4'b0010";
  attribute ap_ST_st3_fsm_2 : string;
  attribute ap_ST_st3_fsm_2 of inst : label is "4'b0100";
  attribute ap_ST_st4_fsm_3 : string;
  attribute ap_ST_st4_fsm_3 of inst : label is "4'b1000";
  attribute ap_const_lv16_0 : string;
  attribute ap_const_lv16_0 of inst : label is "16'b0000000000000000";
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of inst : label is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of inst : label is "2'b01";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of inst : label is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of inst : label is 1;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of inst : label is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of inst : label is 3;
  attribute ap_const_lv3_3 : string;
  attribute ap_const_lv3_3 of inst : label is "3'b011";
  attribute ap_const_lv3_7 : string;
  attribute ap_const_lv3_7 of inst : label is "3'b111";
begin
inst: entity work.bubbleSort_0_bubbleSort
     port map (
      A_address0(1 downto 0) => A_address0(1 downto 0),
      A_address1(1 downto 0) => A_address1(1 downto 0),
      A_ce0 => A_ce0,
      A_ce1 => A_ce1,
      A_d0(15 downto 0) => A_d0(15 downto 0),
      A_d1(15 downto 0) => A_d1(15 downto 0),
      A_q0(15 downto 0) => A_q0(15 downto 0),
      A_q1(15 downto 0) => A_q1(15 downto 0),
      A_we0 => A_we0,
      A_we1 => A_we1,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return(15 downto 0) => ap_return(15 downto 0),
      ap_rst => ap_rst,
      ap_start => ap_start,
      indexOutputData(7 downto 0) => indexOutputData(7 downto 0),
      operation_V(0) => operation_V(0)
    );
end STRUCTURE;
