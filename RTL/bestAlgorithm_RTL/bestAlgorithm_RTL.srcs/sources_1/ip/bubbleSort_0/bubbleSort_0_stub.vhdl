-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Jul 15 12:00:16 2021
-- Host        : DESKTOP-92AEKAJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/aaron/Desktop/git_article/RTL/bestAlgorithm_RTL/bestAlgorithm_RTL.srcs/sources_1/ip/bubbleSort_0/bubbleSort_0_stub.vhdl
-- Design      : bubbleSort_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bubbleSort_0 is
  Port ( 
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

end bubbleSort_0;

architecture stub of bubbleSort_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A_ce0,A_we0,A_ce1,A_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[15:0],indexOutputData[7:0],operation_V[0:0],A_address0[1:0],A_d0[15:0],A_q0[15:0],A_address1[1:0],A_d1[15:0],A_q1[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bubbleSort,Vivado 2016.1";
begin
end;
