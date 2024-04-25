--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.53d
--  \   \         Application: netgen
--  /   /         Filename: system_timesim.vhd
-- /___/   /\     Timestamp: Thu Apr 25 14:45:44 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf system.pcf -rpw 100 -tpw 0 -ar Structure -tm system -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim system.ncd system_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRELIMINARY 1.08 2010-04-09)
-- Input file	: system.ncd
-- Output file	: C:\Users\giulio\Desktop\sumavg\ssssssyn\netgen\par\system_timesim.vhd
-- # of Entities	: 1
-- Design Name	: system
-- Xilinx	: C:\Xilinx\12.1\ISE_DS\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity system is
  port (
    CLK : in STD_LOGIC := 'X'; 
    rst_n : in STD_LOGIC := 'X'; 
    sys_abort : in STD_LOGIC := 'X'; 
    sys_start : in STD_LOGIC := 'X'; 
    sys_done : out STD_LOGIC; 
    sys_input : in STD_LOGIC_VECTOR ( 39 downto 0 ); 
    sys_output : out STD_LOGIC_VECTOR ( 39 downto 0 ) 
  );
end system;

architecture Structure of system is
  signal DIS_set_dev_len : STD_LOGIC; 
  signal sys_input_30_IBUF_0 : STD_LOGIC; 
  signal sys_input_31_IBUF_0 : STD_LOGIC; 
  signal sys_input_24_IBUF_0 : STD_LOGIC; 
  signal sys_input_25_IBUF_0 : STD_LOGIC; 
  signal sys_input_26_IBUF_0 : STD_LOGIC; 
  signal sys_input_27_IBUF_0 : STD_LOGIC; 
  signal sys_input_28_IBUF_0 : STD_LOGIC; 
  signal sys_input_29_IBUF_0 : STD_LOGIC; 
  signal DIS_load_R_dataout : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453 : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454 : STD_LOGIC; 
  signal DIS_DP_R_dataout_21_0 : STD_LOGIC; 
  signal DEV_CTRL_rst_n_inv : STD_LOGIC; 
  signal DEV_DP_DIV_load_R_cnt : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd2_0 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd1_1465 : STD_LOGIC; 
  signal DIS_DP_R_dataout_3_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_1_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_29_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_in_R_res_9_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_16_0 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd1_In_1507 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal DIS_DP_R_dataout_23_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_5_0 : STD_LOGIC; 
  signal sys_start_IBUF_0 : STD_LOGIC; 
  signal DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521 : STD_LOGIC; 
  signal DIS_CTRL_N01 : STD_LOGIC; 
  signal DEV_load_CNT_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_18_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_10_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_7_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_29_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_25_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_12_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_27_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_1_0 : STD_LOGIC; 
  signal DEV_DP_n0212_inv1_cepot : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559 : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560 : STD_LOGIC; 
  signal sys_done_OBUF_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_30_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_9_0 : STD_LOGIC; 
  signal DIS_DP_R_dataout_14_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_0_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_B_1_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_1_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_2_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_3_Q_1582 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_B_3_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_3_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_4_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_B_5_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_5_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_6_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_7_Q_1595 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_B_7_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_7_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_8_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_9_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_10_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_11_Q_1605 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_11_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_32_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_12_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_13_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_14_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_15_Q_1615 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_15_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_16_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_17_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_18_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_19_Q_1624 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_19_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_20_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_21_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_22_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_23_Q_1633 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_23_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_24_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_25_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_26_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_27_Q_1642 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_27_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_28_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_29_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_30_0 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Msub_adder1_out_cy_31_Q_1651 : STD_LOGIC; 
  signal sys_input_32_IBUF_0 : STD_LOGIC; 
  signal sys_input_33_IBUF_0 : STD_LOGIC; 
  signal sys_input_34_IBUF_0 : STD_LOGIC; 
  signal sys_input_35_IBUF_0 : STD_LOGIC; 
  signal sys_input_36_IBUF_0 : STD_LOGIC; 
  signal sys_input_37_IBUF_0 : STD_LOGIC; 
  signal sys_input_38_IBUF_0 : STD_LOGIC; 
  signal sys_input_39_IBUF_0 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd2_In : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd1_2_1663 : STD_LOGIC; 
  signal DEV_DP_L_1_0 : STD_LOGIC; 
  signal DEV_DP_L_3_0 : STD_LOGIC; 
  signal DEV_DP_L_5_0 : STD_LOGIC; 
  signal DEV_DP_L_7_0 : STD_LOGIC; 
  signal MA_CTRL_state_1672 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal DIS_CTRL_N2 : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_1677 : STD_LOGIC; 
  signal ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_7_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_7_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_0_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_0_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_1_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_1_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_2_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_2_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_3_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_3_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_4_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_4_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DIS_DP_dev_len_5_ProtoComp0_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal DIS_DP_dev_len_5_ProtoComp0_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_0_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_1_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_2_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_3_Q : STD_LOGIC; 
  signal ProtoComp10_CYINITVCC_1 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_4_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_5_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_6_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_7_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_8_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_9_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_10_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_11_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_12_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_13_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_14_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_15_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_16_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_17_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_18_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_19_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_20_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_21_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_22_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_23_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_24_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_25_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_26_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_27_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_28_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_29_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_30_Q : STD_LOGIC; 
  signal DEV_DP_DIV_DP_adder1_out_32_Q : STD_LOGIC; 
  signal sys_start_IBUF_221 : STD_LOGIC; 
  signal sys_input_30_IBUF_224 : STD_LOGIC; 
  signal sys_input_31_IBUF_229 : STD_LOGIC; 
  signal sys_input_24_IBUF_234 : STD_LOGIC; 
  signal sys_input_32_IBUF_237 : STD_LOGIC; 
  signal sys_input_25_IBUF_242 : STD_LOGIC; 
  signal sys_input_33_IBUF_245 : STD_LOGIC; 
  signal sys_input_26_IBUF_250 : STD_LOGIC; 
  signal sys_input_34_IBUF_253 : STD_LOGIC; 
  signal sys_input_27_IBUF_258 : STD_LOGIC; 
  signal sys_input_35_IBUF_261 : STD_LOGIC; 
  signal sys_input_28_IBUF_266 : STD_LOGIC; 
  signal sys_input_36_IBUF_269 : STD_LOGIC; 
  signal sys_input_29_IBUF_274 : STD_LOGIC; 
  signal sys_input_37_IBUF_277 : STD_LOGIC; 
  signal sys_input_38_IBUF_282 : STD_LOGIC; 
  signal sys_input_39_IBUF_287 : STD_LOGIC; 
  signal ProtoComp19_IINV_OUT : STD_LOGIC; 
  signal DEV_CTRL_rst_n_inv_non_inverted : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_296 : STD_LOGIC; 
  signal DEV_DP_result_24_dpot_382 : STD_LOGIC; 
  signal DEV_DP_result_26_dpot_377 : STD_LOGIC; 
  signal DEV_DP_result_27_dpot_373 : STD_LOGIC; 
  signal DEV_DP_result_25_dpot_366 : STD_LOGIC; 
  signal DEV_DP_result_28_dpot_455 : STD_LOGIC; 
  signal DEV_DP_result_30_dpot_450 : STD_LOGIC; 
  signal DEV_DP_result_31_dpot_446 : STD_LOGIC; 
  signal DEV_DP_result_29_dpot_439 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_30_pack_1 : STD_LOGIC; 
  signal DEV_DP_result_20_dpot_506 : STD_LOGIC; 
  signal DEV_DP_result_22_dpot_501 : STD_LOGIC; 
  signal DEV_DP_result_23_dpot_497 : STD_LOGIC; 
  signal DEV_DP_result_21_dpot_490 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_21_pack_7 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_23_pack_9 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_25_pack_11 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_27_pack_13 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd2_561 : STD_LOGIC; 
  signal DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_560 : STD_LOGIC; 
  signal DEV_DP_result_0_dpot_624 : STD_LOGIC; 
  signal DEV_DP_result_2_dpot_619 : STD_LOGIC; 
  signal DEV_DP_result_3_dpot_615 : STD_LOGIC; 
  signal DEV_DP_result_1_dpot_608 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_5_pack_10 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_3_pack_8 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt3 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt1 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt2 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_cnt_2_pack_12 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt5_721 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_Mcount_R_cnt4 : STD_LOGIC; 
  signal DEV_DP_result_16_dpot_762 : STD_LOGIC; 
  signal DEV_DP_result_18_dpot_757 : STD_LOGIC; 
  signal DEV_DP_result_19_dpot_753 : STD_LOGIC; 
  signal DEV_DP_result_17_dpot_746 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_14_pack_7 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_16_pack_9 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_18_pack_11 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_12_pack_9 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_10_pack_7 : STD_LOGIC; 
  signal DEV_DP_DIV_DP_R_res_7_pack_5 : STD_LOGIC; 
  signal N8_pack_2 : STD_LOGIC; 
  signal DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In : STD_LOGIC; 
  signal MA_CTRL_nextstate : STD_LOGIC; 
  signal MA_CTRL_state_pack_7 : STD_LOGIC; 
  signal DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In : STD_LOGIC; 
  signal DEV_load_CNT : STD_LOGIC; 
  signal DEV_DP_result_8_dpot_911 : STD_LOGIC; 
  signal DEV_DP_result_10_dpot_906 : STD_LOGIC; 
  signal DEV_DP_result_11_dpot_902 : STD_LOGIC; 
  signal DEV_DP_result_9_dpot_895 : STD_LOGIC; 
  signal sys_done_OBUF_943 : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In : STD_LOGIC; 
  signal DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_pack_5 : STD_LOGIC; 
  signal DEV_DP_L_7_rt_968 : STD_LOGIC; 
  signal DEV_DP_L_5_rt_961 : STD_LOGIC; 
  signal DEV_DP_L_3_rt_956 : STD_LOGIC; 
  signal DEV_DP_L_1_rt_951 : STD_LOGIC; 
  signal DEV_DP_result_4_dpot_1205 : STD_LOGIC; 
  signal DEV_DP_result_6_dpot_1200 : STD_LOGIC; 
  signal DEV_DP_result_7_dpot_1196 : STD_LOGIC; 
  signal DEV_DP_result_5_dpot_1189 : STD_LOGIC; 
  signal DEV_DP_result_12_dpot_1239 : STD_LOGIC; 
  signal DEV_DP_result_14_dpot_1234 : STD_LOGIC; 
  signal DEV_DP_result_15_dpot_1230 : STD_LOGIC; 
  signal DEV_DP_result_13_dpot_1223 : STD_LOGIC; 
  signal DIS_DP_dev_len_7_rt_1369 : STD_LOGIC; 
  signal DIS_DP_dev_len_5_rt_1362 : STD_LOGIC; 
  signal DIS_DP_dev_len_3_rt_1357 : STD_LOGIC; 
  signal DIS_DP_dev_len_1_rt_1352 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_4_INA : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_6_INA : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_0_1_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_output_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sys_done_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_27_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_26_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_25_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_24_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_31_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_30_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_29_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_28_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_n0212_inv1_cepot_INV_0_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_23_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_22_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_21_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_20_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_3_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_2_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_1_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_0_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_19_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_18_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_17_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_16_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_res_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_MA_CTRL_state_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_load_CNT1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_load_CNT1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_load_CNT1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_load_CNT1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_load_CNT1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_11_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_10_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_9_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_8_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_7_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_5_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_3_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_1_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_B_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_35_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_34_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_33_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_32_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_43_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_42_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_41_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_40_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_47_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_46_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_45_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_44_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_55_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_54_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_53_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_52_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_59_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_58_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_57_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_56_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_62_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_61_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_60_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_7_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_6_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_5_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_4_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_15_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_14_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_13_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_dpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_dpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_dpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_dpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_result_12_dpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_39_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_38_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_37_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_36_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_51_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_50_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_49_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_R_A_48_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_R_dataout_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_7_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_5_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_3_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIS_DP_dev_len_1_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DEV_DP_L_1_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_1_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_2_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_3_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_4_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_5_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_6_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_D2OFFBYP_SRC_7_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_CTRL_nextstate_3_dff_9_FSM_FFd2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_22_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_23_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_24_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_25_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_14_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_15_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_2_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DEV_DP_DIV_load_R_A_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal DIS_DP_dev_len : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DEV_DP_result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DIS_DP_R_dataout : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DEV_DP_DIV_DP_R_cnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal DEV_DP_DIV_DP_R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DEV_DP_DIV_DP_R_B : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DEV_DP_DIV_DP_R_A : STD_LOGIC_VECTOR ( 62 downto 32 ); 
  signal DEV_DP_L : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DEV_DP_DIV_DP_Msub_adder1_out_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DIS_DP_R_dataout_in : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DEV_DP_DIV_DP_in_R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DEV_DP_DIV_DP_in_R_A : STD_LOGIC_VECTOR ( 62 downto 32 ); 
begin
  DIS_DP_dev_len_6 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X21Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_6_CLK,
      I => ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(6),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC : X_MUX2
    generic map(
      LOC => "ILOGIC_X21Y3"
    )
    port map (
      IA => sys_input_30_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_IB_UNCONNECTED,
      O => ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND : X_ZERO
    generic map(
      LOC => "ILOGIC_X21Y3"
    )
    port map (
      O => ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_7 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X21Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_7_CLK,
      I => DIS_DP_dev_len_7_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(7),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_1 : X_MUX2
    generic map(
      LOC => "ILOGIC_X21Y2"
    )
    port map (
      IA => sys_input_31_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_1_IB_UNCONNECTED,
      O => DIS_DP_dev_len_7_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_7_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_1 : X_ZERO
    generic map(
      LOC => "ILOGIC_X21Y2"
    )
    port map (
      O => DIS_DP_dev_len_7_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_0 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X26Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_0_CLK,
      I => DIS_DP_dev_len_0_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(0),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_2 : X_MUX2
    generic map(
      LOC => "ILOGIC_X26Y3"
    )
    port map (
      IA => sys_input_24_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_2_IB_UNCONNECTED,
      O => DIS_DP_dev_len_0_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_0_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_2 : X_ZERO
    generic map(
      LOC => "ILOGIC_X26Y3"
    )
    port map (
      O => DIS_DP_dev_len_0_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_1 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X26Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_1_CLK,
      I => DIS_DP_dev_len_1_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(1),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_3 : X_MUX2
    generic map(
      LOC => "ILOGIC_X26Y2"
    )
    port map (
      IA => sys_input_25_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_3_IB_UNCONNECTED,
      O => DIS_DP_dev_len_1_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_1_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_3 : X_ZERO
    generic map(
      LOC => "ILOGIC_X26Y2"
    )
    port map (
      O => DIS_DP_dev_len_1_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_2 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X25Y1",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_2_CLK,
      I => DIS_DP_dev_len_2_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(2),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_4 : X_MUX2
    generic map(
      LOC => "ILOGIC_X25Y1"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_4_INA,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_4_IB_UNCONNECTED,
      O => DIS_DP_dev_len_2_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_2_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_4 : X_ZERO
    generic map(
      LOC => "ILOGIC_X25Y1"
    )
    port map (
      O => DIS_DP_dev_len_2_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_3 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X25Y0",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_3_CLK,
      I => DIS_DP_dev_len_3_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(3),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_5 : X_MUX2
    generic map(
      LOC => "ILOGIC_X25Y0"
    )
    port map (
      IA => sys_input_27_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_5_IB_UNCONNECTED,
      O => DIS_DP_dev_len_3_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_3_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_5 : X_ZERO
    generic map(
      LOC => "ILOGIC_X25Y0"
    )
    port map (
      O => DIS_DP_dev_len_3_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_4 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X24Y1",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_4_CLK,
      I => DIS_DP_dev_len_4_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(4),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_6 : X_MUX2
    generic map(
      LOC => "ILOGIC_X24Y1"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_6_INA,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_6_IB_UNCONNECTED,
      O => DIS_DP_dev_len_4_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_4_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_6 : X_ZERO
    generic map(
      LOC => "ILOGIC_X24Y1"
    )
    port map (
      O => DIS_DP_dev_len_4_ProtoComp0_D2OBYPSEL_GND_0
    );
  DIS_DP_dev_len_5 : X_LATCHE
    generic map(
      LOC => "ILOGIC_X24Y0",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_DIS_DP_dev_len_5_CLK,
      I => DIS_DP_dev_len_5_ProtoComp0_D2OFFBYP_SRC_OUT,
      O => DIS_DP_dev_len(5),
      SET => GND,
      RST => GND
    );
  ProtoComp0_D2OFFBYP_SRC_7 : X_MUX2
    generic map(
      LOC => "ILOGIC_X24Y0"
    )
    port map (
      IA => sys_input_29_IBUF_0,
      IB => NLW_ProtoComp0_D2OFFBYP_SRC_7_IB_UNCONNECTED,
      O => DIS_DP_dev_len_5_ProtoComp0_D2OFFBYP_SRC_OUT,
      SEL => DIS_DP_dev_len_5_ProtoComp0_D2OBYPSEL_GND_0
    );
  ProtoComp0_D2OBYPSEL_GND_7 : X_ZERO
    generic map(
      LOC => "ILOGIC_X24Y0"
    )
    port map (
      O => DIS_DP_dev_len_5_ProtoComp0_D2OBYPSEL_GND_0
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_3_Q,
      O => DEV_DP_DIV_DP_adder1_out_3_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_2_Q,
      O => DEV_DP_DIV_DP_adder1_out_2_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_1_Q,
      O => DEV_DP_DIV_DP_adder1_out_1_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_0_Q,
      O => DEV_DP_DIV_DP_adder1_out_0_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR4,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(3)
    );
  ProtoComp10_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X26Y8"
    )
    port map (
      O => ProtoComp10_CYINITVCC_1
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y8"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp10_CYINITVCC_1,
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_3_Q_1582,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q,
      DI(0) => '0',
      O(3) => DEV_DP_DIV_DP_adder1_out_3_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_2_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_1_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_0_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(3),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(2),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(1),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(0)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR4,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(2)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR3,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(1)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_0_1_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(0)
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_CTRL_nextstate_3_dff_9_FSM_FFd2_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_7_Q,
      O => DEV_DP_DIV_DP_adder1_out_7_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_6_Q,
      O => DEV_DP_DIV_DP_adder1_out_6_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_5_Q,
      O => DEV_DP_DIV_DP_adder1_out_5_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_4_Q,
      O => DEV_DP_DIV_DP_adder1_out_4_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR4,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(7)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y9"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_3_Q_1582,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_7_Q_1595,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q,
      O(3) => DEV_DP_DIV_DP_adder1_out_7_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_6_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_5_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_4_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(7),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(6),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(5),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(4)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR4,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(6)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR4,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(5)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"F0F0F0F00F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR2,
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(4)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_11_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_11_Q,
      O => DEV_DP_DIV_DP_adder1_out_11_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_11_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_10_Q,
      O => DEV_DP_DIV_DP_adder1_out_10_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_11_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_9_Q,
      O => DEV_DP_DIV_DP_adder1_out_9_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_11_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_8_Q,
      O => DEV_DP_DIV_DP_adder1_out_8_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(11)
    );
  DEV_DP_DIV_load_R_A_22_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_22_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y10"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_7_Q_1595,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_11_Q_1605,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_11_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DEV_DP_DIV_DP_adder1_out_11_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_10_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_9_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_8_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(11),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(10),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(9),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(8)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_10_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(10)
    );
  DEV_DP_DIV_load_R_A_23_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_23_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(9)
    );
  DEV_DP_DIV_load_R_A_24_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_24_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_8_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(8)
    );
  DEV_DP_DIV_load_R_A_25_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_25_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_15_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_15_Q,
      O => DEV_DP_DIV_DP_adder1_out_15_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_15_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_14_Q,
      O => DEV_DP_DIV_DP_adder1_out_14_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_15_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_13_Q,
      O => DEV_DP_DIV_DP_adder1_out_13_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_15_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_12_Q,
      O => DEV_DP_DIV_DP_adder1_out_12_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_15_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(15)
    );
  DEV_DP_DIV_load_R_A_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_18_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y11"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_11_Q_1605,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_15_Q_1615,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_15_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DEV_DP_DIV_DP_adder1_out_15_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_14_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_13_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_12_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(15),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(14),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(13),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(12)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_14_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(14)
    );
  DEV_DP_DIV_load_R_A_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_19_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_13_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(13)
    );
  DEV_DP_DIV_load_R_A_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_20_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_12_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(12)
    );
  DEV_DP_DIV_load_R_A_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_21_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_19_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_19_Q,
      O => DEV_DP_DIV_DP_adder1_out_19_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_19_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_18_Q,
      O => DEV_DP_DIV_DP_adder1_out_18_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_19_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_17_Q,
      O => DEV_DP_DIV_DP_adder1_out_17_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_19_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_16_Q,
      O => DEV_DP_DIV_DP_adder1_out_16_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_19_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR1,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(19)
    );
  DEV_DP_DIV_load_R_A_14_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_14_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y12"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_15_Q_1615,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_19_Q_1624,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_19_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DEV_DP_DIV_DP_adder1_out_19_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_18_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_17_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_16_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(19),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(18),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(17),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(16)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_18_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(18)
    );
  DEV_DP_DIV_load_R_A_15_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_15_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_17_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(17)
    );
  DEV_DP_DIV_load_R_A_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_16_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_16_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(16)
    );
  DEV_DP_DIV_load_R_A_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_17_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_23_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_23_Q,
      O => DEV_DP_DIV_DP_adder1_out_23_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_23_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_22_Q,
      O => DEV_DP_DIV_DP_adder1_out_22_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_23_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_21_Q,
      O => DEV_DP_DIV_DP_adder1_out_21_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_23_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_20_Q,
      O => DEV_DP_DIV_DP_adder1_out_20_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_23_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(23)
    );
  DEV_DP_DIV_load_R_A_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_10_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y13"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_19_Q_1624,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_23_Q_1633,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_23_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DEV_DP_DIV_DP_adder1_out_23_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_22_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_21_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_20_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(23),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(22),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(21),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(20)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_22_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(22)
    );
  DEV_DP_DIV_load_R_A_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_11_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_21_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(21)
    );
  DEV_DP_DIV_load_R_A_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_12_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_20_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(20)
    );
  DEV_DP_DIV_load_R_A_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_13_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_27_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_27_Q,
      O => DEV_DP_DIV_DP_adder1_out_27_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_27_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_26_Q,
      O => DEV_DP_DIV_DP_adder1_out_26_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_27_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_25_Q,
      O => DEV_DP_DIV_DP_adder1_out_25_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_27_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_24_Q,
      O => DEV_DP_DIV_DP_adder1_out_24_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_27_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(27)
    );
  DEV_DP_DIV_load_R_A_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_6_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y14"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_23_Q_1633,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_27_Q_1642,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_27_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DEV_DP_DIV_DP_adder1_out_27_Q,
      O(2) => DEV_DP_DIV_DP_adder1_out_26_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_25_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_24_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(27),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(26),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(25),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(24)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_26_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(26)
    );
  DEV_DP_DIV_load_R_A_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_7_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_25_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(25)
    );
  DEV_DP_DIV_load_R_A_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_8_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_24_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(24)
    );
  DEV_DP_DIV_load_R_A_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y14",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_9_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_31_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_30_Q,
      O => DEV_DP_DIV_DP_adder1_out_30_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_31_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_29_Q,
      O => DEV_DP_DIV_DP_adder1_out_29_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_31_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_28_Q,
      O => DEV_DP_DIV_DP_adder1_out_28_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_31_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => DEV_DP_DIV_DP_R_A(62),
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(31)
    );
  DEV_DP_DIV_load_R_A_2_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_2_D5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_cy_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y15"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_27_Q_1642,
      CYINIT => '0',
      CO(3) => DEV_DP_DIV_DP_Msub_adder1_out_cy_31_Q_1651,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_cy_31_O_3_UNCONNECTED,
      O(2) => DEV_DP_DIV_DP_adder1_out_30_Q,
      O(1) => DEV_DP_DIV_DP_adder1_out_29_Q,
      O(0) => DEV_DP_DIV_DP_adder1_out_28_Q,
      S(3) => DEV_DP_DIV_DP_Msub_adder1_out_lut(31),
      S(2) => DEV_DP_DIV_DP_Msub_adder1_out_lut(30),
      S(1) => DEV_DP_DIV_DP_Msub_adder1_out_lut(29),
      S(0) => DEV_DP_DIV_DP_Msub_adder1_out_lut(28)
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_30_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(30)
    );
  DEV_DP_DIV_load_R_A_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_3_C5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_29_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(29)
    );
  DEV_DP_DIV_load_R_A_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_4_B5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_Msub_adder1_out_lut_28_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Msub_adder1_out_lut(28)
    );
  DEV_DP_DIV_load_R_A_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y15",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_5_A5LUT_O_UNCONNECTED
    );
  DEV_DP_DIV_DP_adder1_out_32_DEV_DP_DIV_DP_adder1_out_32_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_Q,
      O => DEV_DP_DIV_DP_adder1_out_32_0
    );
  DEV_DP_DIV_DP_Msub_adder1_out_xor_32_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y16"
    )
    port map (
      CI => DEV_DP_DIV_DP_Msub_adder1_out_cy_31_Q_1651,
      CYINIT => '0',
      CO(3) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_3_UNCONNECTED,
      CO(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_2_UNCONNECTED,
      CO(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_1_UNCONNECTED,
      CO(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_CO_0_UNCONNECTED,
      DI(3) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_3_UNCONNECTED,
      DI(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_2_UNCONNECTED,
      DI(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_1_UNCONNECTED,
      DI(0) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_DI_0_UNCONNECTED,
      O(3) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_3_UNCONNECTED,
      O(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_2_UNCONNECTED,
      O(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_O_1_UNCONNECTED,
      O(0) => DEV_DP_DIV_DP_adder1_out_32_Q,
      S(3) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_3_UNCONNECTED,
      S(2) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_2_UNCONNECTED,
      S(1) => NLW_DEV_DP_DIV_DP_Msub_adder1_out_xor_32_S_1_UNCONNECTED,
      S(0) => '1'
    );
  DEV_DP_DIV_load_R_A_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X26Y16",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DEV_DP_DIV_load_R_A_A6LUT_O_UNCONNECTED
    );
  sys_start_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_start_IBUF_221,
      I => sys_start
    );
  ProtoComp17_IMUX : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_start_IBUF_221,
      O => sys_start_IBUF_0
    );
  sys_input_30_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_30_IBUF_224,
      I => sys_input(30)
    );
  ProtoComp17_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_30_IBUF_224,
      O => sys_input_30_IBUF_0
    );
  sys_output_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_sys_output_0_OBUF_I,
      O => sys_output(0)
    );
  sys_input_31_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_31_IBUF_229,
      I => sys_input(31)
    );
  ProtoComp17_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_31_IBUF_229,
      O => sys_input_31_IBUF_0
    );
  sys_output_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => NlwBufferSignal_sys_output_1_OBUF_I,
      O => sys_output(1)
    );
  sys_input_24_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_24_IBUF_234,
      I => sys_input(24)
    );
  ProtoComp17_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_24_IBUF_234,
      O => sys_input_24_IBUF_0
    );
  sys_input_32_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_32_IBUF_237,
      I => sys_input(32)
    );
  ProtoComp17_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_32_IBUF_237,
      O => sys_input_32_IBUF_0
    );
  sys_output_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => NlwBufferSignal_sys_output_2_OBUF_I,
      O => sys_output(2)
    );
  sys_input_25_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_25_IBUF_242,
      I => sys_input(25)
    );
  ProtoComp17_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_25_IBUF_242,
      O => sys_input_25_IBUF_0
    );
  sys_input_33_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_33_IBUF_245,
      I => sys_input(33)
    );
  ProtoComp17_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_33_IBUF_245,
      O => sys_input_33_IBUF_0
    );
  sys_output_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => NlwBufferSignal_sys_output_3_OBUF_I,
      O => sys_output(3)
    );
  sys_input_26_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_26_IBUF_250,
      I => sys_input(26)
    );
  ProtoComp17_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_26_IBUF_250,
      O => sys_input_26_IBUF_0
    );
  sys_input_34_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_34_IBUF_253,
      I => sys_input(34)
    );
  ProtoComp17_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_34_IBUF_253,
      O => sys_input_34_IBUF_0
    );
  sys_output_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => NlwBufferSignal_sys_output_4_OBUF_I,
      O => sys_output(4)
    );
  sys_input_27_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_27_IBUF_258,
      I => sys_input(27)
    );
  ProtoComp17_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_27_IBUF_258,
      O => sys_input_27_IBUF_0
    );
  sys_input_35_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_35_IBUF_261,
      I => sys_input(35)
    );
  ProtoComp17_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_35_IBUF_261,
      O => sys_input_35_IBUF_0
    );
  sys_output_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_sys_output_5_OBUF_I,
      O => sys_output(5)
    );
  sys_input_28_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_28_IBUF_266,
      I => sys_input(28)
    );
  ProtoComp17_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_28_IBUF_266,
      O => sys_input_28_IBUF_0
    );
  sys_input_36_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_36_IBUF_269,
      I => sys_input(36)
    );
  ProtoComp17_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_36_IBUF_269,
      O => sys_input_36_IBUF_0
    );
  sys_output_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_sys_output_6_OBUF_I,
      O => sys_output(6)
    );
  sys_input_29_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_29_IBUF_274,
      I => sys_input(29)
    );
  ProtoComp17_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_29_IBUF_274,
      O => sys_input_29_IBUF_0
    );
  sys_input_37_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_37_IBUF_277,
      I => sys_input(37)
    );
  ProtoComp17_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_37_IBUF_277,
      O => sys_input_37_IBUF_0
    );
  sys_output_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => NlwBufferSignal_sys_output_7_OBUF_I,
      O => sys_output(7)
    );
  sys_input_38_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_38_IBUF_282,
      I => sys_input(38)
    );
  ProtoComp17_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_38_IBUF_282,
      O => sys_input_38_IBUF_0
    );
  sys_output_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => NlwBufferSignal_sys_output_8_OBUF_I,
      O => sys_output(8)
    );
  sys_input_39_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 240 ps
    )
    port map (
      O => sys_input_39_IBUF_287,
      I => sys_input(39)
    );
  ProtoComp17_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_39_IBUF_287,
      O => sys_input_39_IBUF_0
    );
  sys_output_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => NlwBufferSignal_sys_output_9_OBUF_I,
      O => sys_output(9)
    );
  rst_n_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 240 ps
    )
    port map (
      O => DEV_CTRL_rst_n_inv_non_inverted,
      I => rst_n
    );
  ProtoComp19_IMUX : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 240 ps
    )
    port map (
      I => ProtoComp19_IINV_OUT,
      O => DEV_CTRL_rst_n_inv
    );
  ProtoComp19_IINV : X_INV
    generic map(
      LOC => "PAD195",
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv_non_inverted,
      O => ProtoComp19_IINV_OUT
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 240 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_296,
      I => CLK
    );
  ProtoComp17_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_296,
      O => CLK_BUFGP_IBUFG_0
    );
  sys_output_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD208"
    )
    port map (
      I => NlwBufferSignal_sys_output_10_OBUF_I,
      O => sys_output(10)
    );
  sys_output_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_sys_output_11_OBUF_I,
      O => sys_output(11)
    );
  sys_output_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_sys_output_12_OBUF_I,
      O => sys_output(12)
    );
  sys_output_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => NlwBufferSignal_sys_output_20_OBUF_I,
      O => sys_output(20)
    );
  sys_output_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_sys_output_13_OBUF_I,
      O => sys_output(13)
    );
  sys_output_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => NlwBufferSignal_sys_output_21_OBUF_I,
      O => sys_output(21)
    );
  sys_output_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_sys_output_14_OBUF_I,
      O => sys_output(14)
    );
  sys_output_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => NlwBufferSignal_sys_output_22_OBUF_I,
      O => sys_output(22)
    );
  sys_output_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => NlwBufferSignal_sys_output_30_OBUF_I,
      O => sys_output(30)
    );
  sys_output_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_sys_output_15_OBUF_I,
      O => sys_output(15)
    );
  sys_output_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => NlwBufferSignal_sys_output_23_OBUF_I,
      O => sys_output(23)
    );
  sys_output_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => NlwBufferSignal_sys_output_31_OBUF_I,
      O => sys_output(31)
    );
  sys_output_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_sys_output_16_OBUF_I,
      O => sys_output(16)
    );
  sys_output_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD224"
    )
    port map (
      I => NlwBufferSignal_sys_output_24_OBUF_I,
      O => sys_output(24)
    );
  sys_output_32_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => '0',
      O => sys_output(32)
    );
  sys_output_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_sys_output_17_OBUF_I,
      O => sys_output(17)
    );
  sys_output_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => NlwBufferSignal_sys_output_25_OBUF_I,
      O => sys_output(25)
    );
  sys_output_33_OBUF : X_OBUF
    generic map(
      LOC => "PAD251"
    )
    port map (
      I => '0',
      O => sys_output(33)
    );
  sys_output_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_sys_output_18_OBUF_I,
      O => sys_output(18)
    );
  sys_output_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => NlwBufferSignal_sys_output_26_OBUF_I,
      O => sys_output(26)
    );
  sys_output_34_OBUF : X_OBUF
    generic map(
      LOC => "PAD252"
    )
    port map (
      I => '0',
      O => sys_output(34)
    );
  sys_output_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => NlwBufferSignal_sys_output_19_OBUF_I,
      O => sys_output(19)
    );
  sys_output_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => NlwBufferSignal_sys_output_27_OBUF_I,
      O => sys_output(27)
    );
  sys_output_35_OBUF : X_OBUF
    generic map(
      LOC => "PAD253"
    )
    port map (
      I => '0',
      O => sys_output(35)
    );
  sys_output_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD228"
    )
    port map (
      I => NlwBufferSignal_sys_output_28_OBUF_I,
      O => sys_output(28)
    );
  sys_output_36_OBUF : X_OBUF
    generic map(
      LOC => "PAD254"
    )
    port map (
      I => '0',
      O => sys_output(36)
    );
  sys_output_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => NlwBufferSignal_sys_output_29_OBUF_I,
      O => sys_output(29)
    );
  sys_output_37_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => '0',
      O => sys_output(37)
    );
  sys_output_38_OBUF : X_OBUF
    generic map(
      LOC => "PAD256"
    )
    port map (
      I => '0',
      O => sys_output(38)
    );
  sys_output_39_OBUF : X_OBUF
    generic map(
      LOC => "PAD257"
    )
    port map (
      I => '0',
      O => sys_output(39)
    );
  sys_done_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_sys_done_OBUF_I,
      O => sys_done
    );
  DEV_DP_result_27 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_27_CLK,
      I => DEV_DP_result_27_dpot_373,
      O => DEV_DP_result(27),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"FFFEFFFF00020000"
    )
    port map (
      ADR2 => NlwBufferSignal_DEV_DP_result_27_dpot_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_result_27_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_27_dpot_ADR4,
      ADR5 => DEV_DP_result(27),
      ADR1 => NlwBufferSignal_DEV_DP_result_27_dpot_ADR1,
      ADR0 => NlwBufferSignal_DEV_DP_result_27_dpot_ADR0,
      O => DEV_DP_result_27_dpot_373
    );
  DEV_DP_result_26 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_26_CLK,
      I => DEV_DP_result_26_dpot_377,
      O => DEV_DP_result(26),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"FFFF0100FEFF0000"
    )
    port map (
      ADR2 => NlwBufferSignal_DEV_DP_result_26_dpot_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_result_26_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_26_dpot_ADR3,
      ADR4 => DEV_DP_result(26),
      ADR1 => NlwBufferSignal_DEV_DP_result_26_dpot_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_result_26_dpot_ADR5,
      O => DEV_DP_result_26_dpot_377
    );
  DEV_DP_result_25 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_25_CLK,
      I => DEV_DP_result_25_dpot_366,
      O => DEV_DP_result(25),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"FFFF0000FEFF1000"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_25_dpot_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_result_25_dpot_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_result_25_dpot_ADR3,
      ADR4 => DEV_DP_result(25),
      ADR0 => NlwBufferSignal_DEV_DP_result_25_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_25_dpot_ADR2,
      O => DEV_DP_result_25_dpot_366
    );
  DEV_DP_result_24 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_24_CLK,
      I => DEV_DP_result_24_dpot_382,
      O => DEV_DP_result(24),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"FFFF0000FFFD0020"
    )
    port map (
      ADR5 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR1,
      ADR0 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_24_dpot_ADR2,
      O => DEV_DP_result_24_dpot_382
    );
  DIS_DP_R_dataout_31_DIS_DP_R_dataout_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(3),
      O => DIS_DP_R_dataout_3_0
    );
  DIS_DP_R_dataout_31_DIS_DP_R_dataout_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(29),
      O => DIS_DP_R_dataout_29_0
    );
  DIS_DP_R_dataout_31_DIS_DP_R_dataout_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(27),
      O => DIS_DP_R_dataout_27_0
    );
  DIS_DP_R_dataout_31_DIS_DP_R_dataout_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(25),
      O => DIS_DP_R_dataout_25_0
    );
  DIS_DP_R_dataout_31 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_31_CLK,
      I => DIS_DP_R_dataout_in(31),
      O => DIS_DP_R_dataout(31),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in251 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"8888000088880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR0,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR4,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR1,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(31)
    );
  DIS_DP_Mmux_R_dataout_in261 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"A0A00000"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR2,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR0,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR4,
      ADR3 => '1',
      O => DIS_DP_R_dataout_in(3)
    );
  DIS_DP_R_dataout_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_3_CLK,
      I => DIS_DP_R_dataout_in(3),
      O => DIS_DP_R_dataout(3),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_28 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_28_CLK,
      I => DIS_DP_R_dataout_in(28),
      O => DIS_DP_R_dataout(28),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in211 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"A0A00000A0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR2,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR0,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(28)
    );
  DIS_DP_Mmux_R_dataout_in221 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR3,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR2,
      ADR1 => '1',
      O => DIS_DP_R_dataout_in(29)
    );
  DIS_DP_R_dataout_29 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_29_CLK,
      I => DIS_DP_R_dataout_in(29),
      O => DIS_DP_R_dataout(29),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_26 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_26_CLK,
      I => DIS_DP_R_dataout_in(26),
      O => DIS_DP_R_dataout(26),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"F0000000F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR4,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR3,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR2,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(26)
    );
  DIS_DP_Mmux_R_dataout_in201 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"AA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR0,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR4,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR3,
      ADR2 => '1',
      O => DIS_DP_R_dataout_in(27)
    );
  DIS_DP_R_dataout_27 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_27_CLK,
      I => DIS_DP_R_dataout_in(27),
      O => DIS_DP_R_dataout(27),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_24 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_24_CLK,
      I => DIS_DP_R_dataout_in(24),
      O => DIS_DP_R_dataout(24),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"A000A000A000A000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR3,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR2,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR0,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(24)
    );
  DIS_DP_Mmux_R_dataout_in181 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"C000C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR1,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR3,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR2,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(25)
    );
  DIS_DP_R_dataout_25 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_25_CLK,
      I => DIS_DP_R_dataout_in(25),
      O => DIS_DP_R_dataout(25),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_result_31 : X_SFF
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_31_CLK,
      I => DEV_DP_result_31_dpot_446,
      O => DEV_DP_result(31),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"FFFEFFFF00100000"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_31_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_31_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_31_dpot_ADR4,
      ADR5 => DEV_DP_result(31),
      ADR1 => NlwBufferSignal_DEV_DP_result_31_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_31_dpot_ADR2,
      O => DEV_DP_result_31_dpot_446
    );
  DEV_DP_result_30 : X_SFF
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_30_CLK,
      I => DEV_DP_result_30_dpot_450,
      O => DEV_DP_result(30),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"FFFF0000FFEF0040"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_30_dpot_ADR3,
      ADR0 => NlwBufferSignal_DEV_DP_result_30_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_30_dpot_ADR2,
      ADR4 => DEV_DP_result(30),
      ADR5 => NlwBufferSignal_DEV_DP_result_30_dpot_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_result_30_dpot_ADR1,
      O => DEV_DP_result_30_dpot_450
    );
  DEV_DP_result_29 : X_SFF
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_29_CLK,
      I => DEV_DP_result_29_dpot_439,
      O => DEV_DP_result(29),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"FFFF0000FEFF1000"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_29_dpot_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_result_29_dpot_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_result_29_dpot_ADR3,
      ADR4 => DEV_DP_result(29),
      ADR0 => NlwBufferSignal_DEV_DP_result_29_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_29_dpot_ADR2,
      O => DEV_DP_result_29_dpot_439
    );
  DEV_DP_result_28 : X_SFF
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_28_CLK,
      I => DEV_DP_result_28_dpot_455,
      O => DEV_DP_result(28),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"FFFFFFFD00000020"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_result_28_dpot_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_result_28_dpot_ADR1,
      ADR0 => NlwBufferSignal_DEV_DP_result_28_dpot_ADR0,
      ADR5 => DEV_DP_result(28),
      ADR3 => NlwBufferSignal_DEV_DP_result_28_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_28_dpot_ADR2,
      O => DEV_DP_result_28_dpot_455
    );
  DEV_DP_DIV_DP_R_res_31_DEV_DP_DIV_DP_R_res_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_30_pack_1,
      O => DEV_DP_DIV_DP_R_res(30)
    );
  DEV_DP_DIV_DP_R_res_31 : X_FF
    generic map(
      LOC => "SLICE_X22Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_31_CLK,
      I => DEV_DP_DIV_DP_in_R_res(31),
      O => DEV_DP_DIV_DP_R_res(31),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res251 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y5",
      INIT => X"AAAA8888AAAA8888"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(31)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res241 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y5",
      INIT => X"FF00CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR3,
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(30)
    );
  DEV_DP_DIV_DP_R_res_30 : X_FF
    generic map(
      LOC => "SLICE_X22Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_30_CLK,
      I => DEV_DP_DIV_DP_in_R_res(30),
      O => DEV_DP_DIV_DP_R_res_30_pack_1,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_IN,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_n0212_inv1_cepot_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y7",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_n0212_inv1_cepot_INV_0_ADR0,
      O => DEV_DP_n0212_inv1_cepot
    );
  DEV_DP_result_23 : X_SFF
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_23_CLK,
      I => DEV_DP_result_23_dpot_497,
      O => DEV_DP_result(23),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => X"FFFEFFFF00040000"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_23_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_23_dpot_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_result_23_dpot_ADR4,
      ADR5 => DEV_DP_result(23),
      ADR0 => NlwBufferSignal_DEV_DP_result_23_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_23_dpot_ADR1,
      O => DEV_DP_result_23_dpot_497
    );
  DEV_DP_result_22 : X_SFF
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_22_CLK,
      I => DEV_DP_result_22_dpot_501,
      O => DEV_DP_result(22),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => X"F0F0F0F0F0E2F0F0"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_result_22_dpot_ADR0,
      O => DEV_DP_result_22_dpot_501
    );
  DEV_DP_result_21 : X_SFF
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_21_CLK,
      I => DEV_DP_result_21_dpot_490,
      O => DEV_DP_result(21),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => X"F0F0F0F0F1E0F0F0"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_21_dpot_ADR3,
      O => DEV_DP_result_21_dpot_490
    );
  DEV_DP_result_20 : X_SFF
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_20_CLK,
      I => DEV_DP_result_20_dpot_506,
      O => DEV_DP_result(20),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y4",
      INIT => X"FFFF0000FEFF1000"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_20_dpot_ADR2,
      O => DEV_DP_result_20_dpot_506
    );
  DEV_DP_DIV_DP_R_res_28_DEV_DP_DIV_DP_R_res_28_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_27_pack_13,
      O => DEV_DP_DIV_DP_R_res(27)
    );
  DEV_DP_DIV_DP_R_res_28_DEV_DP_DIV_DP_R_res_28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_25_pack_11,
      O => DEV_DP_DIV_DP_R_res(25)
    );
  DEV_DP_DIV_DP_R_res_28_DEV_DP_DIV_DP_R_res_28_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_23_pack_9,
      O => DEV_DP_DIV_DP_R_res(23)
    );
  DEV_DP_DIV_DP_R_res_28_DEV_DP_DIV_DP_R_res_28_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_21_pack_7,
      O => DEV_DP_DIV_DP_R_res(21)
    );
  DEV_DP_DIV_DP_R_res_28 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_28_CLK,
      I => DEV_DP_DIV_DP_in_R_res(28),
      O => DEV_DP_DIV_DP_R_res(28),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res211 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(28)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res201 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR0,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR3,
      O => DEV_DP_DIV_DP_in_R_res(27)
    );
  DEV_DP_DIV_DP_R_res_27 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_27_CLK,
      I => DEV_DP_DIV_DP_in_R_res(27),
      O => DEV_DP_DIV_DP_R_res_27_pack_13,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_26 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_26_CLK,
      I => DEV_DP_DIV_DP_in_R_res(26),
      O => DEV_DP_DIV_DP_R_res(26),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res191 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(26)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res181 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR0,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR3,
      O => DEV_DP_DIV_DP_in_R_res(25)
    );
  DEV_DP_DIV_DP_R_res_25 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_25_CLK,
      I => DEV_DP_DIV_DP_in_R_res(25),
      O => DEV_DP_DIV_DP_R_res_25_pack_11,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_24 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_24_CLK,
      I => DEV_DP_DIV_DP_in_R_res(24),
      O => DEV_DP_DIV_DP_R_res(24),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res171 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(24)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res161 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR0,
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(23)
    );
  DEV_DP_DIV_DP_R_res_23 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_23_CLK,
      I => DEV_DP_DIV_DP_in_R_res(23),
      O => DEV_DP_DIV_DP_R_res_23_pack_9,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_22 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_22_CLK,
      I => DEV_DP_DIV_DP_in_R_res(22),
      O => DEV_DP_DIV_DP_R_res(22),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res151 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"AA88AA88AA88AA88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR1,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(22)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res141 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => X"FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR4,
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR1,
      O => DEV_DP_DIV_DP_in_R_res(21)
    );
  DEV_DP_DIV_DP_R_res_21 : X_FF
    generic map(
      LOC => "SLICE_X23Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_21_CLK,
      I => DEV_DP_DIV_DP_in_R_res(21),
      O => DEV_DP_DIV_DP_R_res_21_pack_7,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_DEV_DP_DIV_CTRL_state_FSM_FFd1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_561,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd2_0
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X23Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_IN,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt : X_LUT5
    generic map(
      LOC => "SLICE_X23Y7",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_ADR3,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_560
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X23Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_CLK,
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_560,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd2_561,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_22_DIS_DP_R_dataout_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(23),
      O => DIS_DP_R_dataout_23_0
    );
  DIS_DP_R_dataout_22_DIS_DP_R_dataout_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(21),
      O => DIS_DP_R_dataout_21_0
    );
  DIS_DP_R_dataout_22_DIS_DP_R_dataout_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(1),
      O => DIS_DP_R_dataout_1_0
    );
  DIS_DP_R_dataout_22_DIS_DP_R_dataout_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(18),
      O => DIS_DP_R_dataout_18_0
    );
  DIS_DP_R_dataout_22 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_22_CLK,
      I => DIS_DP_R_dataout_in(22),
      O => DIS_DP_R_dataout(22),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"8888000088880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR0,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR4,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(22)
    );
  DIS_DP_Mmux_R_dataout_in161 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"80808080"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR2,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR0,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR1,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(23)
    );
  DIS_DP_R_dataout_23 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_23_CLK,
      I => DIS_DP_R_dataout_in(23),
      O => DIS_DP_R_dataout(23),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_20 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_20_CLK,
      I => DIS_DP_R_dataout_in(20),
      O => DIS_DP_R_dataout(20),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR2,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(20)
    );
  DIS_DP_Mmux_R_dataout_in141 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"CC000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR3,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR4,
      ADR2 => '1',
      O => DIS_DP_R_dataout_in(21)
    );
  DIS_DP_R_dataout_21 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_21_CLK,
      I => DIS_DP_R_dataout_in(21),
      O => DIS_DP_R_dataout(21),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_19 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_19_CLK,
      I => DIS_DP_R_dataout_in(19),
      O => DIS_DP_R_dataout(19),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR2,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR1,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR3,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(19)
    );
  DIS_DP_Mmux_R_dataout_in121 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"80808080"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR0,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR2,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR1,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(1)
    );
  DIS_DP_R_dataout_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_1_CLK,
      I => DIS_DP_R_dataout_in(1),
      O => DIS_DP_R_dataout(1),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_17 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_17_CLK,
      I => DIS_DP_R_dataout_in(17),
      O => DIS_DP_R_dataout(17),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"A000A000A000A000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR3,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR0,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(17)
    );
  DIS_DP_Mmux_R_dataout_in101 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"C000C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR1,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR3,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(18)
    );
  DIS_DP_R_dataout_18 : X_FF
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_18_CLK,
      I => DIS_DP_R_dataout_in(18),
      O => DIS_DP_R_dataout(18),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_result_3 : X_SFF
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_3_CLK,
      I => DEV_DP_result_3_dpot_615,
      O => DEV_DP_result(3),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => X"FFFFFEFF00001000"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_result_3_dpot_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_result_3_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_3_dpot_ADR3,
      ADR5 => DEV_DP_result(3),
      ADR1 => NlwBufferSignal_DEV_DP_result_3_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_3_dpot_ADR2,
      O => DEV_DP_result_3_dpot_615
    );
  DEV_DP_result_2 : X_SFF
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_2_CLK,
      I => DEV_DP_result_2_dpot_619,
      O => DEV_DP_result(2),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => X"FFFF0000FFEF0040"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_2_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_2_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_2_dpot_ADR2,
      ADR4 => DEV_DP_result(2),
      ADR5 => NlwBufferSignal_DEV_DP_result_2_dpot_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_result_2_dpot_ADR1,
      O => DEV_DP_result_2_dpot_619
    );
  DEV_DP_result_1 : X_SFF
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_1_CLK,
      I => DEV_DP_result_1_dpot_608,
      O => DEV_DP_result(1),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => X"AAAAAAB8AAAAAAAA"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR4,
      ADR5 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_1_dpot_ADR2,
      O => DEV_DP_result_1_dpot_608
    );
  DEV_DP_result_0 : X_SFF
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_0_CLK,
      I => DEV_DP_result_0_dpot_624,
      O => DEV_DP_result(0),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => X"FFFFFFFB00000040"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_result_0_dpot_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_result_0_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_0_dpot_ADR1,
      ADR5 => DEV_DP_result(0),
      ADR3 => NlwBufferSignal_DEV_DP_result_0_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_0_dpot_ADR2,
      O => DEV_DP_result_0_dpot_624
    );
  DEV_DP_DIV_DP_R_res_6_DEV_DP_DIV_DP_R_res_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_5_pack_10,
      O => DEV_DP_DIV_DP_R_res(5)
    );
  DEV_DP_DIV_DP_R_res_6_DEV_DP_DIV_DP_R_res_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_3_pack_8,
      O => DEV_DP_DIV_DP_R_res(3)
    );
  DEV_DP_DIV_DP_R_res_6_DEV_DP_DIV_DP_R_res_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(29),
      O => DEV_DP_DIV_DP_R_res_29_0
    );
  DEV_DP_DIV_DP_R_res_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_6_CLK,
      I => DEV_DP_DIV_DP_in_R_res(6),
      O => DEV_DP_DIV_DP_R_res(6),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res291 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"AAAAA0A0AAAAA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(6)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res281 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"CCCCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR1,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR2,
      O => DEV_DP_DIV_DP_in_R_res(5)
    );
  DEV_DP_DIV_DP_R_res_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_5_CLK,
      I => DEV_DP_DIV_DP_in_R_res(5),
      O => DEV_DP_DIV_DP_R_res_5_pack_10,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_4_CLK,
      I => DEV_DP_DIV_DP_in_R_res(4),
      O => DEV_DP_DIV_DP_R_res(4),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res271 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"AAAAA0A0AAAAA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(4)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res261 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"CCCCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR1,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR2,
      O => DEV_DP_DIV_DP_in_R_res(3)
    );
  DEV_DP_DIV_DP_R_res_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_3_CLK,
      I => DEV_DP_DIV_DP_in_R_res(3),
      O => DEV_DP_DIV_DP_R_res_3_pack_8,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_2_CLK,
      I => DEV_DP_DIV_DP_in_R_res(2),
      O => DEV_DP_DIV_DP_R_res(2),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res231 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"FFCC0000FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => DEV_DP_DIV_DP_R_res_1_0,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR1,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(2)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res221 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"F0C0F0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR2,
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR1,
      O => DEV_DP_DIV_DP_in_R_res(29)
    );
  DEV_DP_DIV_DP_R_res_29 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_29_CLK,
      I => DEV_DP_DIV_DP_in_R_res(29),
      O => DEV_DP_DIV_DP_R_res(29),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_0_CLK,
      I => DEV_DP_DIV_DP_in_R_res(0),
      O => DEV_DP_DIV_DP_R_res(0),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => X"0000FFFF0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(0)
    );
  DEV_DP_DIV_DP_R_cnt_3_DEV_DP_DIV_DP_R_cnt_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt_2_pack_12,
      O => DEV_DP_DIV_DP_R_cnt(2)
    );
  DEV_DP_DIV_DP_R_cnt_3_DEV_DP_DIV_DP_R_cnt_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_in_R_res(9),
      O => DEV_DP_DIV_DP_in_R_res_9_0
    );
  DEV_DP_DIV_CTRL_load_R_cnt1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR3,
      O => DEV_DP_DIV_load_R_cnt
    );
  DEV_DP_DIV_DP_R_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_3_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt3,
      O => DEV_DP_DIV_DP_R_cnt(3),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mcount_R_cnt31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"FFFF0055FCFD0357"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR3,
      ADR5 => DEV_DP_DIV_DP_R_cnt(2),
      ADR4 => DEV_DP_DIV_DP_R_cnt(3),
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR1,
      O => DEV_DP_DIV_DP_Mcount_R_cnt3
    );
  DEV_DP_DIV_DP_R_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_1_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt1,
      O => DEV_DP_DIV_DP_R_cnt(1),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"C3C3C3FFC3C3C3FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Mcount_R_cnt1
    );
  DEV_DP_DIV_DP_Mcount_R_cnt21 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"A9A9A9FF"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR4,
      O => DEV_DP_DIV_DP_Mcount_R_cnt2
    );
  DEV_DP_DIV_DP_R_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_2_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt2,
      O => DEV_DP_DIV_DP_R_cnt_2_pack_12,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_0_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt,
      O => DEV_DP_DIV_DP_R_cnt(0),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"0000FFCC0000FFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_Mcount_R_cnt
    );
  DEV_DP_DIV_DP_Mmux_in_R_res321 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => X"F0C0F0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR1,
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR3,
      O => DEV_DP_DIV_DP_in_R_res(9)
    );
  DEV_DP_DIV_DP_R_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y7",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_5_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt5_721,
      O => DEV_DP_DIV_DP_R_cnt(5),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mcount_R_cnt5 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y7",
      INIT => X"5555555400000001"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR4,
      ADR5 => DEV_DP_DIV_DP_R_cnt(5),
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR0,
      O => DEV_DP_DIV_DP_Mcount_R_cnt5_721
    );
  DEV_DP_DIV_DP_R_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y7",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_load_R_cnt,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_4_CLK,
      I => DEV_DP_DIV_DP_Mcount_R_cnt4,
      O => DEV_DP_DIV_DP_R_cnt(4),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mcount_R_cnt41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y7",
      INIT => X"FFFFFF00FFFEFF01"
    )
    port map (
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR0,
      ADR4 => DEV_DP_DIV_DP_R_cnt(4),
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR3,
      O => DEV_DP_DIV_DP_Mcount_R_cnt4
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y7",
      INIT => X"0000000055555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR0,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd2_In
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y1",
      INIT => X"FFFFFFFFFFFFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR4,
      ADR0 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR0,
      ADR5 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR5,
      ADR3 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR3,
      O => N2
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y2",
      INIT => X"FFFFFFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR2,
      ADR4 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR4,
      ADR5 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR5,
      O => N4
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y2",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR0,
      ADR3 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR3,
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR2,
      ADR5 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR5,
      ADR1 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR1,
      ADR4 => N4,
      O => DIS_CTRL_N01
    );
  DEV_DP_result_19 : X_SFF
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_19_CLK,
      I => DEV_DP_result_19_dpot_753,
      O => DEV_DP_result(19),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => X"FFFFFFEF00100000"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_19_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_19_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_19_dpot_ADR2,
      ADR5 => DEV_DP_result(19),
      ADR1 => NlwBufferSignal_DEV_DP_result_19_dpot_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_result_19_dpot_ADR4,
      O => DEV_DP_result_19_dpot_753
    );
  DEV_DP_result_18 : X_SFF
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_18_CLK,
      I => DEV_DP_result_18_dpot_757,
      O => DEV_DP_result(18),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => X"FFFF0000FEFF1000"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_18_dpot_ADR1,
      ADR0 => NlwBufferSignal_DEV_DP_result_18_dpot_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_result_18_dpot_ADR3,
      ADR4 => DEV_DP_result(18),
      ADR5 => NlwBufferSignal_DEV_DP_result_18_dpot_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_result_18_dpot_ADR2,
      O => DEV_DP_result_18_dpot_757
    );
  DEV_DP_result_17 : X_SFF
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_17_CLK,
      I => DEV_DP_result_17_dpot_746,
      O => DEV_DP_result(17),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => X"F0F0F1E0F0F0F0F0"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR4,
      ADR5 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_17_dpot_ADR3,
      O => DEV_DP_result_17_dpot_746
    );
  DEV_DP_result_16 : X_SFF
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_16_CLK,
      I => DEV_DP_result_16_dpot_762,
      O => DEV_DP_result(16),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y4",
      INIT => X"FFFEFFFF00100000"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_16_dpot_ADR3,
      ADR0 => NlwBufferSignal_DEV_DP_result_16_dpot_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_result_16_dpot_ADR4,
      ADR5 => DEV_DP_result(16),
      ADR1 => NlwBufferSignal_DEV_DP_result_16_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_16_dpot_ADR2,
      O => DEV_DP_result_16_dpot_762
    );
  DEV_DP_DIV_DP_R_res_20_DEV_DP_DIV_DP_R_res_20_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(1),
      O => DEV_DP_DIV_DP_R_res_1_0
    );
  DEV_DP_DIV_DP_R_res_20_DEV_DP_DIV_DP_R_res_20_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_18_pack_11,
      O => DEV_DP_DIV_DP_R_res(18)
    );
  DEV_DP_DIV_DP_R_res_20_DEV_DP_DIV_DP_R_res_20_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_16_pack_9,
      O => DEV_DP_DIV_DP_R_res(16)
    );
  DEV_DP_DIV_DP_R_res_20_DEV_DP_DIV_DP_R_res_20_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_14_pack_7,
      O => DEV_DP_DIV_DP_R_res(14)
    );
  DEV_DP_DIV_DP_R_res_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_20_CLK,
      I => DEV_DP_DIV_DP_in_R_res(20),
      O => DEV_DP_DIV_DP_R_res(20),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res131 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"AAAAA0A0AAAAA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(20)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res121 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"FF00F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR3,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR2,
      O => DEV_DP_DIV_DP_in_R_res(1)
    );
  DEV_DP_DIV_DP_R_res_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_1_CLK,
      I => DEV_DP_DIV_DP_in_R_res(1),
      O => DEV_DP_DIV_DP_R_res(1),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_19 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_19_CLK,
      I => DEV_DP_DIV_DP_in_R_res(19),
      O => DEV_DP_DIV_DP_R_res(19),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res111 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"CCCCC0C0CCCCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR2,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(19)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res101 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"AAAAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR0,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR2,
      O => DEV_DP_DIV_DP_in_R_res(18)
    );
  DEV_DP_DIV_DP_R_res_18 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_18_CLK,
      I => DEV_DP_DIV_DP_in_R_res(18),
      O => DEV_DP_DIV_DP_R_res_18_pack_11,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_17 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_17_CLK,
      I => DEV_DP_DIV_DP_in_R_res(17),
      O => DEV_DP_DIV_DP_R_res(17),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res91 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(17)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res81 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR0,
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(16)
    );
  DEV_DP_DIV_DP_R_res_16 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_16_CLK,
      I => DEV_DP_DIV_DP_in_R_res(16),
      O => DEV_DP_DIV_DP_R_res_16_pack_9,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_15_CLK,
      I => DEV_DP_DIV_DP_in_R_res(15),
      O => DEV_DP_DIV_DP_R_res(15),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res71 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(15)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res61 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => X"F0F0F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR2,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(14)
    );
  DEV_DP_DIV_DP_R_res_14 : X_FF
    generic map(
      LOC => "SLICE_X25Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_14_CLK,
      I => DEV_DP_DIV_DP_in_R_res(14),
      O => DEV_DP_DIV_DP_R_res_14_pack_7,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_13_DEV_DP_DIV_DP_R_res_13_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_12_pack_9,
      O => DEV_DP_DIV_DP_R_res(12)
    );
  DEV_DP_DIV_DP_R_res_13_DEV_DP_DIV_DP_R_res_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_10_pack_7,
      O => DEV_DP_DIV_DP_R_res(10)
    );
  DEV_DP_DIV_DP_R_res_13_DEV_DP_DIV_DP_R_res_13_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_7_pack_5,
      O => DEV_DP_DIV_DP_R_res(7)
    );
  DEV_DP_DIV_DP_R_res_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_13_CLK,
      I => DEV_DP_DIV_DP_in_R_res(13),
      O => DEV_DP_DIV_DP_R_res(13),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res51 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(13)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res41 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR0,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR3,
      O => DEV_DP_DIV_DP_in_R_res(12)
    );
  DEV_DP_DIV_DP_R_res_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_12_CLK,
      I => DEV_DP_DIV_DP_in_R_res(12),
      O => DEV_DP_DIV_DP_R_res_12_pack_9,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_11_CLK,
      I => DEV_DP_DIV_DP_in_R_res(11),
      O => DEV_DP_DIV_DP_R_res(11),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res31 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR3,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(11)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res21 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"AAAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR0,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR3,
      O => DEV_DP_DIV_DP_in_R_res(10)
    );
  DEV_DP_DIV_DP_R_res_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_10_CLK,
      I => DEV_DP_DIV_DP_in_R_res(10),
      O => DEV_DP_DIV_DP_R_res_10_pack_7,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_9 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_IN,
      O => DEV_DP_DIV_DP_R_res(9),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_res_8 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_8_CLK,
      I => DEV_DP_DIV_DP_in_R_res(8),
      O => DEV_DP_DIV_DP_R_res(8),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_res311 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"CCCCCC00CCCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR4,
      ADR5 => '1',
      O => DEV_DP_DIV_DP_in_R_res(8)
    );
  DEV_DP_DIV_DP_Mmux_in_R_res301 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => X"F0F0F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR2,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR4,
      O => DEV_DP_DIV_DP_in_R_res(7)
    );
  DEV_DP_DIV_DP_R_res_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_res_7_CLK,
      I => DEV_DP_DIV_DP_in_R_res(7),
      O => DEV_DP_DIV_DP_R_res_7_pack_5,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_2_DEV_DP_DIV_CTRL_state_FSM_FFd1_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N8_pack_2,
      O => N8
    );
  DEV_DP_DIV_DP_Mcount_R_cnt5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y7",
      INIT => X"FFFFAAAAFFFFAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR0,
      ADR5 => '1',
      O => N6
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y7",
      INIT => X"FFFFFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR0,
      O => N8_pack_2
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_2_CLK,
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_In_1507,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd1_2_1663,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_In : X_LUT6
    generic map(
      LOC => "SLICE_X25Y7",
      INIT => X"FFFFF0F0FFFEF0F0"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR3,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR0,
      ADR5 => N8,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR2,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd1_In_1507
    );
  DEV_DP_DIV_CTRL_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_IN,
      O => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => MA_CTRL_state_pack_7,
      O => MA_CTRL_state_1672
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_load_CNT,
      O => DEV_load_CNT_0
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_CLK,
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In,
      O => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"B3A0FFA0B3A0FFA0"
    )
    port map (
      ADR4 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR4,
      ADR1 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR1,
      ADR0 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR0,
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR2,
      ADR3 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR3,
      ADR5 => '1',
      O => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In
    );
  MA_CTRL_Mmux_nextstate11 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"BBAAEEAA"
    )
    port map (
      ADR4 => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR4,
      ADR1 => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR1,
      ADR0 => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR0,
      ADR2 => '1',
      ADR3 => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR3,
      O => MA_CTRL_nextstate
    );
  MA_CTRL_state : X_FF
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MA_CTRL_state_CLK,
      I => MA_CTRL_nextstate,
      O => MA_CTRL_state_pack_7,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR0,
      ADR3 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR3,
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR2,
      ADR4 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR4,
      ADR5 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR5,
      ADR1 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR1,
      O => DIS_CTRL_N2
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_CLK,
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In,
      O => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"333300A0333300A0"
    )
    port map (
      ADR1 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR1,
      ADR0 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR0,
      ADR3 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR3,
      ADR4 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR4,
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR2,
      ADR5 => '1',
      O => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In
    );
  DEV_CTRL_load_CNT1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"00000080"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR1,
      ADR0 => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR0,
      ADR3 => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR3,
      ADR4 => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR4,
      ADR2 => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR2,
      O => DEV_load_CNT
    );
  DEV_DP_result_11 : X_SFF
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_11_CLK,
      I => DEV_DP_result_11_dpot_902,
      O => DEV_DP_result(11),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => X"FFFFFFFB00000040"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_result_11_dpot_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_result_11_dpot_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_result_11_dpot_ADR1,
      ADR5 => DEV_DP_result(11),
      ADR0 => NlwBufferSignal_DEV_DP_result_11_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_11_dpot_ADR2,
      O => DEV_DP_result_11_dpot_902
    );
  DEV_DP_result_10 : X_SFF
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_10_CLK,
      I => DEV_DP_result_10_dpot_906,
      O => DEV_DP_result(10),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => X"FFFE0002FFFF0000"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_10_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_10_dpot_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_result_10_dpot_ADR5,
      ADR4 => DEV_DP_result(10),
      ADR2 => NlwBufferSignal_DEV_DP_result_10_dpot_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_result_10_dpot_ADR0,
      O => DEV_DP_result_10_dpot_906
    );
  DEV_DP_result_9 : X_SFF
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_9_CLK,
      I => DEV_DP_result_9_dpot_895,
      O => DEV_DP_result(9),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => X"F0F0F0F0F1E0F0F0"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_9_dpot_ADR3,
      O => DEV_DP_result_9_dpot_895
    );
  DEV_DP_result_8 : X_SFF
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_8_CLK,
      I => DEV_DP_result_8_dpot_911,
      O => DEV_DP_result(8),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y5",
      INIT => X"FF00FE10FF00FF00"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_result_8_dpot_ADR2,
      O => DEV_DP_result_8_dpot_911
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_done_OBUF_943,
      O => sys_done_OBUF_0
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_pack_5,
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454
    );
  DIS_CTRL_set_dev_ptr11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => X"0200020002000200"
    )
    port map (
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR3,
      ADR0 => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR0,
      ADR2 => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR2,
      ADR1 => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR1,
      ADR5 => '1',
      O => DIS_set_dev_len
    );
  DIS_CTRL_nextstate_1_dff_8_done1 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => X"03030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR2,
      ADR1 => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR1,
      O => sys_done_OBUF_943
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_CLK,
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In,
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => X"AAAAA0A0AAAAA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR0,
      ADR2 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR2,
      ADR4 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR4,
      ADR5 => '1',
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => X"00CC0ACE"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR1,
      ADR3 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR3,
      ADR0 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR0,
      ADR2 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR2,
      ADR4 => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR4,
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd11 : X_FF
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_CLK,
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In,
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_pack_5,
      SET => DEV_CTRL_rst_n_inv,
      RST => GND
    );
  DEV_CTRL_nextstate_3_dff_9_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_CLK,
      I => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_IN,
      O => DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_1677,
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_CTRL_load_R_dataout1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y2",
      INIT => X"A0A0A0A0ECECECEC"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR1,
      ADR5 => MA_CTRL_state_1672,
      ADR2 => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR2,
      ADR0 => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR0,
      O => DIS_load_R_dataout
    );
  DEV_DP_DIV_DP_R_B_6_DEV_DP_DIV_DP_R_B_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(7),
      O => DEV_DP_DIV_DP_R_B_7_0
    );
  DEV_DP_DIV_DP_R_B_6_DEV_DP_DIV_DP_R_B_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(5),
      O => DEV_DP_DIV_DP_R_B_5_0
    );
  DEV_DP_DIV_DP_R_B_6_DEV_DP_DIV_DP_R_B_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(3),
      O => DEV_DP_DIV_DP_R_B_3_0
    );
  DEV_DP_DIV_DP_R_B_6_DEV_DP_DIV_DP_R_B_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(1),
      O => DEV_DP_DIV_DP_R_B_1_0
    );
  DEV_DP_DIV_DP_R_B_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_IN,
      O => DEV_DP_DIV_DP_R_B(6),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_L_7_rt_ADR2,
      O => DEV_DP_L_7_rt_968
    );
  DEV_DP_DIV_DP_R_B_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_7_CLK,
      I => DEV_DP_L_7_rt_968,
      O => DEV_DP_DIV_DP_R_B(7),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_B_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_IN,
      O => DEV_DP_DIV_DP_R_B(4),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_L_5_rt_ADR2,
      O => DEV_DP_L_5_rt_961
    );
  DEV_DP_DIV_DP_R_B_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_5_CLK,
      I => DEV_DP_L_5_rt_961,
      O => DEV_DP_DIV_DP_R_B(5),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_B_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_IN,
      O => DEV_DP_DIV_DP_R_B(2),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_L_3_rt_ADR3,
      O => DEV_DP_L_3_rt_956
    );
  DEV_DP_DIV_DP_R_B_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_3_CLK,
      I => DEV_DP_L_3_rt_956,
      O => DEV_DP_DIV_DP_R_B(3),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_B_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_CLK,
      I => NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_IN,
      O => DEV_DP_DIV_DP_R_B(0),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DEV_DP_L_1_rt_ADR3,
      O => DEV_DP_L_1_rt_951
    );
  DEV_DP_DIV_DP_R_B_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      CE => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_B_1_CLK,
      I => DEV_DP_L_1_rt_951,
      O => DEV_DP_DIV_DP_R_B(1),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_R_A_35 : X_FF
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_35_CLK,
      I => DEV_DP_DIV_DP_in_R_A(35),
      O => DEV_DP_DIV_DP_R_A(35),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A291 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => X"AAAAA0A0FF00F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(35)
    );
  DEV_DP_DIV_DP_R_A_34 : X_FF
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_34_CLK,
      I => DEV_DP_DIV_DP_in_R_A(34),
      O => DEV_DP_DIV_DP_R_A(34),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A281 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => X"AAAAA0A0FF00F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(34)
    );
  DEV_DP_DIV_DP_R_A_33 : X_FF
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_33_CLK,
      I => DEV_DP_DIV_DP_in_R_A(33),
      O => DEV_DP_DIV_DP_R_A(33),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A271 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => X"AAAAAA00F0F0F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR0,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(33)
    );
  DEV_DP_DIV_DP_R_A_32 : X_FF
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_32_CLK,
      I => DEV_DP_DIV_DP_in_R_A(32),
      O => DEV_DP_DIV_DP_R_A(32),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A261 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y9",
      INIT => X"00FF000000CC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR4,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(32)
    );
  DEV_DP_DIV_DP_R_A_43 : X_FF
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_43_CLK,
      I => DEV_DP_DIV_DP_in_R_A(43),
      O => DEV_DP_DIV_DP_R_A(43),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A381 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => X"AAAAFF00A0A0F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(43)
    );
  DEV_DP_DIV_DP_R_A_42 : X_FF
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_42_CLK,
      I => DEV_DP_DIV_DP_in_R_A(42),
      O => DEV_DP_DIV_DP_R_A(42),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A371 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => X"B8B8B8B8B8B80000"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR1,
      O => DEV_DP_DIV_DP_in_R_A(42)
    );
  DEV_DP_DIV_DP_R_A_41 : X_FF
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_41_CLK,
      I => DEV_DP_DIV_DP_in_R_A(41),
      O => DEV_DP_DIV_DP_R_A(41),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A361 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => X"AAAAAA00F0F0F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(41)
    );
  DEV_DP_DIV_DP_R_A_40 : X_FF
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_40_CLK,
      I => DEV_DP_DIV_DP_in_R_A(40),
      O => DEV_DP_DIV_DP_R_A(40),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A351 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y10",
      INIT => X"FFCCF0C000CC00C0"
    )
    port map (
      ADR0 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(40)
    );
  DEV_DP_DIV_DP_R_A_47 : X_FF
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_47_CLK,
      I => DEV_DP_DIV_DP_in_R_A(47),
      O => DEV_DP_DIV_DP_R_A(47),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A421 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => X"AAAAFF00A0A0F000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(47)
    );
  DEV_DP_DIV_DP_R_A_46 : X_FF
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_46_CLK,
      I => DEV_DP_DIV_DP_in_R_A(46),
      O => DEV_DP_DIV_DP_R_A(46),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A411 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => X"CCC0AAA0CCC0AAA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR3,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(46)
    );
  DEV_DP_DIV_DP_R_A_45 : X_FF
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_45_CLK,
      I => DEV_DP_DIV_DP_in_R_A(45),
      O => DEV_DP_DIV_DP_R_A(45),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A401 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(45)
    );
  DEV_DP_DIV_DP_R_A_44 : X_FF
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_44_CLK,
      I => DEV_DP_DIV_DP_in_R_A(44),
      O => DEV_DP_DIV_DP_R_A(44),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A391 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y12",
      INIT => X"F0CCF0CCA088A088"
    )
    port map (
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(44)
    );
  DEV_DP_DIV_DP_R_A_55 : X_FF
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_55_CLK,
      I => DEV_DP_DIV_DP_in_R_A(55),
      O => DEV_DP_DIV_DP_R_A(55),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A511 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(55)
    );
  DEV_DP_DIV_DP_R_A_54 : X_FF
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_54_CLK,
      I => DEV_DP_DIV_DP_in_R_A(54),
      O => DEV_DP_DIV_DP_R_A(54),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A501 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => X"AA88F0C0AA88F0C0"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(54)
    );
  DEV_DP_DIV_DP_R_A_53 : X_FF
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_53_CLK,
      I => DEV_DP_DIV_DP_in_R_A(53),
      O => DEV_DP_DIV_DP_R_A(53),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A491 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(53)
    );
  DEV_DP_DIV_DP_R_A_52 : X_FF
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_52_CLK,
      I => DEV_DP_DIV_DP_in_R_A(52),
      O => DEV_DP_DIV_DP_R_A(52),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A481 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => X"F0FFF000C0CCC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(52)
    );
  DEV_DP_DIV_DP_R_A_59 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_59_CLK,
      I => DEV_DP_DIV_DP_in_R_A(59),
      O => DEV_DP_DIV_DP_R_A(59),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A551 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(59)
    );
  DEV_DP_DIV_DP_R_A_58 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_58_CLK,
      I => DEV_DP_DIV_DP_in_R_A(58),
      O => DEV_DP_DIV_DP_R_A(58),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A541 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"AA88F0C0AA88F0C0"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(58)
    );
  DEV_DP_DIV_DP_R_A_57 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_57_CLK,
      I => DEV_DP_DIV_DP_in_R_A(57),
      O => DEV_DP_DIV_DP_R_A(57),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A531 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"CCF088A0CCF088A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR1,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR0,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(57)
    );
  DEV_DP_DIV_DP_R_A_56 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_56_CLK,
      I => DEV_DP_DIV_DP_in_R_A(56),
      O => DEV_DP_DIV_DP_R_A(56),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A521 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => X"E0EEE0EEE000E000"
    )
    port map (
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(56)
    );
  DEV_DP_DIV_DP_R_A_62 : X_FF
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_62_CLK,
      I => DEV_DP_DIV_DP_in_R_A(62),
      O => DEV_DP_DIV_DP_R_A(62),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A591 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => X"AA88F0C0AA88F0C0"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(62)
    );
  DEV_DP_DIV_DP_R_A_61 : X_FF
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_61_CLK,
      I => DEV_DP_DIV_DP_in_R_A(61),
      O => DEV_DP_DIV_DP_R_A(61),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A581 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR0,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(61)
    );
  DEV_DP_DIV_DP_R_A_60 : X_FF
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_60_CLK,
      I => DEV_DP_DIV_DP_in_R_A(60),
      O => DEV_DP_DIV_DP_R_A(60),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A571 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y15",
      INIT => X"F0FFF000C0CCC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(60)
    );
  DIS_DP_R_dataout_6_DIS_DP_R_dataout_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(7),
      O => DIS_DP_R_dataout_7_0
    );
  DIS_DP_R_dataout_6_DIS_DP_R_dataout_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(5),
      O => DIS_DP_R_dataout_5_0
    );
  DIS_DP_R_dataout_6_DIS_DP_R_dataout_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(30),
      O => DIS_DP_R_dataout_30_0
    );
  DIS_DP_R_dataout_6_DIS_DP_R_dataout_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(10),
      O => DIS_DP_R_dataout_10_0
    );
  DIS_DP_R_dataout_6 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_6_CLK,
      I => DIS_DP_R_dataout_in(6),
      O => DIS_DP_R_dataout(6),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in291 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR2,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR4,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(6)
    );
  DIS_DP_Mmux_R_dataout_in301 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"C000C000"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR3,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR2,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR1,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(7)
    );
  DIS_DP_R_dataout_7 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_7_CLK,
      I => DIS_DP_R_dataout_in(7),
      O => DIS_DP_R_dataout(7),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_4 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_4_CLK,
      I => DIS_DP_R_dataout_in(4),
      O => DIS_DP_R_dataout(4),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in271 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR2,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(4)
    );
  DIS_DP_Mmux_R_dataout_in281 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"CC000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR3,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR4,
      ADR2 => '1',
      O => DIS_DP_R_dataout_in(5)
    );
  DIS_DP_R_dataout_5 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_5_CLK,
      I => DIS_DP_R_dataout_in(5),
      O => DIS_DP_R_dataout(5),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_2_CLK,
      I => DIS_DP_R_dataout_in(2),
      O => DIS_DP_R_dataout(2),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in231 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"A000A000A000A000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR0,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR3,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(2)
    );
  DIS_DP_Mmux_R_dataout_in241 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"A0A00000"
    )
    port map (
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR4,
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR0,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR2,
      ADR1 => '1',
      O => DIS_DP_R_dataout_in(30)
    );
  DIS_DP_R_dataout_30 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_30_CLK,
      I => DIS_DP_R_dataout_in(30),
      O => DIS_DP_R_dataout(30),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_0_CLK,
      I => DIS_DP_R_dataout_in(0),
      O => DIS_DP_R_dataout(0),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in110 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR3,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR1,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(0)
    );
  DIS_DP_Mmux_R_dataout_in210 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => X"A000A000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR0,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR3,
      ADR4 => '1',
      O => DIS_DP_R_dataout_in(10)
    );
  DIS_DP_R_dataout_10 : X_FF
    generic map(
      LOC => "SLICE_X28Y3",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_10_CLK,
      I => DIS_DP_R_dataout_in(10),
      O => DIS_DP_R_dataout(10),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_result_7 : X_SFF
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_7_CLK,
      I => DEV_DP_result_7_dpot_1196,
      O => DEV_DP_result(7),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => X"FFFF0100FEFF0000"
    )
    port map (
      ADR0 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_result_7_dpot_ADR5,
      O => DEV_DP_result_7_dpot_1196
    );
  DEV_DP_result_6 : X_SFF
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_6_CLK,
      I => DEV_DP_result_6_dpot_1200,
      O => DEV_DP_result(6),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => X"FFFF0000FEFF0200"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_6_dpot_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_result_6_dpot_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_result_6_dpot_ADR3,
      ADR4 => DEV_DP_result(6),
      ADR5 => NlwBufferSignal_DEV_DP_result_6_dpot_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_result_6_dpot_ADR0,
      O => DEV_DP_result_6_dpot_1200
    );
  DEV_DP_result_5 : X_SFF
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_5_CLK,
      I => DEV_DP_result_5_dpot_1189,
      O => DEV_DP_result(5),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => X"F0F0F0F0F0E4F0F0"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_5_dpot_ADR1,
      O => DEV_DP_result_5_dpot_1189
    );
  DEV_DP_result_4 : X_SFF
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_4_CLK,
      I => DEV_DP_result_4_dpot_1205,
      O => DEV_DP_result(4),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y4",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR1 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR4,
      ADR5 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR3,
      ADR2 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR2,
      ADR0 => NlwBufferSignal_DEV_DP_result_4_dpot_ADR0,
      O => DEV_DP_result_4_dpot_1205
    );
  DEV_DP_result_15 : X_SFF
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_15_CLK,
      I => DEV_DP_result_15_dpot_1230,
      O => DEV_DP_result(15),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => X"FFFF0000FEFF0400"
    )
    port map (
      ADR5 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_15_dpot_ADR1,
      O => DEV_DP_result_15_dpot_1230
    );
  DEV_DP_result_14 : X_SFF
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_14_CLK,
      I => DEV_DP_result_14_dpot_1234,
      O => DEV_DP_result(14),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => X"FFFFFFEF00001000"
    )
    port map (
      ADR4 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR2,
      ADR5 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_result_14_dpot_ADR3,
      O => DEV_DP_result_14_dpot_1234
    );
  DEV_DP_result_13 : X_SFF
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_13_CLK,
      I => DEV_DP_result_13_dpot_1223,
      O => DEV_DP_result(13),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => X"AAAAAAAAAAACAAAA"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR5,
      ADR4 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR4,
      ADR0 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_result_13_dpot_ADR1,
      O => DEV_DP_result_13_dpot_1223
    );
  DEV_DP_result_12 : X_SFF
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => '1'
    )
    port map (
      CE => DEV_DP_n0212_inv1_cepot,
      CLK => NlwBufferSignal_DEV_DP_result_12_CLK,
      I => DEV_DP_result_12_dpot_1239,
      O => DEV_DP_result(12),
      SSET => GND,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  DEV_DP_result_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y5",
      INIT => X"FFFFFFFB00040000"
    )
    port map (
      ADR3 => NlwBufferSignal_DEV_DP_result_12_dpot_ADR3,
      ADR0 => NlwBufferSignal_DEV_DP_result_12_dpot_ADR0,
      ADR1 => NlwBufferSignal_DEV_DP_result_12_dpot_ADR1,
      ADR5 => DEV_DP_result(12),
      ADR2 => NlwBufferSignal_DEV_DP_result_12_dpot_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_result_12_dpot_ADR4,
      O => DEV_DP_result_12_dpot_1239
    );
  DEV_DP_DIV_DP_R_A_39 : X_FF
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_39_CLK,
      I => DEV_DP_DIV_DP_in_R_A(39),
      O => DEV_DP_DIV_DP_R_A(39),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A331 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => X"F0C0F0C0FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR2,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR1,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR4,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(39)
    );
  DEV_DP_DIV_DP_R_A_38 : X_FF
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_38_CLK,
      I => DEV_DP_DIV_DP_in_R_A(38),
      O => DEV_DP_DIV_DP_R_A(38),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A321 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => X"FFF0CCC00000CCC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR5,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR3,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(38)
    );
  DEV_DP_DIV_DP_R_A_37 : X_FF
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_37_CLK,
      I => DEV_DP_DIV_DP_in_R_A(37),
      O => DEV_DP_DIV_DP_R_A(37),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A311 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => X"CCCCC0C0FF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(37)
    );
  DEV_DP_DIV_DP_R_A_36 : X_FF
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_36_CLK,
      I => DEV_DP_DIV_DP_in_R_A(36),
      O => DEV_DP_DIV_DP_R_A(36),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A301 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y9",
      INIT => X"FFF0CCC000F000C0"
    )
    port map (
      ADR0 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR5,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR1,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR2,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR3,
      O => DEV_DP_DIV_DP_in_R_A(36)
    );
  DEV_DP_DIV_DP_R_A_51 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_51_CLK,
      I => DEV_DP_DIV_DP_in_R_A(51),
      O => DEV_DP_DIV_DP_R_A(51),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A471 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"CCCCF0F08888A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR5,
      ADR0 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR0,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR4,
      O => DEV_DP_DIV_DP_in_R_A(51)
    );
  DEV_DP_DIV_DP_R_A_50 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_50_CLK,
      I => DEV_DP_DIV_DP_in_R_A(50),
      O => DEV_DP_DIV_DP_R_A(50),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A461 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"CCCCC0C0FF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR2,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR4,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR3,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR5,
      O => DEV_DP_DIV_DP_in_R_A(50)
    );
  DEV_DP_DIV_DP_R_A_49 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_49_CLK,
      I => DEV_DP_DIV_DP_in_R_A(49),
      O => DEV_DP_DIV_DP_R_A(49),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A441 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"CFCFC0C0CF00C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR1,
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR4,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR2,
      O => DEV_DP_DIV_DP_in_R_A(49)
    );
  DEV_DP_DIV_DP_R_A_48 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DEV_DP_DIV_DP_R_A_48_CLK,
      I => DEV_DP_DIV_DP_in_R_A(48),
      O => DEV_DP_DIV_DP_R_A(48),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_DIV_DP_Mmux_in_R_A431 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => X"FCFCFC000C0C0C00"
    )
    port map (
      ADR0 => '1',
      ADR5 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR5,
      ADR3 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR3,
      ADR4 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR4,
      ADR1 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR1,
      ADR2 => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR2,
      O => DEV_DP_DIV_DP_in_R_A(48)
    );
  DIS_DP_R_dataout_15_DIS_DP_R_dataout_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(16),
      O => DIS_DP_R_dataout_16_0
    );
  DIS_DP_R_dataout_15_DIS_DP_R_dataout_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(14),
      O => DIS_DP_R_dataout_14_0
    );
  DIS_DP_R_dataout_15_DIS_DP_R_dataout_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(12),
      O => DIS_DP_R_dataout_12_0
    );
  DIS_DP_R_dataout_15_DIS_DP_R_dataout_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(9),
      O => DIS_DP_R_dataout_9_0
    );
  DIS_DP_R_dataout_15 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_15_CLK,
      I => DIS_DP_R_dataout_in(15),
      O => DIS_DP_R_dataout(15),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR2,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(15)
    );
  DIS_DP_Mmux_R_dataout_in81 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"88880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR0,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR1,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR4,
      ADR3 => '1',
      O => DIS_DP_R_dataout_in(16)
    );
  DIS_DP_R_dataout_16 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_16_CLK,
      I => DIS_DP_R_dataout_in(16),
      O => DIS_DP_R_dataout(16),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_13 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_13_CLK,
      I => DIS_DP_R_dataout_in(13),
      O => DIS_DP_R_dataout(13),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"CC000000CC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR3,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR4,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR1,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(13)
    );
  DIS_DP_Mmux_R_dataout_in61 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"AA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR0,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR3,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR4,
      ADR2 => '1',
      O => DIS_DP_R_dataout_in(14)
    );
  DIS_DP_R_dataout_14 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_14_CLK,
      I => DIS_DP_R_dataout_in(14),
      O => DIS_DP_R_dataout(14),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_11 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_11_CLK,
      I => DIS_DP_R_dataout_in(11),
      O => DIS_DP_R_dataout(11),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in33 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"F0000000F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR3,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR2,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(11)
    );
  DIS_DP_Mmux_R_dataout_in41 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"AA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR0,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR3,
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR4,
      ADR2 => '1',
      O => DIS_DP_R_dataout_in(12)
    );
  DIS_DP_R_dataout_12 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_12_CLK,
      I => DIS_DP_R_dataout_in(12),
      O => DIS_DP_R_dataout(12),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_R_dataout_8 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_8_CLK,
      I => DIS_DP_R_dataout_in(8),
      O => DIS_DP_R_dataout(8),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_Mmux_R_dataout_in311 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR3,
      ADR1 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR1,
      ADR5 => '1',
      O => DIS_DP_R_dataout_in(8)
    );
  DIS_DP_Mmux_R_dataout_in321 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR4,
      ADR2 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR2,
      ADR3 => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR3,
      ADR1 => '1',
      O => DIS_DP_R_dataout_in(9)
    );
  DIS_DP_R_dataout_9 : X_FF
    generic map(
      LOC => "SLICE_X29Y2",
      INIT => '0'
    )
    port map (
      CE => DIS_load_R_dataout,
      CLK => NlwBufferSignal_DIS_DP_R_dataout_9_CLK,
      I => DIS_DP_R_dataout_in(9),
      O => DIS_DP_R_dataout(9),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_6_DEV_DP_L_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(7),
      O => DEV_DP_L_7_0
    );
  DEV_DP_L_6_DEV_DP_L_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(5),
      O => DEV_DP_L_5_0
    );
  DEV_DP_L_6_DEV_DP_L_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(3),
      O => DEV_DP_L_3_0
    );
  DEV_DP_L_6_DEV_DP_L_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(1),
      O => DEV_DP_L_1_0
    );
  DEV_DP_L_6 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_6_CLK,
      I => NlwBufferSignal_DEV_DP_L_6_IN,
      O => DEV_DP_L(6),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_dev_len_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_dev_len_7_rt_ADR2,
      O => DIS_DP_dev_len_7_rt_1369
    );
  DEV_DP_L_7 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_7_CLK,
      I => DIS_DP_dev_len_7_rt_1369,
      O => DEV_DP_L(7),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_4 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_4_CLK,
      I => NlwBufferSignal_DEV_DP_L_4_IN,
      O => DEV_DP_L(4),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_dev_len_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_dev_len_5_rt_ADR4,
      O => DIS_DP_dev_len_5_rt_1362
    );
  DEV_DP_L_5 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_5_CLK,
      I => DIS_DP_dev_len_5_rt_1362,
      O => DEV_DP_L(5),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_2_CLK,
      I => NlwBufferSignal_DEV_DP_L_2_IN,
      O => DEV_DP_L(2),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_dev_len_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIS_DP_dev_len_3_rt_ADR2,
      O => DIS_DP_dev_len_3_rt_1357
    );
  DEV_DP_L_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_3_CLK,
      I => DIS_DP_dev_len_3_rt_1357,
      O => DEV_DP_L(3),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DEV_DP_L_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_0_CLK,
      I => NlwBufferSignal_DEV_DP_L_0_IN,
      O => DEV_DP_L(0),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  DIS_DP_dev_len_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIS_DP_dev_len_1_rt_ADR4,
      O => DIS_DP_dev_len_1_rt_1352
    );
  DEV_DP_L_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y3",
      INIT => '0'
    )
    port map (
      CE => DEV_load_CNT_0,
      CLK => NlwBufferSignal_DEV_DP_L_1_CLK,
      I => DIS_DP_dev_len_1_rt_1352,
      O => DEV_DP_L(1),
      RST => DEV_CTRL_rst_n_inv,
      SET => GND
    );
  NlwBufferBlock_DIS_DP_dev_len_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_6_CLK
    );
  NlwBufferBlock_DIS_DP_dev_len_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_7_CLK
    );
  NlwBufferBlock_DIS_DP_dev_len_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_0_CLK
    );
  NlwBufferBlock_DIS_DP_dev_len_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_1_CLK
    );
  NlwBufferBlock_DIS_DP_dev_len_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_2_CLK
    );
  NlwBufferBlock_ProtoComp0_D2OFFBYP_SRC_4_INA : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_26_IBUF_0,
      O => NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_4_INA
    );
  NlwBufferBlock_DIS_DP_dev_len_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_3_CLK
    );
  NlwBufferBlock_DIS_DP_dev_len_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_4_CLK
    );
  NlwBufferBlock_ProtoComp0_D2OFFBYP_SRC_6_INA : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_28_IBUF_0,
      O => NlwBufferSignal_ProtoComp0_D2OFFBYP_SRC_6_INA
    );
  NlwBufferBlock_DIS_DP_dev_len_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DIS_DP_dev_len_5_CLK
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B_3_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(34),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_3_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(32),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(33),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(34),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(33),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_2_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B_1_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(32),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_1_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_0_1_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_0_1_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B_7_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(38),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_7_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(35),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(36),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(37),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(38),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(6),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(37),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_6_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B_5_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(36),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_5_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_B(4),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(35),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_4_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(42),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(41),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(40),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(39),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(46),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(45),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(44),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(43),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(50),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(49),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(48),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(47),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(54),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(53),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(52),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(51),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(58),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(57),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(56),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(55),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(61),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(60),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(59),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2
    );
  NlwBufferBlock_sys_output_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(0),
      O => NlwBufferSignal_sys_output_0_OBUF_I
    );
  NlwBufferBlock_sys_output_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_1_0,
      O => NlwBufferSignal_sys_output_1_OBUF_I
    );
  NlwBufferBlock_sys_output_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(2),
      O => NlwBufferSignal_sys_output_2_OBUF_I
    );
  NlwBufferBlock_sys_output_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_3_0,
      O => NlwBufferSignal_sys_output_3_OBUF_I
    );
  NlwBufferBlock_sys_output_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(4),
      O => NlwBufferSignal_sys_output_4_OBUF_I
    );
  NlwBufferBlock_sys_output_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_5_0,
      O => NlwBufferSignal_sys_output_5_OBUF_I
    );
  NlwBufferBlock_sys_output_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(6),
      O => NlwBufferSignal_sys_output_6_OBUF_I
    );
  NlwBufferBlock_sys_output_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_7_0,
      O => NlwBufferSignal_sys_output_7_OBUF_I
    );
  NlwBufferBlock_sys_output_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(8),
      O => NlwBufferSignal_sys_output_8_OBUF_I
    );
  NlwBufferBlock_sys_output_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_9_0,
      O => NlwBufferSignal_sys_output_9_OBUF_I
    );
  NlwBufferBlock_sys_output_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_10_0,
      O => NlwBufferSignal_sys_output_10_OBUF_I
    );
  NlwBufferBlock_sys_output_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(11),
      O => NlwBufferSignal_sys_output_11_OBUF_I
    );
  NlwBufferBlock_sys_output_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_12_0,
      O => NlwBufferSignal_sys_output_12_OBUF_I
    );
  NlwBufferBlock_sys_output_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(20),
      O => NlwBufferSignal_sys_output_20_OBUF_I
    );
  NlwBufferBlock_sys_output_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(13),
      O => NlwBufferSignal_sys_output_13_OBUF_I
    );
  NlwBufferBlock_sys_output_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_21_0,
      O => NlwBufferSignal_sys_output_21_OBUF_I
    );
  NlwBufferBlock_sys_output_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_14_0,
      O => NlwBufferSignal_sys_output_14_OBUF_I
    );
  NlwBufferBlock_sys_output_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(22),
      O => NlwBufferSignal_sys_output_22_OBUF_I
    );
  NlwBufferBlock_sys_output_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_30_0,
      O => NlwBufferSignal_sys_output_30_OBUF_I
    );
  NlwBufferBlock_sys_output_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(15),
      O => NlwBufferSignal_sys_output_15_OBUF_I
    );
  NlwBufferBlock_sys_output_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_23_0,
      O => NlwBufferSignal_sys_output_23_OBUF_I
    );
  NlwBufferBlock_sys_output_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(31),
      O => NlwBufferSignal_sys_output_31_OBUF_I
    );
  NlwBufferBlock_sys_output_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_16_0,
      O => NlwBufferSignal_sys_output_16_OBUF_I
    );
  NlwBufferBlock_sys_output_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(24),
      O => NlwBufferSignal_sys_output_24_OBUF_I
    );
  NlwBufferBlock_sys_output_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(17),
      O => NlwBufferSignal_sys_output_17_OBUF_I
    );
  NlwBufferBlock_sys_output_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_25_0,
      O => NlwBufferSignal_sys_output_25_OBUF_I
    );
  NlwBufferBlock_sys_output_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_18_0,
      O => NlwBufferSignal_sys_output_18_OBUF_I
    );
  NlwBufferBlock_sys_output_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(26),
      O => NlwBufferSignal_sys_output_26_OBUF_I
    );
  NlwBufferBlock_sys_output_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(19),
      O => NlwBufferSignal_sys_output_19_OBUF_I
    );
  NlwBufferBlock_sys_output_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_27_0,
      O => NlwBufferSignal_sys_output_27_OBUF_I
    );
  NlwBufferBlock_sys_output_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout(28),
      O => NlwBufferSignal_sys_output_28_OBUF_I
    );
  NlwBufferBlock_sys_output_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_R_dataout_29_0,
      O => NlwBufferSignal_sys_output_29_OBUF_I
    );
  NlwBufferBlock_sys_done_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_done_OBUF_0,
      O => NlwBufferSignal_sys_done_OBUF_I
    );
  NlwBufferBlock_DEV_DP_result_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_27_CLK
    );
  NlwBufferBlock_DEV_DP_result_27_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_27_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_27_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_27_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_27_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_27_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_27_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_27_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_27_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(27),
      O => NlwBufferSignal_DEV_DP_result_27_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_26_CLK
    );
  NlwBufferBlock_DEV_DP_result_26_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_26_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_26_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_26_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_26_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_26_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_26_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_26_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_26_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(26),
      O => NlwBufferSignal_DEV_DP_result_26_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_25_CLK
    );
  NlwBufferBlock_DEV_DP_result_25_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_25_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_25_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_25_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_25_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_25_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_25_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_25_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_25_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(25),
      O => NlwBufferSignal_DEV_DP_result_25_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_24_CLK
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(24),
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_24_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(24),
      O => NlwBufferSignal_DEV_DP_result_24_dpot_ADR2
    );
  NlwBufferBlock_DIS_DP_R_dataout_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_31_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in251_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in251_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in251_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(31),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in251_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in261_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(3),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in261_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in261_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in261_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_3_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_28_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in211_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in211_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in211_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(28),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in211_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in221_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(29),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in221_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in221_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in221_ADR2
    );
  NlwBufferBlock_DIS_DP_R_dataout_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_29_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_26_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in191_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in191_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in191_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(26),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in191_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in201_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(27),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in201_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in201_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in201_ADR3
    );
  NlwBufferBlock_DIS_DP_R_dataout_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_27_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_24_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in171_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in171_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in171_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(24),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in171_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in181_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(25),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in181_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in181_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in181_ADR2
    );
  NlwBufferBlock_DIS_DP_R_dataout_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_25_CLK
    );
  NlwBufferBlock_DEV_DP_result_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_31_CLK
    );
  NlwBufferBlock_DEV_DP_result_31_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_31_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_31_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_31_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_31_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_31_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_31_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_31_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_31_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(31),
      O => NlwBufferSignal_DEV_DP_result_31_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_30_CLK
    );
  NlwBufferBlock_DEV_DP_result_30_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_30_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_30_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_30_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_30_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_30_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_30_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_30_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_30_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(30),
      O => NlwBufferSignal_DEV_DP_result_30_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_29_CLK
    );
  NlwBufferBlock_DEV_DP_result_29_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_29_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_29_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_29_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_29_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_29_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_29_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_29_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_29_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_29_0,
      O => NlwBufferSignal_DEV_DP_result_29_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_28_CLK
    );
  NlwBufferBlock_DEV_DP_result_28_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_28_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_28_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_28_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_28_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_28_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_28_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_28_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_28_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(28),
      O => NlwBufferSignal_DEV_DP_result_28_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_31_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(30),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res251_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_29_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res241_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_30_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_1_IN
    );
  NlwBufferBlock_DEV_DP_n0212_inv1_cepot_INV_0_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_2_1663,
      O => NlwBufferSignal_DEV_DP_n0212_inv1_cepot_INV_0_ADR0
    );
  NlwBufferBlock_DEV_DP_result_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_23_CLK
    );
  NlwBufferBlock_DEV_DP_result_23_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_23_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_23_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_23_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_23_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_23_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_23_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_23_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_23_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(23),
      O => NlwBufferSignal_DEV_DP_result_23_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_22_CLK
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(22),
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_22_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(22),
      O => NlwBufferSignal_DEV_DP_result_22_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_21_CLK
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(21),
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_21_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(21),
      O => NlwBufferSignal_DEV_DP_result_21_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_20_CLK
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(20),
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_20_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(20),
      O => NlwBufferSignal_DEV_DP_result_20_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_28_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(27),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res211_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(26),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res201_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_27_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_26_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(25),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res191_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(24),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res181_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_25_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_24_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(23),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res171_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(22),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res161_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_23_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_22_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(21),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res151_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(20),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res141_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_21_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_In_1507,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_IN
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In_rt_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_22_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in151_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in151_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in151_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(22),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in151_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in161_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(23),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in161_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in161_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in161_ADR1
    );
  NlwBufferBlock_DIS_DP_R_dataout_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_23_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_20_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in131_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in131_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in131_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(20),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in131_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in141_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(21),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in141_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in141_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in141_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_21_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_19_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in111_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in111_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in111_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(19),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in111_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in121_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(1),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in121_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in121_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in121_ADR1
    );
  NlwBufferBlock_DIS_DP_R_dataout_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_1_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_17_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in91_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in91_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in91_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(17),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in91_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in101_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(18),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in101_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in101_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in101_ADR3
    );
  NlwBufferBlock_DIS_DP_R_dataout_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_18_CLK
    );
  NlwBufferBlock_DEV_DP_result_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_3_CLK
    );
  NlwBufferBlock_DEV_DP_result_3_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_3_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_3_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_3_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_3_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_3_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_3_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_3_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_3_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(3),
      O => NlwBufferSignal_DEV_DP_result_3_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_2_CLK
    );
  NlwBufferBlock_DEV_DP_result_2_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_2_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_2_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_2_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_2_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_2_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_2_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_2_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_2_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(2),
      O => NlwBufferSignal_DEV_DP_result_2_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_1_CLK
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(1),
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_1_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res_1_0,
      O => NlwBufferSignal_DEV_DP_result_1_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_0_CLK
    );
  NlwBufferBlock_DEV_DP_result_0_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_0_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_0_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_0_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_0_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_0_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_0_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_0_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_0_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(0),
      O => NlwBufferSignal_DEV_DP_result_0_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_6_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(5),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res291_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(4),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res281_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_5_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_4_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(3),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res271_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res261_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_3_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_2_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res231_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(28),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res221_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_29_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_0_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res11_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_load_R_cnt1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_load_R_cnt1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_load_R_cnt1_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_3_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt31_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt21_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_2_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_0_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt_xor_0_11_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(8),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res321_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_5_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(4),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N6,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_cnt_4_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_In,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt41_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_2_1663,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd2_In1_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_37_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR4
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_36_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_35_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR5
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_34_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_SW0_ADR3
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_33_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR2
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_32_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR4
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_34_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_SW0_ADR5
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_39_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_38_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR3
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_37_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR2
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_36_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR5
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_35_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In1_ADR1
    );
  NlwBufferBlock_DEV_DP_result_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_19_CLK
    );
  NlwBufferBlock_DEV_DP_result_19_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_19_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_19_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_19_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_19_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_19_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_19_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_19_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_19_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(19),
      O => NlwBufferSignal_DEV_DP_result_19_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_18_CLK
    );
  NlwBufferBlock_DEV_DP_result_18_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_18_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_18_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_18_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_18_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_18_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_18_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_18_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_18_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(18),
      O => NlwBufferSignal_DEV_DP_result_18_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_17_CLK
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(17),
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_17_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(17),
      O => NlwBufferSignal_DEV_DP_result_17_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_16_CLK
    );
  NlwBufferBlock_DEV_DP_result_16_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_16_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_16_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_16_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_16_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_16_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_16_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_16_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_16_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(16),
      O => NlwBufferSignal_DEV_DP_result_16_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_20_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(19),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res131_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res121_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_19_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(18),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res111_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(17),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res101_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_18_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_17_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(16),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res91_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(15),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res81_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_16_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_15_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(14),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res71_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(13),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res61_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_14_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_13_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(12),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res51_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(11),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res41_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_12_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_11_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(10),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res31_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(9),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res21_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_10_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_9_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_in_R_res_9_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_9_IN
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_8_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(7),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res311_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(6),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_res301_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_res_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_res_7_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mcount_R_cnt5_SW0_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_2_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(5),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(4),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_In_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_In_1507,
      O => NlwBufferSignal_DEV_DP_DIV_CTRL_state_FSM_FFd1_1_IN
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_CLK
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_33_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR4
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_32_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR1
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => MA_CTRL_state_1672,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR2
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_N2,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In1_ADR3
    );
  NlwBufferBlock_MA_CTRL_Mmux_nextstate11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_33_IBUF_0,
      O => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR4
    );
  NlwBufferBlock_MA_CTRL_Mmux_nextstate11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_32_IBUF_0,
      O => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR1
    );
  NlwBufferBlock_MA_CTRL_Mmux_nextstate11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => MA_CTRL_state_1672,
      O => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR0
    );
  NlwBufferBlock_MA_CTRL_Mmux_nextstate11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_N2,
      O => NlwBufferSignal_MA_CTRL_Mmux_nextstate11_ADR3
    );
  NlwBufferBlock_MA_CTRL_state_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_MA_CTRL_state_CLK
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N2,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_38_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR3
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_input_39_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR2
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_start_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR4
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR5
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_In2_ADR1
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_CLK
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR1
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_start_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR0
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR3
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR4
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_N01,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_In2_ADR2
    );
  NlwBufferBlock_DEV_CTRL_load_CNT1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR1
    );
  NlwBufferBlock_DEV_CTRL_load_CNT1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_start_IBUF_0,
      O => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR0
    );
  NlwBufferBlock_DEV_CTRL_load_CNT1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR3
    );
  NlwBufferBlock_DEV_CTRL_load_CNT1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR4
    );
  NlwBufferBlock_DEV_CTRL_load_CNT1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_N01,
      O => NlwBufferSignal_DEV_CTRL_load_CNT1_ADR2
    );
  NlwBufferBlock_DEV_DP_result_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_11_CLK
    );
  NlwBufferBlock_DEV_DP_result_11_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_11_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_11_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_11_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_11_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_11_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_11_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_11_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_11_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(11),
      O => NlwBufferSignal_DEV_DP_result_11_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_10_CLK
    );
  NlwBufferBlock_DEV_DP_result_10_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_10_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_10_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_10_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_10_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_10_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_10_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_10_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_10_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(10),
      O => NlwBufferSignal_DEV_DP_result_10_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_9_CLK
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(9),
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_9_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(9),
      O => NlwBufferSignal_DEV_DP_result_9_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_8_CLK
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(8),
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_8_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(8),
      O => NlwBufferSignal_DEV_DP_result_8_dpot_ADR2
    );
  NlwBufferBlock_DIS_CTRL_set_dev_ptr11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sys_start_IBUF_0,
      O => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR3
    );
  NlwBufferBlock_DIS_CTRL_set_dev_ptr11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_N01,
      O => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR0
    );
  NlwBufferBlock_DIS_CTRL_set_dev_ptr11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR2
    );
  NlwBufferBlock_DIS_CTRL_set_dev_ptr11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_CTRL_set_dev_ptr11_ADR1
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_done1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR2
    );
  NlwBufferBlock_DIS_CTRL_nextstate_1_dff_8_done1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_CTRL_nextstate_1_dff_8_done1_ADR1
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_CLK
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_1677,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR0
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR2
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_In1_ADR4
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR1
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_set_dev_len,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR3
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_1677,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR0
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR2
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_In1_ADR4
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_CLK
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_CLK
    );
  NlwBufferBlock_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_CTRL_nextstate_3_dff_9_FSM_FFd1_IN
    );
  NlwBufferBlock_DIS_CTRL_load_R_dataout1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd2_1521,
      O => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR1
    );
  NlwBufferBlock_DIS_CTRL_load_R_dataout1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR2
    );
  NlwBufferBlock_DIS_CTRL_load_R_dataout1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_CTRL_load_R_dataout1_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(6),
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_6_IN
    );
  NlwBufferBlock_DEV_DP_L_7_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L_7_0,
      O => NlwBufferSignal_DEV_DP_L_7_rt_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_7_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(4),
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_4_IN
    );
  NlwBufferBlock_DEV_DP_L_5_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L_5_0,
      O => NlwBufferSignal_DEV_DP_L_5_rt_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_5_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(2),
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_2_IN
    );
  NlwBufferBlock_DEV_DP_L_3_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L_3_0,
      O => NlwBufferSignal_DEV_DP_L_3_rt_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_3_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L(0),
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_0_IN
    );
  NlwBufferBlock_DEV_DP_L_1_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_L_1_0,
      O => NlwBufferSignal_DEV_DP_L_1_rt_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_B_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_B_1_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_35_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_35_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(34),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_3_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A291_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_34_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_34_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(33),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A281_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_33_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_33_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(32),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_1_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A271_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_32_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_32_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_0_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A261_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_43_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_43_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(42),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_11_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A381_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_42_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_42_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(41),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_10_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A371_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_41_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_41_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(40),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_9_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A361_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_40_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_40_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(39),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_8_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A351_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_47_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_47_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(46),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_15_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A421_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_46_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_46_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(45),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_14_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A411_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_45_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_45_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(44),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_13_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A401_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_44_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_44_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(43),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_12_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A391_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_55_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_55_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(54),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_23_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A511_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_54_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_54_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(53),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_22_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A501_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_53_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_53_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(52),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_21_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A491_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_52_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_52_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(51),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_20_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A481_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_59_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_59_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(58),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_27_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A551_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_58_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_58_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(57),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_26_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A541_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_57_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_57_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(56),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_25_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A531_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_56_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_56_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(55),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_24_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A521_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_62_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_62_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(61),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_30_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A591_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_61_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_61_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(60),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_29_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A581_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_60_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_60_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(59),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_28_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A571_ADR3
    );
  NlwBufferBlock_DIS_DP_R_dataout_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_6_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in291_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in291_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in291_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(6),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in291_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in301_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(7),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in301_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in301_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in301_ADR1
    );
  NlwBufferBlock_DIS_DP_R_dataout_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_7_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_4_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in271_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in271_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in271_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(4),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in271_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in281_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(5),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in281_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in281_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in281_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_5_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_2_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in231_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in231_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in231_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(2),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in231_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in241_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(30),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in241_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in241_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in241_ADR2
    );
  NlwBufferBlock_DIS_DP_R_dataout_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_30_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_0_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in110_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in110_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in110_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(0),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in110_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in210_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(10),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in210_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in210_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in210_ADR3
    );
  NlwBufferBlock_DIS_DP_R_dataout_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_10_CLK
    );
  NlwBufferBlock_DEV_DP_result_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_7_CLK
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(7),
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_7_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(7),
      O => NlwBufferSignal_DEV_DP_result_7_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_6_CLK
    );
  NlwBufferBlock_DEV_DP_result_6_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_6_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_6_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_6_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_6_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_6_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_6_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_6_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_6_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(6),
      O => NlwBufferSignal_DEV_DP_result_6_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_5_CLK
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(5),
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_5_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(5),
      O => NlwBufferSignal_DEV_DP_result_5_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_4_CLK
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(4),
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_4_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(4),
      O => NlwBufferSignal_DEV_DP_result_4_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_15_CLK
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(15),
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_15_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(15),
      O => NlwBufferSignal_DEV_DP_result_15_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_14_CLK
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(14),
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_14_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(14),
      O => NlwBufferSignal_DEV_DP_result_14_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_13_CLK
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR5
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(13),
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_13_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(13),
      O => NlwBufferSignal_DEV_DP_result_13_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_result_12_CLK
    );
  NlwBufferBlock_DEV_DP_result_12_dpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1_1558,
      O => NlwBufferSignal_DEV_DP_result_12_dpot_ADR3
    );
  NlwBufferBlock_DEV_DP_result_12_dpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_1_1559,
      O => NlwBufferSignal_DEV_DP_result_12_dpot_ADR0
    );
  NlwBufferBlock_DEV_DP_result_12_dpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd3_1560,
      O => NlwBufferSignal_DEV_DP_result_12_dpot_ADR1
    );
  NlwBufferBlock_DEV_DP_result_12_dpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_rst_n_inv,
      O => NlwBufferSignal_DEV_DP_result_12_dpot_ADR2
    );
  NlwBufferBlock_DEV_DP_result_12_dpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_res(12),
      O => NlwBufferSignal_DEV_DP_result_12_dpot_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_39_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_39_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(38),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_7_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A331_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_38_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_38_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(37),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_6_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A321_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_37_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_37_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(36),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_5_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A311_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_36_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_36_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(35),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_4_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A301_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_51_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_51_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(50),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR0
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_19_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A471_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_50_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_50_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(49),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_18_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A461_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_49_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_49_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(48),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_17_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A441_ADR2
    );
  NlwBufferBlock_DEV_DP_DIV_DP_R_A_48_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_DIV_DP_R_A_48_CLK
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_R_A(47),
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR5
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd1_1465,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR3
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_CTRL_state_FSM_FFd2_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR4
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_16_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR1
    );
  NlwBufferBlock_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DEV_DP_DIV_DP_Mmux_in_R_A431_ADR2
    );
  NlwBufferBlock_DIS_DP_R_dataout_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_15_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in71_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in71_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in71_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(15),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in71_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in81_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(16),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in81_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in81_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in81_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_16_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_13_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in51_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in51_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in51_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(13),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in51_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in61_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(14),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in61_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in61_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in61_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_14_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_11_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in33_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in33_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in33_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(11),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in33_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in41_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(12),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR0
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in41_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in41_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in41_ADR4
    );
  NlwBufferBlock_DIS_DP_R_dataout_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_12_CLK
    );
  NlwBufferBlock_DIS_DP_R_dataout_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_8_CLK
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in311_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in311_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR3
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in311_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(8),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in311_ADR1
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in321_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_DP_result(9),
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR4
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in321_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_CTRL_nextstate_1_dff_8_FSM_FFd1_1453,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR2
    );
  NlwBufferBlock_DIS_DP_Mmux_R_dataout_in321_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DEV_CTRL_nextstate_3_dff_9_FSM_FFd11_1454,
      O => NlwBufferSignal_DIS_DP_Mmux_R_dataout_in321_ADR3
    );
  NlwBufferBlock_DIS_DP_R_dataout_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIS_DP_R_dataout_9_CLK
    );
  NlwBufferBlock_DEV_DP_L_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_6_CLK
    );
  NlwBufferBlock_DEV_DP_L_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(6),
      O => NlwBufferSignal_DEV_DP_L_6_IN
    );
  NlwBufferBlock_DIS_DP_dev_len_7_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(7),
      O => NlwBufferSignal_DIS_DP_dev_len_7_rt_ADR2
    );
  NlwBufferBlock_DEV_DP_L_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_7_CLK
    );
  NlwBufferBlock_DEV_DP_L_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_4_CLK
    );
  NlwBufferBlock_DEV_DP_L_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(4),
      O => NlwBufferSignal_DEV_DP_L_4_IN
    );
  NlwBufferBlock_DIS_DP_dev_len_5_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(5),
      O => NlwBufferSignal_DIS_DP_dev_len_5_rt_ADR4
    );
  NlwBufferBlock_DEV_DP_L_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_5_CLK
    );
  NlwBufferBlock_DEV_DP_L_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_2_CLK
    );
  NlwBufferBlock_DEV_DP_L_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(2),
      O => NlwBufferSignal_DEV_DP_L_2_IN
    );
  NlwBufferBlock_DIS_DP_dev_len_3_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(3),
      O => NlwBufferSignal_DIS_DP_dev_len_3_rt_ADR2
    );
  NlwBufferBlock_DEV_DP_L_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_3_CLK
    );
  NlwBufferBlock_DEV_DP_L_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_0_CLK
    );
  NlwBufferBlock_DEV_DP_L_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(0),
      O => NlwBufferSignal_DEV_DP_L_0_IN
    );
  NlwBufferBlock_DIS_DP_dev_len_1_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIS_DP_dev_len(1),
      O => NlwBufferSignal_DIS_DP_dev_len_1_rt_ADR4
    );
  NlwBufferBlock_DEV_DP_L_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DEV_DP_L_1_CLK
    );
  NlwBlock_system_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_system_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

