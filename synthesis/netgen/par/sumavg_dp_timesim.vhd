--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.53d
--  \   \         Application: netgen
--  /   /         Filename: sumavg_dp_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 23 16:17:27 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf sumavg_dp.pcf -rpw 100 -tpw 0 -ar Structure -tm sumavg_dp -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim sumavg_dp.ncd sumavg_dp_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRELIMINARY 1.08 2010-04-09)
-- Input file	: sumavg_dp.ncd
-- Output file	: C:\Users\giulio\Desktop\sumavg\synthesis\netgen\par\sumavg_dp_timesim.vhd
-- # of Entities	: 1
-- Design Name	: sumavg_dp
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

entity sumavg_dp is
  port (
    CLK : in STD_LOGIC := 'X'; 
    rst_n : in STD_LOGIC := 'X'; 
    load_R_X : in STD_LOGIC := 'X'; 
    load_R_Y : in STD_LOGIC := 'X'; 
    load_R_D1 : in STD_LOGIC := 'X'; 
    load_R_D2 : in STD_LOGIC := 'X'; 
    load_R_res : in STD_LOGIC := 'X'; 
    load_L : in STD_LOGIC := 'X'; 
    load_CNT : in STD_LOGIC := 'X'; 
    load_result : in STD_LOGIC := 'X'; 
    sel_R_X : in STD_LOGIC := 'X'; 
    sel_R_Y : in STD_LOGIC := 'X'; 
    sel_R_res : in STD_LOGIC := 'X'; 
    sel_CNT : in STD_LOGIC := 'X'; 
    set_mem_addr : in STD_LOGIC := 'X'; 
    sel_mem_addr : in STD_LOGIC := 'X'; 
    div_start : in STD_LOGIC := 'X'; 
    div_abort : in STD_LOGIC := 'X'; 
    count_eq_L : out STD_LOGIC; 
    division_by_zero : out STD_LOGIC; 
    overflow : out STD_LOGIC; 
    div_ready : out STD_LOGIC; 
    ptr1 : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    ptr2 : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    len : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mem_dataout : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    result : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    mem_addr : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    mem_datain : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end sumavg_dp;

architecture Structure of sumavg_dp is
  signal DIV_load_R_A : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal DIV_DP_R_res_15_0 : STD_LOGIC; 
  signal DIV_CTRL_state_FSM_FFd2_3135 : STD_LOGIC; 
  signal DIV_CTRL_state_FSM_FFd1_3136 : STD_LOGIC; 
  signal DIV_CTRL_rst_n_inv : STD_LOGIC; 
  signal R_res_17_0 : STD_LOGIC; 
  signal div_start_IBUF_0 : STD_LOGIC; 
  signal DIV_load_R_B_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_32_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_30_0 : STD_LOGIC; 
  signal DIV_DP_R_res_0_0 : STD_LOGIC; 
  signal R_res_11_0 : STD_LOGIC; 
  signal DIV_DP_R_res_11_0 : STD_LOGIC; 
  signal R_res_13_0 : STD_LOGIC; 
  signal R_res_15_0 : STD_LOGIC; 
  signal div_ready_OBUF_3163 : STD_LOGIC; 
  signal DIV_load_R_cnt : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal div_abort_IBUF_0 : STD_LOGIC; 
  signal DIV_DP_in_R_A_0_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_29_0 : STD_LOGIC; 
  signal R_res_9_0 : STD_LOGIC; 
  signal DIV_DP_R_res_7_0 : STD_LOGIC; 
  signal R_res_7_0 : STD_LOGIC; 
  signal DIV_DP_R_res_3_0 : STD_LOGIC; 
  signal R_res_3_0 : STD_LOGIC; 
  signal R_res_31_0 : STD_LOGIC; 
  signal DIV_DP_R_res_31_0 : STD_LOGIC; 
  signal DIV_DP_R_res_23_0 : STD_LOGIC; 
  signal R_res_23_0 : STD_LOGIC; 
  signal R_res_29_0 : STD_LOGIC; 
  signal R_res_21_0 : STD_LOGIC; 
  signal DIV_DP_R_res_27_0 : STD_LOGIC; 
  signal DIV_DP_R_res_19_0 : STD_LOGIC; 
  signal R_res_27_0 : STD_LOGIC; 
  signal R_res_1_0 : STD_LOGIC; 
  signal R_res_19_0 : STD_LOGIC; 
  signal R_res_5_0 : STD_LOGIC; 
  signal R_res_25_0 : STD_LOGIC; 
  signal in_R_res_0_0 : STD_LOGIC; 
  signal R_D1_1_0 : STD_LOGIC; 
  signal R_D2_1_0 : STD_LOGIC; 
  signal Madd_in_R_res_3233 : STD_LOGIC; 
  signal Madd_in_R_res1_3234 : STD_LOGIC; 
  signal in_R_res_1_0 : STD_LOGIC; 
  signal Madd_in_R_res2_3239 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_3 : STD_LOGIC; 
  signal in_R_res_2_0 : STD_LOGIC; 
  signal R_D1_3_0 : STD_LOGIC; 
  signal R_D2_3_0 : STD_LOGIC; 
  signal Madd_in_R_res3_0 : STD_LOGIC; 
  signal in_R_res_3_0 : STD_LOGIC; 
  signal Madd_in_R_res4_3248 : STD_LOGIC; 
  signal in_R_res_4_0 : STD_LOGIC; 
  signal R_D1_5_0 : STD_LOGIC; 
  signal R_D2_5_0 : STD_LOGIC; 
  signal Madd_in_R_res5_3252 : STD_LOGIC; 
  signal in_R_res_5_0 : STD_LOGIC; 
  signal Madd_in_R_res6_3256 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_7 : STD_LOGIC; 
  signal in_R_res_6_0 : STD_LOGIC; 
  signal R_D1_7_0 : STD_LOGIC; 
  signal R_D2_7_0 : STD_LOGIC; 
  signal Madd_in_R_res7_0 : STD_LOGIC; 
  signal in_R_res_7_0 : STD_LOGIC; 
  signal Madd_in_R_res8_3265 : STD_LOGIC; 
  signal in_R_res_8_0 : STD_LOGIC; 
  signal R_D1_9_0 : STD_LOGIC; 
  signal R_D2_9_0 : STD_LOGIC; 
  signal Madd_in_R_res9_3269 : STD_LOGIC; 
  signal in_R_res_9_0 : STD_LOGIC; 
  signal Madd_in_R_res10_3273 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_11 : STD_LOGIC; 
  signal in_R_res_10_0 : STD_LOGIC; 
  signal R_D1_11_0 : STD_LOGIC; 
  signal R_D2_11_0 : STD_LOGIC; 
  signal Madd_in_R_res11_0 : STD_LOGIC; 
  signal in_R_res_11_0 : STD_LOGIC; 
  signal Madd_in_R_res12_3282 : STD_LOGIC; 
  signal in_R_res_12_0 : STD_LOGIC; 
  signal R_D1_13_0 : STD_LOGIC; 
  signal R_D2_13_0 : STD_LOGIC; 
  signal Madd_in_R_res13_3286 : STD_LOGIC; 
  signal in_R_res_13_0 : STD_LOGIC; 
  signal Madd_in_R_res14_3290 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_15 : STD_LOGIC; 
  signal in_R_res_14_0 : STD_LOGIC; 
  signal R_D1_15_0 : STD_LOGIC; 
  signal R_D2_15_0 : STD_LOGIC; 
  signal Madd_in_R_res15_0 : STD_LOGIC; 
  signal in_R_res_15_0 : STD_LOGIC; 
  signal Madd_in_R_res16_3299 : STD_LOGIC; 
  signal in_R_res_16_0 : STD_LOGIC; 
  signal R_D1_17_0 : STD_LOGIC; 
  signal R_D2_17_0 : STD_LOGIC; 
  signal Madd_in_R_res17_3303 : STD_LOGIC; 
  signal in_R_res_17_0 : STD_LOGIC; 
  signal Madd_in_R_res18_3307 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_19 : STD_LOGIC; 
  signal in_R_res_18_0 : STD_LOGIC; 
  signal R_D1_19_0 : STD_LOGIC; 
  signal R_D2_19_0 : STD_LOGIC; 
  signal Madd_in_R_res19_0 : STD_LOGIC; 
  signal in_R_res_19_0 : STD_LOGIC; 
  signal Madd_in_R_res20_3316 : STD_LOGIC; 
  signal in_R_res_20_0 : STD_LOGIC; 
  signal R_D1_21_0 : STD_LOGIC; 
  signal R_D2_21_0 : STD_LOGIC; 
  signal Madd_in_R_res21_3320 : STD_LOGIC; 
  signal in_R_res_21_0 : STD_LOGIC; 
  signal Madd_in_R_res22_3324 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_23 : STD_LOGIC; 
  signal in_R_res_22_0 : STD_LOGIC; 
  signal R_D1_23_0 : STD_LOGIC; 
  signal R_D2_23_0 : STD_LOGIC; 
  signal Madd_in_R_res23_0 : STD_LOGIC; 
  signal in_R_res_23_0 : STD_LOGIC; 
  signal Madd_in_R_res24_3333 : STD_LOGIC; 
  signal in_R_res_24_0 : STD_LOGIC; 
  signal R_D1_25_0 : STD_LOGIC; 
  signal R_D2_25_0 : STD_LOGIC; 
  signal Madd_in_R_res25_3337 : STD_LOGIC; 
  signal in_R_res_25_0 : STD_LOGIC; 
  signal Madd_in_R_res26_3341 : STD_LOGIC; 
  signal Madd_in_R_res_cy_0_27 : STD_LOGIC; 
  signal in_R_res_26_0 : STD_LOGIC; 
  signal R_D1_27_0 : STD_LOGIC; 
  signal R_D2_27_0 : STD_LOGIC; 
  signal Madd_in_R_res27_0 : STD_LOGIC; 
  signal in_R_res_27_0 : STD_LOGIC; 
  signal Madd_in_R_res28_3350 : STD_LOGIC; 
  signal in_R_res_28_0 : STD_LOGIC; 
  signal R_D1_29_0 : STD_LOGIC; 
  signal R_D2_29_0 : STD_LOGIC; 
  signal Madd_in_R_res29_3354 : STD_LOGIC; 
  signal in_R_res_29_0 : STD_LOGIC; 
  signal Madd_in_R_res30_3358 : STD_LOGIC; 
  signal in_R_res_30_0 : STD_LOGIC; 
  signal R_D1_31_0 : STD_LOGIC; 
  signal R_D2_31_0 : STD_LOGIC; 
  signal in_R_res_31_0 : STD_LOGIC; 
  signal in_R_D1_0_3363 : STD_LOGIC; 
  signal in_R_D2_0_3364 : STD_LOGIC; 
  signal in_R_D1_1_3365 : STD_LOGIC; 
  signal in_R_D2_1_3366 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_3367 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_3368 : STD_LOGIC; 
  signal in_R_D1_2_3369 : STD_LOGIC; 
  signal in_R_D2_2_3370 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_3371 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3 : STD_LOGIC; 
  signal in_R_D1_3_3373 : STD_LOGIC; 
  signal in_R_D2_3_3374 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_0 : STD_LOGIC; 
  signal in_R_D1_4_3376 : STD_LOGIC; 
  signal in_R_D2_4_3377 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_3378 : STD_LOGIC; 
  signal in_R_D1_5_3379 : STD_LOGIC; 
  signal in_R_D2_5_3380 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_3381 : STD_LOGIC; 
  signal in_R_D1_6_3382 : STD_LOGIC; 
  signal in_R_D2_6_3383 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_3384 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7 : STD_LOGIC; 
  signal in_R_D1_7_3386 : STD_LOGIC; 
  signal in_R_D2_7_3387 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_0 : STD_LOGIC; 
  signal in_R_D1_8_3389 : STD_LOGIC; 
  signal in_R_D2_8_3390 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_3391 : STD_LOGIC; 
  signal in_R_D1_9_3392 : STD_LOGIC; 
  signal in_R_D2_9_3393 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_3394 : STD_LOGIC; 
  signal in_R_D1_10_3395 : STD_LOGIC; 
  signal in_R_D2_10_3396 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_3397 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11 : STD_LOGIC; 
  signal in_R_D1_11_3399 : STD_LOGIC; 
  signal in_R_D2_11_3400 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_0 : STD_LOGIC; 
  signal in_R_D1_12_3402 : STD_LOGIC; 
  signal in_R_D2_12_3403 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_3404 : STD_LOGIC; 
  signal in_R_D1_13_3405 : STD_LOGIC; 
  signal in_R_D2_13_3406 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_3407 : STD_LOGIC; 
  signal in_R_D1_14_3408 : STD_LOGIC; 
  signal in_R_D2_14_3409 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_3410 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15 : STD_LOGIC; 
  signal in_R_D1_15_3412 : STD_LOGIC; 
  signal in_R_D2_15_3413 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_0 : STD_LOGIC; 
  signal in_R_D1_16_3415 : STD_LOGIC; 
  signal in_R_D2_16_3416 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_3417 : STD_LOGIC; 
  signal in_R_D1_17_3418 : STD_LOGIC; 
  signal in_R_D2_17_3419 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_3420 : STD_LOGIC; 
  signal in_R_D1_18_3421 : STD_LOGIC; 
  signal in_R_D2_18_3422 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_3423 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19 : STD_LOGIC; 
  signal in_R_D1_19_3425 : STD_LOGIC; 
  signal in_R_D2_19_3426 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_0 : STD_LOGIC; 
  signal in_R_D1_20_3428 : STD_LOGIC; 
  signal in_R_D2_20_3429 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_3430 : STD_LOGIC; 
  signal in_R_D1_21_3431 : STD_LOGIC; 
  signal in_R_D2_21_3432 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_3433 : STD_LOGIC; 
  signal in_R_D1_22_3434 : STD_LOGIC; 
  signal in_R_D2_22_3435 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_3436 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23 : STD_LOGIC; 
  signal in_R_D1_23_3438 : STD_LOGIC; 
  signal in_R_D2_23_3439 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_0 : STD_LOGIC; 
  signal in_R_D1_24_3441 : STD_LOGIC; 
  signal in_R_D2_24_3442 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_3443 : STD_LOGIC; 
  signal in_R_D1_25_3444 : STD_LOGIC; 
  signal in_R_D2_25_3445 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_3446 : STD_LOGIC; 
  signal in_R_D1_26_3447 : STD_LOGIC; 
  signal in_R_D2_26_3448 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_3449 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27 : STD_LOGIC; 
  signal in_R_D1_27_3451 : STD_LOGIC; 
  signal in_R_D2_27_3452 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_0 : STD_LOGIC; 
  signal in_R_D1_28_3454 : STD_LOGIC; 
  signal in_R_D2_28_3455 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_3456 : STD_LOGIC; 
  signal in_R_D1_29_3457 : STD_LOGIC; 
  signal in_R_D2_29_3458 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_3459 : STD_LOGIC; 
  signal in_R_D1_30_3460 : STD_LOGIC; 
  signal in_R_D2_30_3461 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_3462 : STD_LOGIC; 
  signal in_R_D1_31_3463 : STD_LOGIC; 
  signal in_R_D2_31_3464 : STD_LOGIC; 
  signal overflow_OBUF_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_0_0 : STD_LOGIC; 
  signal DIV_DP_R_B_1_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_1_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_2_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_3_Q_3474 : STD_LOGIC; 
  signal DIV_DP_R_B_3_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_3_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_4_0 : STD_LOGIC; 
  signal DIV_DP_R_B_5_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_5_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_6_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_7_Q_3487 : STD_LOGIC; 
  signal DIV_DP_R_B_7_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_7_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_8_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_9_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_10_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_11_Q_3497 : STD_LOGIC; 
  signal DIV_DP_adder1_out_11_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_12_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_13_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_14_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_15_Q_3506 : STD_LOGIC; 
  signal DIV_DP_adder1_out_15_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_16_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_17_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_18_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_19_Q_3515 : STD_LOGIC; 
  signal DIV_DP_adder1_out_19_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_20_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_21_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_22_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_23_Q_3524 : STD_LOGIC; 
  signal DIV_DP_adder1_out_23_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_24_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_25_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_26_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_27_Q_3533 : STD_LOGIC; 
  signal DIV_DP_adder1_out_27_0 : STD_LOGIC; 
  signal DIV_DP_adder1_out_28_0 : STD_LOGIC; 
  signal DIV_DP_Msub_adder1_out_cy_31_Q_3538 : STD_LOGIC; 
  signal sel_CNT_IBUF_0 : STD_LOGIC; 
  signal load_CNT_IBUF_0 : STD_LOGIC; 
  signal sel_R_X_IBUF_0 : STD_LOGIC; 
  signal ptr1_0_IBUF_0 : STD_LOGIC; 
  signal ptr1_1_IBUF_0 : STD_LOGIC; 
  signal ptr1_2_IBUF_0 : STD_LOGIC; 
  signal load_R_X_IBUF_0 : STD_LOGIC; 
  signal Mcount_R_X_cy_3_Q_3558 : STD_LOGIC; 
  signal ptr1_3_IBUF_0 : STD_LOGIC; 
  signal ptr1_4_IBUF_0 : STD_LOGIC; 
  signal ptr1_5_IBUF_0 : STD_LOGIC; 
  signal ptr1_6_IBUF_0 : STD_LOGIC; 
  signal Mcount_R_X_cy_7_Q_3567 : STD_LOGIC; 
  signal ptr1_7_IBUF_0 : STD_LOGIC; 
  signal ptr1_8_IBUF_0 : STD_LOGIC; 
  signal ptr1_9_IBUF_0 : STD_LOGIC; 
  signal ptr1_10_IBUF_0 : STD_LOGIC; 
  signal ptr1_11_IBUF_0 : STD_LOGIC; 
  signal sel_R_Y_IBUF_0 : STD_LOGIC; 
  signal ptr2_0_IBUF_0 : STD_LOGIC; 
  signal ptr2_1_IBUF_0 : STD_LOGIC; 
  signal ptr2_2_IBUF_0 : STD_LOGIC; 
  signal load_R_Y_IBUF_0 : STD_LOGIC; 
  signal Mcount_R_Y_cy_3_Q_3586 : STD_LOGIC; 
  signal ptr2_3_IBUF_0 : STD_LOGIC; 
  signal ptr2_4_IBUF_0 : STD_LOGIC; 
  signal ptr2_5_IBUF_0 : STD_LOGIC; 
  signal ptr2_6_IBUF_0 : STD_LOGIC; 
  signal Mcount_R_Y_cy_7_Q_3595 : STD_LOGIC; 
  signal ptr2_7_IBUF_0 : STD_LOGIC; 
  signal ptr2_8_IBUF_0 : STD_LOGIC; 
  signal ptr2_9_IBUF_0 : STD_LOGIC; 
  signal ptr2_10_IBUF_0 : STD_LOGIC; 
  signal ptr2_11_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_10_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_11_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_12_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_20_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_13_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_21_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_14_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_22_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_30_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_15_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_23_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_31_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_16_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_24_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_17_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_25_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_18_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_26_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_19_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_27_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_28_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_29_IBUF_0 : STD_LOGIC; 
  signal load_result_IBUF_0 : STD_LOGIC; 
  signal len_0_IBUF_0 : STD_LOGIC; 
  signal len_1_IBUF_0 : STD_LOGIC; 
  signal len_2_IBUF_0 : STD_LOGIC; 
  signal len_3_IBUF_0 : STD_LOGIC; 
  signal len_4_IBUF_0 : STD_LOGIC; 
  signal len_5_IBUF_0 : STD_LOGIC; 
  signal len_6_IBUF_0 : STD_LOGIC; 
  signal len_7_IBUF_0 : STD_LOGIC; 
  signal division_by_zero_OBUF_3637 : STD_LOGIC; 
  signal load_R_res_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal sel_mem_addr_IBUF_0 : STD_LOGIC; 
  signal load_R_D1_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal load_R_D2_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal mem_dataout_0_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_1_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_2_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_3_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_4_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_5_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_6_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_7_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_8_IBUF_0 : STD_LOGIC; 
  signal mem_dataout_9_IBUF_0 : STD_LOGIC; 
  signal set_mem_addr_IBUF_0 : STD_LOGIC; 
  signal result_10_3654 : STD_LOGIC; 
  signal result_11_3655 : STD_LOGIC; 
  signal result_12_3656 : STD_LOGIC; 
  signal result_20_3657 : STD_LOGIC; 
  signal result_13_3658 : STD_LOGIC; 
  signal result_21_3659 : STD_LOGIC; 
  signal result_14_3660 : STD_LOGIC; 
  signal result_22_3661 : STD_LOGIC; 
  signal result_30_3662 : STD_LOGIC; 
  signal result_15_3663 : STD_LOGIC; 
  signal result_23_3664 : STD_LOGIC; 
  signal result_31_3665 : STD_LOGIC; 
  signal result_16_3666 : STD_LOGIC; 
  signal result_24_3667 : STD_LOGIC; 
  signal result_17_3668 : STD_LOGIC; 
  signal result_25_3669 : STD_LOGIC; 
  signal result_18_3670 : STD_LOGIC; 
  signal result_26_3671 : STD_LOGIC; 
  signal result_19_3672 : STD_LOGIC; 
  signal result_27_3673 : STD_LOGIC; 
  signal result_28_3674 : STD_LOGIC; 
  signal result_29_3675 : STD_LOGIC; 
  signal mem_addr_10_3676 : STD_LOGIC; 
  signal mem_addr_11_3677 : STD_LOGIC; 
  signal load_L_IBUF_0 : STD_LOGIC; 
  signal result_0_3679 : STD_LOGIC; 
  signal result_1_3680 : STD_LOGIC; 
  signal result_2_3681 : STD_LOGIC; 
  signal result_3_3682 : STD_LOGIC; 
  signal result_4_3683 : STD_LOGIC; 
  signal result_5_3684 : STD_LOGIC; 
  signal result_6_3685 : STD_LOGIC; 
  signal result_7_3686 : STD_LOGIC; 
  signal result_8_3687 : STD_LOGIC; 
  signal mem_addr_0_3688 : STD_LOGIC; 
  signal result_9_3689 : STD_LOGIC; 
  signal mem_addr_1_3690 : STD_LOGIC; 
  signal mem_addr_2_3691 : STD_LOGIC; 
  signal mem_addr_3_3692 : STD_LOGIC; 
  signal mem_addr_4_3693 : STD_LOGIC; 
  signal mem_addr_5_3694 : STD_LOGIC; 
  signal mem_addr_6_3695 : STD_LOGIC; 
  signal mem_addr_7_3696 : STD_LOGIC; 
  signal mem_addr_8_3697 : STD_LOGIC; 
  signal mem_addr_9_3698 : STD_LOGIC; 
  signal count_eq_L_OBUF_3699 : STD_LOGIC; 
  signal set_mem_addr_IBUF_BUFG_3700 : STD_LOGIC; 
  signal mem_addr_11_R_X_10_MUX_227_o : STD_LOGIC; 
  signal mem_addr_11_R_X_11_MUX_225_o : STD_LOGIC; 
  signal mem_addr_11_R_X_0_MUX_247_o : STD_LOGIC; 
  signal mem_addr_11_R_X_1_MUX_245_o : STD_LOGIC; 
  signal mem_addr_11_R_X_2_MUX_243_o : STD_LOGIC; 
  signal mem_addr_11_R_X_3_MUX_241_o : STD_LOGIC; 
  signal mem_addr_11_R_X_4_MUX_239_o : STD_LOGIC; 
  signal mem_addr_11_R_X_5_MUX_237_o : STD_LOGIC; 
  signal mem_addr_11_R_X_6_MUX_235_o : STD_LOGIC; 
  signal mem_addr_11_R_X_7_MUX_233_o : STD_LOGIC; 
  signal mem_addr_11_R_X_8_MUX_231_o : STD_LOGIC; 
  signal mem_addr_11_R_X_9_MUX_229_o : STD_LOGIC; 
  signal load_R_D1_BUFGP : STD_LOGIC; 
  signal load_R_D2_BUFGP : STD_LOGIC; 
  signal L_3_0 : STD_LOGIC; 
  signal L_1_0 : STD_LOGIC; 
  signal L_7_0 : STD_LOGIC; 
  signal L_5_0 : STD_LOGIC; 
  signal count_eq_L8 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal count_eq_L81_3727 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal in_R_res_3_INV_in_R_res_3_rtCLK : STD_LOGIC; 
  signal in_R_res_3_INV_in_R_res_2_rtCLK : STD_LOGIC; 
  signal in_R_res_3_INV_in_R_res_1_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res2_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_2_32 : STD_LOGIC; 
  signal ProtoComp8_CYINITGND_0 : STD_LOGIC; 
  signal Madd_in_R_res3_20 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_1_15 : STD_LOGIC; 
  signal Madd_in_R_res1_pack_4 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_3_1 : STD_LOGIC; 
  signal in_R_res_7_INV_in_R_res_7_rtCLK : STD_LOGIC; 
  signal in_R_res_7_INV_in_R_res_6_rtCLK : STD_LOGIC; 
  signal in_R_res_7_INV_in_R_res_5_rtCLK : STD_LOGIC; 
  signal in_R_res_7_INV_in_R_res_4_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_4_73 : STD_LOGIC; 
  signal Madd_in_R_res4_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res5_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_5_62 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_6_57 : STD_LOGIC; 
  signal Madd_in_R_res6_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_7_44 : STD_LOGIC; 
  signal Madd_in_R_res7_43 : STD_LOGIC; 
  signal in_R_res_11_INV_in_R_res_11_rtCLK : STD_LOGIC; 
  signal in_R_res_11_INV_in_R_res_10_rtCLK : STD_LOGIC; 
  signal in_R_res_11_INV_in_R_res_9_rtCLK : STD_LOGIC; 
  signal in_R_res_11_INV_in_R_res_8_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_8_117 : STD_LOGIC; 
  signal Madd_in_R_res8_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res9_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_9_106 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_10_101 : STD_LOGIC; 
  signal Madd_in_R_res10_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_11_88 : STD_LOGIC; 
  signal Madd_in_R_res11_87 : STD_LOGIC; 
  signal in_R_res_15_INV_in_R_res_15_rtCLK : STD_LOGIC; 
  signal in_R_res_15_INV_in_R_res_14_rtCLK : STD_LOGIC; 
  signal in_R_res_15_INV_in_R_res_13_rtCLK : STD_LOGIC; 
  signal in_R_res_15_INV_in_R_res_12_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_12_161 : STD_LOGIC; 
  signal Madd_in_R_res12_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res13_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_13_150 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_14_145 : STD_LOGIC; 
  signal Madd_in_R_res14_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_15_132 : STD_LOGIC; 
  signal Madd_in_R_res15_131 : STD_LOGIC; 
  signal in_R_res_19_INV_in_R_res_19_rtCLK : STD_LOGIC; 
  signal in_R_res_19_INV_in_R_res_18_rtCLK : STD_LOGIC; 
  signal in_R_res_19_INV_in_R_res_17_rtCLK : STD_LOGIC; 
  signal in_R_res_19_INV_in_R_res_16_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_16_205 : STD_LOGIC; 
  signal Madd_in_R_res16_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res17_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_17_194 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_18_189 : STD_LOGIC; 
  signal Madd_in_R_res18_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_19_176 : STD_LOGIC; 
  signal Madd_in_R_res19_175 : STD_LOGIC; 
  signal in_R_res_23_INV_in_R_res_23_rtCLK : STD_LOGIC; 
  signal in_R_res_23_INV_in_R_res_22_rtCLK : STD_LOGIC; 
  signal in_R_res_23_INV_in_R_res_21_rtCLK : STD_LOGIC; 
  signal in_R_res_23_INV_in_R_res_20_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_20_249 : STD_LOGIC; 
  signal Madd_in_R_res20_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res21_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_21_238 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_22_233 : STD_LOGIC; 
  signal Madd_in_R_res22_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_23_220 : STD_LOGIC; 
  signal Madd_in_R_res23_219 : STD_LOGIC; 
  signal in_R_res_27_INV_in_R_res_27_rtCLK : STD_LOGIC; 
  signal in_R_res_27_INV_in_R_res_26_rtCLK : STD_LOGIC; 
  signal in_R_res_27_INV_in_R_res_25_rtCLK : STD_LOGIC; 
  signal in_R_res_27_INV_in_R_res_24_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_24_293 : STD_LOGIC; 
  signal Madd_in_R_res24_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res25_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_25_282 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_26_277 : STD_LOGIC; 
  signal Madd_in_R_res26_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_27_264 : STD_LOGIC; 
  signal Madd_in_R_res27_263 : STD_LOGIC; 
  signal in_R_res_30_INV_in_R_res_30_rtCLK : STD_LOGIC; 
  signal in_R_res_30_INV_in_R_res_29_rtCLK : STD_LOGIC; 
  signal in_R_res_30_INV_in_R_res_28_rtCLK : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_31_340 : STD_LOGIC; 
  signal Madd_in_R_res30_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_28_323 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_30_314 : STD_LOGIC; 
  signal Madd_in_R_res_lut_0_29_311 : STD_LOGIC; 
  signal Madd_in_R_res29_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res28_pack_4 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_371 : STD_LOGIC; 
  signal ProtoComp11_CYINITGND_0 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_362 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_356 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_352 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_pack_4 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_398 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_397 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_390 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_384 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_377 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_432 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_431 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_424 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_418 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_411 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_466 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_465 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_458 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_452 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_445 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_500 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_499 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_492 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_486 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_479 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_534 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_533 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_526 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_520 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_513 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_568 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_567 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_pack_7 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_560 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_554 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_pack_6 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_547 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_pack_5 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_601 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_596 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_590 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_pack_4 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_pack_6 : STD_LOGIC; 
  signal overflow_OBUF_581 : STD_LOGIC; 
  signal Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_580 : STD_LOGIC; 
  signal ProtoComp14_CYINITVCC_1 : STD_LOGIC; 
  signal DIV_DP_adder1_out_3_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_2_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_1_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_0_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_7_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_6_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_5_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_4_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_10_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_9_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_8_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_11_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_14_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_13_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_12_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_15_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_18_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_17_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_16_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_19_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_22_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_21_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_20_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_23_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_26_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_25_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_24_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_27_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_28_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_29_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_30_Q : STD_LOGIC; 
  signal DIV_DP_adder1_out_32_Q : STD_LOGIC; 
  signal Mcount_CNT : STD_LOGIC; 
  signal Mcount_CNT1 : STD_LOGIC; 
  signal Mcount_CNT2 : STD_LOGIC; 
  signal Mcount_CNT3 : STD_LOGIC; 
  signal Mcount_CNT4 : STD_LOGIC; 
  signal Mcount_CNT5 : STD_LOGIC; 
  signal Mcount_CNT6 : STD_LOGIC; 
  signal Mcount_CNT7 : STD_LOGIC; 
  signal Mcount_R_X : STD_LOGIC; 
  signal Mcount_R_X1 : STD_LOGIC; 
  signal Mcount_R_X2 : STD_LOGIC; 
  signal Mcount_R_X3 : STD_LOGIC; 
  signal Mcount_R_X4 : STD_LOGIC; 
  signal Mcount_R_X5 : STD_LOGIC; 
  signal Mcount_R_X6 : STD_LOGIC; 
  signal Mcount_R_X7 : STD_LOGIC; 
  signal Mcount_R_X8 : STD_LOGIC; 
  signal Mcount_R_X9 : STD_LOGIC; 
  signal Mcount_R_X10 : STD_LOGIC; 
  signal Mcount_R_X11 : STD_LOGIC; 
  signal Mcount_R_Y : STD_LOGIC; 
  signal Mcount_R_Y1 : STD_LOGIC; 
  signal Mcount_R_Y2 : STD_LOGIC; 
  signal Mcount_R_Y3 : STD_LOGIC; 
  signal Mcount_R_Y4 : STD_LOGIC; 
  signal Mcount_R_Y5 : STD_LOGIC; 
  signal Mcount_R_Y6 : STD_LOGIC; 
  signal Mcount_R_Y7 : STD_LOGIC; 
  signal Mcount_R_Y8 : STD_LOGIC; 
  signal Mcount_R_Y9 : STD_LOGIC; 
  signal Mcount_R_Y10 : STD_LOGIC; 
  signal Mcount_R_Y11 : STD_LOGIC; 
  signal mem_dataout_10_IBUF_1069 : STD_LOGIC; 
  signal mem_dataout_11_IBUF_1072 : STD_LOGIC; 
  signal mem_dataout_12_IBUF_1075 : STD_LOGIC; 
  signal mem_dataout_20_IBUF_1078 : STD_LOGIC; 
  signal mem_dataout_13_IBUF_1081 : STD_LOGIC; 
  signal mem_dataout_21_IBUF_1084 : STD_LOGIC; 
  signal mem_dataout_14_IBUF_1087 : STD_LOGIC; 
  signal mem_dataout_22_IBUF_1090 : STD_LOGIC; 
  signal mem_dataout_30_IBUF_1093 : STD_LOGIC; 
  signal mem_dataout_15_IBUF_1096 : STD_LOGIC; 
  signal mem_dataout_23_IBUF_1099 : STD_LOGIC; 
  signal mem_dataout_31_IBUF_1102 : STD_LOGIC; 
  signal mem_dataout_16_IBUF_1105 : STD_LOGIC; 
  signal mem_dataout_24_IBUF_1108 : STD_LOGIC; 
  signal mem_dataout_17_IBUF_1111 : STD_LOGIC; 
  signal mem_dataout_25_IBUF_1114 : STD_LOGIC; 
  signal mem_dataout_18_IBUF_1117 : STD_LOGIC; 
  signal mem_dataout_26_IBUF_1120 : STD_LOGIC; 
  signal mem_dataout_19_IBUF_1123 : STD_LOGIC; 
  signal mem_dataout_27_IBUF_1126 : STD_LOGIC; 
  signal mem_dataout_28_IBUF_1129 : STD_LOGIC; 
  signal mem_dataout_29_IBUF_1132 : STD_LOGIC; 
  signal load_result_IBUF_1137 : STD_LOGIC; 
  signal div_abort_IBUF_1140 : STD_LOGIC; 
  signal len_0_IBUF_1143 : STD_LOGIC; 
  signal len_1_IBUF_1146 : STD_LOGIC; 
  signal len_2_IBUF_1149 : STD_LOGIC; 
  signal len_3_IBUF_1152 : STD_LOGIC; 
  signal len_4_IBUF_1155 : STD_LOGIC; 
  signal len_5_IBUF_1158 : STD_LOGIC; 
  signal len_6_IBUF_1161 : STD_LOGIC; 
  signal len_7_IBUF_1164 : STD_LOGIC; 
  signal ptr1_0_IBUF_1189 : STD_LOGIC; 
  signal ptr1_1_IBUF_1192 : STD_LOGIC; 
  signal ptr1_2_IBUF_1195 : STD_LOGIC; 
  signal ptr1_3_IBUF_1198 : STD_LOGIC; 
  signal ptr2_0_IBUF_1201 : STD_LOGIC; 
  signal ptr1_4_IBUF_1204 : STD_LOGIC; 
  signal ptr2_1_IBUF_1207 : STD_LOGIC; 
  signal ptr1_5_IBUF_1210 : STD_LOGIC; 
  signal ptr2_2_IBUF_1213 : STD_LOGIC; 
  signal ptr1_6_IBUF_1216 : STD_LOGIC; 
  signal ptr2_3_IBUF_1219 : STD_LOGIC; 
  signal ptr1_7_IBUF_1222 : STD_LOGIC; 
  signal ptr2_4_IBUF_1225 : STD_LOGIC; 
  signal ptr1_8_IBUF_1228 : STD_LOGIC; 
  signal ptr2_5_IBUF_1231 : STD_LOGIC; 
  signal ptr1_9_IBUF_1234 : STD_LOGIC; 
  signal ptr2_6_IBUF_1237 : STD_LOGIC; 
  signal ptr2_7_IBUF_1240 : STD_LOGIC; 
  signal ptr2_8_IBUF_1243 : STD_LOGIC; 
  signal ptr2_9_IBUF_1246 : STD_LOGIC; 
  signal load_R_res_IBUF_1249 : STD_LOGIC; 
  signal sel_CNT_IBUF_1252 : STD_LOGIC; 
  signal ProtoComp26_IINV_OUT : STD_LOGIC; 
  signal DIV_CTRL_rst_n_inv_non_inverted : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_1259 : STD_LOGIC; 
  signal sel_mem_addr_IBUF_1264 : STD_LOGIC; 
  signal load_R_D1_BUFGP_IBUFG_1267 : STD_LOGIC; 
  signal load_R_D2_BUFGP_IBUFG_1270 : STD_LOGIC; 
  signal mem_dataout_0_IBUF_1273 : STD_LOGIC; 
  signal mem_dataout_1_IBUF_1276 : STD_LOGIC; 
  signal mem_dataout_2_IBUF_1279 : STD_LOGIC; 
  signal mem_dataout_3_IBUF_1282 : STD_LOGIC; 
  signal mem_dataout_4_IBUF_1285 : STD_LOGIC; 
  signal mem_dataout_5_IBUF_1288 : STD_LOGIC; 
  signal mem_dataout_6_IBUF_1291 : STD_LOGIC; 
  signal mem_dataout_7_IBUF_1294 : STD_LOGIC; 
  signal mem_dataout_8_IBUF_1297 : STD_LOGIC; 
  signal mem_dataout_9_IBUF_1300 : STD_LOGIC; 
  signal set_mem_addr_IBUF_1303 : STD_LOGIC; 
  signal sel_R_X_IBUF_1306 : STD_LOGIC; 
  signal sel_R_Y_IBUF_1309 : STD_LOGIC; 
  signal load_L_IBUF_1360 : STD_LOGIC; 
  signal div_start_IBUF_1363 : STD_LOGIC; 
  signal load_CNT_IBUF_1366 : STD_LOGIC; 
  signal load_R_X_IBUF_1397 : STD_LOGIC; 
  signal load_R_Y_IBUF_1400 : STD_LOGIC; 
  signal ptr1_10_IBUF_1437 : STD_LOGIC; 
  signal ptr1_11_IBUF_1444 : STD_LOGIC; 
  signal ptr2_10_IBUF_1461 : STD_LOGIC; 
  signal ptr2_11_IBUF_1466 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt_pack_13 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt2 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt4 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt3 : STD_LOGIC; 
  signal DIV_DP_R_cnt_2_pack_16 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt1 : STD_LOGIC; 
  signal L_7_rt_1603 : STD_LOGIC; 
  signal L_5_rt_1596 : STD_LOGIC; 
  signal L_3_rt_1591 : STD_LOGIC; 
  signal L_1_rt_1586 : STD_LOGIC; 
  signal DIV_DP_in_R_A_61_pack_8 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal DIV_DP_Mcount_R_cnt5_1832 : STD_LOGIC; 
  signal len_7_IBUF_rt_1860 : STD_LOGIC; 
  signal len_5_IBUF_rt_1853 : STD_LOGIC; 
  signal len_3_IBUF_rt_1848 : STD_LOGIC; 
  signal len_1_IBUF_rt_1843 : STD_LOGIC; 
  signal result_24_rstpot_1926 : STD_LOGIC; 
  signal result_25_rstpot_1921 : STD_LOGIC; 
  signal result_26_rstpot_1913 : STD_LOGIC; 
  signal result_27_rstpot_1904 : STD_LOGIC; 
  signal result_28_rstpot_1955 : STD_LOGIC; 
  signal result_29_rstpot_1950 : STD_LOGIC; 
  signal result_30_rstpot_1942 : STD_LOGIC; 
  signal result_31_rstpot_1933 : STD_LOGIC; 
  signal DIV_load_R_B : STD_LOGIC; 
  signal DIV_DP_R_res_24_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_26_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_25_pack_9 : STD_LOGIC; 
  signal result_20_rstpot_2038 : STD_LOGIC; 
  signal result_21_rstpot_2033 : STD_LOGIC; 
  signal result_22_rstpot_2025 : STD_LOGIC; 
  signal result_23_rstpot_2016 : STD_LOGIC; 
  signal DIV_DP_R_res_28_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_30_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_29_pack_9 : STD_LOGIC; 
  signal DIV_CTRL_state_FSM_FFd1_In_2096 : STD_LOGIC; 
  signal DIV_CTRL_state_FSM_FFd2_In : STD_LOGIC; 
  signal result_0_rstpot_2129 : STD_LOGIC; 
  signal result_1_rstpot_2124 : STD_LOGIC; 
  signal result_2_rstpot_2116 : STD_LOGIC; 
  signal result_3_rstpot_2107 : STD_LOGIC; 
  signal result_16_rstpot_2158 : STD_LOGIC; 
  signal result_17_rstpot_2153 : STD_LOGIC; 
  signal result_18_rstpot_2145 : STD_LOGIC; 
  signal result_19_rstpot_2136 : STD_LOGIC; 
  signal DIV_DP_R_res_1_pack_6 : STD_LOGIC; 
  signal DIV_DP_R_res_2_pack_8 : STD_LOGIC; 
  signal DIV_DP_R_res_16_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_18_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_17_pack_9 : STD_LOGIC; 
  signal DIV_DP_R_res_8_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_10_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_9_pack_9 : STD_LOGIC; 
  signal in_R_res_7_rt_2306 : STD_LOGIC; 
  signal in_R_res_5_rt_2299 : STD_LOGIC; 
  signal in_R_res_3_rt_2291 : STD_LOGIC; 
  signal in_R_res_1_rt_2283 : STD_LOGIC; 
  signal DIV_DP_R_res_4_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_6_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_5_pack_9 : STD_LOGIC; 
  signal DIV_DP_R_res_20_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_22_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_21_pack_9 : STD_LOGIC; 
  signal DIV_DP_R_res_12_pack_7 : STD_LOGIC; 
  signal DIV_DP_R_res_14_pack_11 : STD_LOGIC; 
  signal DIV_DP_R_res_13_pack_9 : STD_LOGIC; 
  signal in_R_res_15_rt_2464 : STD_LOGIC; 
  signal in_R_res_13_rt_2457 : STD_LOGIC; 
  signal in_R_res_11_rt_2452 : STD_LOGIC; 
  signal in_R_res_9_rt_2447 : STD_LOGIC; 
  signal in_R_res_31_rt_2487 : STD_LOGIC; 
  signal in_R_res_29_rt_2480 : STD_LOGIC; 
  signal in_R_res_27_rt_2475 : STD_LOGIC; 
  signal in_R_res_25_rt_2470 : STD_LOGIC; 
  signal in_R_res_23_rt_2510 : STD_LOGIC; 
  signal in_R_res_21_rt_2503 : STD_LOGIC; 
  signal in_R_res_19_rt_2498 : STD_LOGIC; 
  signal in_R_res_17_rt_2493 : STD_LOGIC; 
  signal in_R_D1_29_rt_2532 : STD_LOGIC; 
  signal in_R_D1_27_rt_2530 : STD_LOGIC; 
  signal in_R_D1_25_rt_2522 : STD_LOGIC; 
  signal in_R_D1_31_rt_2520 : STD_LOGIC; 
  signal result_8_rstpot_2561 : STD_LOGIC; 
  signal result_9_rstpot_2556 : STD_LOGIC; 
  signal result_10_rstpot_2548 : STD_LOGIC; 
  signal result_11_rstpot_2539 : STD_LOGIC; 
  signal in_R_D2_5_rt_2583 : STD_LOGIC; 
  signal in_R_D2_3_rt_2581 : STD_LOGIC; 
  signal in_R_D2_1_rt_2573 : STD_LOGIC; 
  signal in_R_D2_7_rt_2571 : STD_LOGIC; 
  signal in_R_D2_13_rt_2620 : STD_LOGIC; 
  signal in_R_D2_11_rt_2618 : STD_LOGIC; 
  signal in_R_D2_9_rt_2610 : STD_LOGIC; 
  signal in_R_D2_15_rt_2608 : STD_LOGIC; 
  signal in_R_D1_21_rt_2652 : STD_LOGIC; 
  signal in_R_D1_19_rt_2650 : STD_LOGIC; 
  signal in_R_D1_17_rt_2642 : STD_LOGIC; 
  signal in_R_D1_23_rt_2640 : STD_LOGIC; 
  signal in_R_D2_29_rt_2674 : STD_LOGIC; 
  signal in_R_D2_27_rt_2672 : STD_LOGIC; 
  signal in_R_D2_25_rt_2664 : STD_LOGIC; 
  signal in_R_D2_31_rt_2662 : STD_LOGIC; 
  signal in_R_D1_5_rt_2723 : STD_LOGIC; 
  signal in_R_D1_3_rt_2721 : STD_LOGIC; 
  signal in_R_D1_1_rt_2713 : STD_LOGIC; 
  signal in_R_D1_7_rt_2711 : STD_LOGIC; 
  signal in_R_D1_13_rt_2769 : STD_LOGIC; 
  signal in_R_D1_11_rt_2767 : STD_LOGIC; 
  signal in_R_D1_9_rt_2759 : STD_LOGIC; 
  signal in_R_D1_15_rt_2757 : STD_LOGIC; 
  signal in_R_D2_21_rt_2791 : STD_LOGIC; 
  signal in_R_D2_19_rt_2789 : STD_LOGIC; 
  signal in_R_D2_17_rt_2781 : STD_LOGIC; 
  signal in_R_D2_23_rt_2779 : STD_LOGIC; 
  signal result_4_rstpot_2856 : STD_LOGIC; 
  signal result_5_rstpot_2851 : STD_LOGIC; 
  signal result_6_rstpot_2843 : STD_LOGIC; 
  signal result_7_rstpot_2834 : STD_LOGIC; 
  signal result_12_rstpot_2885 : STD_LOGIC; 
  signal result_13_rstpot_2880 : STD_LOGIC; 
  signal result_14_rstpot_2872 : STD_LOGIC; 
  signal result_15_rstpot_2863 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res3_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res7_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res7_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res6_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res6_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res6_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res4_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res4_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res4_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res10_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res10_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res9_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res9_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res8_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res8_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res15_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res15_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res15_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res14_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res14_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res14_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res13_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res13_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res13_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res12_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res12_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res12_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res19_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res19_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res19_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res18_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res18_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res18_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res17_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res17_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res17_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res16_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res16_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res16_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res23_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res23_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res23_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res22_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res22_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res22_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res20_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res20_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res20_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res27_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res27_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res27_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res26_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res26_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res26_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res25_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res25_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res25_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res24_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res24_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res24_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res30_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res30_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res30_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res29_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res29_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res29_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res28_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res28_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res28_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_3_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_31_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_cy_3_CYINIT : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_7_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_6_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_CNT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_CNT_lut_4_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_3_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_cy_3_CYINIT : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_0_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_7_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_7_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_6_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_6_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_5_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_4_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_4_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_10_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_9_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_X_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_8_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_X_lut_8_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_3_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_3_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_3_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_cy_3_CYINIT : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_2_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_2_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_0_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_7_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_7_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_7_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_6_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_6_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_4_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_4_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_4_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_10_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_10_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_9_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_9_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_Y_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_8_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_8_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mcount_R_Y_lut_8_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_overflow_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_div_ready_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_result_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mem_addr_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_set_mem_addr_IBUF_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_load_R_D1_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_load_R_D2_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_35_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_34_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_33_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_32_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_L_7_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_L_5_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_L_3_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_L_1_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_B_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_39_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_38_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_37_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_36_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_43_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_42_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_41_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_40_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_47_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_46_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_45_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_44_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_51_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_50_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_49_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_48_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_55_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_54_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_53_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_52_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_59_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_58_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_57_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_56_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_62_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_61_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_61_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_ready1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_ready1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_60_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_L_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_len_7_IBUF_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_L_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_len_5_IBUF_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_L_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_len_3_IBUF_rt_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_L_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_L_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_len_1_IBUF_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_L_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L82_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L83_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_SW0_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_SW0_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_SW0_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_division_by_zero_31_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_count_eq_L81_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_27_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_27_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_27_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_27_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_26_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_26_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_26_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_26_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_25_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_25_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_25_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_25_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_25_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_24_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_24_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_24_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_24_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_31_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_31_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_31_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_31_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_30_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_30_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_30_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_30_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_29_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_29_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_29_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_29_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_29_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_28_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_28_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_28_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_28_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_A1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_A1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_A1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_B1_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_B1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_load_R_B1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_23_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_23_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_23_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_23_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_22_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_22_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_22_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_22_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_21_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_21_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_21_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_21_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_21_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_20_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_20_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_20_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_20_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_3_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_3_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_3_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_3_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_3_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_2_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_2_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_2_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_2_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_2_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_1_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_1_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_1_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_1_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_0_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_0_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_0_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_0_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_0_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_19_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_19_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_19_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_19_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_18_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_18_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_18_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_18_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_17_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_17_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_17_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_17_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_17_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_16_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_16_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_16_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_16_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_in_R_res_7_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_in_R_res_5_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_in_R_res_3_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_6_in_R_res_1_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_A_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_DIV_DP_R_res_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_in_R_res_15_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_in_R_res_13_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_in_R_res_11_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_14_in_R_res_9_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_res_31_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_30_in_R_res_29_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_30_in_R_res_27_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_30_in_R_res_25_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_in_R_res_23_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_in_R_res_21_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_in_R_res_19_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_res_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_R_res_22_in_R_res_17_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_res_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_31_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_29_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_27_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_25_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_11_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_11_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_11_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_11_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_11_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_10_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_10_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_10_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_10_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_10_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_9_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_9_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_9_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_9_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_8_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_8_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_8_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_8_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_7_rt_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_5_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_3_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_1_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_15_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_13_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_11_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_9_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_23_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_21_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_19_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_17_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_31_rt_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_29_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_27_rt_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_25_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_7_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_5_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_3_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_1_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_15_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_13_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_11_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_9_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_23_rt_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_21_rt_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_19_rt_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_17_rt_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_R_D2_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_result_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_7_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_7_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_7_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_7_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_7_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_6_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_6_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_6_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_6_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_5_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_5_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_5_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_5_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_5_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_4_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_4_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_4_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_4_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_15_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_15_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_15_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_15_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_14_rstpot_ADR5 : STD_LOGIC; 
  signal NlwBufferSignal_result_14_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_14_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_14_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_13_rstpot_ADR0 : STD_LOGIC; 
  signal NlwBufferSignal_result_13_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_13_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_13_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_13_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_result_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_result_12_rstpot_ADR2 : STD_LOGIC; 
  signal NlwBufferSignal_result_12_rstpot_ADR1 : STD_LOGIC; 
  signal NlwBufferSignal_result_12_rstpot_ADR3 : STD_LOGIC; 
  signal NlwBufferSignal_result_12_rstpot_ADR4 : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D2_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_in_R_D1_0_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_2_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_2_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_2_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_6_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_22_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_22_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_22_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_26_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_26_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_cy_0_26_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_xor_0_30_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_xor_0_30_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_xor_0_30_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_xor_0_30_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_xor_0_30_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_cy_31_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DIV_DP_Msub_adder1_out_xor_32_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_31_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_30_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_29_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_28_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_CNT_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_34_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_33_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_32_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_X_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_23_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_R_Y_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_27_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_mem_datain_0_OBUF_1_25_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal DIV_DP_R_A : STD_LOGIC_VECTOR ( 62 downto 0 ); 
  signal R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DIV_DP_R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DIV_DP_R_cnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal R_D2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal R_D1 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DIV_DP_R_B : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_CNT_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal R_X : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal R_Y : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal L : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal DIV_DP_in_R_A : STD_LOGIC_VECTOR ( 62 downto 0 ); 
  signal in_R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Madd_in_R_res_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal DIV_DP_Msub_adder1_out_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_CNT_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_R_X_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcount_R_Y_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal DIV_DP_in_R_res : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  INV_in_R_res_3_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_3_INV_in_R_res_3_rtCLK
    );
  INV_in_R_res_2_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_3_INV_in_R_res_2_rtCLK
    );
  INV_in_R_res_1_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_3_INV_in_R_res_1_rtCLK
    );
  in_R_res_3_in_R_res_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res3_20,
      O => Madd_in_R_res3_0
    );
  in_R_res_3_in_R_res_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res2_pack_5,
      O => Madd_in_R_res2_3239
    );
  in_R_res_3_in_R_res_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res1_pack_4,
      O => Madd_in_R_res1_3234
    );
  in_R_res_3_in_R_res_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res(0),
      O => in_R_res_0_0
    );
  in_R_res_3_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_3_INV_in_R_res_3_rtCLK,
      I => in_R_res(3),
      O => in_R_res_3_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_3_1
    );
  Madd_in_R_res3 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"EEEE8888"
    )
    port map (
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res3_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res3_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res3_ADR1,
      ADR2 => '1',
      O => Madd_in_R_res3_20
    );
  ProtoComp8_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X24Y47"
    )
    port map (
      O => ProtoComp8_CYINITGND_0
    );
  in_R_res_2_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_3_INV_in_R_res_2_rtCLK,
      I => in_R_res(2),
      O => in_R_res_2_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_2 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y47"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp8_CYINITGND_0,
      CO(3) => Madd_in_R_res_cy_0_3,
      CO(2) => NLW_Madd_in_R_res_cy_0_2_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_2_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_2_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_1_Q,
      DI(0) => '0',
      O(3) => in_R_res(3),
      O(2) => in_R_res(2),
      O(1) => in_R_res(1),
      O(0) => in_R_res(0),
      S(3) => Madd_in_R_res_lut_0_3_1,
      S(2) => Madd_in_R_res_lut_0_2_32,
      S(1) => Madd_in_R_res_lut_0_1_15,
      S(0) => Madd_in_R_res_lut(0)
    );
  Madd_in_R_res_lut_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_2_32
    );
  Madd_in_R_res2 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res2_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res2_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res2_ADR3,
      ADR4 => '1',
      O => Madd_in_R_res2_pack_5
    );
  in_R_res_1_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_3_INV_in_R_res_1_rtCLK,
      I => in_R_res(1),
      O => in_R_res_1_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_1_15
    );
  Madd_in_R_res1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"FFAAAA00"
    )
    port map (
      ADR2 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res1_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res1_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res1_ADR3,
      ADR1 => '1',
      O => Madd_in_R_res1_pack_4
    );
  Madd_in_R_res_lut_0_32 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"C3C33C3CC3C33C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut(0)
    );
  mem_datain_0_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_A5LUT_O_UNCONNECTED
    );
  INV_in_R_res_7_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_7_INV_in_R_res_7_rtCLK
    );
  INV_in_R_res_6_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_7_INV_in_R_res_6_rtCLK
    );
  INV_in_R_res_5_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_7_INV_in_R_res_5_rtCLK
    );
  INV_in_R_res_4_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_7_INV_in_R_res_4_rtCLK
    );
  in_R_res_7_in_R_res_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res7_43,
      O => Madd_in_R_res7_0
    );
  in_R_res_7_in_R_res_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res6_pack_7,
      O => Madd_in_R_res6_3256
    );
  in_R_res_7_in_R_res_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res5_pack_6,
      O => Madd_in_R_res5_3252
    );
  in_R_res_7_in_R_res_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res4_pack_5,
      O => Madd_in_R_res4_3248
    );
  in_R_res_7_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_7_INV_in_R_res_7_rtCLK,
      I => in_R_res(7),
      O => in_R_res_7_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_7_44
    );
  Madd_in_R_res7 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"FFAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res7_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res7_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res7_ADR4,
      ADR2 => '1',
      O => Madd_in_R_res7_43
    );
  in_R_res_6_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_7_INV_in_R_res_6_rtCLK,
      I => in_R_res(6),
      O => in_R_res_6_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_6 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y48"
    )
    port map (
      CI => Madd_in_R_res_cy_0_3,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_7,
      CO(2) => NLW_Madd_in_R_res_cy_0_6_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_6_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_6_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_0_Q,
      O(3) => in_R_res(7),
      O(2) => in_R_res(6),
      O(1) => in_R_res(5),
      O(0) => in_R_res(4),
      S(3) => Madd_in_R_res_lut_0_7_44,
      S(2) => Madd_in_R_res_lut_0_6_57,
      S(1) => Madd_in_R_res_lut_0_5_62,
      S(0) => Madd_in_R_res_lut_0_4_73
    );
  Madd_in_R_res_lut_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_6_57
    );
  Madd_in_R_res6 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res6_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res6_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res6_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res6_pack_7
    );
  in_R_res_5_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_7_INV_in_R_res_5_rtCLK,
      I => in_R_res(5),
      O => in_R_res_5_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_5_62
    );
  Madd_in_R_res5 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res5_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res5_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res5_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res5_pack_6
    );
  in_R_res_4_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_7_INV_in_R_res_4_rtCLK,
      I => in_R_res(4),
      O => in_R_res_4_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_4_73
    );
  Madd_in_R_res4 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y48",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res4_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res4_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res4_ADR0,
      ADR4 => '1',
      O => Madd_in_R_res4_pack_5
    );
  INV_in_R_res_11_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_11_INV_in_R_res_11_rtCLK
    );
  INV_in_R_res_10_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_11_INV_in_R_res_10_rtCLK
    );
  INV_in_R_res_9_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_11_INV_in_R_res_9_rtCLK
    );
  INV_in_R_res_8_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_11_INV_in_R_res_8_rtCLK
    );
  in_R_res_11_in_R_res_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res11_87,
      O => Madd_in_R_res11_0
    );
  in_R_res_11_in_R_res_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res10_pack_7,
      O => Madd_in_R_res10_3273
    );
  in_R_res_11_in_R_res_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res9_pack_6,
      O => Madd_in_R_res9_3269
    );
  in_R_res_11_in_R_res_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res8_pack_5,
      O => Madd_in_R_res8_3265
    );
  in_R_res_11_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_11_INV_in_R_res_11_rtCLK,
      I => in_R_res(11),
      O => in_R_res_11_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_11_88
    );
  Madd_in_R_res11 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res11_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res11_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res11_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res11_87
    );
  in_R_res_10_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_11_INV_in_R_res_10_rtCLK,
      I => in_R_res(10),
      O => in_R_res_10_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_10 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y49"
    )
    port map (
      CI => Madd_in_R_res_cy_0_7,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_11,
      CO(2) => NLW_Madd_in_R_res_cy_0_10_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_10_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_10_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_0_Q,
      O(3) => in_R_res(11),
      O(2) => in_R_res(10),
      O(1) => in_R_res(9),
      O(0) => in_R_res(8),
      S(3) => Madd_in_R_res_lut_0_11_88,
      S(2) => Madd_in_R_res_lut_0_10_101,
      S(1) => Madd_in_R_res_lut_0_9_106,
      S(0) => Madd_in_R_res_lut_0_8_117
    );
  Madd_in_R_res_lut_0_10 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_10_101
    );
  Madd_in_R_res10 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res10_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res10_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res10_ADR3,
      ADR4 => '1',
      O => Madd_in_R_res10_pack_7
    );
  in_R_res_9_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_11_INV_in_R_res_9_rtCLK,
      I => in_R_res(9),
      O => in_R_res_9_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_9 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_9_106
    );
  Madd_in_R_res9 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"EEEE8888"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res9_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res9_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res9_ADR0,
      ADR2 => '1',
      O => Madd_in_R_res9_pack_6
    );
  in_R_res_8_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_11_INV_in_R_res_8_rtCLK,
      I => in_R_res(8),
      O => in_R_res_8_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_8 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_8_117
    );
  Madd_in_R_res8 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y49",
      INIT => X"EE88EE88"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res8_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res8_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res8_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res8_pack_5
    );
  INV_in_R_res_15_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_15_INV_in_R_res_15_rtCLK
    );
  INV_in_R_res_14_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_15_INV_in_R_res_14_rtCLK
    );
  INV_in_R_res_13_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_15_INV_in_R_res_13_rtCLK
    );
  INV_in_R_res_12_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_15_INV_in_R_res_12_rtCLK
    );
  in_R_res_15_in_R_res_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res15_131,
      O => Madd_in_R_res15_0
    );
  in_R_res_15_in_R_res_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res14_pack_7,
      O => Madd_in_R_res14_3290
    );
  in_R_res_15_in_R_res_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res13_pack_6,
      O => Madd_in_R_res13_3286
    );
  in_R_res_15_in_R_res_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res12_pack_5,
      O => Madd_in_R_res12_3282
    );
  in_R_res_15_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_15_INV_in_R_res_15_rtCLK,
      I => in_R_res(15),
      O => in_R_res_15_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_15 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_15_132
    );
  Madd_in_R_res15 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"FFCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res15_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res15_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res15_ADR3,
      ADR2 => '1',
      O => Madd_in_R_res15_131
    );
  in_R_res_14_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_15_INV_in_R_res_14_rtCLK,
      I => in_R_res(14),
      O => in_R_res_14_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_14 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y50"
    )
    port map (
      CI => Madd_in_R_res_cy_0_11,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_15,
      CO(2) => NLW_Madd_in_R_res_cy_0_14_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_14_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_14_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_0_Q,
      O(3) => in_R_res(15),
      O(2) => in_R_res(14),
      O(1) => in_R_res(13),
      O(0) => in_R_res(12),
      S(3) => Madd_in_R_res_lut_0_15_132,
      S(2) => Madd_in_R_res_lut_0_14_145,
      S(1) => Madd_in_R_res_lut_0_13_150,
      S(0) => Madd_in_R_res_lut_0_12_161
    );
  Madd_in_R_res_lut_0_14 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_14_145
    );
  Madd_in_R_res14 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res14_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res14_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res14_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res14_pack_7
    );
  in_R_res_13_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_15_INV_in_R_res_13_rtCLK,
      I => in_R_res(13),
      O => in_R_res_13_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_13 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_13_150
    );
  Madd_in_R_res13 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res13_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res13_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res13_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res13_pack_6
    );
  in_R_res_12_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_15_INV_in_R_res_12_rtCLK,
      I => in_R_res(12),
      O => in_R_res_12_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_12 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_12_161
    );
  Madd_in_R_res12 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y50",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res12_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res12_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res12_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res12_pack_5
    );
  INV_in_R_res_19_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_19_INV_in_R_res_19_rtCLK
    );
  INV_in_R_res_18_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_19_INV_in_R_res_18_rtCLK
    );
  INV_in_R_res_17_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_19_INV_in_R_res_17_rtCLK
    );
  INV_in_R_res_16_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_19_INV_in_R_res_16_rtCLK
    );
  in_R_res_19_in_R_res_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res19_175,
      O => Madd_in_R_res19_0
    );
  in_R_res_19_in_R_res_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res18_pack_7,
      O => Madd_in_R_res18_3307
    );
  in_R_res_19_in_R_res_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res17_pack_6,
      O => Madd_in_R_res17_3303
    );
  in_R_res_19_in_R_res_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res16_pack_5,
      O => Madd_in_R_res16_3299
    );
  in_R_res_19_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_19_INV_in_R_res_19_rtCLK,
      I => in_R_res(19),
      O => in_R_res_19_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_19 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_19_176
    );
  Madd_in_R_res19 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"EEEE8888"
    )
    port map (
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res19_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res19_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res19_ADR1,
      ADR2 => '1',
      O => Madd_in_R_res19_175
    );
  in_R_res_18_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_19_INV_in_R_res_18_rtCLK,
      I => in_R_res(18),
      O => in_R_res_18_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_18 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y51"
    )
    port map (
      CI => Madd_in_R_res_cy_0_15,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_19,
      CO(2) => NLW_Madd_in_R_res_cy_0_18_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_18_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_18_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_0_Q,
      O(3) => in_R_res(19),
      O(2) => in_R_res(18),
      O(1) => in_R_res(17),
      O(0) => in_R_res(16),
      S(3) => Madd_in_R_res_lut_0_19_176,
      S(2) => Madd_in_R_res_lut_0_18_189,
      S(1) => Madd_in_R_res_lut_0_17_194,
      S(0) => Madd_in_R_res_lut_0_16_205
    );
  Madd_in_R_res_lut_0_18 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_18_189
    );
  Madd_in_R_res18 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res18_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res18_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res18_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res18_pack_7
    );
  in_R_res_17_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_19_INV_in_R_res_17_rtCLK,
      I => in_R_res(17),
      O => in_R_res_17_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_17 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_17_194
    );
  Madd_in_R_res17 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"EEEE8888"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res17_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res17_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res17_ADR0,
      ADR2 => '1',
      O => Madd_in_R_res17_pack_6
    );
  in_R_res_16_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_19_INV_in_R_res_16_rtCLK,
      I => in_R_res(16),
      O => in_R_res_16_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_16 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_16_205
    );
  Madd_in_R_res16 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y51",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res16_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res16_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res16_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res16_pack_5
    );
  INV_in_R_res_23_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_23_INV_in_R_res_23_rtCLK
    );
  INV_in_R_res_22_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_23_INV_in_R_res_22_rtCLK
    );
  INV_in_R_res_21_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_23_INV_in_R_res_21_rtCLK
    );
  INV_in_R_res_20_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_23_INV_in_R_res_20_rtCLK
    );
  in_R_res_23_in_R_res_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res23_219,
      O => Madd_in_R_res23_0
    );
  in_R_res_23_in_R_res_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res22_pack_7,
      O => Madd_in_R_res22_3324
    );
  in_R_res_23_in_R_res_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res21_pack_6,
      O => Madd_in_R_res21_3320
    );
  in_R_res_23_in_R_res_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res20_pack_5,
      O => Madd_in_R_res20_3316
    );
  in_R_res_23_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_23_INV_in_R_res_23_rtCLK,
      I => in_R_res(23),
      O => in_R_res_23_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_23 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_23_220
    );
  Madd_in_R_res23 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"FFAAAA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res23_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res23_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res23_ADR0,
      ADR1 => '1',
      O => Madd_in_R_res23_219
    );
  in_R_res_22_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_23_INV_in_R_res_22_rtCLK,
      I => in_R_res(22),
      O => in_R_res_22_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_22 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y52"
    )
    port map (
      CI => Madd_in_R_res_cy_0_19,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_23,
      CO(2) => NLW_Madd_in_R_res_cy_0_22_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_22_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_22_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_0_Q,
      O(3) => in_R_res(23),
      O(2) => in_R_res(22),
      O(1) => in_R_res(21),
      O(0) => in_R_res(20),
      S(3) => Madd_in_R_res_lut_0_23_220,
      S(2) => Madd_in_R_res_lut_0_22_233,
      S(1) => Madd_in_R_res_lut_0_21_238,
      S(0) => Madd_in_R_res_lut_0_20_249
    );
  Madd_in_R_res_lut_0_22 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_22_233
    );
  Madd_in_R_res22 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res22_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res22_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res22_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res22_pack_7
    );
  in_R_res_21_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_23_INV_in_R_res_21_rtCLK,
      I => in_R_res(21),
      O => in_R_res_21_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_21_238
    );
  Madd_in_R_res21 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res21_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res21_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res21_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res21_pack_6
    );
  in_R_res_20_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_23_INV_in_R_res_20_rtCLK,
      I => in_R_res(20),
      O => in_R_res_20_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_20 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_20_249
    );
  Madd_in_R_res20 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y52",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res20_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res20_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res20_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res20_pack_5
    );
  INV_in_R_res_27_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_27_INV_in_R_res_27_rtCLK
    );
  INV_in_R_res_26_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_27_INV_in_R_res_26_rtCLK
    );
  INV_in_R_res_25_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_27_INV_in_R_res_25_rtCLK
    );
  INV_in_R_res_24_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_27_INV_in_R_res_24_rtCLK
    );
  in_R_res_27_in_R_res_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res27_263,
      O => Madd_in_R_res27_0
    );
  in_R_res_27_in_R_res_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res26_pack_7,
      O => Madd_in_R_res26_3341
    );
  in_R_res_27_in_R_res_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res25_pack_6,
      O => Madd_in_R_res25_3337
    );
  in_R_res_27_in_R_res_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res24_pack_5,
      O => Madd_in_R_res24_3333
    );
  in_R_res_27_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_27_INV_in_R_res_27_rtCLK,
      I => in_R_res(27),
      O => in_R_res_27_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_27 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_27_264
    );
  Madd_in_R_res27 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res27_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res27_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res27_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res27_263
    );
  in_R_res_26_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_27_INV_in_R_res_26_rtCLK,
      I => in_R_res(26),
      O => in_R_res_26_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_cy_0_26 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y53"
    )
    port map (
      CI => Madd_in_R_res_cy_0_23,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_cy_0_27,
      CO(2) => NLW_Madd_in_R_res_cy_0_26_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_cy_0_26_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_cy_0_26_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_0_Q,
      O(3) => in_R_res(27),
      O(2) => in_R_res(26),
      O(1) => in_R_res(25),
      O(0) => in_R_res(24),
      S(3) => Madd_in_R_res_lut_0_27_264,
      S(2) => Madd_in_R_res_lut_0_26_277,
      S(1) => Madd_in_R_res_lut_0_25_282,
      S(0) => Madd_in_R_res_lut_0_24_293
    );
  Madd_in_R_res_lut_0_26 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_26_277
    );
  Madd_in_R_res26 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res26_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res26_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res26_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res26_pack_7
    );
  in_R_res_25_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_27_INV_in_R_res_25_rtCLK,
      I => in_R_res(25),
      O => in_R_res_25_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_25 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_25_282
    );
  Madd_in_R_res25 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"EEEE8888"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res25_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res25_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res25_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res25_pack_6
    );
  in_R_res_24_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_27_INV_in_R_res_24_rtCLK,
      I => in_R_res(24),
      O => in_R_res_24_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_24 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_24_293
    );
  Madd_in_R_res24 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y53",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res24_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res24_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res24_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res24_pack_5
    );
  INV_in_R_res_30_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_30_INV_in_R_res_30_rtCLK
    );
  INV_in_R_res_29_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_30_INV_in_R_res_29_rtCLK
    );
  INV_in_R_res_28_rtCLK : X_INV
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => '0',
      O => in_R_res_30_INV_in_R_res_28_rtCLK
    );
  in_R_res_30_in_R_res_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res(31),
      O => in_R_res_31_0
    );
  in_R_res_30_in_R_res_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res30_pack_6,
      O => Madd_in_R_res30_3358
    );
  in_R_res_30_in_R_res_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res29_pack_5,
      O => Madd_in_R_res29_3354
    );
  in_R_res_30_in_R_res_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res28_pack_4,
      O => Madd_in_R_res28_3350
    );
  Madd_in_R_res_lut_0_31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"0FF0F00FF00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR4,
      ADR5 => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR5,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR2,
      O => Madd_in_R_res_lut_0_31_340
    );
  in_R_res_30_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_30_INV_in_R_res_30_rtCLK,
      I => in_R_res(30),
      O => in_R_res_30_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_xor_0_30 : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y54"
    )
    port map (
      CI => Madd_in_R_res_cy_0_27,
      CYINIT => '0',
      CO(3) => NLW_Madd_in_R_res_xor_0_30_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_in_R_res_xor_0_30_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_xor_0_30_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_xor_0_30_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_in_R_res_xor_0_30_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_0_Q,
      O(3) => in_R_res(31),
      O(2) => in_R_res(30),
      O(1) => in_R_res(29),
      O(0) => in_R_res(28),
      S(3) => Madd_in_R_res_lut_0_31_340,
      S(2) => Madd_in_R_res_lut_0_30_314,
      S(1) => Madd_in_R_res_lut_0_29_311,
      S(0) => Madd_in_R_res_lut_0_28_323
    );
  Madd_in_R_res_lut_0_30 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_30_314
    );
  Madd_in_R_res30 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res30_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res30_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res30_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res30_pack_6
    );
  in_R_res_29_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_30_INV_in_R_res_29_rtCLK,
      I => in_R_res(29),
      O => in_R_res_29_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_29 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_29_311
    );
  Madd_in_R_res29 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res29_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res29_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res29_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res29_pack_5
    );
  in_R_res_28_rt : X_LATCHE
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => '0'
    )
    port map (
      GE => '1',
      CLK => in_R_res_30_INV_in_R_res_28_rtCLK,
      I => in_R_res(28),
      O => in_R_res_28_0,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_lut_0_28 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_lut_0_28_323
    );
  Madd_in_R_res28 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y54",
      INIT => X"EE88EE88"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res28_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res28_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res28_ADR0,
      ADR4 => '1',
      O => Madd_in_R_res28_pack_4
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_371,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_3371
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_pack_4,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_3368
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_356
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT3 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_371
    );
  ProtoComp11_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X26Y40"
    )
    port map (
      O => ProtoComp11_CYINITGND_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y40"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp11_CYINITGND_0,
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_1_Q,
      DI(0) => '0',
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_356,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_352,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_362,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_Q
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_352
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT2 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"FAFAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR1,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_362
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"FAFAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_pack_4
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"9966996699669966"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR1,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_Q
    );
  mem_datain_0_OBUF_1_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_4_A5LUT_O_UNCONNECTED
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_398,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_3384
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_3381
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_3378
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_397
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT7 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_398
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y41"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_3,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_397,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_390,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_377,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_384
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_390
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT6 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_377
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT5 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_384
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT4 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y41",
      INIT => X"EEEE8888"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR4,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR0,
      ADR2 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_432,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_3397
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_3394
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_3391
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_431
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"FFCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR3,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR1,
      ADR2 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_432
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y42"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_7,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_431,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_424,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_411,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_418
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_424
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT10 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR0,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_411
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT9 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"6996699669966996"
    )
    port map (
      ADR4 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_418
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT8 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y42",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_466,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_3410
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_3407
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_3404
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_465
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT15 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"FAFAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_466
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y43"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_11,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_465,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_458,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_445,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_452
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_458
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT14 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"EEEE8888"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_445
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT13 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"6996699669966996"
    )
    port map (
      ADR4 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_452
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT12 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y43",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_500,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_3423
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_3420
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_3417
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_499
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT19 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_500
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y44"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_15,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_499,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_492,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_479,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_486
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_492
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT18 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"FAA0FAA0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR0,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR3,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_479
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT17 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"EEEE8888"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR3,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_486
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT16 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y44",
      INIT => X"EE88EE88"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR3,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_534,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_3436
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_3433
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_3430
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_533
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT23 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_534
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y45"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_19,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_533,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_526,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_513,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_520
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR2,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_526
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT22 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR2,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_513
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"EEEE8888"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_520
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT20 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y45",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR1,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR0,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR2,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_568,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_0
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_pack_7,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_3449
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_3446
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_3443
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR1,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR4,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_567
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT27 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"FCC0FCC0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR3,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_568
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y46"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_23,
      CYINIT => '0',
      CO(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_3_Q,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_0_Q,
      O(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_3_UNCONNECTED,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_567,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_560,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_547,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_554
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_560
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT26 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"FAFAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_pack_7
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_547
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT25 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR2,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"6996699669966996"
    )
    port map (
      ADR4 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_554
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT24 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => X"E8E8E8E8"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR0,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR1,
      ADR4 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_pack_5
    );
  overflow_OBUF_overflow_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_581,
      O => overflow_OBUF_0
    );
  overflow_OBUF_overflow_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_pack_6,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_3462
    );
  overflow_OBUF_overflow_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_pack_5,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_3459
    );
  overflow_OBUF_overflow_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_pack_4,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_3456
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"3CC33CC3C33CC33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR3,
      ADR5 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR5,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR1,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR2,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_590
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30 : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y47"
    )
    port map (
      CI => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_27,
      CYINIT => '0',
      CO(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_2_Q,
      DI(1) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_1_Q,
      DI(0) => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_0_Q,
      O(3) => overflow_OBUF_581,
      O(2) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_2_UNCONNECTED,
      O(1) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_1_UNCONNECTED,
      O(0) => NLW_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_O_0_UNCONNECTED,
      S(3) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_590,
      S(2) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_580,
      S(1) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_596,
      S(0) => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_601
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR4,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_580
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT30 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"FAFAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR2,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR4,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_pack_6
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"5AA5A55A5AA5A55A"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR2,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_596
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT29 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"FFAAAA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR3,
      ADR0 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR0,
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR4,
      ADR2 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_pack_5
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR3,
      ADR5 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_601
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT28 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => X"FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR1,
      ADR3 => '1',
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_pack_4
    );
  DIV_DP_Msub_adder1_out_cy_3_DIV_DP_Msub_adder1_out_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_3_Q,
      O => DIV_DP_adder1_out_3_0
    );
  DIV_DP_Msub_adder1_out_cy_3_DIV_DP_Msub_adder1_out_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_2_Q,
      O => DIV_DP_adder1_out_2_0
    );
  DIV_DP_Msub_adder1_out_cy_3_DIV_DP_Msub_adder1_out_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_1_Q,
      O => DIV_DP_adder1_out_1_0
    );
  DIV_DP_Msub_adder1_out_cy_3_DIV_DP_Msub_adder1_out_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_0_Q,
      O => DIV_DP_adder1_out_0_0
    );
  DIV_DP_Msub_adder1_out_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y33",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_3_ADR3,
      ADR5 => DIV_DP_R_B_3_0,
      O => DIV_DP_Msub_adder1_out_lut(3)
    );
  ProtoComp14_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X16Y33"
    )
    port map (
      O => ProtoComp14_CYINITVCC_1
    );
  DIV_DP_Msub_adder1_out_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y33"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITVCC_1,
      CO(3) => DIV_DP_Msub_adder1_out_cy_3_Q_3474,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_0_Q,
      O(3) => DIV_DP_adder1_out_3_Q,
      O(2) => DIV_DP_adder1_out_2_Q,
      O(1) => DIV_DP_adder1_out_1_Q,
      O(0) => DIV_DP_adder1_out_0_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(3),
      S(2) => DIV_DP_Msub_adder1_out_lut(2),
      S(1) => DIV_DP_Msub_adder1_out_lut(1),
      S(0) => DIV_DP_Msub_adder1_out_lut(0)
    );
  DIV_DP_Msub_adder1_out_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y33",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR3,
      O => DIV_DP_Msub_adder1_out_lut(2)
    );
  DIV_DP_Msub_adder1_out_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y33",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR1,
      O => DIV_DP_Msub_adder1_out_lut(1)
    );
  DIV_DP_Msub_adder1_out_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y33",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR5,
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR4,
      O => DIV_DP_Msub_adder1_out_lut(0)
    );
  DIV_DP_Msub_adder1_out_cy_7_DIV_DP_Msub_adder1_out_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_7_Q,
      O => DIV_DP_adder1_out_7_0
    );
  DIV_DP_Msub_adder1_out_cy_7_DIV_DP_Msub_adder1_out_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_6_Q,
      O => DIV_DP_adder1_out_6_0
    );
  DIV_DP_Msub_adder1_out_cy_7_DIV_DP_Msub_adder1_out_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_5_Q,
      O => DIV_DP_adder1_out_5_0
    );
  DIV_DP_Msub_adder1_out_cy_7_DIV_DP_Msub_adder1_out_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_4_Q,
      O => DIV_DP_adder1_out_4_0
    );
  DIV_DP_Msub_adder1_out_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR3,
      O => DIV_DP_Msub_adder1_out_lut(7)
    );
  DIV_DP_Msub_adder1_out_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y34"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_3_Q_3474,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_7_Q_3487,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q,
      O(3) => DIV_DP_adder1_out_7_Q,
      O(2) => DIV_DP_adder1_out_6_Q,
      O(1) => DIV_DP_adder1_out_5_Q,
      O(0) => DIV_DP_adder1_out_4_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(7),
      S(2) => DIV_DP_Msub_adder1_out_lut(6),
      S(1) => DIV_DP_Msub_adder1_out_lut(5),
      S(0) => DIV_DP_Msub_adder1_out_lut(4)
    );
  DIV_DP_Msub_adder1_out_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR3,
      ADR5 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR5,
      O => DIV_DP_Msub_adder1_out_lut(6)
    );
  DIV_DP_Msub_adder1_out_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"F0F0F0F00F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => DIV_DP_R_A(36),
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_5_ADR2,
      O => DIV_DP_Msub_adder1_out_lut(5)
    );
  DIV_DP_Msub_adder1_out_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR3,
      O => DIV_DP_Msub_adder1_out_lut(4)
    );
  DIV_DP_Msub_adder1_out_cy_11_DIV_DP_Msub_adder1_out_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_11_Q,
      O => DIV_DP_adder1_out_11_0
    );
  DIV_DP_Msub_adder1_out_cy_11_DIV_DP_Msub_adder1_out_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_10_Q,
      O => DIV_DP_adder1_out_10_0
    );
  DIV_DP_Msub_adder1_out_cy_11_DIV_DP_Msub_adder1_out_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_9_Q,
      O => DIV_DP_adder1_out_9_0
    );
  DIV_DP_Msub_adder1_out_cy_11_DIV_DP_Msub_adder1_out_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_8_Q,
      O => DIV_DP_adder1_out_8_0
    );
  DIV_DP_Msub_adder1_out_lut_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(11)
    );
  N0_22_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y35"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_7_Q_3487,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_11_Q_3497,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_11_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DIV_DP_adder1_out_11_Q,
      O(2) => DIV_DP_adder1_out_10_Q,
      O(1) => DIV_DP_adder1_out_9_Q,
      O(0) => DIV_DP_adder1_out_8_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(11),
      S(2) => DIV_DP_Msub_adder1_out_lut(10),
      S(1) => DIV_DP_Msub_adder1_out_lut(9),
      S(0) => DIV_DP_Msub_adder1_out_lut(8)
    );
  DIV_DP_Msub_adder1_out_lut_10_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(10)
    );
  N0_23_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(9)
    );
  N0_24_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_8_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(8)
    );
  N0_25_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_A5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_15_DIV_DP_Msub_adder1_out_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_15_Q,
      O => DIV_DP_adder1_out_15_0
    );
  DIV_DP_Msub_adder1_out_cy_15_DIV_DP_Msub_adder1_out_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_14_Q,
      O => DIV_DP_adder1_out_14_0
    );
  DIV_DP_Msub_adder1_out_cy_15_DIV_DP_Msub_adder1_out_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_13_Q,
      O => DIV_DP_adder1_out_13_0
    );
  DIV_DP_Msub_adder1_out_cy_15_DIV_DP_Msub_adder1_out_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_12_Q,
      O => DIV_DP_adder1_out_12_0
    );
  DIV_DP_Msub_adder1_out_lut_15_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(15)
    );
  N0_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y36"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_11_Q_3497,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_15_Q_3506,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_15_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DIV_DP_adder1_out_15_Q,
      O(2) => DIV_DP_adder1_out_14_Q,
      O(1) => DIV_DP_adder1_out_13_Q,
      O(0) => DIV_DP_adder1_out_12_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(15),
      S(2) => DIV_DP_Msub_adder1_out_lut(14),
      S(1) => DIV_DP_Msub_adder1_out_lut(13),
      S(0) => DIV_DP_Msub_adder1_out_lut(12)
    );
  DIV_DP_Msub_adder1_out_lut_14_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(14)
    );
  N0_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_13_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(13)
    );
  N0_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_12_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(12)
    );
  N0_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_A5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_19_DIV_DP_Msub_adder1_out_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_19_Q,
      O => DIV_DP_adder1_out_19_0
    );
  DIV_DP_Msub_adder1_out_cy_19_DIV_DP_Msub_adder1_out_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_18_Q,
      O => DIV_DP_adder1_out_18_0
    );
  DIV_DP_Msub_adder1_out_cy_19_DIV_DP_Msub_adder1_out_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_17_Q,
      O => DIV_DP_adder1_out_17_0
    );
  DIV_DP_Msub_adder1_out_cy_19_DIV_DP_Msub_adder1_out_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_16_Q,
      O => DIV_DP_adder1_out_16_0
    );
  DIV_DP_Msub_adder1_out_lut_19_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(19)
    );
  N0_14_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y37"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_15_Q_3506,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_19_Q_3515,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_19_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DIV_DP_adder1_out_19_Q,
      O(2) => DIV_DP_adder1_out_18_Q,
      O(1) => DIV_DP_adder1_out_17_Q,
      O(0) => DIV_DP_adder1_out_16_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(19),
      S(2) => DIV_DP_Msub_adder1_out_lut(18),
      S(1) => DIV_DP_Msub_adder1_out_lut(17),
      S(0) => DIV_DP_Msub_adder1_out_lut(16)
    );
  DIV_DP_Msub_adder1_out_lut_18_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(18)
    );
  N0_15_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_17_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(17)
    );
  N0_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_16_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(16)
    );
  N0_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_A5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_23_DIV_DP_Msub_adder1_out_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_23_Q,
      O => DIV_DP_adder1_out_23_0
    );
  DIV_DP_Msub_adder1_out_cy_23_DIV_DP_Msub_adder1_out_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_22_Q,
      O => DIV_DP_adder1_out_22_0
    );
  DIV_DP_Msub_adder1_out_cy_23_DIV_DP_Msub_adder1_out_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_21_Q,
      O => DIV_DP_adder1_out_21_0
    );
  DIV_DP_Msub_adder1_out_cy_23_DIV_DP_Msub_adder1_out_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_20_Q,
      O => DIV_DP_adder1_out_20_0
    );
  DIV_DP_Msub_adder1_out_lut_23_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(23)
    );
  N0_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y38"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_19_Q_3515,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_23_Q_3524,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_23_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DIV_DP_adder1_out_23_Q,
      O(2) => DIV_DP_adder1_out_22_Q,
      O(1) => DIV_DP_adder1_out_21_Q,
      O(0) => DIV_DP_adder1_out_20_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(23),
      S(2) => DIV_DP_Msub_adder1_out_lut(22),
      S(1) => DIV_DP_Msub_adder1_out_lut(21),
      S(0) => DIV_DP_Msub_adder1_out_lut(20)
    );
  DIV_DP_Msub_adder1_out_lut_22_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(22)
    );
  N0_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_21_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(21)
    );
  N0_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_20_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(20)
    );
  N0_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_A5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_27_DIV_DP_Msub_adder1_out_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_27_Q,
      O => DIV_DP_adder1_out_27_0
    );
  DIV_DP_Msub_adder1_out_cy_27_DIV_DP_Msub_adder1_out_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_26_Q,
      O => DIV_DP_adder1_out_26_0
    );
  DIV_DP_Msub_adder1_out_cy_27_DIV_DP_Msub_adder1_out_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_25_Q,
      O => DIV_DP_adder1_out_25_0
    );
  DIV_DP_Msub_adder1_out_cy_27_DIV_DP_Msub_adder1_out_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_24_Q,
      O => DIV_DP_adder1_out_24_0
    );
  DIV_DP_Msub_adder1_out_lut_27_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(27)
    );
  N0_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y39"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_23_Q_3524,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_27_Q_3533,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_27_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => DIV_DP_adder1_out_27_Q,
      O(2) => DIV_DP_adder1_out_26_Q,
      O(1) => DIV_DP_adder1_out_25_Q,
      O(0) => DIV_DP_adder1_out_24_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(27),
      S(2) => DIV_DP_Msub_adder1_out_lut(26),
      S(1) => DIV_DP_Msub_adder1_out_lut(25),
      S(0) => DIV_DP_Msub_adder1_out_lut(24)
    );
  DIV_DP_Msub_adder1_out_lut_26_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(26)
    );
  N0_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_25_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(25)
    );
  N0_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_24_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(24)
    );
  N0_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_A5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_31_DIV_DP_Msub_adder1_out_cy_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_30_Q,
      O => DIV_DP_adder1_out_30_0
    );
  DIV_DP_Msub_adder1_out_cy_31_DIV_DP_Msub_adder1_out_cy_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_29_Q,
      O => DIV_DP_adder1_out_29_0
    );
  DIV_DP_Msub_adder1_out_cy_31_DIV_DP_Msub_adder1_out_cy_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_28_Q,
      O => DIV_DP_adder1_out_28_0
    );
  DIV_DP_Msub_adder1_out_lut_31_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_31_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(31)
    );
  N0_2_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_D5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_cy_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y40"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_27_Q_3533,
      CYINIT => '0',
      CO(3) => DIV_DP_Msub_adder1_out_cy_31_Q_3538,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_cy_31_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_cy_31_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_cy_31_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_DIV_DP_Msub_adder1_out_cy_31_O_3_UNCONNECTED,
      O(2) => DIV_DP_adder1_out_30_Q,
      O(1) => DIV_DP_adder1_out_29_Q,
      O(0) => DIV_DP_adder1_out_28_Q,
      S(3) => DIV_DP_Msub_adder1_out_lut(31),
      S(2) => DIV_DP_Msub_adder1_out_lut(30),
      S(1) => DIV_DP_Msub_adder1_out_lut(29),
      S(0) => DIV_DP_Msub_adder1_out_lut(28)
    );
  DIV_DP_Msub_adder1_out_lut_30_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(30)
    );
  N0_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_C5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_29_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(29)
    );
  N0_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_B5LUT_O_UNCONNECTED
    );
  DIV_DP_Msub_adder1_out_lut_28_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2,
      ADR5 => '1',
      O => DIV_DP_Msub_adder1_out_lut(28)
    );
  N0_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y40",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_A5LUT_O_UNCONNECTED
    );
  DIV_DP_adder1_out_32_DIV_DP_adder1_out_32_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_Q,
      O => DIV_DP_adder1_out_32_0
    );
  DIV_DP_Msub_adder1_out_xor_32_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      CI => DIV_DP_Msub_adder1_out_cy_31_Q_3538,
      CYINIT => '0',
      CO(3) => NLW_DIV_DP_Msub_adder1_out_xor_32_CO_3_UNCONNECTED,
      CO(2) => NLW_DIV_DP_Msub_adder1_out_xor_32_CO_2_UNCONNECTED,
      CO(1) => NLW_DIV_DP_Msub_adder1_out_xor_32_CO_1_UNCONNECTED,
      CO(0) => NLW_DIV_DP_Msub_adder1_out_xor_32_CO_0_UNCONNECTED,
      DI(3) => NLW_DIV_DP_Msub_adder1_out_xor_32_DI_3_UNCONNECTED,
      DI(2) => NLW_DIV_DP_Msub_adder1_out_xor_32_DI_2_UNCONNECTED,
      DI(1) => NLW_DIV_DP_Msub_adder1_out_xor_32_DI_1_UNCONNECTED,
      DI(0) => NLW_DIV_DP_Msub_adder1_out_xor_32_DI_0_UNCONNECTED,
      O(3) => NLW_DIV_DP_Msub_adder1_out_xor_32_O_3_UNCONNECTED,
      O(2) => NLW_DIV_DP_Msub_adder1_out_xor_32_O_2_UNCONNECTED,
      O(1) => NLW_DIV_DP_Msub_adder1_out_xor_32_O_1_UNCONNECTED,
      O(0) => DIV_DP_adder1_out_32_Q,
      S(3) => NLW_DIV_DP_Msub_adder1_out_xor_32_S_3_UNCONNECTED,
      S(2) => NLW_DIV_DP_Msub_adder1_out_xor_32_S_2_UNCONNECTED,
      S(1) => NLW_DIV_DP_Msub_adder1_out_xor_32_S_1_UNCONNECTED,
      S(0) => '1'
    );
  N0_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X16Y41",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_A6LUT_O_UNCONNECTED
    );
  CNT_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_3_CLK,
      I => Mcount_CNT3,
      O => CNT(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_Mcount_CNT_lut_3_ADR4,
      ADR1 => NlwBufferSignal_Mcount_CNT_lut_3_ADR1,
      ADR5 => '1',
      O => Mcount_CNT_lut(3)
    );
  mem_datain_0_OBUF_1_31_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_31_D5LUT_O_UNCONNECTED
    );
  CNT_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_2_CLK,
      I => Mcount_CNT2,
      O => CNT(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y31"
    )
    port map (
      CI => '0',
      CYINIT => NlwBufferSignal_Mcount_CNT_cy_3_CYINIT,
      CO(3) => Mcount_CNT_cy(3),
      CO(2) => NLW_Mcount_CNT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_CNT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_CNT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_CNT3,
      O(2) => Mcount_CNT2,
      O(1) => Mcount_CNT1,
      O(0) => Mcount_CNT,
      S(3) => Mcount_CNT_lut(3),
      S(2) => Mcount_CNT_lut(2),
      S(1) => Mcount_CNT_lut(1),
      S(0) => Mcount_CNT_lut(0)
    );
  Mcount_CNT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => CNT(2),
      ADR3 => NlwBufferSignal_Mcount_CNT_lut_2_ADR3,
      ADR5 => '1',
      O => Mcount_CNT_lut(2)
    );
  mem_datain_0_OBUF_1_30_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_30_C5LUT_O_UNCONNECTED
    );
  CNT_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_1_CLK,
      I => Mcount_CNT1,
      O => CNT(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => CNT(1),
      ADR1 => NlwBufferSignal_Mcount_CNT_lut_1_ADR1,
      ADR5 => '1',
      O => Mcount_CNT_lut(1)
    );
  mem_datain_0_OBUF_1_29_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_29_B5LUT_O_UNCONNECTED
    );
  CNT_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_0_CLK,
      I => Mcount_CNT,
      O => CNT(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_Mcount_CNT_lut_0_ADR4,
      ADR3 => NlwBufferSignal_Mcount_CNT_lut_0_ADR3,
      ADR5 => '1',
      O => Mcount_CNT_lut(0)
    );
  mem_datain_0_OBUF_1_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_28_A5LUT_O_UNCONNECTED
    );
  CNT_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_7_CLK,
      I => Mcount_CNT7,
      O => CNT(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"CCCCCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => CNT(7),
      ADR4 => '1',
      ADR1 => NlwBufferSignal_Mcount_CNT_lut_7_ADR1,
      O => Mcount_CNT_lut(7)
    );
  CNT_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_6_CLK,
      I => Mcount_CNT6,
      O => CNT(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y32"
    )
    port map (
      CI => Mcount_CNT_cy(3),
      CYINIT => '0',
      CO(3) => NLW_Mcount_CNT_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_CNT_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_CNT_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_CNT_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_CNT_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_CNT7,
      O(2) => Mcount_CNT6,
      O(1) => Mcount_CNT5,
      O(0) => Mcount_CNT4,
      S(3) => Mcount_CNT_lut(7),
      S(2) => Mcount_CNT_lut(6),
      S(1) => Mcount_CNT_lut(5),
      S(0) => Mcount_CNT_lut(4)
    );
  Mcount_CNT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => CNT(6),
      ADR1 => NlwBufferSignal_Mcount_CNT_lut_6_ADR1,
      ADR5 => '1',
      O => Mcount_CNT_lut(6)
    );
  mem_datain_0_OBUF_1_34_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_34_C5LUT_O_UNCONNECTED
    );
  CNT_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_5_CLK,
      I => Mcount_CNT5,
      O => CNT(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => CNT(5),
      ADR2 => NlwBufferSignal_Mcount_CNT_lut_5_ADR2,
      ADR5 => '1',
      O => Mcount_CNT_lut(5)
    );
  mem_datain_0_OBUF_1_33_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_33_B5LUT_O_UNCONNECTED
    );
  CNT_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => load_CNT_IBUF_0,
      CLK => NlwBufferSignal_CNT_4_CLK,
      I => Mcount_CNT4,
      O => CNT(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_CNT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Mcount_CNT_lut_4_ADR4,
      ADR2 => NlwBufferSignal_Mcount_CNT_lut_4_ADR2,
      ADR5 => '1',
      O => Mcount_CNT_lut(4)
    );
  mem_datain_0_OBUF_1_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_32_A5LUT_O_UNCONNECTED
    );
  R_X_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_3_CLK,
      I => Mcount_R_X3,
      O => R_X(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_3_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_X_lut_3_ADR4,
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_3_ADR2,
      ADR5 => '1',
      O => Mcount_R_X_lut(3)
    );
  mem_datain_0_OBUF_1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_9_D5LUT_O_UNCONNECTED
    );
  R_X_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_2_CLK,
      I => Mcount_R_X2,
      O => R_X(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y22"
    )
    port map (
      CI => '0',
      CYINIT => NlwBufferSignal_Mcount_R_X_cy_3_CYINIT,
      CO(3) => Mcount_R_X_cy_3_Q_3558,
      CO(2) => NLW_Mcount_R_X_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_X_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_X_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_X3,
      O(2) => Mcount_R_X2,
      O(1) => Mcount_R_X1,
      O(0) => Mcount_R_X,
      S(3) => Mcount_R_X_lut(3),
      S(2) => Mcount_R_X_lut(2),
      S(1) => Mcount_R_X_lut(1),
      S(0) => Mcount_R_X_lut(0)
    );
  Mcount_R_X_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FFF000F0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_2_ADR3,
      ADR4 => R_X(2),
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_2_ADR2,
      ADR5 => '1',
      O => Mcount_R_X_lut(2)
    );
  mem_datain_0_OBUF_1_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_8_C5LUT_O_UNCONNECTED
    );
  R_X_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_1_CLK,
      I => Mcount_R_X1,
      O => R_X(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"EEEE2222EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_1_ADR1,
      ADR4 => R_X(1),
      ADR0 => NlwBufferSignal_Mcount_R_X_lut_1_ADR0,
      ADR5 => '1',
      O => Mcount_R_X_lut(1)
    );
  mem_datain_0_OBUF_1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_7_B5LUT_O_UNCONNECTED
    );
  R_X_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_0_CLK,
      I => Mcount_R_X,
      O => R_X(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_0_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_X_lut_0_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_0_ADR3,
      ADR5 => '1',
      O => Mcount_R_X_lut(0)
    );
  mem_datain_0_OBUF_1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_6_A5LUT_O_UNCONNECTED
    );
  R_X_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_7_CLK,
      I => Mcount_R_X7,
      O => R_X(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_7_ADR2,
      ADR4 => NlwBufferSignal_Mcount_R_X_lut_7_ADR4,
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_7_ADR1,
      ADR5 => '1',
      O => Mcount_R_X_lut(7)
    );
  mem_datain_0_OBUF_1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_13_D5LUT_O_UNCONNECTED
    );
  R_X_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_6_CLK,
      I => Mcount_R_X6,
      O => R_X(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y23"
    )
    port map (
      CI => Mcount_R_X_cy_3_Q_3558,
      CYINIT => '0',
      CO(3) => Mcount_R_X_cy_7_Q_3567,
      CO(2) => NLW_Mcount_R_X_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_X_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_X_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_X7,
      O(2) => Mcount_R_X6,
      O(1) => Mcount_R_X5,
      O(0) => Mcount_R_X4,
      S(3) => Mcount_R_X_lut(7),
      S(2) => Mcount_R_X_lut(6),
      S(1) => Mcount_R_X_lut(5),
      S(0) => Mcount_R_X_lut(4)
    );
  Mcount_R_X_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_6_ADR2,
      ADR4 => R_X(6),
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_6_ADR3,
      ADR5 => '1',
      O => Mcount_R_X_lut(6)
    );
  mem_datain_0_OBUF_1_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_12_C5LUT_O_UNCONNECTED
    );
  R_X_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_5_CLK,
      I => Mcount_R_X5,
      O => R_X(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_5_ADR3,
      ADR4 => R_X(5),
      ADR0 => NlwBufferSignal_Mcount_R_X_lut_5_ADR0,
      ADR5 => '1',
      O => Mcount_R_X_lut(5)
    );
  mem_datain_0_OBUF_1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_11_B5LUT_O_UNCONNECTED
    );
  R_X_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_4_CLK,
      I => Mcount_R_X4,
      O => R_X(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_4_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_X_lut_4_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_4_ADR3,
      ADR5 => '1',
      O => Mcount_R_X_lut(4)
    );
  mem_datain_0_OBUF_1_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_10_A5LUT_O_UNCONNECTED
    );
  R_X_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_11_CLK,
      I => Mcount_R_X11,
      O => R_X(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FFF0FFF000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => R_X(11),
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_11_ADR3,
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_11_ADR2,
      O => Mcount_R_X_lut(11)
    );
  R_X_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_10_CLK,
      I => Mcount_R_X10,
      O => R_X(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y24"
    )
    port map (
      CI => Mcount_R_X_cy_7_Q_3567,
      CYINIT => '0',
      CO(3) => NLW_Mcount_R_X_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_R_X_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_X_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_X_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_R_X_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_X11,
      O(2) => Mcount_R_X10,
      O(1) => Mcount_R_X9,
      O(0) => Mcount_R_X8,
      S(3) => Mcount_R_X_lut(11),
      S(2) => Mcount_R_X_lut(10),
      S(1) => Mcount_R_X_lut(9),
      S(0) => Mcount_R_X_lut(8)
    );
  Mcount_R_X_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"EEEE4444EEEE4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Mcount_R_X_lut_10_ADR0,
      ADR4 => R_X(10),
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_10_ADR1,
      ADR5 => '1',
      O => Mcount_R_X_lut(10)
    );
  mem_datain_0_OBUF_1_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_16_C5LUT_O_UNCONNECTED
    );
  R_X_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_9_CLK,
      I => Mcount_R_X9,
      O => R_X(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_9_ADR1,
      ADR4 => R_X(9),
      ADR2 => NlwBufferSignal_Mcount_R_X_lut_9_ADR2,
      ADR5 => '1',
      O => Mcount_R_X_lut(9)
    );
  mem_datain_0_OBUF_1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_15_B5LUT_O_UNCONNECTED
    );
  R_X_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_X_IBUF_0,
      CLK => NlwBufferSignal_R_X_8_CLK,
      I => Mcount_R_X8,
      O => R_X(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_X_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_X_lut_8_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_X_lut_8_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_X_lut_8_ADR3,
      ADR5 => '1',
      O => Mcount_R_X_lut(8)
    );
  mem_datain_0_OBUF_1_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_14_A5LUT_O_UNCONNECTED
    );
  R_Y_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_3_CLK,
      I => Mcount_R_Y3,
      O => R_Y(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_3_ADR3,
      ADR4 => NlwBufferSignal_Mcount_R_Y_lut_3_ADR4,
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_3_ADR1,
      ADR5 => '1',
      O => Mcount_R_Y_lut(3)
    );
  mem_datain_0_OBUF_1_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_20_D5LUT_O_UNCONNECTED
    );
  R_Y_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_2_CLK,
      I => Mcount_R_Y2,
      O => R_Y(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y23"
    )
    port map (
      CI => '0',
      CYINIT => NlwBufferSignal_Mcount_R_Y_cy_3_CYINIT,
      CO(3) => Mcount_R_Y_cy_3_Q_3586,
      CO(2) => NLW_Mcount_R_Y_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_Y_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_Y_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_Y3,
      O(2) => Mcount_R_Y2,
      O(1) => Mcount_R_Y1,
      O(0) => Mcount_R_Y,
      S(3) => Mcount_R_Y_lut(3),
      S(2) => Mcount_R_Y_lut(2),
      S(1) => Mcount_R_Y_lut(1),
      S(0) => Mcount_R_Y_lut(0)
    );
  Mcount_R_Y_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FFF000F0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_2_ADR3,
      ADR4 => R_Y(2),
      ADR2 => NlwBufferSignal_Mcount_R_Y_lut_2_ADR2,
      ADR5 => '1',
      O => Mcount_R_Y_lut(2)
    );
  mem_datain_0_OBUF_1_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_19_C5LUT_O_UNCONNECTED
    );
  R_Y_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_1_CLK,
      I => Mcount_R_Y1,
      O => R_Y(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"EEEE4444EEEE4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_1_ADR0,
      ADR4 => R_Y(1),
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_1_ADR1,
      ADR5 => '1',
      O => Mcount_R_Y_lut(1)
    );
  mem_datain_0_OBUF_1_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_18_B5LUT_O_UNCONNECTED
    );
  R_Y_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_0_CLK,
      I => Mcount_R_Y,
      O => R_Y(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_0_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_Y_lut_0_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_0_ADR3,
      ADR5 => '1',
      O => Mcount_R_Y_lut(0)
    );
  mem_datain_0_OBUF_1_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_17_A5LUT_O_UNCONNECTED
    );
  R_Y_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_7_CLK,
      I => Mcount_R_Y7,
      O => R_Y(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"FAFA5050FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_7_ADR0,
      ADR4 => NlwBufferSignal_Mcount_R_Y_lut_7_ADR4,
      ADR2 => NlwBufferSignal_Mcount_R_Y_lut_7_ADR2,
      ADR5 => '1',
      O => Mcount_R_Y_lut(7)
    );
  mem_datain_0_OBUF_1_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_24_D5LUT_O_UNCONNECTED
    );
  R_Y_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_6_CLK,
      I => Mcount_R_Y6,
      O => R_Y(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y24"
    )
    port map (
      CI => Mcount_R_Y_cy_3_Q_3586,
      CYINIT => '0',
      CO(3) => Mcount_R_Y_cy_7_Q_3595,
      CO(2) => NLW_Mcount_R_Y_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_Y_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_Y_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_Y7,
      O(2) => Mcount_R_Y6,
      O(1) => Mcount_R_Y5,
      O(0) => Mcount_R_Y4,
      S(3) => Mcount_R_Y_lut(7),
      S(2) => Mcount_R_Y_lut(6),
      S(1) => Mcount_R_Y_lut(5),
      S(0) => Mcount_R_Y_lut(4)
    );
  Mcount_R_Y_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_6_ADR3,
      ADR4 => R_Y(6),
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_6_ADR0,
      ADR5 => '1',
      O => Mcount_R_Y_lut(6)
    );
  mem_datain_0_OBUF_1_23_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_23_C5LUT_O_UNCONNECTED
    );
  R_Y_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_5_CLK,
      I => Mcount_R_Y5,
      O => R_Y(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_5_ADR3,
      ADR4 => R_Y(5),
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_5_ADR1,
      ADR5 => '1',
      O => Mcount_R_Y_lut(5)
    );
  mem_datain_0_OBUF_1_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_22_B5LUT_O_UNCONNECTED
    );
  R_Y_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_4_CLK,
      I => Mcount_R_Y4,
      O => R_Y(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"FFAA5500FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_4_ADR0,
      ADR4 => NlwBufferSignal_Mcount_R_Y_lut_4_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_4_ADR3,
      ADR5 => '1',
      O => Mcount_R_Y_lut(4)
    );
  mem_datain_0_OBUF_1_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_21_A5LUT_O_UNCONNECTED
    );
  R_Y_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_11_CLK,
      I => Mcount_R_Y11,
      O => R_Y(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"FFCCFFCC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => R_Y(11),
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_11_ADR3,
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_11_ADR1,
      O => Mcount_R_Y_lut(11)
    );
  R_Y_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_10_CLK,
      I => Mcount_R_Y10,
      O => R_Y(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y25"
    )
    port map (
      CI => Mcount_R_Y_cy_7_Q_3595,
      CYINIT => '0',
      CO(3) => NLW_Mcount_R_Y_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_R_Y_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_R_Y_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_R_Y_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_R_Y_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_R_Y11,
      O(2) => Mcount_R_Y10,
      O(1) => Mcount_R_Y9,
      O(0) => Mcount_R_Y8,
      S(3) => Mcount_R_Y_lut(11),
      S(2) => Mcount_R_Y_lut(10),
      S(1) => Mcount_R_Y_lut(9),
      S(0) => Mcount_R_Y_lut(8)
    );
  Mcount_R_Y_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"FAFA0A0AFAFA0A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => NlwBufferSignal_Mcount_R_Y_lut_10_ADR2,
      ADR4 => R_Y(10),
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_10_ADR0,
      ADR5 => '1',
      O => Mcount_R_Y_lut(10)
    );
  mem_datain_0_OBUF_1_27_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_27_C5LUT_O_UNCONNECTED
    );
  R_Y_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_9_CLK,
      I => Mcount_R_Y9,
      O => R_Y(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"EEEE2222EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_9_ADR1,
      ADR4 => R_Y(9),
      ADR0 => NlwBufferSignal_Mcount_R_Y_lut_9_ADR0,
      ADR5 => '1',
      O => Mcount_R_Y_lut(9)
    );
  mem_datain_0_OBUF_1_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_26_B5LUT_O_UNCONNECTED
    );
  R_Y_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => '0'
    )
    port map (
      CE => load_R_Y_IBUF_0,
      CLK => NlwBufferSignal_R_Y_8_CLK,
      I => Mcount_R_Y8,
      O => R_Y(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mcount_R_Y_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_Mcount_R_Y_lut_8_ADR1,
      ADR4 => NlwBufferSignal_Mcount_R_Y_lut_8_ADR4,
      ADR3 => NlwBufferSignal_Mcount_R_Y_lut_8_ADR3,
      ADR5 => '1',
      O => Mcount_R_Y_lut(8)
    );
  mem_datain_0_OBUF_1_25_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y25",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_mem_datain_0_OBUF_1_25_A5LUT_O_UNCONNECTED
    );
  mem_dataout_10_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_10_IBUF_1069,
      I => mem_dataout(10)
    );
  ProtoComp24_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_10_IBUF_1069,
      O => mem_dataout_10_IBUF_0
    );
  mem_dataout_11_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_11_IBUF_1072,
      I => mem_dataout(11)
    );
  ProtoComp24_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_11_IBUF_1072,
      O => mem_dataout_11_IBUF_0
    );
  mem_dataout_12_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_12_IBUF_1075,
      I => mem_dataout(12)
    );
  ProtoComp24_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_12_IBUF_1075,
      O => mem_dataout_12_IBUF_0
    );
  mem_dataout_20_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_20_IBUF_1078,
      I => mem_dataout(20)
    );
  ProtoComp24_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_20_IBUF_1078,
      O => mem_dataout_20_IBUF_0
    );
  mem_dataout_13_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_13_IBUF_1081,
      I => mem_dataout(13)
    );
  ProtoComp24_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_13_IBUF_1081,
      O => mem_dataout_13_IBUF_0
    );
  mem_dataout_21_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_21_IBUF_1084,
      I => mem_dataout(21)
    );
  ProtoComp24_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_21_IBUF_1084,
      O => mem_dataout_21_IBUF_0
    );
  mem_dataout_14_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_14_IBUF_1087,
      I => mem_dataout(14)
    );
  ProtoComp24_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_14_IBUF_1087,
      O => mem_dataout_14_IBUF_0
    );
  mem_dataout_22_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_22_IBUF_1090,
      I => mem_dataout(22)
    );
  ProtoComp24_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_22_IBUF_1090,
      O => mem_dataout_22_IBUF_0
    );
  mem_dataout_30_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_30_IBUF_1093,
      I => mem_dataout(30)
    );
  ProtoComp24_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_30_IBUF_1093,
      O => mem_dataout_30_IBUF_0
    );
  mem_dataout_15_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_15_IBUF_1096,
      I => mem_dataout(15)
    );
  ProtoComp24_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_15_IBUF_1096,
      O => mem_dataout_15_IBUF_0
    );
  mem_dataout_23_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_23_IBUF_1099,
      I => mem_dataout(23)
    );
  ProtoComp24_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_23_IBUF_1099,
      O => mem_dataout_23_IBUF_0
    );
  mem_dataout_31_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_31_IBUF_1102,
      I => mem_dataout(31)
    );
  ProtoComp24_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_31_IBUF_1102,
      O => mem_dataout_31_IBUF_0
    );
  mem_dataout_16_IBUF : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_16_IBUF_1105,
      I => mem_dataout(16)
    );
  ProtoComp24_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_16_IBUF_1105,
      O => mem_dataout_16_IBUF_0
    );
  mem_dataout_24_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_24_IBUF_1108,
      I => mem_dataout(24)
    );
  ProtoComp24_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_24_IBUF_1108,
      O => mem_dataout_24_IBUF_0
    );
  mem_dataout_17_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_17_IBUF_1111,
      I => mem_dataout(17)
    );
  ProtoComp24_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_17_IBUF_1111,
      O => mem_dataout_17_IBUF_0
    );
  mem_dataout_25_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_25_IBUF_1114,
      I => mem_dataout(25)
    );
  ProtoComp24_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_25_IBUF_1114,
      O => mem_dataout_25_IBUF_0
    );
  mem_dataout_18_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_18_IBUF_1117,
      I => mem_dataout(18)
    );
  ProtoComp24_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_18_IBUF_1117,
      O => mem_dataout_18_IBUF_0
    );
  mem_dataout_26_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_26_IBUF_1120,
      I => mem_dataout(26)
    );
  ProtoComp24_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_26_IBUF_1120,
      O => mem_dataout_26_IBUF_0
    );
  mem_dataout_19_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_19_IBUF_1123,
      I => mem_dataout(19)
    );
  ProtoComp24_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_19_IBUF_1123,
      O => mem_dataout_19_IBUF_0
    );
  mem_dataout_27_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_27_IBUF_1126,
      I => mem_dataout(27)
    );
  ProtoComp24_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_27_IBUF_1126,
      O => mem_dataout_27_IBUF_0
    );
  mem_dataout_28_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_28_IBUF_1129,
      I => mem_dataout(28)
    );
  ProtoComp24_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_28_IBUF_1129,
      O => mem_dataout_28_IBUF_0
    );
  mem_dataout_29_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_29_IBUF_1132,
      I => mem_dataout(29)
    );
  ProtoComp24_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_29_IBUF_1132,
      O => mem_dataout_29_IBUF_0
    );
  overflow_OBUF : X_OBUF
    generic map(
      LOC => "PAD255"
    )
    port map (
      I => NlwBufferSignal_overflow_OBUF_I,
      O => overflow
    );
  load_result_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_result_IBUF_1137,
      I => load_result
    );
  ProtoComp24_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_1137,
      O => load_result_IBUF_0
    );
  div_abort_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 240 ps
    )
    port map (
      O => div_abort_IBUF_1140,
      I => div_abort
    );
  ProtoComp24_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 240 ps
    )
    port map (
      I => div_abort_IBUF_1140,
      O => div_abort_IBUF_0
    );
  len_0_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_0_IBUF_1143,
      I => len(0)
    );
  ProtoComp24_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_0_IBUF_1143,
      O => len_0_IBUF_0
    );
  len_1_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_1_IBUF_1146,
      I => len(1)
    );
  ProtoComp24_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_1_IBUF_1146,
      O => len_1_IBUF_0
    );
  len_2_IBUF : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_2_IBUF_1149,
      I => len(2)
    );
  ProtoComp24_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD259",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_2_IBUF_1149,
      O => len_2_IBUF_0
    );
  len_3_IBUF : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_3_IBUF_1152,
      I => len(3)
    );
  ProtoComp24_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD260",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_3_IBUF_1152,
      O => len_3_IBUF_0
    );
  len_4_IBUF : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_4_IBUF_1155,
      I => len(4)
    );
  ProtoComp24_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD261",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_4_IBUF_1155,
      O => len_4_IBUF_0
    );
  len_5_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_5_IBUF_1158,
      I => len(5)
    );
  ProtoComp24_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_5_IBUF_1158,
      O => len_5_IBUF_0
    );
  len_6_IBUF : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_6_IBUF_1161,
      I => len(6)
    );
  ProtoComp24_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD291",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_6_IBUF_1161,
      O => len_6_IBUF_0
    );
  len_7_IBUF : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 240 ps
    )
    port map (
      O => len_7_IBUF_1164,
      I => len(7)
    );
  ProtoComp24_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD292",
      PATHPULSE => 240 ps
    )
    port map (
      I => len_7_IBUF_1164,
      O => len_7_IBUF_0
    );
  division_by_zero_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_division_by_zero_OBUF_I,
      O => division_by_zero
    );
  mem_datain_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD296"
    )
    port map (
      I => '0',
      O => mem_datain(0)
    );
  mem_datain_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD297"
    )
    port map (
      I => '0',
      O => mem_datain(1)
    );
  mem_datain_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD298"
    )
    port map (
      I => '0',
      O => mem_datain(2)
    );
  mem_datain_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD299"
    )
    port map (
      I => '0',
      O => mem_datain(3)
    );
  mem_datain_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD300"
    )
    port map (
      I => '0',
      O => mem_datain(4)
    );
  mem_datain_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD301"
    )
    port map (
      I => '0',
      O => mem_datain(5)
    );
  mem_datain_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD302"
    )
    port map (
      I => '0',
      O => mem_datain(6)
    );
  mem_datain_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD303"
    )
    port map (
      I => '0',
      O => mem_datain(7)
    );
  mem_datain_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD304"
    )
    port map (
      I => '0',
      O => mem_datain(8)
    );
  mem_datain_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD305"
    )
    port map (
      I => '0',
      O => mem_datain(9)
    );
  ptr1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_0_IBUF_1189,
      I => ptr1(0)
    );
  ProtoComp24_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_0_IBUF_1189,
      O => ptr1_0_IBUF_0
    );
  ptr1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_1_IBUF_1192,
      I => ptr1(1)
    );
  ProtoComp24_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_1_IBUF_1192,
      O => ptr1_1_IBUF_0
    );
  ptr1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_2_IBUF_1195,
      I => ptr1(2)
    );
  ProtoComp24_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_2_IBUF_1195,
      O => ptr1_2_IBUF_0
    );
  ptr1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_3_IBUF_1198,
      I => ptr1(3)
    );
  ProtoComp24_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_3_IBUF_1198,
      O => ptr1_3_IBUF_0
    );
  ptr2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_0_IBUF_1201,
      I => ptr2(0)
    );
  ProtoComp24_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_0_IBUF_1201,
      O => ptr2_0_IBUF_0
    );
  ptr1_4_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_4_IBUF_1204,
      I => ptr1(4)
    );
  ProtoComp24_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_4_IBUF_1204,
      O => ptr1_4_IBUF_0
    );
  ptr2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_1_IBUF_1207,
      I => ptr2(1)
    );
  ProtoComp24_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_1_IBUF_1207,
      O => ptr2_1_IBUF_0
    );
  ptr1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_5_IBUF_1210,
      I => ptr1(5)
    );
  ProtoComp24_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_5_IBUF_1210,
      O => ptr1_5_IBUF_0
    );
  ptr2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_2_IBUF_1213,
      I => ptr2(2)
    );
  ProtoComp24_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_2_IBUF_1213,
      O => ptr2_2_IBUF_0
    );
  ptr1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_6_IBUF_1216,
      I => ptr1(6)
    );
  ProtoComp24_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_6_IBUF_1216,
      O => ptr1_6_IBUF_0
    );
  ptr2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_3_IBUF_1219,
      I => ptr2(3)
    );
  ProtoComp24_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_3_IBUF_1219,
      O => ptr2_3_IBUF_0
    );
  ptr1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_7_IBUF_1222,
      I => ptr1(7)
    );
  ProtoComp24_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_7_IBUF_1222,
      O => ptr1_7_IBUF_0
    );
  ptr2_4_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_4_IBUF_1225,
      I => ptr2(4)
    );
  ProtoComp24_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_4_IBUF_1225,
      O => ptr2_4_IBUF_0
    );
  ptr1_8_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_8_IBUF_1228,
      I => ptr1(8)
    );
  ProtoComp24_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_8_IBUF_1228,
      O => ptr1_8_IBUF_0
    );
  ptr2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_5_IBUF_1231,
      I => ptr2(5)
    );
  ProtoComp24_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_5_IBUF_1231,
      O => ptr2_5_IBUF_0
    );
  ptr1_9_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_9_IBUF_1234,
      I => ptr1(9)
    );
  ProtoComp24_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_9_IBUF_1234,
      O => ptr1_9_IBUF_0
    );
  ptr2_6_IBUF : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_6_IBUF_1237,
      I => ptr2(6)
    );
  ProtoComp24_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_6_IBUF_1237,
      O => ptr2_6_IBUF_0
    );
  ptr2_7_IBUF : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_7_IBUF_1240,
      I => ptr2(7)
    );
  ProtoComp24_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_7_IBUF_1240,
      O => ptr2_7_IBUF_0
    );
  ptr2_8_IBUF : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_8_IBUF_1243,
      I => ptr2(8)
    );
  ProtoComp24_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_8_IBUF_1243,
      O => ptr2_8_IBUF_0
    );
  ptr2_9_IBUF : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_9_IBUF_1246,
      I => ptr2(9)
    );
  ProtoComp24_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_9_IBUF_1246,
      O => ptr2_9_IBUF_0
    );
  load_R_res_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_R_res_IBUF_1249,
      I => load_R_res
    );
  ProtoComp24_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_res_IBUF_1249,
      O => load_R_res_IBUF_0
    );
  sel_CNT_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      O => sel_CNT_IBUF_1252,
      I => sel_CNT
    );
  ProtoComp24_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_1252,
      O => sel_CNT_IBUF_0
    );
  rst_n_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 240 ps
    )
    port map (
      O => DIV_CTRL_rst_n_inv_non_inverted,
      I => rst_n
    );
  ProtoComp26_IMUX : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 240 ps
    )
    port map (
      I => ProtoComp26_IINV_OUT,
      O => DIV_CTRL_rst_n_inv
    );
  ProtoComp26_IINV : X_INV
    generic map(
      LOC => "PAD158",
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv_non_inverted,
      O => ProtoComp26_IINV_OUT
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD318",
      PATHPULSE => 240 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_1259,
      I => CLK
    );
  ProtoComp24_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD318",
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_1259,
      O => CLK_BUFGP_IBUFG_0
    );
  div_ready_OBUF : X_OBUF
    generic map(
      LOC => "PAD295"
    )
    port map (
      I => NlwBufferSignal_div_ready_OBUF_I,
      O => div_ready
    );
  sel_mem_addr_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 240 ps
    )
    port map (
      O => sel_mem_addr_IBUF_1264,
      I => sel_mem_addr
    );
  ProtoComp24_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_1264,
      O => sel_mem_addr_IBUF_0
    );
  load_R_D1_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD312",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_R_D1_BUFGP_IBUFG_1267,
      I => load_R_D1
    );
  ProtoComp24_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD312",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP_IBUFG_1267,
      O => load_R_D1_BUFGP_IBUFG_0
    );
  load_R_D2_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_R_D2_BUFGP_IBUFG_1270,
      I => load_R_D2
    );
  ProtoComp24_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD314",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP_IBUFG_1270,
      O => load_R_D2_BUFGP_IBUFG_0
    );
  mem_dataout_0_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_0_IBUF_1273,
      I => mem_dataout(0)
    );
  ProtoComp24_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_0_IBUF_1273,
      O => mem_dataout_0_IBUF_0
    );
  mem_dataout_1_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_1_IBUF_1276,
      I => mem_dataout(1)
    );
  ProtoComp24_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_1_IBUF_1276,
      O => mem_dataout_1_IBUF_0
    );
  mem_dataout_2_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_2_IBUF_1279,
      I => mem_dataout(2)
    );
  ProtoComp24_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_2_IBUF_1279,
      O => mem_dataout_2_IBUF_0
    );
  mem_dataout_3_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_3_IBUF_1282,
      I => mem_dataout(3)
    );
  ProtoComp24_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_3_IBUF_1282,
      O => mem_dataout_3_IBUF_0
    );
  mem_dataout_4_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_4_IBUF_1285,
      I => mem_dataout(4)
    );
  ProtoComp24_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_4_IBUF_1285,
      O => mem_dataout_4_IBUF_0
    );
  mem_dataout_5_IBUF : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_5_IBUF_1288,
      I => mem_dataout(5)
    );
  ProtoComp24_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_5_IBUF_1288,
      O => mem_dataout_5_IBUF_0
    );
  mem_dataout_6_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_6_IBUF_1291,
      I => mem_dataout(6)
    );
  ProtoComp24_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_6_IBUF_1291,
      O => mem_dataout_6_IBUF_0
    );
  mem_dataout_7_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_7_IBUF_1294,
      I => mem_dataout(7)
    );
  ProtoComp24_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_7_IBUF_1294,
      O => mem_dataout_7_IBUF_0
    );
  mem_dataout_8_IBUF : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_8_IBUF_1297,
      I => mem_dataout(8)
    );
  ProtoComp24_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_8_IBUF_1297,
      O => mem_dataout_8_IBUF_0
    );
  mem_dataout_9_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 240 ps
    )
    port map (
      O => mem_dataout_9_IBUF_1300,
      I => mem_dataout(9)
    );
  ProtoComp24_IMUX_67 : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_9_IBUF_1300,
      O => mem_dataout_9_IBUF_0
    );
  set_mem_addr_IBUF : X_BUF
    generic map(
      LOC => "PAD316",
      PATHPULSE => 240 ps
    )
    port map (
      O => set_mem_addr_IBUF_1303,
      I => set_mem_addr
    );
  ProtoComp24_IMUX_68 : X_BUF
    generic map(
      LOC => "PAD316",
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_1303,
      O => set_mem_addr_IBUF_0
    );
  sel_R_X_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 240 ps
    )
    port map (
      O => sel_R_X_IBUF_1306,
      I => sel_R_X
    );
  ProtoComp24_IMUX_69 : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_1306,
      O => sel_R_X_IBUF_0
    );
  sel_R_Y_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      O => sel_R_Y_IBUF_1309,
      I => sel_R_Y
    );
  ProtoComp24_IMUX_70 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_1309,
      O => sel_R_Y_IBUF_0
    );
  result_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => NlwBufferSignal_result_10_OBUF_I,
      O => result(10)
    );
  result_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => NlwBufferSignal_result_11_OBUF_I,
      O => result(11)
    );
  result_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_result_12_OBUF_I,
      O => result(12)
    );
  result_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_result_20_OBUF_I,
      O => result(20)
    );
  result_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_result_13_OBUF_I,
      O => result(13)
    );
  result_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_result_21_OBUF_I,
      O => result(21)
    );
  result_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => NlwBufferSignal_result_14_OBUF_I,
      O => result(14)
    );
  result_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_result_22_OBUF_I,
      O => result(22)
    );
  result_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => NlwBufferSignal_result_30_OBUF_I,
      O => result(30)
    );
  result_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => NlwBufferSignal_result_15_OBUF_I,
      O => result(15)
    );
  result_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_result_23_OBUF_I,
      O => result(23)
    );
  result_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD224"
    )
    port map (
      I => NlwBufferSignal_result_31_OBUF_I,
      O => result(31)
    );
  result_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => NlwBufferSignal_result_16_OBUF_I,
      O => result(16)
    );
  result_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_result_24_OBUF_I,
      O => result(24)
    );
  result_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD208"
    )
    port map (
      I => NlwBufferSignal_result_17_OBUF_I,
      O => result(17)
    );
  result_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_result_25_OBUF_I,
      O => result(25)
    );
  result_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_result_18_OBUF_I,
      O => result(18)
    );
  result_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => NlwBufferSignal_result_26_OBUF_I,
      O => result(26)
    );
  result_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_result_19_OBUF_I,
      O => result(19)
    );
  result_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => NlwBufferSignal_result_27_OBUF_I,
      O => result(27)
    );
  result_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => NlwBufferSignal_result_28_OBUF_I,
      O => result(28)
    );
  result_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => NlwBufferSignal_result_29_OBUF_I,
      O => result(29)
    );
  mem_addr_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => mem_addr_10_3676,
      O => mem_addr(10)
    );
  mem_addr_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => mem_addr_11_3677,
      O => mem_addr(11)
    );
  load_L_IBUF : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_L_IBUF_1360,
      I => load_L
    );
  ProtoComp24_IMUX_71 : X_BUF
    generic map(
      LOC => "PAD256",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_L_IBUF_1360,
      O => load_L_IBUF_0
    );
  div_start_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      O => div_start_IBUF_1363,
      I => div_start
    );
  ProtoComp24_IMUX_72 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      I => div_start_IBUF_1363,
      O => div_start_IBUF_0
    );
  load_CNT_IBUF : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_CNT_IBUF_1366,
      I => load_CNT
    );
  ProtoComp24_IMUX_73 : X_BUF
    generic map(
      LOC => "PAD293",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_CNT_IBUF_1366,
      O => load_CNT_IBUF_0
    );
  mem_datain_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD306"
    )
    port map (
      I => '0',
      O => mem_datain(10)
    );
  mem_datain_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD307"
    )
    port map (
      I => '0',
      O => mem_datain(11)
    );
  mem_datain_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD308"
    )
    port map (
      I => '0',
      O => mem_datain(12)
    );
  mem_datain_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD320"
    )
    port map (
      I => '0',
      O => mem_datain(20)
    );
  mem_datain_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD309"
    )
    port map (
      I => '0',
      O => mem_datain(13)
    );
  mem_datain_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD321"
    )
    port map (
      I => '0',
      O => mem_datain(21)
    );
  mem_datain_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD310"
    )
    port map (
      I => '0',
      O => mem_datain(14)
    );
  mem_datain_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD322"
    )
    port map (
      I => '0',
      O => mem_datain(22)
    );
  mem_datain_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD330"
    )
    port map (
      I => '0',
      O => mem_datain(30)
    );
  mem_datain_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD311"
    )
    port map (
      I => '0',
      O => mem_datain(15)
    );
  mem_datain_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD323"
    )
    port map (
      I => '0',
      O => mem_datain(23)
    );
  mem_datain_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD331"
    )
    port map (
      I => '0',
      O => mem_datain(31)
    );
  mem_datain_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD313"
    )
    port map (
      I => '0',
      O => mem_datain(16)
    );
  mem_datain_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD324"
    )
    port map (
      I => '0',
      O => mem_datain(24)
    );
  load_R_X_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_R_X_IBUF_1397,
      I => load_R_X
    );
  ProtoComp24_IMUX_74 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_X_IBUF_1397,
      O => load_R_X_IBUF_0
    );
  load_R_Y_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 240 ps
    )
    port map (
      O => load_R_Y_IBUF_1400,
      I => load_R_Y
    );
  ProtoComp24_IMUX_75 : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_Y_IBUF_1400,
      O => load_R_Y_IBUF_0
    );
  mem_datain_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD315"
    )
    port map (
      I => '0',
      O => mem_datain(17)
    );
  mem_datain_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD325"
    )
    port map (
      I => '0',
      O => mem_datain(25)
    );
  mem_datain_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD317"
    )
    port map (
      I => '0',
      O => mem_datain(18)
    );
  mem_datain_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD326"
    )
    port map (
      I => '0',
      O => mem_datain(26)
    );
  mem_datain_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD319"
    )
    port map (
      I => '0',
      O => mem_datain(19)
    );
  mem_datain_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD327"
    )
    port map (
      I => '0',
      O => mem_datain(27)
    );
  mem_datain_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD328"
    )
    port map (
      I => '0',
      O => mem_datain(28)
    );
  mem_datain_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD329"
    )
    port map (
      I => '0',
      O => mem_datain(29)
    );
  result_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_result_0_OBUF_I,
      O => result(0)
    );
  result_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_result_1_OBUF_I,
      O => result(1)
    );
  result_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_result_2_OBUF_I,
      O => result(2)
    );
  result_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_result_3_OBUF_I,
      O => result(3)
    );
  result_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_result_4_OBUF_I,
      O => result(4)
    );
  result_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_result_5_OBUF_I,
      O => result(5)
    );
  result_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_result_6_OBUF_I,
      O => result(6)
    );
  result_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_result_7_OBUF_I,
      O => result(7)
    );
  result_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => NlwBufferSignal_result_8_OBUF_I,
      O => result(8)
    );
  ptr1_10_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_10_IBUF_1437,
      I => ptr1(10)
    );
  ProtoComp24_IMUX_76 : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_10_IBUF_1437,
      O => ptr1_10_IBUF_0
    );
  mem_addr_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD258"
    )
    port map (
      I => NlwBufferSignal_mem_addr_0_OBUF_I,
      O => mem_addr(0)
    );
  result_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => NlwBufferSignal_result_9_OBUF_I,
      O => result(9)
    );
  ptr1_11_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr1_11_IBUF_1444,
      I => ptr1(11)
    );
  ProtoComp24_IMUX_77 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_11_IBUF_1444,
      O => ptr1_11_IBUF_0
    );
  mem_addr_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => mem_addr_1_3690,
      O => mem_addr(1)
    );
  mem_addr_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => mem_addr_2_3691,
      O => mem_addr(2)
    );
  mem_addr_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => mem_addr_3_3692,
      O => mem_addr(3)
    );
  mem_addr_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => mem_addr_4_3693,
      O => mem_addr(4)
    );
  mem_addr_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => mem_addr_5_3694,
      O => mem_addr(5)
    );
  mem_addr_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => mem_addr_6_3695,
      O => mem_addr(6)
    );
  mem_addr_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => mem_addr_7_3696,
      O => mem_addr(7)
    );
  ptr2_10_IBUF : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_10_IBUF_1461,
      I => ptr2(10)
    );
  ProtoComp24_IMUX_78 : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_10_IBUF_1461,
      O => ptr2_10_IBUF_0
    );
  mem_addr_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => mem_addr_8_3697,
      O => mem_addr(8)
    );
  ptr2_11_IBUF : X_BUF
    generic map(
      LOC => "PAD257",
      PATHPULSE => 240 ps
    )
    port map (
      O => ptr2_11_IBUF_1466,
      I => ptr2(11)
    );
  ProtoComp24_IMUX_79 : X_BUF
    generic map(
      LOC => "PAD257",
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_11_IBUF_1466,
      O => ptr2_11_IBUF_0
    );
  mem_addr_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => mem_addr_9_3698,
      O => mem_addr(9)
    );
  count_eq_L_OBUF : X_OBUF
    generic map(
      LOC => "PAD294"
    )
    port map (
      I => NlwBufferSignal_count_eq_L_OBUF_I,
      O => count_eq_L
    );
  mem_addr_10 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y76",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_10_CLK,
      I => NlwBufferSignal_mem_addr_10_IN,
      O => mem_addr_10_3676,
      RST => GND,
      SET => GND
    );
  mem_addr_11 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y77",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_11_CLK,
      I => NlwBufferSignal_mem_addr_11_IN,
      O => mem_addr_11_3677,
      RST => GND,
      SET => GND
    );
  mem_addr_0 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X1Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_0_CLK,
      I => NlwBufferSignal_mem_addr_0_IN,
      O => mem_addr_0_3688,
      RST => GND,
      SET => GND
    );
  mem_addr_1 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y115",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_1_CLK,
      I => NlwBufferSignal_mem_addr_1_IN,
      O => mem_addr_1_3690,
      RST => GND,
      SET => GND
    );
  mem_addr_2 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y84",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_2_CLK,
      I => NlwBufferSignal_mem_addr_2_IN,
      O => mem_addr_2_3691,
      RST => GND,
      SET => GND
    );
  mem_addr_3 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_3_CLK,
      I => NlwBufferSignal_mem_addr_3_IN,
      O => mem_addr_3_3692,
      RST => GND,
      SET => GND
    );
  mem_addr_4 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y82",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_4_CLK,
      I => NlwBufferSignal_mem_addr_4_IN,
      O => mem_addr_4_3693,
      RST => GND,
      SET => GND
    );
  mem_addr_5 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y83",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_5_CLK,
      I => NlwBufferSignal_mem_addr_5_IN,
      O => mem_addr_5_3694,
      RST => GND,
      SET => GND
    );
  mem_addr_6 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y80",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_6_CLK,
      I => NlwBufferSignal_mem_addr_6_IN,
      O => mem_addr_6_3695,
      RST => GND,
      SET => GND
    );
  mem_addr_7 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y81",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_7_CLK,
      I => NlwBufferSignal_mem_addr_7_IN,
      O => mem_addr_7_3696,
      RST => GND,
      SET => GND
    );
  mem_addr_8 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y78",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_8_CLK,
      I => NlwBufferSignal_mem_addr_8_IN,
      O => mem_addr_8_3697,
      RST => GND,
      SET => GND
    );
  mem_addr_9 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y79",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_mem_addr_9_CLK,
      I => NlwBufferSignal_mem_addr_9_IN,
      O => mem_addr_9_3698,
      RST => GND,
      SET => GND
    );
  set_mem_addr_IBUF_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y14",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_set_mem_addr_IBUF_BUFG_IN,
      O => set_mem_addr_IBUF_BUFG_3700
    );
  load_R_D1_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_load_R_D1_BUFGP_BUFG_IN,
      O => load_R_D1_BUFGP
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y16",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  load_R_D2_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_load_R_D2_BUFGP_BUFG_IN,
      O => load_R_D2_BUFGP
    );
  DIV_DP_R_A_35 : X_FF
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_35_CLK,
      I => DIV_DP_in_R_A(35),
      O => DIV_DP_R_A(35),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A291 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"AAF088C0AAF088C0"
    )
    port map (
      ADR5 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR2,
      O => DIV_DP_in_R_A(35)
    );
  DIV_DP_R_A_34 : X_FF
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_34_CLK,
      I => DIV_DP_in_R_A(34),
      O => DIV_DP_R_A(34),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A281 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"AAAAFF00A0A0F000"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR5,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR3,
      O => DIV_DP_in_R_A(34)
    );
  DIV_DP_R_A_33 : X_FF
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_33_CLK,
      I => DIV_DP_in_R_A(33),
      O => DIV_DP_R_A(33),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A271 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"AAAAFF008888CC00"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR1,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR5,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR3,
      O => DIV_DP_in_R_A(33)
    );
  DIV_DP_R_A_32 : X_FF
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_32_CLK,
      I => DIV_DP_in_R_A(32),
      O => DIV_DP_R_A(32),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A261 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"FA00C8C8FA00C8C8"
    )
    port map (
      ADR5 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR1,
      O => DIV_DP_in_R_A(32)
    );
  DIV_DP_R_cnt_4_DIV_DP_R_cnt_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt_2_pack_16,
      O => DIV_DP_R_cnt(2)
    );
  DIV_DP_R_cnt_4_DIV_DP_R_cnt_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_Mcount_R_cnt_pack_13,
      O => DIV_DP_Mcount_R_cnt
    );
  DIV_DP_R_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_4_CLK,
      I => DIV_DP_Mcount_R_cnt4,
      O => DIV_DP_R_cnt(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mcount_R_cnt41 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFFFFFEF0F0F0F1"
    )
    port map (
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR3,
      ADR5 => DIV_DP_R_cnt(4),
      ADR4 => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR4,
      ADR2 => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR2,
      O => DIV_DP_Mcount_R_cnt4
    );
  DIV_DP_R_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_3_CLK,
      I => DIV_DP_Mcount_R_cnt3,
      O => DIV_DP_R_cnt(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mcount_R_cnt31 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFF000FEEEF111F"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR2,
      ADR5 => DIV_DP_R_cnt(2),
      ADR4 => DIV_DP_R_cnt(3),
      ADR0 => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR0,
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR1,
      O => DIV_DP_Mcount_R_cnt3
    );
  DIV_DP_R_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_1_CLK,
      I => DIV_DP_Mcount_R_cnt1,
      O => DIV_DP_R_cnt(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mcount_R_cnt_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"C3C3C3FFC3C3C3FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4,
      ADR5 => '1',
      O => DIV_DP_Mcount_R_cnt1
    );
  DIV_DP_Mcount_R_cnt21 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"A9A9A9FF"
    )
    port map (
      ADR0 => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR0,
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR4,
      O => DIV_DP_Mcount_R_cnt2
    );
  DIV_DP_R_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_2_CLK,
      I => DIV_DP_Mcount_R_cnt2,
      O => DIV_DP_R_cnt_2_pack_16,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_0_CLK,
      I => NlwBufferSignal_DIV_DP_R_cnt_0_IN,
      O => DIV_DP_R_cnt(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_CTRL_load_R_cnt1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"DDDDDDDDDDDDDDDD"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR0,
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR1,
      ADR5 => '1',
      O => DIV_load_R_cnt
    );
  DIV_DP_Mcount_R_cnt_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"0000EEEE"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1,
      O => DIV_DP_Mcount_R_cnt_pack_13
    );
  DIV_DP_R_B_6_DIV_DP_R_B_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(7),
      O => DIV_DP_R_B_7_0
    );
  DIV_DP_R_B_6_DIV_DP_R_B_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(5),
      O => DIV_DP_R_B_5_0
    );
  DIV_DP_R_B_6_DIV_DP_R_B_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(3),
      O => DIV_DP_R_B_3_0
    );
  DIV_DP_R_B_6_DIV_DP_R_B_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(1),
      O => DIV_DP_R_B_1_0
    );
  DIV_DP_R_B_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_6_CLK,
      I => NlwBufferSignal_DIV_DP_R_B_6_IN,
      O => DIV_DP_R_B(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_L_7_rt_ADR4,
      O => L_7_rt_1603
    );
  DIV_DP_R_B_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_7_CLK,
      I => L_7_rt_1603,
      O => DIV_DP_R_B(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_B_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_4_CLK,
      I => NlwBufferSignal_DIV_DP_R_B_4_IN,
      O => DIV_DP_R_B(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_L_5_rt_ADR0,
      O => L_5_rt_1596
    );
  DIV_DP_R_B_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_5_CLK,
      I => L_5_rt_1596,
      O => DIV_DP_R_B(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_B_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_2_CLK,
      I => NlwBufferSignal_DIV_DP_R_B_2_IN,
      O => DIV_DP_R_B(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_L_3_rt_ADR4,
      O => L_3_rt_1591
    );
  DIV_DP_R_B_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_3_CLK,
      I => L_3_rt_1591,
      O => DIV_DP_R_B(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_B_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_0_CLK,
      I => NlwBufferSignal_DIV_DP_R_B_0_IN,
      O => DIV_DP_R_B(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_L_1_rt_ADR4,
      O => L_1_rt_1586
    );
  DIV_DP_R_B_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_B_0,
      CLK => NlwBufferSignal_DIV_DP_R_B_1_CLK,
      I => L_1_rt_1586,
      O => DIV_DP_R_B(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_39 : X_FF
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_39_CLK,
      I => DIV_DP_in_R_A(39),
      O => DIV_DP_R_A(39),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A331 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"AA88FFCCAA880000"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR0,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR5,
      O => DIV_DP_in_R_A(39)
    );
  DIV_DP_R_A_38 : X_FF
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_38_CLK,
      I => DIV_DP_in_R_A(38),
      O => DIV_DP_R_A(38),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A321 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"AAAAF0F08888C0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR5,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR2,
      O => DIV_DP_in_R_A(38)
    );
  DIV_DP_R_A_37 : X_FF
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_37_CLK,
      I => DIV_DP_in_R_A(37),
      O => DIV_DP_R_A(37),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A311 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"AAF088C0AAF088C0"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR2,
      O => DIV_DP_in_R_A(37)
    );
  DIV_DP_R_A_36 : X_FF
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_36_CLK,
      I => DIV_DP_in_R_A(36),
      O => DIV_DP_R_A(36),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A301 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"C8FAC8FAC800C800"
    )
    port map (
      ADR4 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR1,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR5,
      O => DIV_DP_in_R_A(36)
    );
  DIV_DP_R_A_43 : X_FF
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_43_CLK,
      I => DIV_DP_in_R_A(43),
      O => DIV_DP_R_A(43),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A381 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR3,
      O => DIV_DP_in_R_A(43)
    );
  DIV_DP_R_A_42 : X_FF
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_42_CLK,
      I => DIV_DP_in_R_A(42),
      O => DIV_DP_R_A(42),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A371 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"AAAAAA00F0F0F000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR3,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR5,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR2,
      O => DIV_DP_in_R_A(42)
    );
  DIV_DP_R_A_41 : X_FF
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_41_CLK,
      I => DIV_DP_in_R_A(41),
      O => DIV_DP_R_A(41),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A361 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR4,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR2,
      O => DIV_DP_in_R_A(41)
    );
  DIV_DP_R_A_40 : X_FF
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_40_CLK,
      I => DIV_DP_in_R_A(40),
      O => DIV_DP_R_A(40),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A351 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"F0FFF000A0AAA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR0,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR4,
      O => DIV_DP_in_R_A(40)
    );
  DIV_DP_R_A_47 : X_FF
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_47_CLK,
      I => DIV_DP_in_R_A(47),
      O => DIV_DP_R_A(47),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A421 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR3,
      O => DIV_DP_in_R_A(47)
    );
  DIV_DP_R_A_46 : X_FF
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_46_CLK,
      I => DIV_DP_in_R_A(46),
      O => DIV_DP_R_A(46),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A411 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"AAAAF0F08888C0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR5,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR2,
      O => DIV_DP_in_R_A(46)
    );
  DIV_DP_R_A_45 : X_FF
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_45_CLK,
      I => DIV_DP_in_R_A(45),
      O => DIV_DP_R_A(45),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A401 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"AAF088C0AAF088C0"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR2,
      O => DIV_DP_in_R_A(45)
    );
  DIV_DP_R_A_44 : X_FF
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_44_CLK,
      I => DIV_DP_in_R_A(44),
      O => DIV_DP_R_A(44),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A391 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"E0EEE0EEE000E000"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR2,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR5,
      O => DIV_DP_in_R_A(44)
    );
  DIV_DP_R_A_51 : X_FF
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_51_CLK,
      I => DIV_DP_in_R_A(51),
      O => DIV_DP_R_A(51),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A471 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR3,
      O => DIV_DP_in_R_A(51)
    );
  DIV_DP_R_A_50 : X_FF
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_50_CLK,
      I => DIV_DP_in_R_A(50),
      O => DIV_DP_R_A(50),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A461 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"AAAAAA00F0F0F000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR3,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR5,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR2,
      O => DIV_DP_in_R_A(50)
    );
  DIV_DP_R_A_49 : X_FF
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_49_CLK,
      I => DIV_DP_in_R_A(49),
      O => DIV_DP_R_A(49),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A441 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR4,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR2,
      O => DIV_DP_in_R_A(49)
    );
  DIV_DP_R_A_48 : X_FF
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_48_CLK,
      I => DIV_DP_in_R_A(48),
      O => DIV_DP_R_A(48),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A431 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"F0FFF000A0AAA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR0,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR4,
      O => DIV_DP_in_R_A(48)
    );
  DIV_DP_R_A_55 : X_FF
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_55_CLK,
      I => DIV_DP_in_R_A(55),
      O => DIV_DP_R_A(55),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A511 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR3,
      O => DIV_DP_in_R_A(55)
    );
  DIV_DP_R_A_54 : X_FF
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_54_CLK,
      I => DIV_DP_in_R_A(54),
      O => DIV_DP_R_A(54),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A501 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"AAAAF0F08888C0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR5,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR2,
      O => DIV_DP_in_R_A(54)
    );
  DIV_DP_R_A_53 : X_FF
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_53_CLK,
      I => DIV_DP_in_R_A(53),
      O => DIV_DP_R_A(53),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A491 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"AAF088C0AAF088C0"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR2,
      O => DIV_DP_in_R_A(53)
    );
  DIV_DP_R_A_52 : X_FF
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_52_CLK,
      I => DIV_DP_in_R_A(52),
      O => DIV_DP_R_A(52),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A481 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"E0EEE0EEE000E000"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR2,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR5,
      O => DIV_DP_in_R_A(52)
    );
  DIV_DP_R_A_59 : X_FF
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_59_CLK,
      I => DIV_DP_in_R_A(59),
      O => DIV_DP_R_A(59),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A551 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"A8A8FC00A8A8FC00"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR3,
      O => DIV_DP_in_R_A(59)
    );
  DIV_DP_R_A_58 : X_FF
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_58_CLK,
      I => DIV_DP_in_R_A(58),
      O => DIV_DP_R_A(58),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A541 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"AAAAAA00F0F0F000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR3,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR5,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR2,
      O => DIV_DP_in_R_A(58)
    );
  DIV_DP_R_A_57 : X_FF
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_57_CLK,
      I => DIV_DP_in_R_A(57),
      O => DIV_DP_R_A(57),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A531 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"AAF0AAF0AAF00000"
    )
    port map (
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR4,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR5,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR2,
      O => DIV_DP_in_R_A(57)
    );
  DIV_DP_R_A_56 : X_FF
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_56_CLK,
      I => DIV_DP_in_R_A(56),
      O => DIV_DP_R_A(56),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A521 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"F0FFC0CCF000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR2,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR5,
      O => DIV_DP_in_R_A(56)
    );
  DIV_DP_R_A_62_DIV_DP_R_A_62_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(0),
      O => DIV_DP_R_res_0_0
    );
  DIV_DP_R_A_62_DIV_DP_R_A_62_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_in_R_A_61_pack_8,
      O => DIV_DP_in_R_A(61)
    );
  DIV_DP_R_A_62 : X_FF
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_62_CLK,
      I => DIV_DP_in_R_A(62),
      O => DIV_DP_R_A(62),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A591 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"AA88F0C0AA88F0C0"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(62)
    );
  DIV_DP_Mmux_in_R_res11 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"0000FFCC"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR4,
      ADR0 => '1',
      ADR2 => '1',
      O => DIV_DP_in_R_res(0)
    );
  DIV_DP_R_res_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_0_CLK,
      I => DIV_DP_in_R_res(0),
      O => DIV_DP_R_res(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_61 : X_FF
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_61_CLK,
      I => NlwBufferSignal_DIV_DP_R_A_61_IN,
      O => DIV_DP_R_A(61),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_CTRL_state_ready1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_CTRL_state_ready1_ADR1,
      ADR4 => NlwBufferSignal_DIV_CTRL_state_ready1_ADR4,
      ADR5 => '1',
      O => div_ready_OBUF_3163
    );
  DIV_DP_Mmux_in_R_A581 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"AAF088C0"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR2,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR4,
      O => DIV_DP_in_R_A_61_pack_8
    );
  DIV_DP_R_A_60 : X_FF
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_60_CLK,
      I => DIV_DP_in_R_A(60),
      O => DIV_DP_R_A(60),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A571 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"E0EEE0EEE000E000"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR2,
      ADR5 => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR5,
      O => DIV_DP_in_R_A(60)
    );
  DIV_DP_R_cnt_5_DIV_DP_R_cnt_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  DIV_DP_Mcount_R_cnt5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR4,
      ADR5 => '1',
      O => N14
    );
  DIV_CTRL_state_FSM_FFd1_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"00000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR1,
      ADR2 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2,
      ADR3 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR3,
      ADR4 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4,
      O => N16
    );
  DIV_DP_R_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_cnt,
      CLK => NlwBufferSignal_DIV_DP_R_cnt_5_CLK,
      I => DIV_DP_Mcount_R_cnt5_1832,
      O => DIV_DP_R_cnt(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mcount_R_cnt5 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"0F0F00000F0E0001"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR2,
      ADR5 => DIV_DP_R_cnt(4),
      ADR3 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR3,
      ADR4 => DIV_DP_R_cnt(5),
      ADR1 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR0,
      O => DIV_DP_Mcount_R_cnt5_1832
    );
  L_6_L_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(7),
      O => L_7_0
    );
  L_6_L_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(5),
      O => L_5_0
    );
  L_6_L_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(3),
      O => L_3_0
    );
  L_6_L_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(1),
      O => L_1_0
    );
  L_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_6_CLK,
      I => NlwBufferSignal_L_6_IN,
      O => L(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  len_7_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_len_7_IBUF_rt_ADR4,
      O => len_7_IBUF_rt_1860
    );
  L_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_7_CLK,
      I => len_7_IBUF_rt_1860,
      O => L(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_4_CLK,
      I => NlwBufferSignal_L_4_IN,
      O => L(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  len_5_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_len_5_IBUF_rt_ADR0,
      O => len_5_IBUF_rt_1853
    );
  L_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_5_CLK,
      I => len_5_IBUF_rt_1853,
      O => L(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_2_CLK,
      I => NlwBufferSignal_L_2_IN,
      O => L(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  len_3_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_len_3_IBUF_rt_ADR1,
      O => len_3_IBUF_rt_1848
    );
  L_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_3_CLK,
      I => len_3_IBUF_rt_1848,
      O => L(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  L_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_0_CLK,
      I => NlwBufferSignal_L_0_IN,
      O => L(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  len_1_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_len_1_IBUF_rt_ADR2,
      O => len_1_IBUF_rt_1843
    );
  L_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => load_L_IBUF_0,
      CLK => NlwBufferSignal_L_1_CLK,
      I => len_1_IBUF_rt_1843,
      O => L(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  count_eq_L82 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"8400008421000021"
    )
    port map (
      ADR3 => NlwBufferSignal_count_eq_L82_ADR3,
      ADR4 => NlwBufferSignal_count_eq_L82_ADR4,
      ADR1 => NlwBufferSignal_count_eq_L82_ADR1,
      ADR5 => NlwBufferSignal_count_eq_L82_ADR5,
      ADR0 => NlwBufferSignal_count_eq_L82_ADR0,
      ADR2 => NlwBufferSignal_count_eq_L82_ADR2,
      O => count_eq_L81_3727
    );
  count_eq_L83 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"8000080040000400"
    )
    port map (
      ADR1 => NlwBufferSignal_count_eq_L83_ADR1,
      ADR0 => NlwBufferSignal_count_eq_L83_ADR0,
      ADR5 => NlwBufferSignal_count_eq_L83_ADR5,
      ADR2 => NlwBufferSignal_count_eq_L83_ADR2,
      ADR4 => NlwBufferSignal_count_eq_L83_ADR4,
      ADR3 => NlwBufferSignal_count_eq_L83_ADR3,
      O => count_eq_L_OBUF_3699
    );
  division_by_zero_31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y20",
      INIT => X"FFEEFFEEFFEEFFEE"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => NlwBufferSignal_division_by_zero_31_SW0_ADR1,
      ADR0 => NlwBufferSignal_division_by_zero_31_SW0_ADR0,
      ADR3 => NlwBufferSignal_division_by_zero_31_SW0_ADR3,
      O => N12
    );
  division_by_zero_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X19Y20",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => NlwBufferSignal_division_by_zero_31_ADR1,
      ADR4 => L(2),
      ADR3 => NlwBufferSignal_division_by_zero_31_ADR3,
      ADR2 => NlwBufferSignal_division_by_zero_31_ADR2,
      ADR0 => NlwBufferSignal_division_by_zero_31_ADR0,
      ADR5 => NlwBufferSignal_division_by_zero_31_ADR5,
      O => division_by_zero_OBUF_3637
    );
  count_eq_L81 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"8241000000008241"
    )
    port map (
      ADR5 => NlwBufferSignal_count_eq_L81_ADR5,
      ADR4 => NlwBufferSignal_count_eq_L81_ADR4,
      ADR0 => NlwBufferSignal_count_eq_L81_ADR0,
      ADR3 => NlwBufferSignal_count_eq_L81_ADR3,
      ADR1 => NlwBufferSignal_count_eq_L81_ADR1,
      ADR2 => NlwBufferSignal_count_eq_L81_ADR2,
      O => count_eq_L8
    );
  Mmux_mem_addr_11_R_X_0_MUX_247_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"AFAAA0AAAFAAA0AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR0,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR2,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR3,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR4,
      O => mem_addr_11_R_X_0_MUX_247_o
    );
  result_27 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_27_CLK,
      I => result_27_rstpot_1904,
      O => result_27_3673,
      RST => GND,
      SET => GND
    );
  result_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"FFFFEEFF33002200"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_result_27_rstpot_ADR3,
      ADR1 => NlwBufferSignal_result_27_rstpot_ADR1,
      ADR5 => result_27_3673,
      ADR0 => NlwBufferSignal_result_27_rstpot_ADR0,
      ADR4 => NlwBufferSignal_result_27_rstpot_ADR4,
      O => result_27_rstpot_1904
    );
  result_26 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_26_CLK,
      I => result_26_rstpot_1913,
      O => result_26_3671,
      RST => GND,
      SET => GND
    );
  result_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"FFFF0000FFF3CCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_result_26_rstpot_ADR1,
      ADR5 => NlwBufferSignal_result_26_rstpot_ADR5,
      ADR4 => result_26_3671,
      ADR2 => NlwBufferSignal_result_26_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_26_rstpot_ADR3,
      O => result_26_rstpot_1913
    );
  result_25 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_25_CLK,
      I => result_25_rstpot_1921,
      O => result_25_3669,
      RST => GND,
      SET => GND
    );
  result_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"FF50FF50FF50AF00"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_result_25_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_25_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_25_rstpot_ADR3,
      ADR5 => NlwBufferSignal_result_25_rstpot_ADR5,
      ADR4 => NlwBufferSignal_result_25_rstpot_ADR4,
      O => result_25_rstpot_1921
    );
  result_24 : X_FF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_24_CLK,
      I => result_24_rstpot_1926,
      O => result_24_3667,
      RST => GND,
      SET => GND
    );
  result_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"FFFFFFAF50505000"
    )
    port map (
      ADR1 => '1',
      ADR2 => NlwBufferSignal_result_24_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_24_rstpot_ADR0,
      ADR5 => result_24_3667,
      ADR3 => NlwBufferSignal_result_24_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_24_rstpot_ADR4,
      O => result_24_rstpot_1926
    );
  result_31 : X_FF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_31_CLK,
      I => result_31_rstpot_1933,
      O => result_31_3665,
      RST => GND,
      SET => GND
    );
  result_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => X"FFFFFFF30C0C0C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_result_31_rstpot_ADR1,
      ADR2 => NlwBufferSignal_result_31_rstpot_ADR2,
      ADR5 => result_31_3665,
      ADR3 => NlwBufferSignal_result_31_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_31_rstpot_ADR4,
      O => result_31_rstpot_1933
    );
  result_30 : X_FF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_30_CLK,
      I => result_30_rstpot_1942,
      O => result_30_3662,
      RST => GND,
      SET => GND
    );
  result_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => X"FFFA5550FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_result_30_rstpot_ADR5,
      ADR0 => NlwBufferSignal_result_30_rstpot_ADR0,
      ADR4 => result_30_3662,
      ADR2 => NlwBufferSignal_result_30_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_30_rstpot_ADR3,
      O => result_30_rstpot_1942
    );
  result_29 : X_FF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_29_CLK,
      I => result_29_rstpot_1950,
      O => result_29_3675,
      RST => GND,
      SET => GND
    );
  result_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => X"F0FAF0D8F0FAF0D8"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_result_29_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_29_rstpot_ADR3,
      ADR2 => NlwBufferSignal_result_29_rstpot_ADR2,
      ADR1 => NlwBufferSignal_result_29_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_29_rstpot_ADR4,
      O => result_29_rstpot_1950
    );
  result_28 : X_FF
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_28_CLK,
      I => result_28_rstpot_1955,
      O => result_28_3674,
      RST => GND,
      SET => GND
    );
  result_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y37",
      INIT => X"FFFFEFEF50504040"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_result_28_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_28_rstpot_ADR0,
      ADR5 => result_28_3674,
      ADR1 => NlwBufferSignal_result_28_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_28_rstpot_ADR4,
      O => result_28_rstpot_1955
    );
  DIV_load_R_A_DIV_load_R_A_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_load_R_B,
      O => DIV_load_R_B_0
    );
  DIV_CTRL_load_R_A1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"FFFFFCFCFFFFFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR1,
      ADR4 => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR4,
      ADR2 => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR2,
      ADR5 => '1',
      O => DIV_load_R_A
    );
  DIV_CTRL_load_R_B1 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"00003030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR1,
      ADR4 => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR4,
      ADR2 => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR2,
      O => DIV_load_R_B
    );
  DIV_DP_R_A_27_DIV_DP_R_A_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(27),
      O => DIV_DP_R_res_27_0
    );
  DIV_DP_R_A_27_DIV_DP_R_A_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_26_pack_11,
      O => DIV_DP_R_res(26)
    );
  DIV_DP_R_A_27_DIV_DP_R_A_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_25_pack_9,
      O => DIV_DP_R_res(25)
    );
  DIV_DP_R_A_27_DIV_DP_R_A_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_24_pack_7,
      O => DIV_DP_R_res(24)
    );
  DIV_DP_R_A_27 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_27_CLK,
      I => DIV_DP_in_R_A(27),
      O => DIV_DP_R_A(27),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A201 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"AAAAAACCAAAAAACC"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR1,
      ADR5 => '1',
      O => DIV_DP_in_R_A(27)
    );
  DIV_DP_Mmux_in_R_res201 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"F0F0F000"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR2,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR3,
      ADR0 => '1',
      O => DIV_DP_in_R_res(27)
    );
  DIV_DP_R_res_27 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_27_CLK,
      I => DIV_DP_in_R_res(27),
      O => DIV_DP_R_res(27),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_26 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_26_CLK,
      I => DIV_DP_in_R_A(26),
      O => DIV_DP_R_A(26),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A191 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"CCD8CCD8CCD8CCD8"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(26)
    );
  DIV_DP_Mmux_in_R_res191 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"FFAA0000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR4,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR0,
      ADR2 => '1',
      O => DIV_DP_in_R_res(26)
    );
  DIV_DP_R_res_26 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_26_CLK,
      I => DIV_DP_in_R_res(26),
      O => DIV_DP_R_res_26_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_25 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_25_CLK,
      I => DIV_DP_in_R_A(25),
      O => DIV_DP_R_A(25),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A181 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"CCCCD8D8CCCCD8D8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(25)
    );
  DIV_DP_Mmux_in_R_res181 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"FF00AA00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR3,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR0,
      ADR2 => '1',
      O => DIV_DP_in_R_res(25)
    );
  DIV_DP_R_res_25 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_25_CLK,
      I => DIV_DP_in_R_res(25),
      O => DIV_DP_R_res_25_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_24 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_24_CLK,
      I => DIV_DP_in_R_A(24),
      O => DIV_DP_R_A(24),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A171 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"F0F0E2E2F0F0E2E2"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(24)
    );
  DIV_DP_Mmux_in_R_res171 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR3,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(24)
    );
  DIV_DP_R_res_24 : X_FF
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_24_CLK,
      I => DIV_DP_in_R_res(24),
      O => DIV_DP_R_res_24_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_11_MUX_225_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"FFF0FFFF00F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR5,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR3,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR4,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR2,
      O => mem_addr_11_R_X_11_MUX_225_o
    );
  result_23 : X_FF
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_23_CLK,
      I => result_23_rstpot_2016,
      O => result_23_3664,
      RST => GND,
      SET => GND
    );
  result_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => X"FFFFFFF50A0A0A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_result_23_rstpot_ADR0,
      ADR2 => NlwBufferSignal_result_23_rstpot_ADR2,
      ADR5 => result_23_3664,
      ADR3 => NlwBufferSignal_result_23_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_23_rstpot_ADR4,
      O => result_23_rstpot_2016
    );
  result_22 : X_FF
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_22_CLK,
      I => result_22_rstpot_2025,
      O => result_22_3661,
      RST => GND,
      SET => GND
    );
  result_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => X"FFFF2222FFDD2200"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_result_22_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_22_rstpot_ADR1,
      ADR4 => result_22_3661,
      ADR3 => NlwBufferSignal_result_22_rstpot_ADR3,
      ADR5 => NlwBufferSignal_result_22_rstpot_ADR5,
      O => result_22_rstpot_2025
    );
  result_21 : X_FF
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_21_CLK,
      I => result_21_rstpot_2033,
      O => result_21_3659,
      RST => GND,
      SET => GND
    );
  result_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => X"FFFF0000FFF3CCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => NlwBufferSignal_result_21_rstpot_ADR1,
      ADR5 => NlwBufferSignal_result_21_rstpot_ADR5,
      ADR4 => NlwBufferSignal_result_21_rstpot_ADR4,
      ADR2 => NlwBufferSignal_result_21_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_21_rstpot_ADR3,
      O => result_21_rstpot_2033
    );
  result_20 : X_FF
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_20_CLK,
      I => result_20_rstpot_2038,
      O => result_20_3657,
      RST => GND,
      SET => GND
    );
  result_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y36",
      INIT => X"FFFFFFF50000AAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_result_20_rstpot_ADR0,
      ADR4 => NlwBufferSignal_result_20_rstpot_ADR4,
      ADR5 => result_20_3657,
      ADR3 => NlwBufferSignal_result_20_rstpot_ADR3,
      ADR2 => NlwBufferSignal_result_20_rstpot_ADR2,
      O => result_20_rstpot_2038
    );
  DIV_DP_R_A_31_DIV_DP_R_A_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(31),
      O => DIV_DP_R_res_31_0
    );
  DIV_DP_R_A_31_DIV_DP_R_A_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_30_pack_11,
      O => DIV_DP_R_res(30)
    );
  DIV_DP_R_A_31_DIV_DP_R_A_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_29_pack_9,
      O => DIV_DP_R_res(29)
    );
  DIV_DP_R_A_31_DIV_DP_R_A_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_28_pack_7,
      O => DIV_DP_R_res(28)
    );
  DIV_DP_R_A_31 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_31_CLK,
      I => DIV_DP_in_R_A(31),
      O => DIV_DP_R_A(31),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A251 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"AAAAAACCAAAAAACC"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR1,
      ADR5 => '1',
      O => DIV_DP_in_R_A(31)
    );
  DIV_DP_Mmux_in_R_res251 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"F0F0F000"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR2,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR4,
      ADR0 => '1',
      O => DIV_DP_in_R_res(31)
    );
  DIV_DP_R_res_31 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_31_CLK,
      I => DIV_DP_in_R_res(31),
      O => DIV_DP_R_res(31),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_30 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_30_CLK,
      I => DIV_DP_in_R_A(30),
      O => DIV_DP_R_A(30),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A241 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"AAAAB8B8AAAAB8B8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(30)
    );
  DIV_DP_Mmux_in_R_res241 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR3,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(30)
    );
  DIV_DP_R_res_30 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_30_CLK,
      I => DIV_DP_in_R_res(30),
      O => DIV_DP_R_res_30_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_29 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_29_CLK,
      I => DIV_DP_in_R_A(29),
      O => DIV_DP_R_A(29),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A221 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"AAAAB8B8AAAAB8B8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(29)
    );
  DIV_DP_Mmux_in_R_res221 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR3,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(29)
    );
  DIV_DP_R_res_29 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_29_CLK,
      I => DIV_DP_in_R_res(29),
      O => DIV_DP_R_res_29_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_28 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_28_CLK,
      I => DIV_DP_in_R_A(28),
      O => DIV_DP_R_A(28),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A211 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"F0F0F3C0F0F0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(28)
    );
  DIV_DP_Mmux_in_R_res211 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"AAAA8888"
    )
    port map (
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR0,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR1,
      ADR2 => '1',
      O => DIV_DP_in_R_res(28)
    );
  DIV_DP_R_res_28 : X_FF
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_28_CLK,
      I => DIV_DP_in_R_res(28),
      O => DIV_DP_R_res_28_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_CTRL_state_FSM_FFd2_DIV_CTRL_state_FSM_FFd2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_in_R_A(0),
      O => DIV_DP_in_R_A_0_0
    );
  DIV_CTRL_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X23Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_CLK,
      I => DIV_CTRL_state_FSM_FFd2_In,
      O => DIV_CTRL_state_FSM_FFd2_3135,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_CTRL_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y43",
      INIT => X"0000005000000050"
    )
    port map (
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR3,
      ADR2 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR2,
      ADR4 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR4,
      ADR0 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR0,
      ADR5 => '1',
      O => DIV_CTRL_state_FSM_FFd2_In
    );
  DIV_DP_Mmux_in_R_A11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y43",
      INIT => X"00004444"
    )
    port map (
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR1,
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR0,
      O => DIV_DP_in_R_A(0)
    );
  DIV_CTRL_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X23Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_CLK,
      I => DIV_CTRL_state_FSM_FFd1_In_2096,
      O => DIV_CTRL_state_FSM_FFd1_3136,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_CTRL_state_FSM_FFd1_In : X_LUT6
    generic map(
      LOC => "SLICE_X23Y43",
      INIT => X"3332333322222222"
    )
    port map (
      ADR1 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR1,
      ADR4 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR4,
      ADR2 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR2,
      ADR5 => DIV_CTRL_state_FSM_FFd1_3136,
      ADR3 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR3,
      ADR0 => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR0,
      O => DIV_CTRL_state_FSM_FFd1_In_2096
    );
  result_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_3_CLK,
      I => result_3_rstpot_2107,
      O => result_3_3682,
      RST => GND,
      SET => GND
    );
  result_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"F0FCF0FCF0B8F0B8"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_result_3_rstpot_ADR1,
      ADR3 => NlwBufferSignal_result_3_rstpot_ADR3,
      ADR2 => NlwBufferSignal_result_3_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_3_rstpot_ADR0,
      ADR5 => NlwBufferSignal_result_3_rstpot_ADR5,
      O => result_3_rstpot_2107
    );
  result_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_2_CLK,
      I => result_2_rstpot_2116,
      O => result_2_3681,
      RST => GND,
      SET => GND
    );
  result_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"AFAFAFA0AAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_result_2_rstpot_ADR5,
      ADR2 => NlwBufferSignal_result_2_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_2_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_2_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_2_rstpot_ADR4,
      O => result_2_rstpot_2116
    );
  result_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_1_CLK,
      I => result_1_rstpot_2124,
      O => result_1_3680,
      RST => GND,
      SET => GND
    );
  result_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"FFFD2220FFFD2220"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_result_1_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_1_rstpot_ADR1,
      ADR4 => result_1_3680,
      ADR3 => NlwBufferSignal_result_1_rstpot_ADR3,
      ADR2 => NlwBufferSignal_result_1_rstpot_ADR2,
      O => result_1_rstpot_2124
    );
  result_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_0_CLK,
      I => result_0_rstpot_2129,
      O => result_0_3679,
      RST => GND,
      SET => GND
    );
  result_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y37",
      INIT => X"FFFF2222FFDD2200"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_result_0_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_0_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_0_rstpot_ADR4,
      ADR5 => NlwBufferSignal_result_0_rstpot_ADR5,
      ADR3 => NlwBufferSignal_result_0_rstpot_ADR3,
      O => result_0_rstpot_2129
    );
  result_19 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_19_CLK,
      I => result_19_rstpot_2136,
      O => result_19_3672,
      RST => GND,
      SET => GND
    );
  result_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => X"FFFFFFDD00AA0088"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_result_19_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_19_rstpot_ADR3,
      ADR5 => result_19_3672,
      ADR1 => NlwBufferSignal_result_19_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_19_rstpot_ADR4,
      O => result_19_rstpot_2136
    );
  result_18 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_18_CLK,
      I => result_18_rstpot_2145,
      O => result_18_3670,
      RST => GND,
      SET => GND
    );
  result_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => X"FFFA5550FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_result_18_rstpot_ADR5,
      ADR0 => NlwBufferSignal_result_18_rstpot_ADR0,
      ADR4 => result_18_3670,
      ADR2 => NlwBufferSignal_result_18_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_18_rstpot_ADR3,
      O => result_18_rstpot_2145
    );
  result_17 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_17_CLK,
      I => result_17_rstpot_2153,
      O => result_17_3668,
      RST => GND,
      SET => GND
    );
  result_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => X"F0F0F0F0FFF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_result_17_rstpot_ADR3,
      ADR5 => NlwBufferSignal_result_17_rstpot_ADR5,
      ADR2 => NlwBufferSignal_result_17_rstpot_ADR2,
      ADR1 => NlwBufferSignal_result_17_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_17_rstpot_ADR4,
      O => result_17_rstpot_2153
    );
  result_16 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_16_CLK,
      I => result_16_rstpot_2158,
      O => result_16_3666,
      RST => GND,
      SET => GND
    );
  result_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => X"FFFFFDFD22222020"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_result_16_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_16_rstpot_ADR1,
      ADR5 => result_16_3666,
      ADR2 => NlwBufferSignal_result_16_rstpot_ADR2,
      ADR4 => NlwBufferSignal_result_16_rstpot_ADR4,
      O => result_16_rstpot_2158
    );
  DIV_DP_R_A_3_DIV_DP_R_A_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(3),
      O => DIV_DP_R_res_3_0
    );
  DIV_DP_R_A_3_DIV_DP_R_A_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_2_pack_8,
      O => DIV_DP_R_res(2)
    );
  DIV_DP_R_A_3_DIV_DP_R_A_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_1_pack_6,
      O => DIV_DP_R_res(1)
    );
  DIV_DP_R_A_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_3_CLK,
      I => DIV_DP_in_R_A(3),
      O => DIV_DP_R_A(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A341 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"CCDDCC88CCDDCC88"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(3)
    );
  DIV_DP_Mmux_in_R_res261 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"F0A0F0A0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR2,
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR3,
      ADR4 => '1',
      O => DIV_DP_in_R_res(3)
    );
  DIV_DP_R_res_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_3_CLK,
      I => DIV_DP_in_R_res(3),
      O => DIV_DP_R_res(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_2_CLK,
      I => DIV_DP_in_R_A(2),
      O => DIV_DP_R_A(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A231 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"CDC8CDC8CDC8CDC8"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR2,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(2)
    );
  DIV_DP_Mmux_in_R_res231 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"FAFA0000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR4,
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR2,
      ADR3 => '1',
      O => DIV_DP_in_R_res(2)
    );
  DIV_DP_R_res_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_2_CLK,
      I => DIV_DP_in_R_res(2),
      O => DIV_DP_R_res_2_pack_8,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_1_CLK,
      I => DIV_DP_in_R_A(1),
      O => DIV_DP_R_A(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A121 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"CCCCCCAACCCCCCAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(1)
    );
  DIV_DP_Mmux_in_R_res121 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => X"F0F0F000"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR2,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR3,
      ADR0 => '1',
      O => DIV_DP_in_R_res(1)
    );
  DIV_DP_R_res_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_1_CLK,
      I => DIV_DP_in_R_res(1),
      O => DIV_DP_R_res_1_pack_6,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_0_CLK,
      I => NlwBufferSignal_DIV_DP_R_A_0_IN,
      O => DIV_DP_R_A(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_19_DIV_DP_R_A_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(19),
      O => DIV_DP_R_res_19_0
    );
  DIV_DP_R_A_19_DIV_DP_R_A_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_18_pack_11,
      O => DIV_DP_R_res(18)
    );
  DIV_DP_R_A_19_DIV_DP_R_A_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_17_pack_9,
      O => DIV_DP_R_res(17)
    );
  DIV_DP_R_A_19_DIV_DP_R_A_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_16_pack_7,
      O => DIV_DP_R_res(16)
    );
  DIV_DP_R_A_19 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_19_CLK,
      I => DIV_DP_in_R_A(19),
      O => DIV_DP_R_A(19),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"CCCCDD88CCCCDD88"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR4,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(19)
    );
  DIV_DP_Mmux_in_R_res111 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"F0F0A0A0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR2,
      ADR1 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR4,
      ADR3 => '1',
      O => DIV_DP_in_R_res(19)
    );
  DIV_DP_R_res_19 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_19_CLK,
      I => DIV_DP_in_R_res(19),
      O => DIV_DP_R_res(19),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_18 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_18_CLK,
      I => DIV_DP_in_R_A(18),
      O => DIV_DP_R_A(18),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A101 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"CDCDC8C8CDCDC8C8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(18)
    );
  DIV_DP_Mmux_in_R_res101 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"FA00FA00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR3,
      ADR1 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR0,
      ADR4 => '1',
      O => DIV_DP_in_R_res(18)
    );
  DIV_DP_R_res_18 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_18_CLK,
      I => DIV_DP_in_R_res(18),
      O => DIV_DP_R_res_18_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_17 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_17_CLK,
      I => DIV_DP_in_R_A(17),
      O => DIV_DP_R_A(17),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A91 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"CCCCD8D8CCCCD8D8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(17)
    );
  DIV_DP_Mmux_in_R_res91 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"FF00AA00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR3,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR0,
      ADR2 => '1',
      O => DIV_DP_in_R_res(17)
    );
  DIV_DP_R_res_17 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_17_CLK,
      I => DIV_DP_in_R_res(17),
      O => DIV_DP_R_res_17_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_16 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_16_CLK,
      I => DIV_DP_in_R_A(16),
      O => DIV_DP_R_A(16),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A81 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"F0F0E2E2F0F0E2E2"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR1,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(16)
    );
  DIV_DP_Mmux_in_R_res81 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR3,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(16)
    );
  DIV_DP_R_res_16 : X_FF
    generic map(
      LOC => "SLICE_X24Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_16_CLK,
      I => DIV_DP_in_R_res(16),
      O => DIV_DP_R_res_16_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_11_DIV_DP_R_A_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(11),
      O => DIV_DP_R_res_11_0
    );
  DIV_DP_R_A_11_DIV_DP_R_A_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_10_pack_11,
      O => DIV_DP_R_res(10)
    );
  DIV_DP_R_A_11_DIV_DP_R_A_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_9_pack_9,
      O => DIV_DP_R_res(9)
    );
  DIV_DP_R_A_11_DIV_DP_R_A_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_8_pack_7,
      O => DIV_DP_R_res(8)
    );
  DIV_DP_R_A_11 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_11_CLK,
      I => DIV_DP_in_R_A(11),
      O => DIV_DP_R_A(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A34 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"CCDDCC88CCDDCC88"
    )
    port map (
      ADR2 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(11)
    );
  DIV_DP_Mmux_in_R_res31 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"F0A0F0A0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR2,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR3,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR0,
      ADR4 => '1',
      O => DIV_DP_in_R_res(11)
    );
  DIV_DP_R_res_11 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_11_CLK,
      I => DIV_DP_in_R_res(11),
      O => DIV_DP_R_res(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_10 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_10_CLK,
      I => DIV_DP_in_R_A(10),
      O => DIV_DP_R_A(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"AAACAAACAAACAAAC"
    )
    port map (
      ADR4 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR2,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR1,
      ADR5 => '1',
      O => DIV_DP_in_R_A(10)
    );
  DIV_DP_Mmux_in_R_res21 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"FFF00000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR4,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR2,
      ADR0 => '1',
      O => DIV_DP_in_R_res(10)
    );
  DIV_DP_R_res_10 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_10_CLK,
      I => DIV_DP_in_R_res(10),
      O => DIV_DP_R_res_10_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_9 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_9_CLK,
      I => DIV_DP_in_R_A(9),
      O => DIV_DP_R_A(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A641 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"CCCCD8D8CCCCD8D8"
    )
    port map (
      ADR3 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(9)
    );
  DIV_DP_Mmux_in_R_res321 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"FF00AA00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR3,
      ADR1 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR0,
      ADR2 => '1',
      O => DIV_DP_in_R_res(9)
    );
  DIV_DP_R_res_9 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_9_CLK,
      I => DIV_DP_in_R_res(9),
      O => DIV_DP_R_res_9_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_8 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_8_CLK,
      I => DIV_DP_in_R_A(8),
      O => DIV_DP_R_A(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A631 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"FF00EE22FF00EE22"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR4,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(8)
    );
  DIV_DP_Mmux_in_R_res311 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => X"F0F0C0C0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR2,
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR4,
      ADR3 => '1',
      O => DIV_DP_in_R_res(8)
    );
  DIV_DP_R_res_8 : X_FF
    generic map(
      LOC => "SLICE_X24Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_8_CLK,
      I => DIV_DP_in_R_res(8),
      O => DIV_DP_R_res_8_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_6_R_res_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(7),
      O => R_res_7_0
    );
  R_res_6_R_res_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(5),
      O => R_res_5_0
    );
  R_res_6_R_res_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(3),
      O => R_res_3_0
    );
  R_res_6_R_res_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(1),
      O => R_res_1_0
    );
  R_res_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_6_CLK,
      I => NlwBufferSignal_R_res_6_IN,
      O => R_res(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_6_in_R_res_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_6_in_R_res_7_rt_ADR2,
      O => in_R_res_7_rt_2306
    );
  R_res_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_7_CLK,
      I => in_R_res_7_rt_2306,
      O => R_res(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_4_CLK,
      I => NlwBufferSignal_R_res_4_IN,
      O => R_res(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_6_in_R_res_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_R_res_6_in_R_res_5_rt_ADR3,
      O => in_R_res_5_rt_2299
    );
  R_res_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_5_CLK,
      I => in_R_res_5_rt_2299,
      O => R_res(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_2_CLK,
      I => NlwBufferSignal_R_res_2_IN,
      O => R_res(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_6_in_R_res_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_R_res_6_in_R_res_3_rt_ADR4,
      O => in_R_res_3_rt_2291
    );
  R_res_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_3_CLK,
      I => in_R_res_3_rt_2291,
      O => R_res(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_0_CLK,
      I => NlwBufferSignal_R_res_0_IN,
      O => R_res(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Madd_in_R_res : X_LUT6
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => X"FCFCC0C0FCFCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_ADR4,
      ADR2 => NlwBufferSignal_Madd_in_R_res_ADR2,
      ADR1 => NlwBufferSignal_Madd_in_R_res_ADR1,
      ADR5 => '1',
      O => Madd_in_R_res_3233
    );
  R_res_6_in_R_res_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => NlwBufferSignal_R_res_6_in_R_res_1_rt_ADR3,
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => '1',
      O => in_R_res_1_rt_2283
    );
  R_res_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y46",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_1_CLK,
      I => in_R_res_1_rt_2283,
      O => R_res(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_1_MUX_245_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"FFFF0A0AF5F50000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR4,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR2,
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR0,
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR5,
      O => mem_addr_11_R_X_1_MUX_245_o
    );
  DIV_DP_R_A_7_DIV_DP_R_A_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(7),
      O => DIV_DP_R_res_7_0
    );
  DIV_DP_R_A_7_DIV_DP_R_A_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_6_pack_11,
      O => DIV_DP_R_res(6)
    );
  DIV_DP_R_A_7_DIV_DP_R_A_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_5_pack_9,
      O => DIV_DP_R_res(5)
    );
  DIV_DP_R_A_7_DIV_DP_R_A_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_4_pack_7,
      O => DIV_DP_R_res(4)
    );
  DIV_DP_R_A_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_7_CLK,
      I => DIV_DP_in_R_A(7),
      O => DIV_DP_R_A(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A621 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"AABBAA88AABBAA88"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR0,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(7)
    );
  DIV_DP_Mmux_in_R_res301 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"F0C0F0C0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR2,
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR3,
      ADR4 => '1',
      O => DIV_DP_in_R_res(7)
    );
  DIV_DP_R_res_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_7_CLK,
      I => DIV_DP_in_R_res(7),
      O => DIV_DP_R_res(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_6_CLK,
      I => DIV_DP_in_R_A(6),
      O => DIV_DP_R_A(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A611 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"CCCACCCACCCACCCA"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(6)
    );
  DIV_DP_Mmux_in_R_res291 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"FFF00000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR4,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR2,
      ADR0 => '1',
      O => DIV_DP_in_R_res(6)
    );
  DIV_DP_R_res_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_6_CLK,
      I => DIV_DP_in_R_res(6),
      O => DIV_DP_R_res_6_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_5_CLK,
      I => DIV_DP_in_R_A(5),
      O => DIV_DP_R_A(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A561 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"AAAAACACAAAAACAC"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR1,
      ADR5 => '1',
      O => DIV_DP_in_R_A(5)
    );
  DIV_DP_Mmux_in_R_res281 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"FF00F000"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR3,
      ADR1 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR4,
      ADR0 => '1',
      O => DIV_DP_in_R_res(5)
    );
  DIV_DP_R_res_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_5_CLK,
      I => DIV_DP_in_R_res(5),
      O => DIV_DP_R_res_5_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_4_CLK,
      I => DIV_DP_in_R_A(4),
      O => DIV_DP_R_A(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A451 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"F0F0F3C0F0F0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(4)
    );
  DIV_DP_Mmux_in_R_res271 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => X"AAAA8888"
    )
    port map (
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR0,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR1,
      ADR2 => '1',
      O => DIV_DP_in_R_res(4)
    );
  DIV_DP_R_res_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y42",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_4_CLK,
      I => DIV_DP_in_R_res(4),
      O => DIV_DP_R_res_4_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_23_DIV_DP_R_A_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(23),
      O => DIV_DP_R_res_23_0
    );
  DIV_DP_R_A_23_DIV_DP_R_A_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_22_pack_11,
      O => DIV_DP_R_res(22)
    );
  DIV_DP_R_A_23_DIV_DP_R_A_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_21_pack_9,
      O => DIV_DP_R_res(21)
    );
  DIV_DP_R_A_23_DIV_DP_R_A_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_20_pack_7,
      O => DIV_DP_R_res(20)
    );
  DIV_DP_R_A_23 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_23_CLK,
      I => DIV_DP_in_R_A(23),
      O => DIV_DP_R_A(23),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A161 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"AABBAA88AABBAA88"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR0,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR3,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(23)
    );
  DIV_DP_Mmux_in_R_res161 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"F0C0F0C0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR2,
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR3,
      ADR4 => '1',
      O => DIV_DP_in_R_res(23)
    );
  DIV_DP_R_res_23 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_23_CLK,
      I => DIV_DP_in_R_res(23),
      O => DIV_DP_R_res(23),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_22 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_22_CLK,
      I => DIV_DP_in_R_A(22),
      O => DIV_DP_R_A(22),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A151 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"ABA8ABA8ABA8ABA8"
    )
    port map (
      ADR4 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR0,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR2,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(22)
    );
  DIV_DP_Mmux_in_R_res151 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"FCFC0000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR4,
      ADR3 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR2,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(22)
    );
  DIV_DP_R_res_22 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_22_CLK,
      I => DIV_DP_in_R_res(22),
      O => DIV_DP_R_res_22_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_21 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_21_CLK,
      I => DIV_DP_in_R_A(21),
      O => DIV_DP_R_A(21),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A141 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"AAAAB8B8AAAAB8B8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR0,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR1,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(21)
    );
  DIV_DP_Mmux_in_R_res141 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR3,
      ADR2 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR1,
      ADR0 => '1',
      O => DIV_DP_in_R_res(21)
    );
  DIV_DP_R_res_21 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_21_CLK,
      I => DIV_DP_in_R_res(21),
      O => DIV_DP_R_res_21_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_20_CLK,
      I => DIV_DP_in_R_A(20),
      O => DIV_DP_R_A(20),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A131 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"F0F0F3C0F0F0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(20)
    );
  DIV_DP_Mmux_in_R_res131 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => X"AAAA8888"
    )
    port map (
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR0,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR1,
      ADR2 => '1',
      O => DIV_DP_in_R_res(20)
    );
  DIV_DP_R_res_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y43",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_20_CLK,
      I => DIV_DP_in_R_res(20),
      O => DIV_DP_R_res_20_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_15_DIV_DP_R_A_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(15),
      O => DIV_DP_R_res_15_0
    );
  DIV_DP_R_A_15_DIV_DP_R_A_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_14_pack_11,
      O => DIV_DP_R_res(14)
    );
  DIV_DP_R_A_15_DIV_DP_R_A_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_13_pack_9,
      O => DIV_DP_R_res(13)
    );
  DIV_DP_R_A_15_DIV_DP_R_A_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_12_pack_7,
      O => DIV_DP_R_res(12)
    );
  DIV_DP_R_A_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_15_CLK,
      I => DIV_DP_in_R_A(15),
      O => DIV_DP_R_A(15),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A71 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"AABBAA88AABBAA88"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR0,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR4,
      ADR5 => '1',
      O => DIV_DP_in_R_A(15)
    );
  DIV_DP_Mmux_in_R_res71 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"F0C0F0C0"
    )
    port map (
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR2,
      ADR0 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR3,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR1,
      ADR4 => '1',
      O => DIV_DP_in_R_res(15)
    );
  DIV_DP_R_res_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_15_CLK,
      I => DIV_DP_in_R_res(15),
      O => DIV_DP_R_res(15),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_14 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_14_CLK,
      I => DIV_DP_in_R_A(14),
      O => DIV_DP_R_A(14),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A61 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"CCCACCCACCCACCCA"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR2,
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR0,
      ADR5 => '1',
      O => DIV_DP_in_R_A(14)
    );
  DIV_DP_Mmux_in_R_res61 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"FFF00000"
    )
    port map (
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR4,
      ADR1 => '1',
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR3,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR2,
      ADR0 => '1',
      O => DIV_DP_in_R_res(14)
    );
  DIV_DP_R_res_14 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_14_CLK,
      I => DIV_DP_in_R_res(14),
      O => DIV_DP_R_res_14_pack_11,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_13_CLK,
      I => DIV_DP_in_R_A(13),
      O => DIV_DP_R_A(13),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A56 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"AAAAB8B8AAAAB8B8"
    )
    port map (
      ADR3 => '1',
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR0,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR4,
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR2,
      ADR5 => '1',
      O => DIV_DP_in_R_A(13)
    );
  DIV_DP_Mmux_in_R_res51 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"FF00CC00"
    )
    port map (
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR3,
      ADR0 => '1',
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR1,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR4,
      ADR2 => '1',
      O => DIV_DP_in_R_res(13)
    );
  DIV_DP_R_res_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_13_CLK,
      I => DIV_DP_in_R_res(13),
      O => DIV_DP_R_res_13_pack_9,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_R_A_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_A_12_CLK,
      I => DIV_DP_in_R_A(12),
      O => DIV_DP_R_A(12),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  DIV_DP_Mmux_in_R_A45 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"F0F0F3C0F0F0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR2,
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR1,
      ADR3 => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR3,
      ADR5 => '1',
      O => DIV_DP_in_R_A(12)
    );
  DIV_DP_Mmux_in_R_res41 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => X"AAAA8888"
    )
    port map (
      ADR0 => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR0,
      ADR3 => '1',
      ADR4 => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR4,
      ADR1 => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR1,
      ADR2 => '1',
      O => DIV_DP_in_R_res(12)
    );
  DIV_DP_R_res_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y44",
      INIT => '0'
    )
    port map (
      CE => DIV_load_R_A,
      CLK => NlwBufferSignal_DIV_DP_R_res_12_CLK,
      I => DIV_DP_in_R_res(12),
      O => DIV_DP_R_res_12_pack_7,
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_14_R_res_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(15),
      O => R_res_15_0
    );
  R_res_14_R_res_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(13),
      O => R_res_13_0
    );
  R_res_14_R_res_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(11),
      O => R_res_11_0
    );
  R_res_14_R_res_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(9),
      O => R_res_9_0
    );
  R_res_14 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_14_CLK,
      I => NlwBufferSignal_R_res_14_IN,
      O => R_res(14),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_14_in_R_res_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_14_in_R_res_15_rt_ADR2,
      O => in_R_res_15_rt_2464
    );
  R_res_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_15_CLK,
      I => in_R_res_15_rt_2464,
      O => R_res(15),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_12_CLK,
      I => NlwBufferSignal_R_res_12_IN,
      O => R_res(12),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_14_in_R_res_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_R_res_14_in_R_res_13_rt_ADR3,
      O => in_R_res_13_rt_2457
    );
  R_res_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_13_CLK,
      I => in_R_res_13_rt_2457,
      O => R_res(13),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_10_CLK,
      I => NlwBufferSignal_R_res_10_IN,
      O => R_res(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_14_in_R_res_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_14_in_R_res_11_rt_ADR2,
      O => in_R_res_11_rt_2452
    );
  R_res_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_11_CLK,
      I => in_R_res_11_rt_2452,
      O => R_res(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_8 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_8_CLK,
      I => NlwBufferSignal_R_res_8_IN,
      O => R_res(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_14_in_R_res_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_R_res_14_in_R_res_9_rt_ADR4,
      O => in_R_res_9_rt_2447
    );
  R_res_9 : X_FF
    generic map(
      LOC => "SLICE_X25Y48",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_9_CLK,
      I => in_R_res_9_rt_2447,
      O => R_res(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_30_R_res_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(31),
      O => R_res_31_0
    );
  R_res_30_R_res_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(29),
      O => R_res_29_0
    );
  R_res_30_R_res_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(27),
      O => R_res_27_0
    );
  R_res_30_R_res_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(25),
      O => R_res_25_0
    );
  R_res_30 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_30_CLK,
      I => NlwBufferSignal_R_res_30_IN,
      O => R_res(30),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_res_31_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_res_31_rt_ADR4,
      O => in_R_res_31_rt_2487
    );
  R_res_31 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_31_CLK,
      I => in_R_res_31_rt_2487,
      O => R_res(31),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_28 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_28_CLK,
      I => NlwBufferSignal_R_res_28_IN,
      O => R_res(28),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_30_in_R_res_29_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_R_res_30_in_R_res_29_rt_ADR4,
      O => in_R_res_29_rt_2480
    );
  R_res_29 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_29_CLK,
      I => in_R_res_29_rt_2480,
      O => R_res(29),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_26 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_26_CLK,
      I => NlwBufferSignal_R_res_26_IN,
      O => R_res(26),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_30_in_R_res_27_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_30_in_R_res_27_rt_ADR2,
      O => in_R_res_27_rt_2475
    );
  R_res_27 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_27_CLK,
      I => in_R_res_27_rt_2475,
      O => R_res(27),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_24 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_24_CLK,
      I => NlwBufferSignal_R_res_24_IN,
      O => R_res(24),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_30_in_R_res_25_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_R_res_30_in_R_res_25_rt_ADR3,
      O => in_R_res_25_rt_2470
    );
  R_res_25 : X_FF
    generic map(
      LOC => "SLICE_X25Y49",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_25_CLK,
      I => in_R_res_25_rt_2470,
      O => R_res(25),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_22_R_res_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(23),
      O => R_res_23_0
    );
  R_res_22_R_res_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(21),
      O => R_res_21_0
    );
  R_res_22_R_res_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(19),
      O => R_res_19_0
    );
  R_res_22_R_res_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(17),
      O => R_res_17_0
    );
  R_res_22 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_22_CLK,
      I => NlwBufferSignal_R_res_22_IN,
      O => R_res(22),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_22_in_R_res_23_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_22_in_R_res_23_rt_ADR2,
      O => in_R_res_23_rt_2510
    );
  R_res_23 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_23_CLK,
      I => in_R_res_23_rt_2510,
      O => R_res(23),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_20_CLK,
      I => NlwBufferSignal_R_res_20_IN,
      O => R_res(20),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_22_in_R_res_21_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_R_res_22_in_R_res_21_rt_ADR4,
      O => in_R_res_21_rt_2503
    );
  R_res_21 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_21_CLK,
      I => in_R_res_21_rt_2503,
      O => R_res(21),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_18 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_18_CLK,
      I => NlwBufferSignal_R_res_18_IN,
      O => R_res(18),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_22_in_R_res_19_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_22_in_R_res_19_rt_ADR2,
      O => in_R_res_19_rt_2498
    );
  R_res_19 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_19_CLK,
      I => in_R_res_19_rt_2498,
      O => R_res(19),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_16 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_16_CLK,
      I => NlwBufferSignal_R_res_16_IN,
      O => R_res(16),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_res_22_in_R_res_17_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_R_res_22_in_R_res_17_rt_ADR2,
      O => in_R_res_17_rt_2493
    );
  R_res_17 : X_FF
    generic map(
      LOC => "SLICE_X25Y50",
      INIT => '0'
    )
    port map (
      CE => load_R_res_IBUF_0,
      CLK => NlwBufferSignal_R_res_17_CLK,
      I => in_R_res_17_rt_2493,
      O => R_res(17),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_30_R_D1_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(31),
      O => R_D1_31_0
    );
  R_D1_30_R_D1_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(29),
      O => R_D1_29_0
    );
  R_D1_30_R_D1_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(27),
      O => R_D1_27_0
    );
  R_D1_30_R_D1_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(25),
      O => R_D1_25_0
    );
  R_D1_30 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_30_CLK,
      I => NlwBufferSignal_R_D1_30_IN,
      O => R_D1(30),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_31_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D1_31_rt_ADR2,
      O => in_R_D1_31_rt_2520
    );
  R_D1_31 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_31_CLK,
      I => in_R_D1_31_rt_2520,
      O => R_D1(31),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_28 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_28_CLK,
      I => NlwBufferSignal_R_D1_28_IN,
      O => R_D1(28),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_29_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D1_29_rt_ADR4,
      O => in_R_D1_29_rt_2532
    );
  R_D1_29 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_29_CLK,
      I => in_R_D1_29_rt_2532,
      O => R_D1(29),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_26 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_26_CLK,
      I => NlwBufferSignal_R_D1_26_IN,
      O => R_D1(26),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_27_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D1_27_rt_ADR0,
      O => in_R_D1_27_rt_2530
    );
  R_D1_27 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_27_CLK,
      I => in_R_D1_27_rt_2530,
      O => R_D1(27),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_24 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_24_CLK,
      I => NlwBufferSignal_R_D1_24_IN,
      O => R_D1(24),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_25_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D1_25_rt_ADR3,
      O => in_R_D1_25_rt_2522
    );
  R_D1_25 : X_FF
    generic map(
      LOC => "SLICE_X25Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_25_CLK,
      I => in_R_D1_25_rt_2522,
      O => R_D1(25),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  result_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_11_CLK,
      I => result_11_rstpot_2539,
      O => result_11_3655,
      RST => GND,
      SET => GND
    );
  result_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"FFFF5500EEFF4400"
    )
    port map (
      ADR2 => '1',
      ADR3 => NlwBufferSignal_result_11_rstpot_ADR3,
      ADR0 => NlwBufferSignal_result_11_rstpot_ADR0,
      ADR4 => NlwBufferSignal_result_11_rstpot_ADR4,
      ADR1 => NlwBufferSignal_result_11_rstpot_ADR1,
      ADR5 => NlwBufferSignal_result_11_rstpot_ADR5,
      O => result_11_rstpot_2539
    );
  result_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_10_CLK,
      I => result_10_rstpot_2548,
      O => result_10_3654,
      RST => GND,
      SET => GND
    );
  result_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"AFAFAFA0AAAAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_result_10_rstpot_ADR5,
      ADR2 => NlwBufferSignal_result_10_rstpot_ADR2,
      ADR0 => NlwBufferSignal_result_10_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_10_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_10_rstpot_ADR4,
      O => result_10_rstpot_2548
    );
  result_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_9_CLK,
      I => result_9_rstpot_2556,
      O => result_9_3689,
      RST => GND,
      SET => GND
    );
  result_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"FFFF00AAFFF500A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_result_9_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_9_rstpot_ADR3,
      ADR4 => result_9_3689,
      ADR5 => NlwBufferSignal_result_9_rstpot_ADR5,
      ADR2 => NlwBufferSignal_result_9_rstpot_ADR2,
      O => result_9_rstpot_2556
    );
  result_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_8_CLK,
      I => result_8_rstpot_2561,
      O => result_8_3687,
      RST => GND,
      SET => GND
    );
  result_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"FFFBFFFB44404440"
    )
    port map (
      ADR4 => '1',
      ADR1 => NlwBufferSignal_result_8_rstpot_ADR1,
      ADR0 => NlwBufferSignal_result_8_rstpot_ADR0,
      ADR5 => result_8_3687,
      ADR2 => NlwBufferSignal_result_8_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_8_rstpot_ADR3,
      O => result_8_rstpot_2561
    );
  R_D2_6_R_D2_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(7),
      O => R_D2_7_0
    );
  R_D2_6_R_D2_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(5),
      O => R_D2_5_0
    );
  R_D2_6_R_D2_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(3),
      O => R_D2_3_0
    );
  R_D2_6_R_D2_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(1),
      O => R_D2_1_0
    );
  R_D2_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_6_CLK,
      I => NlwBufferSignal_R_D2_6_IN,
      O => R_D2(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_in_R_D2_7_rt_ADR1,
      O => in_R_D2_7_rt_2571
    );
  R_D2_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_7_CLK,
      I => in_R_D2_7_rt_2571,
      O => R_D2(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_4_CLK,
      I => NlwBufferSignal_R_D2_4_IN,
      O => R_D2(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D2_5_rt_ADR3,
      O => in_R_D2_5_rt_2583
    );
  R_D2_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_5_CLK,
      I => in_R_D2_5_rt_2583,
      O => R_D2(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_2_CLK,
      I => NlwBufferSignal_R_D2_2_IN,
      O => R_D2(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D2_3_rt_ADR2,
      O => in_R_D2_3_rt_2581
    );
  R_D2_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_3_CLK,
      I => in_R_D2_3_rt_2581,
      O => R_D2(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_0_CLK,
      I => NlwBufferSignal_R_D2_0_IN,
      O => R_D2(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D2_1_rt_ADR0,
      O => in_R_D2_1_rt_2573
    );
  R_D2_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_1_CLK,
      I => in_R_D2_1_rt_2573,
      O => R_D2(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_10_MUX_227_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y49",
      INIT => X"FA50FF00FA50FF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR3,
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR0,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR4,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR2,
      O => mem_addr_11_R_X_10_MUX_227_o
    );
  Mmux_mem_addr_11_R_X_9_MUX_229_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y49",
      INIT => X"FFFFCFCF30300000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR5,
      ADR1 => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR1,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR2,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR4,
      O => mem_addr_11_R_X_9_MUX_229_o
    );
  Mmux_mem_addr_11_R_X_7_MUX_233_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y49",
      INIT => X"F2D0F2D0F2D0F2D0"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR2,
      ADR1 => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR1,
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR0,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR3,
      O => mem_addr_11_R_X_7_MUX_233_o
    );
  R_D2_14_R_D2_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(15),
      O => R_D2_15_0
    );
  R_D2_14_R_D2_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(13),
      O => R_D2_13_0
    );
  R_D2_14_R_D2_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(11),
      O => R_D2_11_0
    );
  R_D2_14_R_D2_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(9),
      O => R_D2_9_0
    );
  R_D2_14 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_14_CLK,
      I => NlwBufferSignal_R_D2_14_IN,
      O => R_D2(14),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D2_15_rt_ADR3,
      O => in_R_D2_15_rt_2608
    );
  R_D2_15 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_15_CLK,
      I => in_R_D2_15_rt_2608,
      O => R_D2(15),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_12 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_12_CLK,
      I => NlwBufferSignal_R_D2_12_IN,
      O => R_D2(12),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D2_13_rt_ADR4,
      O => in_R_D2_13_rt_2620
    );
  R_D2_13 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_13_CLK,
      I => in_R_D2_13_rt_2620,
      O => R_D2(13),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_10_CLK,
      I => NlwBufferSignal_R_D2_10_IN,
      O => R_D2(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D2_11_rt_ADR2,
      O => in_R_D2_11_rt_2618
    );
  R_D2_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_11_CLK,
      I => in_R_D2_11_rt_2618,
      O => R_D2(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_8_CLK,
      I => NlwBufferSignal_R_D2_8_IN,
      O => R_D2(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D2_9_rt_ADR0,
      O => in_R_D2_9_rt_2610
    );
  R_D2_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_9_CLK,
      I => in_R_D2_9_rt_2610,
      O => R_D2(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_4_MUX_239_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y51",
      INIT => X"CCCCFCFCCCCC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR1,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR4,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR2,
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR5,
      O => mem_addr_11_R_X_4_MUX_239_o
    );
  Mmux_mem_addr_11_R_X_3_MUX_241_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y51",
      INIT => X"FCFFFCFF30003000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR5,
      ADR1 => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR1,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR3,
      ADR2 => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR2,
      O => mem_addr_11_R_X_3_MUX_241_o
    );
  R_D1_22_R_D1_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(23),
      O => R_D1_23_0
    );
  R_D1_22_R_D1_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(21),
      O => R_D1_21_0
    );
  R_D1_22_R_D1_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(19),
      O => R_D1_19_0
    );
  R_D1_22_R_D1_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(17),
      O => R_D1_17_0
    );
  R_D1_22 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_22_CLK,
      I => NlwBufferSignal_R_D1_22_IN,
      O => R_D1(22),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_23_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D1_23_rt_ADR2,
      O => in_R_D1_23_rt_2640
    );
  R_D1_23 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_23_CLK,
      I => in_R_D1_23_rt_2640,
      O => R_D1(23),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_20 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_20_CLK,
      I => NlwBufferSignal_R_D1_20_IN,
      O => R_D1(20),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_21_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D1_21_rt_ADR4,
      O => in_R_D1_21_rt_2652
    );
  R_D1_21 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_21_CLK,
      I => in_R_D1_21_rt_2652,
      O => R_D1(21),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_18 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_18_CLK,
      I => NlwBufferSignal_R_D1_18_IN,
      O => R_D1(18),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_19_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D1_19_rt_ADR2,
      O => in_R_D1_19_rt_2650
    );
  R_D1_19 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_19_CLK,
      I => in_R_D1_19_rt_2650,
      O => R_D1(19),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_16 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_16_CLK,
      I => NlwBufferSignal_R_D1_16_IN,
      O => R_D1(16),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_17_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D1_17_rt_ADR0,
      O => in_R_D1_17_rt_2642
    );
  R_D1_17 : X_FF
    generic map(
      LOC => "SLICE_X26Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_17_CLK,
      I => in_R_D1_17_rt_2642,
      O => R_D1(17),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_30_R_D2_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(31),
      O => R_D2_31_0
    );
  R_D2_30_R_D2_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(29),
      O => R_D2_29_0
    );
  R_D2_30_R_D2_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(27),
      O => R_D2_27_0
    );
  R_D2_30_R_D2_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(25),
      O => R_D2_25_0
    );
  R_D2_30 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_30_CLK,
      I => NlwBufferSignal_R_D2_30_IN,
      O => R_D2(30),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_31_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_in_R_D2_31_rt_ADR1,
      O => in_R_D2_31_rt_2662
    );
  R_D2_31 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_31_CLK,
      I => in_R_D2_31_rt_2662,
      O => R_D2(31),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_28 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_28_CLK,
      I => NlwBufferSignal_R_D2_28_IN,
      O => R_D2(28),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_29_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D2_29_rt_ADR2,
      O => in_R_D2_29_rt_2674
    );
  R_D2_29 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_29_CLK,
      I => in_R_D2_29_rt_2674,
      O => R_D2(29),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_26 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_26_CLK,
      I => NlwBufferSignal_R_D2_26_IN,
      O => R_D2(26),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_27_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => NlwBufferSignal_in_R_D2_27_rt_ADR1,
      O => in_R_D2_27_rt_2672
    );
  R_D2_27 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_27_CLK,
      I => in_R_D2_27_rt_2672,
      O => R_D2(27),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_24 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_24_CLK,
      I => NlwBufferSignal_R_D2_24_IN,
      O => R_D2(24),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_25_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D2_25_rt_ADR0,
      O => in_R_D2_25_rt_2664
    );
  R_D2_25 : X_FF
    generic map(
      LOC => "SLICE_X26Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_25_CLK,
      I => in_R_D2_25_rt_2664,
      O => R_D2(25),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_2_MUX_243_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y54",
      INIT => X"AAAAAAAAFFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR0,
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR5,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR3,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR4,
      O => mem_addr_11_R_X_2_MUX_243_o
    );
  in_R_D2_19 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_19_CLK,
      I => NlwBufferSignal_in_R_D2_19_IN,
      O => in_R_D2_19_3426,
      RST => GND,
      SET => GND
    );
  in_R_D2_18 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_18_CLK,
      I => NlwBufferSignal_in_R_D2_18_IN,
      O => in_R_D2_18_3422,
      RST => GND,
      SET => GND
    );
  in_R_D2_17 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_17_CLK,
      I => NlwBufferSignal_in_R_D2_17_IN,
      O => in_R_D2_17_3419,
      RST => GND,
      SET => GND
    );
  in_R_D2_16 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_16_CLK,
      I => NlwBufferSignal_in_R_D2_16_IN,
      O => in_R_D2_16_3416,
      RST => GND,
      SET => GND
    );
  in_R_D1_15 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_15_CLK,
      I => NlwBufferSignal_in_R_D1_15_IN,
      O => in_R_D1_15_3412,
      RST => GND,
      SET => GND
    );
  in_R_D1_14 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_14_CLK,
      I => NlwBufferSignal_in_R_D1_14_IN,
      O => in_R_D1_14_3408,
      RST => GND,
      SET => GND
    );
  in_R_D1_13 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_13_CLK,
      I => NlwBufferSignal_in_R_D1_13_IN,
      O => in_R_D1_13_3405,
      RST => GND,
      SET => GND
    );
  in_R_D1_12 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_12_CLK,
      I => NlwBufferSignal_in_R_D1_12_IN,
      O => in_R_D1_12_3402,
      RST => GND,
      SET => GND
    );
  Madd_in_R_res_31_in_R_D2_31_add_24_OUT : X_LUT6
    generic map(
      LOC => "SLICE_X27Y40",
      INIT => X"FFCCCC00FFCCCC00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR4,
      ADR1 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR1,
      ADR3 => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR3,
      O => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_3367
    );
  R_D1_6_R_D1_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(7),
      O => R_D1_7_0
    );
  R_D1_6_R_D1_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(5),
      O => R_D1_5_0
    );
  R_D1_6_R_D1_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(3),
      O => R_D1_3_0
    );
  R_D1_6_R_D1_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(1),
      O => R_D1_1_0
    );
  R_D1_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_6_CLK,
      I => NlwBufferSignal_R_D1_6_IN,
      O => R_D1(6),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D1_7_rt_ADR4,
      O => in_R_D1_7_rt_2711
    );
  R_D1_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_7_CLK,
      I => in_R_D1_7_rt_2711,
      O => R_D1(7),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_4_CLK,
      I => NlwBufferSignal_R_D1_4_IN,
      O => R_D1(4),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D1_5_rt_ADR3,
      O => in_R_D1_5_rt_2723
    );
  R_D1_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_5_CLK,
      I => in_R_D1_5_rt_2723,
      O => R_D1(5),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_2_CLK,
      I => NlwBufferSignal_R_D1_2_IN,
      O => R_D1(2),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D1_3_rt_ADR4,
      O => in_R_D1_3_rt_2721
    );
  R_D1_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_3_CLK,
      I => in_R_D1_3_rt_2721,
      O => R_D1(3),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_0_CLK,
      I => NlwBufferSignal_R_D1_0_IN,
      O => R_D1(0),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D1_1_rt_ADR3,
      O => in_R_D1_1_rt_2713
    );
  R_D1_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_1_CLK,
      I => in_R_D1_1_rt_2713,
      O => R_D1(1),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_7_CLK,
      I => NlwBufferSignal_in_R_D2_7_IN,
      O => in_R_D2_7_3387,
      RST => GND,
      SET => GND
    );
  in_R_D2_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_6_CLK,
      I => NlwBufferSignal_in_R_D2_6_IN,
      O => in_R_D2_6_3383,
      RST => GND,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_6_MUX_235_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => X"BB88AAAABB88AAAA"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR0,
      ADR1 => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR1,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR4,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR3,
      O => mem_addr_11_R_X_6_MUX_235_o
    );
  in_R_D2_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_5_CLK,
      I => NlwBufferSignal_in_R_D2_5_IN,
      O => in_R_D2_5_3380,
      RST => GND,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_5_MUX_237_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => X"FFFFAAFF0000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR5,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR4,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR3,
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR0,
      O => mem_addr_11_R_X_5_MUX_237_o
    );
  in_R_D2_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_4_CLK,
      I => NlwBufferSignal_in_R_D2_4_IN,
      O => in_R_D2_4_3377,
      RST => GND,
      SET => GND
    );
  Mmux_mem_addr_11_R_X_8_MUX_231_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y48",
      INIT => X"AAAAFFAAAAAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR0,
      ADR4 => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR4,
      ADR3 => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR3,
      ADR5 => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR5,
      O => mem_addr_11_R_X_8_MUX_231_o
    );
  R_D1_14_R_D1_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(15),
      O => R_D1_15_0
    );
  R_D1_14_R_D1_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(13),
      O => R_D1_13_0
    );
  R_D1_14_R_D1_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(11),
      O => R_D1_11_0
    );
  R_D1_14_R_D1_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(9),
      O => R_D1_9_0
    );
  R_D1_14 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_14_CLK,
      I => NlwBufferSignal_R_D1_14_IN,
      O => R_D1(14),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D1_15_rt_ADR2,
      O => in_R_D1_15_rt_2757
    );
  R_D1_15 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_15_CLK,
      I => in_R_D1_15_rt_2757,
      O => R_D1(15),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_12 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_12_CLK,
      I => NlwBufferSignal_R_D1_12_IN,
      O => R_D1(12),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D1_13_rt_ADR3,
      O => in_R_D1_13_rt_2769
    );
  R_D1_13 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_13_CLK,
      I => in_R_D1_13_rt_2769,
      O => R_D1(13),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_10 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_10_CLK,
      I => NlwBufferSignal_R_D1_10_IN,
      O => R_D1(10),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D1_11_rt_ADR2,
      O => in_R_D1_11_rt_2767
    );
  R_D1_11 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_11_CLK,
      I => in_R_D1_11_rt_2767,
      O => R_D1(11),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D1_8 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_8_CLK,
      I => NlwBufferSignal_R_D1_8_IN,
      O => R_D1(8),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D1_9_rt_ADR4,
      O => in_R_D1_9_rt_2759
    );
  R_D1_9 : X_FF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D1_9_CLK,
      I => in_R_D1_9_rt_2759,
      O => R_D1(9),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_22_R_D2_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(23),
      O => R_D2_23_0
    );
  R_D2_22_R_D2_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(21),
      O => R_D2_21_0
    );
  R_D2_22_R_D2_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(19),
      O => R_D2_19_0
    );
  R_D2_22_R_D2_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(17),
      O => R_D2_17_0
    );
  R_D2_22 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_22_CLK,
      I => NlwBufferSignal_R_D2_22_IN,
      O => R_D2(22),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_23_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NlwBufferSignal_in_R_D2_23_rt_ADR2,
      O => in_R_D2_23_rt_2779
    );
  R_D2_23 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_23_CLK,
      I => in_R_D2_23_rt_2779,
      O => R_D2(23),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_20 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_20_CLK,
      I => NlwBufferSignal_R_D2_20_IN,
      O => R_D2(20),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_21_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => NlwBufferSignal_in_R_D2_21_rt_ADR3,
      O => in_R_D2_21_rt_2791
    );
  R_D2_21 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_21_CLK,
      I => in_R_D2_21_rt_2791,
      O => R_D2(21),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_18 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_18_CLK,
      I => NlwBufferSignal_R_D2_18_IN,
      O => R_D2(18),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_19_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NlwBufferSignal_in_R_D2_19_rt_ADR0,
      O => in_R_D2_19_rt_2789
    );
  R_D2_19 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_19_CLK,
      I => in_R_D2_19_rt_2789,
      O => R_D2(19),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  R_D2_16 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_16_CLK,
      I => NlwBufferSignal_R_D2_16_IN,
      O => R_D2(16),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D2_17_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => NlwBufferSignal_in_R_D2_17_rt_ADR4,
      O => in_R_D2_17_rt_2781
    );
  R_D2_17 : X_FF
    generic map(
      LOC => "SLICE_X27Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_R_D2_17_CLK,
      I => in_R_D2_17_rt_2781,
      O => R_D2(17),
      RST => DIV_CTRL_rst_n_inv,
      SET => GND
    );
  in_R_D1_27 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_27_CLK,
      I => NlwBufferSignal_in_R_D1_27_IN,
      O => in_R_D1_27_3451,
      RST => GND,
      SET => GND
    );
  in_R_D1_26 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_26_CLK,
      I => NlwBufferSignal_in_R_D1_26_IN,
      O => in_R_D1_26_3447,
      RST => GND,
      SET => GND
    );
  in_R_D1_25 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_25_CLK,
      I => NlwBufferSignal_in_R_D1_25_IN,
      O => in_R_D1_25_3444,
      RST => GND,
      SET => GND
    );
  in_R_D1_24 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_24_CLK,
      I => NlwBufferSignal_in_R_D1_24_IN,
      O => in_R_D1_24_3441,
      RST => GND,
      SET => GND
    );
  in_R_D2_15 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_15_CLK,
      I => NlwBufferSignal_in_R_D2_15_IN,
      O => in_R_D2_15_3413,
      RST => GND,
      SET => GND
    );
  in_R_D2_14 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_14_CLK,
      I => NlwBufferSignal_in_R_D2_14_IN,
      O => in_R_D2_14_3409,
      RST => GND,
      SET => GND
    );
  in_R_D2_13 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_13_CLK,
      I => NlwBufferSignal_in_R_D2_13_IN,
      O => in_R_D2_13_3406,
      RST => GND,
      SET => GND
    );
  in_R_D2_12 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_12_CLK,
      I => NlwBufferSignal_in_R_D2_12_IN,
      O => in_R_D2_12_3403,
      RST => GND,
      SET => GND
    );
  in_R_D2_11 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_11_CLK,
      I => NlwBufferSignal_in_R_D2_11_IN,
      O => in_R_D2_11_3400,
      RST => GND,
      SET => GND
    );
  in_R_D2_10 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_10_CLK,
      I => NlwBufferSignal_in_R_D2_10_IN,
      O => in_R_D2_10_3396,
      RST => GND,
      SET => GND
    );
  in_R_D2_9 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_9_CLK,
      I => NlwBufferSignal_in_R_D2_9_IN,
      O => in_R_D2_9_3393,
      RST => GND,
      SET => GND
    );
  in_R_D2_8 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_8_CLK,
      I => NlwBufferSignal_in_R_D2_8_IN,
      O => in_R_D2_8_3390,
      RST => GND,
      SET => GND
    );
  in_R_D1_11 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_11_CLK,
      I => NlwBufferSignal_in_R_D1_11_IN,
      O => in_R_D1_11_3399,
      RST => GND,
      SET => GND
    );
  in_R_D1_10 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_10_CLK,
      I => NlwBufferSignal_in_R_D1_10_IN,
      O => in_R_D1_10_3395,
      RST => GND,
      SET => GND
    );
  in_R_D1_9 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_9_CLK,
      I => NlwBufferSignal_in_R_D1_9_IN,
      O => in_R_D1_9_3392,
      RST => GND,
      SET => GND
    );
  in_R_D1_8 : X_LATCHE
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_8_CLK,
      I => NlwBufferSignal_in_R_D1_8_IN,
      O => in_R_D1_8_3389,
      RST => GND,
      SET => GND
    );
  result_7 : X_FF
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_7_CLK,
      I => result_7_rstpot_2834,
      O => result_7_3686,
      RST => GND,
      SET => GND
    );
  result_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => X"FFFF2222FFDD2200"
    )
    port map (
      ADR2 => '1',
      ADR0 => NlwBufferSignal_result_7_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_7_rstpot_ADR1,
      ADR4 => NlwBufferSignal_result_7_rstpot_ADR4,
      ADR5 => NlwBufferSignal_result_7_rstpot_ADR5,
      ADR3 => NlwBufferSignal_result_7_rstpot_ADR3,
      O => result_7_rstpot_2834
    );
  result_6 : X_FF
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_6_CLK,
      I => result_6_rstpot_2843,
      O => result_6_3685,
      RST => GND,
      SET => GND
    );
  result_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => X"FFFB0C08FFFB0C08"
    )
    port map (
      ADR5 => '1',
      ADR1 => NlwBufferSignal_result_6_rstpot_ADR1,
      ADR2 => NlwBufferSignal_result_6_rstpot_ADR2,
      ADR4 => result_6_3685,
      ADR0 => NlwBufferSignal_result_6_rstpot_ADR0,
      ADR3 => NlwBufferSignal_result_6_rstpot_ADR3,
      O => result_6_rstpot_2843
    );
  result_5 : X_FF
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_5_CLK,
      I => result_5_rstpot_2851,
      O => result_5_3684,
      RST => GND,
      SET => GND
    );
  result_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => X"FF30FF30FF30CF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_result_5_rstpot_ADR2,
      ADR1 => NlwBufferSignal_result_5_rstpot_ADR1,
      ADR3 => NlwBufferSignal_result_5_rstpot_ADR3,
      ADR5 => NlwBufferSignal_result_5_rstpot_ADR5,
      ADR4 => NlwBufferSignal_result_5_rstpot_ADR4,
      O => result_5_rstpot_2851
    );
  result_4 : X_FF
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_4_CLK,
      I => result_4_rstpot_2856,
      O => result_4_3683,
      RST => GND,
      SET => GND
    );
  result_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => X"FFFFEFEF30302020"
    )
    port map (
      ADR3 => '1',
      ADR2 => NlwBufferSignal_result_4_rstpot_ADR2,
      ADR1 => NlwBufferSignal_result_4_rstpot_ADR1,
      ADR5 => result_4_3683,
      ADR0 => NlwBufferSignal_result_4_rstpot_ADR0,
      ADR4 => NlwBufferSignal_result_4_rstpot_ADR4,
      O => result_4_rstpot_2856
    );
  result_15 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_15_CLK,
      I => result_15_rstpot_2863,
      O => result_15_3663,
      RST => GND,
      SET => GND
    );
  result_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => X"FFFFFFF50A0A0A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => NlwBufferSignal_result_15_rstpot_ADR0,
      ADR2 => NlwBufferSignal_result_15_rstpot_ADR2,
      ADR5 => result_15_3663,
      ADR4 => NlwBufferSignal_result_15_rstpot_ADR4,
      ADR3 => NlwBufferSignal_result_15_rstpot_ADR3,
      O => result_15_rstpot_2863
    );
  result_14 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_14_CLK,
      I => result_14_rstpot_2872,
      O => result_14_3660,
      RST => GND,
      SET => GND
    );
  result_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => X"FFFA5550FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => NlwBufferSignal_result_14_rstpot_ADR5,
      ADR0 => NlwBufferSignal_result_14_rstpot_ADR0,
      ADR4 => result_14_3660,
      ADR2 => NlwBufferSignal_result_14_rstpot_ADR2,
      ADR3 => NlwBufferSignal_result_14_rstpot_ADR3,
      O => result_14_rstpot_2872
    );
  result_13 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_13_CLK,
      I => result_13_rstpot_2880,
      O => result_13_3658,
      RST => GND,
      SET => GND
    );
  result_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => X"FF22FD20FF22FD20"
    )
    port map (
      ADR5 => '1',
      ADR0 => NlwBufferSignal_result_13_rstpot_ADR0,
      ADR1 => NlwBufferSignal_result_13_rstpot_ADR1,
      ADR3 => NlwBufferSignal_result_13_rstpot_ADR3,
      ADR2 => NlwBufferSignal_result_13_rstpot_ADR2,
      ADR4 => NlwBufferSignal_result_13_rstpot_ADR4,
      O => result_13_rstpot_2880
    );
  result_12 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_result_12_CLK,
      I => result_12_rstpot_2885,
      O => result_12_3656,
      RST => GND,
      SET => GND
    );
  result_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => X"FFFFFFCF30303000"
    )
    port map (
      ADR0 => '1',
      ADR2 => NlwBufferSignal_result_12_rstpot_ADR2,
      ADR1 => NlwBufferSignal_result_12_rstpot_ADR1,
      ADR5 => result_12_3656,
      ADR3 => NlwBufferSignal_result_12_rstpot_ADR3,
      ADR4 => NlwBufferSignal_result_12_rstpot_ADR4,
      O => result_12_rstpot_2885
    );
  in_R_D1_31 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_31_CLK,
      I => NlwBufferSignal_in_R_D1_31_IN,
      O => in_R_D1_31_3463,
      RST => GND,
      SET => GND
    );
  in_R_D1_30 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_30_CLK,
      I => NlwBufferSignal_in_R_D1_30_IN,
      O => in_R_D1_30_3460,
      RST => GND,
      SET => GND
    );
  in_R_D1_29 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_29_CLK,
      I => NlwBufferSignal_in_R_D1_29_IN,
      O => in_R_D1_29_3457,
      RST => GND,
      SET => GND
    );
  in_R_D1_28 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_28_CLK,
      I => NlwBufferSignal_in_R_D1_28_IN,
      O => in_R_D1_28_3454,
      RST => GND,
      SET => GND
    );
  in_R_D1_19 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_19_CLK,
      I => NlwBufferSignal_in_R_D1_19_IN,
      O => in_R_D1_19_3425,
      RST => GND,
      SET => GND
    );
  in_R_D1_18 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_18_CLK,
      I => NlwBufferSignal_in_R_D1_18_IN,
      O => in_R_D1_18_3421,
      RST => GND,
      SET => GND
    );
  in_R_D1_17 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_17_CLK,
      I => NlwBufferSignal_in_R_D1_17_IN,
      O => in_R_D1_17_3418,
      RST => GND,
      SET => GND
    );
  in_R_D1_16 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_16_CLK,
      I => NlwBufferSignal_in_R_D1_16_IN,
      O => in_R_D1_16_3415,
      RST => GND,
      SET => GND
    );
  in_R_D1_23 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_23_CLK,
      I => NlwBufferSignal_in_R_D1_23_IN,
      O => in_R_D1_23_3438,
      RST => GND,
      SET => GND
    );
  in_R_D1_22 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_22_CLK,
      I => NlwBufferSignal_in_R_D1_22_IN,
      O => in_R_D1_22_3434,
      RST => GND,
      SET => GND
    );
  in_R_D1_21 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_21_CLK,
      I => NlwBufferSignal_in_R_D1_21_IN,
      O => in_R_D1_21_3431,
      RST => GND,
      SET => GND
    );
  in_R_D1_20 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_20_CLK,
      I => NlwBufferSignal_in_R_D1_20_IN,
      O => in_R_D1_20_3428,
      RST => GND,
      SET => GND
    );
  in_R_D1_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_7_CLK,
      I => NlwBufferSignal_in_R_D1_7_IN,
      O => in_R_D1_7_3386,
      RST => GND,
      SET => GND
    );
  in_R_D1_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_6_CLK,
      I => NlwBufferSignal_in_R_D1_6_IN,
      O => in_R_D1_6_3382,
      RST => GND,
      SET => GND
    );
  in_R_D1_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_5_CLK,
      I => NlwBufferSignal_in_R_D1_5_IN,
      O => in_R_D1_5_3379,
      RST => GND,
      SET => GND
    );
  in_R_D1_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y57",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_4_CLK,
      I => NlwBufferSignal_in_R_D1_4_IN,
      O => in_R_D1_4_3376,
      RST => GND,
      SET => GND
    );
  in_R_D2_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_3_CLK,
      I => NlwBufferSignal_in_R_D2_3_IN,
      O => in_R_D2_3_3374,
      RST => GND,
      SET => GND
    );
  in_R_D2_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_2_CLK,
      I => NlwBufferSignal_in_R_D2_2_IN,
      O => in_R_D2_2_3370,
      RST => GND,
      SET => GND
    );
  in_R_D2_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_1_CLK,
      I => NlwBufferSignal_in_R_D2_1_IN,
      O => in_R_D2_1_3366,
      RST => GND,
      SET => GND
    );
  in_R_D2_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X28Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_0_CLK,
      I => NlwBufferSignal_in_R_D2_0_IN,
      O => in_R_D2_0_3364,
      RST => GND,
      SET => GND
    );
  in_R_D2_31 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_31_CLK,
      I => NlwBufferSignal_in_R_D2_31_IN,
      O => in_R_D2_31_3464,
      RST => GND,
      SET => GND
    );
  in_R_D2_30 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_30_CLK,
      I => NlwBufferSignal_in_R_D2_30_IN,
      O => in_R_D2_30_3461,
      RST => GND,
      SET => GND
    );
  in_R_D2_29 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_29_CLK,
      I => NlwBufferSignal_in_R_D2_29_IN,
      O => in_R_D2_29_3458,
      RST => GND,
      SET => GND
    );
  in_R_D2_28 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y52",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_28_CLK,
      I => NlwBufferSignal_in_R_D2_28_IN,
      O => in_R_D2_28_3455,
      RST => GND,
      SET => GND
    );
  in_R_D2_27 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_27_CLK,
      I => NlwBufferSignal_in_R_D2_27_IN,
      O => in_R_D2_27_3452,
      RST => GND,
      SET => GND
    );
  in_R_D2_26 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_26_CLK,
      I => NlwBufferSignal_in_R_D2_26_IN,
      O => in_R_D2_26_3448,
      RST => GND,
      SET => GND
    );
  in_R_D2_25 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_25_CLK,
      I => NlwBufferSignal_in_R_D2_25_IN,
      O => in_R_D2_25_3445,
      RST => GND,
      SET => GND
    );
  in_R_D2_24 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y53",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_24_CLK,
      I => NlwBufferSignal_in_R_D2_24_IN,
      O => in_R_D2_24_3442,
      RST => GND,
      SET => GND
    );
  in_R_D2_23 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_23_CLK,
      I => NlwBufferSignal_in_R_D2_23_IN,
      O => in_R_D2_23_3439,
      RST => GND,
      SET => GND
    );
  in_R_D2_22 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_22_CLK,
      I => NlwBufferSignal_in_R_D2_22_IN,
      O => in_R_D2_22_3435,
      RST => GND,
      SET => GND
    );
  in_R_D2_21 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_21_CLK,
      I => NlwBufferSignal_in_R_D2_21_IN,
      O => in_R_D2_21_3432,
      RST => GND,
      SET => GND
    );
  in_R_D2_20 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D2_20_CLK,
      I => NlwBufferSignal_in_R_D2_20_IN,
      O => in_R_D2_20_3429,
      RST => GND,
      SET => GND
    );
  in_R_D1_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_3_CLK,
      I => NlwBufferSignal_in_R_D1_3_IN,
      O => in_R_D1_3_3373,
      RST => GND,
      SET => GND
    );
  in_R_D1_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_2_CLK,
      I => NlwBufferSignal_in_R_D1_2_IN,
      O => in_R_D1_2_3369,
      RST => GND,
      SET => GND
    );
  in_R_D1_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_1_CLK,
      I => NlwBufferSignal_in_R_D1_1_IN,
      O => in_R_D1_1_3365,
      RST => GND,
      SET => GND
    );
  in_R_D1_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y59",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_in_R_D1_0_CLK,
      I => NlwBufferSignal_in_R_D1_0_IN,
      O => in_R_D1_0_3363,
      RST => GND,
      SET => GND
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_3_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_3_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_3_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_3_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_3_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res2_3239,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_3_ADR2
    );
  NlwBufferBlock_Madd_in_R_res3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_3_0,
      O => NlwBufferSignal_Madd_in_R_res3_ADR4
    );
  NlwBufferBlock_Madd_in_R_res3_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_3_0,
      O => NlwBufferSignal_Madd_in_R_res3_ADR0
    );
  NlwBufferBlock_Madd_in_R_res3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_3_0,
      O => NlwBufferSignal_Madd_in_R_res3_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_2_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_3233,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_2_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res1_3234,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_2_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res2_3239,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_2_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(2),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(2),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(2),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res1_3234,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_2_ADR4
    );
  NlwBufferBlock_Madd_in_R_res2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(2),
      O => NlwBufferSignal_Madd_in_R_res2_ADR0
    );
  NlwBufferBlock_Madd_in_R_res2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(2),
      O => NlwBufferSignal_Madd_in_R_res2_ADR2
    );
  NlwBufferBlock_Madd_in_R_res2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(2),
      O => NlwBufferSignal_Madd_in_R_res2_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_1_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_1_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_1_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_3233,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_1_ADR2
    );
  NlwBufferBlock_Madd_in_R_res1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_1_0,
      O => NlwBufferSignal_Madd_in_R_res1_ADR4
    );
  NlwBufferBlock_Madd_in_R_res1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_1_0,
      O => NlwBufferSignal_Madd_in_R_res1_ADR0
    );
  NlwBufferBlock_Madd_in_R_res1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_1_0,
      O => NlwBufferSignal_Madd_in_R_res1_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_32_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(0),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_32_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(0),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_32_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(0),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_32_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_7_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_7_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_7_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_7_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_7_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_7_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res6_3256,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_7_ADR2
    );
  NlwBufferBlock_Madd_in_R_res7_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_7_0,
      O => NlwBufferSignal_Madd_in_R_res7_ADR3
    );
  NlwBufferBlock_Madd_in_R_res7_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_7_0,
      O => NlwBufferSignal_Madd_in_R_res7_ADR0
    );
  NlwBufferBlock_Madd_in_R_res7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_7_0,
      O => NlwBufferSignal_Madd_in_R_res7_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_6_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res3_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_6_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res4_3248,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_6_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res5_3252,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_6_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res6_3256,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_6_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_6_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(6),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_6_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(6),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_6_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(6),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_6_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res5_3252,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_6_ADR3
    );
  NlwBufferBlock_Madd_in_R_res6_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(6),
      O => NlwBufferSignal_Madd_in_R_res6_ADR1
    );
  NlwBufferBlock_Madd_in_R_res6_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(6),
      O => NlwBufferSignal_Madd_in_R_res6_ADR4
    );
  NlwBufferBlock_Madd_in_R_res6_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(6),
      O => NlwBufferSignal_Madd_in_R_res6_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_5_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_5_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_5_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res4_3248,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_5_ADR3
    );
  NlwBufferBlock_Madd_in_R_res5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_5_0,
      O => NlwBufferSignal_Madd_in_R_res5_ADR1
    );
  NlwBufferBlock_Madd_in_R_res5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_5_0,
      O => NlwBufferSignal_Madd_in_R_res5_ADR4
    );
  NlwBufferBlock_Madd_in_R_res5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_5_0,
      O => NlwBufferSignal_Madd_in_R_res5_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_4_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(4),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_4_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(4),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_4_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(4),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res3_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_4_ADR4
    );
  NlwBufferBlock_Madd_in_R_res4_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(4),
      O => NlwBufferSignal_Madd_in_R_res4_ADR1
    );
  NlwBufferBlock_Madd_in_R_res4_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(4),
      O => NlwBufferSignal_Madd_in_R_res4_ADR2
    );
  NlwBufferBlock_Madd_in_R_res4_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(4),
      O => NlwBufferSignal_Madd_in_R_res4_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_11_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_11_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_11_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res10_3273,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_11_ADR4
    );
  NlwBufferBlock_Madd_in_R_res11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_11_0,
      O => NlwBufferSignal_Madd_in_R_res11_ADR0
    );
  NlwBufferBlock_Madd_in_R_res11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_11_0,
      O => NlwBufferSignal_Madd_in_R_res11_ADR2
    );
  NlwBufferBlock_Madd_in_R_res11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_11_0,
      O => NlwBufferSignal_Madd_in_R_res11_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_10_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res7_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_10_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res8_3265,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_10_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res9_3269,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_10_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res10_3273,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_10_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(10),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_10_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(10),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_10_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(10),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_10_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res9_3269,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_10_ADR4
    );
  NlwBufferBlock_Madd_in_R_res10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(10),
      O => NlwBufferSignal_Madd_in_R_res10_ADR0
    );
  NlwBufferBlock_Madd_in_R_res10_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(10),
      O => NlwBufferSignal_Madd_in_R_res10_ADR2
    );
  NlwBufferBlock_Madd_in_R_res10_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(10),
      O => NlwBufferSignal_Madd_in_R_res10_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_9_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_9_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_9_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_9_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_9_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_9_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res8_3265,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_9_ADR3
    );
  NlwBufferBlock_Madd_in_R_res9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_9_0,
      O => NlwBufferSignal_Madd_in_R_res9_ADR1
    );
  NlwBufferBlock_Madd_in_R_res9_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_9_0,
      O => NlwBufferSignal_Madd_in_R_res9_ADR4
    );
  NlwBufferBlock_Madd_in_R_res9_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_9_0,
      O => NlwBufferSignal_Madd_in_R_res9_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_8_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(8),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_8_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(8),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(8),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_8_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res7_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_8_ADR4
    );
  NlwBufferBlock_Madd_in_R_res8_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(8),
      O => NlwBufferSignal_Madd_in_R_res8_ADR3
    );
  NlwBufferBlock_Madd_in_R_res8_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(8),
      O => NlwBufferSignal_Madd_in_R_res8_ADR0
    );
  NlwBufferBlock_Madd_in_R_res8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(8),
      O => NlwBufferSignal_Madd_in_R_res8_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_15_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_15_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_15_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_15_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_15_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_15_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_15_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res14_3290,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_15_ADR2
    );
  NlwBufferBlock_Madd_in_R_res15_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_15_0,
      O => NlwBufferSignal_Madd_in_R_res15_ADR1
    );
  NlwBufferBlock_Madd_in_R_res15_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_15_0,
      O => NlwBufferSignal_Madd_in_R_res15_ADR4
    );
  NlwBufferBlock_Madd_in_R_res15_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_15_0,
      O => NlwBufferSignal_Madd_in_R_res15_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_14_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res11_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_14_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res12_3282,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_14_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res13_3286,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_14_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res14_3290,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_14_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_14_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(14),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_14_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(14),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_14_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(14),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_14_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res13_3286,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_14_ADR4
    );
  NlwBufferBlock_Madd_in_R_res14_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(14),
      O => NlwBufferSignal_Madd_in_R_res14_ADR3
    );
  NlwBufferBlock_Madd_in_R_res14_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(14),
      O => NlwBufferSignal_Madd_in_R_res14_ADR1
    );
  NlwBufferBlock_Madd_in_R_res14_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(14),
      O => NlwBufferSignal_Madd_in_R_res14_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_13_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_13_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_13_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_13_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_13_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_13_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_13_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res12_3282,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_13_ADR3
    );
  NlwBufferBlock_Madd_in_R_res13_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_13_0,
      O => NlwBufferSignal_Madd_in_R_res13_ADR1
    );
  NlwBufferBlock_Madd_in_R_res13_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_13_0,
      O => NlwBufferSignal_Madd_in_R_res13_ADR2
    );
  NlwBufferBlock_Madd_in_R_res13_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_13_0,
      O => NlwBufferSignal_Madd_in_R_res13_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_12_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(12),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_12_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(12),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_12_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(12),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_12_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res11_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_12_ADR4
    );
  NlwBufferBlock_Madd_in_R_res12_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(12),
      O => NlwBufferSignal_Madd_in_R_res12_ADR0
    );
  NlwBufferBlock_Madd_in_R_res12_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(12),
      O => NlwBufferSignal_Madd_in_R_res12_ADR3
    );
  NlwBufferBlock_Madd_in_R_res12_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(12),
      O => NlwBufferSignal_Madd_in_R_res12_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_19_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_19_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_19_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_19_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_19_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_19_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_19_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res18_3307,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_19_ADR2
    );
  NlwBufferBlock_Madd_in_R_res19_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_19_0,
      O => NlwBufferSignal_Madd_in_R_res19_ADR4
    );
  NlwBufferBlock_Madd_in_R_res19_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_19_0,
      O => NlwBufferSignal_Madd_in_R_res19_ADR0
    );
  NlwBufferBlock_Madd_in_R_res19_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_19_0,
      O => NlwBufferSignal_Madd_in_R_res19_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_18_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res15_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_18_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res16_3299,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_18_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res17_3303,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_18_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res18_3307,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_18_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_18_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(18),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_18_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(18),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_18_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(18),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_18_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res17_3303,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_18_ADR4
    );
  NlwBufferBlock_Madd_in_R_res18_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(18),
      O => NlwBufferSignal_Madd_in_R_res18_ADR0
    );
  NlwBufferBlock_Madd_in_R_res18_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(18),
      O => NlwBufferSignal_Madd_in_R_res18_ADR3
    );
  NlwBufferBlock_Madd_in_R_res18_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(18),
      O => NlwBufferSignal_Madd_in_R_res18_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_17_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_17_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_17_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_17_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_17_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_17_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_17_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res16_3299,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_17_ADR3
    );
  NlwBufferBlock_Madd_in_R_res17_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_17_0,
      O => NlwBufferSignal_Madd_in_R_res17_ADR1
    );
  NlwBufferBlock_Madd_in_R_res17_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_17_0,
      O => NlwBufferSignal_Madd_in_R_res17_ADR4
    );
  NlwBufferBlock_Madd_in_R_res17_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_17_0,
      O => NlwBufferSignal_Madd_in_R_res17_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_16_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(16),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_16_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(16),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_16_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(16),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_16_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res15_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_16_ADR4
    );
  NlwBufferBlock_Madd_in_R_res16_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(16),
      O => NlwBufferSignal_Madd_in_R_res16_ADR3
    );
  NlwBufferBlock_Madd_in_R_res16_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(16),
      O => NlwBufferSignal_Madd_in_R_res16_ADR1
    );
  NlwBufferBlock_Madd_in_R_res16_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(16),
      O => NlwBufferSignal_Madd_in_R_res16_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_23_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_23_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_23_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_23_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_23_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_23_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_23_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res22_3324,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_23_ADR2
    );
  NlwBufferBlock_Madd_in_R_res23_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_23_0,
      O => NlwBufferSignal_Madd_in_R_res23_ADR3
    );
  NlwBufferBlock_Madd_in_R_res23_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_23_0,
      O => NlwBufferSignal_Madd_in_R_res23_ADR4
    );
  NlwBufferBlock_Madd_in_R_res23_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_23_0,
      O => NlwBufferSignal_Madd_in_R_res23_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_22_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res19_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_22_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res20_3316,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_22_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res21_3320,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_22_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res22_3324,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_22_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_22_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(22),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_22_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(22),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_22_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(22),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_22_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res21_3320,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_22_ADR4
    );
  NlwBufferBlock_Madd_in_R_res22_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(22),
      O => NlwBufferSignal_Madd_in_R_res22_ADR1
    );
  NlwBufferBlock_Madd_in_R_res22_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(22),
      O => NlwBufferSignal_Madd_in_R_res22_ADR3
    );
  NlwBufferBlock_Madd_in_R_res22_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(22),
      O => NlwBufferSignal_Madd_in_R_res22_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_21_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_21_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_21_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res20_3316,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_21_ADR3
    );
  NlwBufferBlock_Madd_in_R_res21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_21_0,
      O => NlwBufferSignal_Madd_in_R_res21_ADR1
    );
  NlwBufferBlock_Madd_in_R_res21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_21_0,
      O => NlwBufferSignal_Madd_in_R_res21_ADR2
    );
  NlwBufferBlock_Madd_in_R_res21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_21_0,
      O => NlwBufferSignal_Madd_in_R_res21_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_20_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(20),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_20_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(20),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_20_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(20),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_20_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res19_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_20_ADR4
    );
  NlwBufferBlock_Madd_in_R_res20_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(20),
      O => NlwBufferSignal_Madd_in_R_res20_ADR0
    );
  NlwBufferBlock_Madd_in_R_res20_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(20),
      O => NlwBufferSignal_Madd_in_R_res20_ADR3
    );
  NlwBufferBlock_Madd_in_R_res20_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(20),
      O => NlwBufferSignal_Madd_in_R_res20_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_27_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_27_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_27_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_27_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_27_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_27_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_27_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res26_3341,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_27_ADR4
    );
  NlwBufferBlock_Madd_in_R_res27_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_27_0,
      O => NlwBufferSignal_Madd_in_R_res27_ADR1
    );
  NlwBufferBlock_Madd_in_R_res27_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_27_0,
      O => NlwBufferSignal_Madd_in_R_res27_ADR3
    );
  NlwBufferBlock_Madd_in_R_res27_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_27_0,
      O => NlwBufferSignal_Madd_in_R_res27_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_26_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res23_0,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_26_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res24_3333,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_26_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res25_3337,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_cy_0_26_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res26_3341,
      O => NlwBufferSignal_Madd_in_R_res_cy_0_26_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_26_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(26),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_26_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(26),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_26_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(26),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_26_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res25_3337,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_26_ADR4
    );
  NlwBufferBlock_Madd_in_R_res26_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(26),
      O => NlwBufferSignal_Madd_in_R_res26_ADR1
    );
  NlwBufferBlock_Madd_in_R_res26_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(26),
      O => NlwBufferSignal_Madd_in_R_res26_ADR3
    );
  NlwBufferBlock_Madd_in_R_res26_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(26),
      O => NlwBufferSignal_Madd_in_R_res26_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_25_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_25_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_25_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_25_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_25_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_25_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_25_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res24_3333,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_25_ADR3
    );
  NlwBufferBlock_Madd_in_R_res25_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_25_0,
      O => NlwBufferSignal_Madd_in_R_res25_ADR1
    );
  NlwBufferBlock_Madd_in_R_res25_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_25_0,
      O => NlwBufferSignal_Madd_in_R_res25_ADR0
    );
  NlwBufferBlock_Madd_in_R_res25_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_25_0,
      O => NlwBufferSignal_Madd_in_R_res25_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_24_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(24),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_24_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(24),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_24_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(24),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_24_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res23_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_24_ADR4
    );
  NlwBufferBlock_Madd_in_R_res24_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(24),
      O => NlwBufferSignal_Madd_in_R_res24_ADR3
    );
  NlwBufferBlock_Madd_in_R_res24_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(24),
      O => NlwBufferSignal_Madd_in_R_res24_ADR1
    );
  NlwBufferBlock_Madd_in_R_res24_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(24),
      O => NlwBufferSignal_Madd_in_R_res24_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_31_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_31_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_31_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_31_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR5
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_31_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res30_3358,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_31_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_xor_0_30_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res27_0,
      O => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_xor_0_30_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res28_3350,
      O => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_xor_0_30_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res29_3354,
      O => NlwBufferSignal_Madd_in_R_res_xor_0_30_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_30_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(30),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_30_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(30),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_30_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(30),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_30_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res29_3354,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_30_ADR4
    );
  NlwBufferBlock_Madd_in_R_res30_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(30),
      O => NlwBufferSignal_Madd_in_R_res30_ADR2
    );
  NlwBufferBlock_Madd_in_R_res30_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(30),
      O => NlwBufferSignal_Madd_in_R_res30_ADR3
    );
  NlwBufferBlock_Madd_in_R_res30_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(30),
      O => NlwBufferSignal_Madd_in_R_res30_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_29_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_29_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_29_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_29_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_29_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_29_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_29_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res28_3350,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_29_ADR3
    );
  NlwBufferBlock_Madd_in_R_res29_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_29_0,
      O => NlwBufferSignal_Madd_in_R_res29_ADR2
    );
  NlwBufferBlock_Madd_in_R_res29_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1_29_0,
      O => NlwBufferSignal_Madd_in_R_res29_ADR1
    );
  NlwBufferBlock_Madd_in_R_res29_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2_29_0,
      O => NlwBufferSignal_Madd_in_R_res29_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_28_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(28),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_28_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(28),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_28_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(28),
      O => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_lut_0_28_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res27_0,
      O => NlwBufferSignal_Madd_in_R_res_lut_0_28_ADR4
    );
  NlwBufferBlock_Madd_in_R_res28_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(28),
      O => NlwBufferSignal_Madd_in_R_res28_ADR3
    );
  NlwBufferBlock_Madd_in_R_res28_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(28),
      O => NlwBufferSignal_Madd_in_R_res28_ADR1
    );
  NlwBufferBlock_Madd_in_R_res28_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(28),
      O => NlwBufferSignal_Madd_in_R_res28_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_3_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_3_3373,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_3_3374,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_3371,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_3_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_3_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_3_3373,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_3_3374,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_3367,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_3368,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_3371,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_2_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_2_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_2_3369,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_2_3370,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_3368,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_2_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_2_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_2_3369,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_2_3370,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT2_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_1_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_1_3365,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_1_3366,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT_3367,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_1_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_1_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_1_3365,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_1_3366,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT1_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_0_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_0_3363,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_0_3364,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_32_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_7_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_7_3386,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_7_3387,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_3384,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_7_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_7_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_7_3386,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_7_3387,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_3378,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_3381,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_3384,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_6_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_6_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_6_3382,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_6_3383,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_3381,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_6_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_6_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_6_3382,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_6_3383,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT6_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_5_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_5_3379,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_5_3380,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_3378,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_5_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_5_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_5_3379,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_5_3380,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT5_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_4_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_4_3376,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_4_3377,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT3_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_4_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_4_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_4_3376,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_4_3377,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT4_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_11_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_11_3399,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_11_3400,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_3397,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_11_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_11_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_11_3399,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_11_3400,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_3391,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_3394,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_3397,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_10_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_10_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_10_3395,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_10_3396,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_3394,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_10_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_10_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_10_3395,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_10_3396,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT10_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_9_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_9_3392,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_9_3393,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_3391,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_9_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_9_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_9_3392,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_9_3393,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT9_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_8_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_8_3389,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_8_3390,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT7_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_8_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_8_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_8_3389,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_8_3390,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT8_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_15_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_15_3412,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_15_3413,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_3410,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_15_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_15_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_15_3412,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_15_3413,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_3404,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_3407,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_3410,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_14_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_14_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_14_3408,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_14_3409,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_3407,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_14_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_14_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_14_3408,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_14_3409,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT14_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_13_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_13_3405,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_13_3406,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_3404,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_13_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_13_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_13_3405,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_13_3406,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT13_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_12_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_12_3402,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_12_3403,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT11_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_12_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_12_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_12_3402,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_12_3403,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT12_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_19_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_19_3425,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_19_3426,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_3423,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_19_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_19_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_19_3425,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_19_3426,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_3417,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_3420,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_3423,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_18_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_18_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_18_3421,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_18_3422,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_3420,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_18_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_18_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_18_3421,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_18_3422,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT18_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_17_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_17_3418,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_17_3419,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_3417,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_17_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_17_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_17_3418,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_17_3419,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT17_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_16_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_16_3415,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_16_3416,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT15_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_16_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_16_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_16_3415,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_16_3416,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT16_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_23_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_23_3438,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_23_3439,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_3436,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_23_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_23_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_23_3438,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_23_3439,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_3430,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_3433,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_3436,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_22_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_22_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_22_3434,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_22_3435,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_3433,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_22_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_22_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_22_3434,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_22_3435,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT22_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_21_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_21_3431,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_21_3432,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_3430,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_21_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_21_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_21_3431,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_21_3432,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT21_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_20_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_20_3428,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_20_3429,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT19_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_20_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_20_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_20_3428,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_20_3429,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT20_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_27_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_27_3451,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_27_3452,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_3449,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_27_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_27_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_27_3451,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_27_3452,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_3443,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_3446,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_3449,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_cy_0_26_DI_3_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_26_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_26_3447,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_26_3448,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_3446,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_26_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_26_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_26_3447,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_26_3448,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT26_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_25_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_25_3444,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_25_3445,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_3443,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_25_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_25_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_25_3444,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_25_3445,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT25_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_24_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_24_3441,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_24_3442,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT23_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_24_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_24_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_24_3441,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_24_3442,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT24_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_31_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_31_3463,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR5
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_31_3464,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_3462,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_31_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_0_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_3456,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_1_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_3459,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_xor_0_30_DI_2_Q
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_30_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_30_3460,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_30_3461,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_3459,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_30_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_30_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_30_3460,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_30_3461,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT30_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_29_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_29_3457,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_29_3458,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_3456,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_29_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_29_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_29_3457,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR0
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_29_3458,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT29_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_28_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_28_3454,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_28_3455,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Madd_in_R_res_31_in_R_D2_31_add_24_OUT27_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_lut_0_28_ADR3
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_28_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_28_3454,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_28_3455,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT28_ADR1
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_3_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(34),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_3_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(31),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_0_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(32),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_1_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(33),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_2_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(34),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_3_DI_3_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_2_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(33),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(2),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_2_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(32),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B_1_0,
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_1_ADR1
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_0_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(31),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR5
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(0),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(38),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_7_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B_7_0,
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_7_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(35),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_0_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(36),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_1_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(37),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_2_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(38),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_cy_7_DI_3_Q
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_6_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(37),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_6_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(6),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_6_ADR5
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B_5_0,
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_5_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_4_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(35),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR5
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_4_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_B(4),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_4_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(42),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_11_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(41),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_10_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(40),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_9_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(39),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_8_INV_0_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(46),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_15_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(45),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_14_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(44),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_13_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(43),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_12_INV_0_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(50),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_19_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(49),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_18_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(48),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_17_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(47),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_16_INV_0_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(54),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_23_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(53),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_22_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(52),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_21_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(51),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_20_INV_0_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(58),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_27_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(57),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_26_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(56),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_25_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(55),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_24_INV_0_ADR2
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_31_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(62),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_31_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(61),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_30_INV_0_ADR3
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(60),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_29_INV_0_ADR4
    );
  NlwBufferBlock_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(59),
      O => NlwBufferSignal_DIV_DP_Msub_adder1_out_lut_28_INV_0_ADR2
    );
  NlwBufferBlock_CNT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_3_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(3),
      O => NlwBufferSignal_Mcount_CNT_lut_3_ADR4
    );
  NlwBufferBlock_Mcount_CNT_lut_3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_3_ADR1
    );
  NlwBufferBlock_CNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_2_CLK
    );
  NlwBufferBlock_Mcount_CNT_cy_3_CYINIT : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_cy_3_CYINIT
    );
  NlwBufferBlock_Mcount_CNT_lut_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_2_ADR3
    );
  NlwBufferBlock_CNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_1_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_1_ADR1
    );
  NlwBufferBlock_CNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_0_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(0),
      O => NlwBufferSignal_Mcount_CNT_lut_0_ADR4
    );
  NlwBufferBlock_Mcount_CNT_lut_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_0_ADR3
    );
  NlwBufferBlock_CNT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_7_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_7_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_7_ADR1
    );
  NlwBufferBlock_CNT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_6_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_6_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_6_ADR1
    );
  NlwBufferBlock_CNT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_5_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_5_ADR2
    );
  NlwBufferBlock_CNT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_CNT_4_CLK
    );
  NlwBufferBlock_Mcount_CNT_lut_4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(4),
      O => NlwBufferSignal_Mcount_CNT_lut_4_ADR4
    );
  NlwBufferBlock_Mcount_CNT_lut_4_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_CNT_IBUF_0,
      O => NlwBufferSignal_Mcount_CNT_lut_4_ADR2
    );
  NlwBufferBlock_R_X_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_3_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_3_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(3),
      O => NlwBufferSignal_Mcount_R_X_lut_3_ADR4
    );
  NlwBufferBlock_Mcount_R_X_lut_3_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_3_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_3_ADR2
    );
  NlwBufferBlock_R_X_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_2_CLK
    );
  NlwBufferBlock_Mcount_R_X_cy_3_CYINIT : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_cy_3_CYINIT
    );
  NlwBufferBlock_Mcount_R_X_lut_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_2_ADR3
    );
  NlwBufferBlock_Mcount_R_X_lut_2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_2_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_2_ADR2
    );
  NlwBufferBlock_R_X_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_1_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_1_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_1_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_1_ADR0
    );
  NlwBufferBlock_R_X_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_0_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_0_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_0_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(0),
      O => NlwBufferSignal_Mcount_R_X_lut_0_ADR4
    );
  NlwBufferBlock_Mcount_R_X_lut_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_0_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_0_ADR3
    );
  NlwBufferBlock_R_X_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_7_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_7_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_7_ADR2
    );
  NlwBufferBlock_Mcount_R_X_lut_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(7),
      O => NlwBufferSignal_Mcount_R_X_lut_7_ADR4
    );
  NlwBufferBlock_Mcount_R_X_lut_7_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_7_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_7_ADR1
    );
  NlwBufferBlock_R_X_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_6_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_6_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_6_ADR2
    );
  NlwBufferBlock_Mcount_R_X_lut_6_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_6_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_6_ADR3
    );
  NlwBufferBlock_R_X_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_5_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_5_ADR3
    );
  NlwBufferBlock_Mcount_R_X_lut_5_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_5_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_5_ADR0
    );
  NlwBufferBlock_R_X_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_4_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_4_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_4_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(4),
      O => NlwBufferSignal_Mcount_R_X_lut_4_ADR4
    );
  NlwBufferBlock_Mcount_R_X_lut_4_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_4_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_4_ADR3
    );
  NlwBufferBlock_R_X_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_11_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_11_ADR3
    );
  NlwBufferBlock_Mcount_R_X_lut_11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_11_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_11_ADR2
    );
  NlwBufferBlock_R_X_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_10_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_10_ADR0
    );
  NlwBufferBlock_Mcount_R_X_lut_10_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_10_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_10_ADR1
    );
  NlwBufferBlock_R_X_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_9_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_9_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_9_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_9_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_9_ADR2
    );
  NlwBufferBlock_R_X_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_X_8_CLK
    );
  NlwBufferBlock_Mcount_R_X_lut_8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_X_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_8_ADR1
    );
  NlwBufferBlock_Mcount_R_X_lut_8_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(8),
      O => NlwBufferSignal_Mcount_R_X_lut_8_ADR4
    );
  NlwBufferBlock_Mcount_R_X_lut_8_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr1_8_IBUF_0,
      O => NlwBufferSignal_Mcount_R_X_lut_8_ADR3
    );
  NlwBufferBlock_R_Y_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_3_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_3_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_3_ADR3
    );
  NlwBufferBlock_Mcount_R_Y_lut_3_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(3),
      O => NlwBufferSignal_Mcount_R_Y_lut_3_ADR4
    );
  NlwBufferBlock_Mcount_R_Y_lut_3_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_3_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_3_ADR1
    );
  NlwBufferBlock_R_Y_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_2_CLK
    );
  NlwBufferBlock_Mcount_R_Y_cy_3_CYINIT : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_cy_3_CYINIT
    );
  NlwBufferBlock_Mcount_R_Y_lut_2_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_2_ADR3
    );
  NlwBufferBlock_Mcount_R_Y_lut_2_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_2_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_2_ADR2
    );
  NlwBufferBlock_R_Y_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_1_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_1_ADR0
    );
  NlwBufferBlock_Mcount_R_Y_lut_1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_1_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_1_ADR1
    );
  NlwBufferBlock_R_Y_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_0_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_0_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_0_ADR1
    );
  NlwBufferBlock_Mcount_R_Y_lut_0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(0),
      O => NlwBufferSignal_Mcount_R_Y_lut_0_ADR4
    );
  NlwBufferBlock_Mcount_R_Y_lut_0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_0_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_0_ADR3
    );
  NlwBufferBlock_R_Y_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_7_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_7_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_7_ADR0
    );
  NlwBufferBlock_Mcount_R_Y_lut_7_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(7),
      O => NlwBufferSignal_Mcount_R_Y_lut_7_ADR4
    );
  NlwBufferBlock_Mcount_R_Y_lut_7_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_7_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_7_ADR2
    );
  NlwBufferBlock_R_Y_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_6_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_6_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_6_ADR3
    );
  NlwBufferBlock_Mcount_R_Y_lut_6_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_6_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_6_ADR0
    );
  NlwBufferBlock_R_Y_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_5_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_5_ADR3
    );
  NlwBufferBlock_Mcount_R_Y_lut_5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_5_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_5_ADR1
    );
  NlwBufferBlock_R_Y_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_4_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_4_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_4_ADR0
    );
  NlwBufferBlock_Mcount_R_Y_lut_4_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(4),
      O => NlwBufferSignal_Mcount_R_Y_lut_4_ADR4
    );
  NlwBufferBlock_Mcount_R_Y_lut_4_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_4_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_4_ADR3
    );
  NlwBufferBlock_R_Y_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_11_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_11_ADR3
    );
  NlwBufferBlock_Mcount_R_Y_lut_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_11_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_11_ADR1
    );
  NlwBufferBlock_R_Y_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_10_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_10_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_10_ADR2
    );
  NlwBufferBlock_Mcount_R_Y_lut_10_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_10_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_10_ADR0
    );
  NlwBufferBlock_R_Y_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_9_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_9_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_9_ADR1
    );
  NlwBufferBlock_Mcount_R_Y_lut_9_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_9_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_9_ADR0
    );
  NlwBufferBlock_R_Y_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_Y_8_CLK
    );
  NlwBufferBlock_Mcount_R_Y_lut_8_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_R_Y_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_8_ADR1
    );
  NlwBufferBlock_Mcount_R_Y_lut_8_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(8),
      O => NlwBufferSignal_Mcount_R_Y_lut_8_ADR4
    );
  NlwBufferBlock_Mcount_R_Y_lut_8_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => ptr2_8_IBUF_0,
      O => NlwBufferSignal_Mcount_R_Y_lut_8_ADR3
    );
  NlwBufferBlock_overflow_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_overflow_OBUF_I
    );
  NlwBufferBlock_division_by_zero_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => division_by_zero_OBUF_3637,
      O => NlwBufferSignal_division_by_zero_OBUF_I
    );
  NlwBufferBlock_div_ready_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_ready_OBUF_3163,
      O => NlwBufferSignal_div_ready_OBUF_I
    );
  NlwBufferBlock_result_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_10_3654,
      O => NlwBufferSignal_result_10_OBUF_I
    );
  NlwBufferBlock_result_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_11_3655,
      O => NlwBufferSignal_result_11_OBUF_I
    );
  NlwBufferBlock_result_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_12_3656,
      O => NlwBufferSignal_result_12_OBUF_I
    );
  NlwBufferBlock_result_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_20_3657,
      O => NlwBufferSignal_result_20_OBUF_I
    );
  NlwBufferBlock_result_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_13_3658,
      O => NlwBufferSignal_result_13_OBUF_I
    );
  NlwBufferBlock_result_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_21_3659,
      O => NlwBufferSignal_result_21_OBUF_I
    );
  NlwBufferBlock_result_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_14_3660,
      O => NlwBufferSignal_result_14_OBUF_I
    );
  NlwBufferBlock_result_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_22_3661,
      O => NlwBufferSignal_result_22_OBUF_I
    );
  NlwBufferBlock_result_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_30_3662,
      O => NlwBufferSignal_result_30_OBUF_I
    );
  NlwBufferBlock_result_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_15_3663,
      O => NlwBufferSignal_result_15_OBUF_I
    );
  NlwBufferBlock_result_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_23_3664,
      O => NlwBufferSignal_result_23_OBUF_I
    );
  NlwBufferBlock_result_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_31_3665,
      O => NlwBufferSignal_result_31_OBUF_I
    );
  NlwBufferBlock_result_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_16_3666,
      O => NlwBufferSignal_result_16_OBUF_I
    );
  NlwBufferBlock_result_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_24_3667,
      O => NlwBufferSignal_result_24_OBUF_I
    );
  NlwBufferBlock_result_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_17_3668,
      O => NlwBufferSignal_result_17_OBUF_I
    );
  NlwBufferBlock_result_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_25_3669,
      O => NlwBufferSignal_result_25_OBUF_I
    );
  NlwBufferBlock_result_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_18_3670,
      O => NlwBufferSignal_result_18_OBUF_I
    );
  NlwBufferBlock_result_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_26_3671,
      O => NlwBufferSignal_result_26_OBUF_I
    );
  NlwBufferBlock_result_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_19_3672,
      O => NlwBufferSignal_result_19_OBUF_I
    );
  NlwBufferBlock_result_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_27_3673,
      O => NlwBufferSignal_result_27_OBUF_I
    );
  NlwBufferBlock_result_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_28_3674,
      O => NlwBufferSignal_result_28_OBUF_I
    );
  NlwBufferBlock_result_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_29_3675,
      O => NlwBufferSignal_result_29_OBUF_I
    );
  NlwBufferBlock_result_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_0_3679,
      O => NlwBufferSignal_result_0_OBUF_I
    );
  NlwBufferBlock_result_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_1_3680,
      O => NlwBufferSignal_result_1_OBUF_I
    );
  NlwBufferBlock_result_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_2_3681,
      O => NlwBufferSignal_result_2_OBUF_I
    );
  NlwBufferBlock_result_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_3_3682,
      O => NlwBufferSignal_result_3_OBUF_I
    );
  NlwBufferBlock_result_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_4_3683,
      O => NlwBufferSignal_result_4_OBUF_I
    );
  NlwBufferBlock_result_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_5_3684,
      O => NlwBufferSignal_result_5_OBUF_I
    );
  NlwBufferBlock_result_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_6_3685,
      O => NlwBufferSignal_result_6_OBUF_I
    );
  NlwBufferBlock_result_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_7_3686,
      O => NlwBufferSignal_result_7_OBUF_I
    );
  NlwBufferBlock_result_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_8_3687,
      O => NlwBufferSignal_result_8_OBUF_I
    );
  NlwBufferBlock_mem_addr_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_0_3688,
      O => NlwBufferSignal_mem_addr_0_OBUF_I
    );
  NlwBufferBlock_result_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_9_3689,
      O => NlwBufferSignal_result_9_OBUF_I
    );
  NlwBufferBlock_count_eq_L_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => count_eq_L_OBUF_3699,
      O => NlwBufferSignal_count_eq_L_OBUF_I
    );
  NlwBufferBlock_mem_addr_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_10_CLK
    );
  NlwBufferBlock_mem_addr_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_10_MUX_227_o,
      O => NlwBufferSignal_mem_addr_10_IN
    );
  NlwBufferBlock_mem_addr_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_11_CLK
    );
  NlwBufferBlock_mem_addr_11_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_11_MUX_225_o,
      O => NlwBufferSignal_mem_addr_11_IN
    );
  NlwBufferBlock_mem_addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_0_CLK
    );
  NlwBufferBlock_mem_addr_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_0_MUX_247_o,
      O => NlwBufferSignal_mem_addr_0_IN
    );
  NlwBufferBlock_mem_addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_1_CLK
    );
  NlwBufferBlock_mem_addr_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_1_MUX_245_o,
      O => NlwBufferSignal_mem_addr_1_IN
    );
  NlwBufferBlock_mem_addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_2_CLK
    );
  NlwBufferBlock_mem_addr_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_2_MUX_243_o,
      O => NlwBufferSignal_mem_addr_2_IN
    );
  NlwBufferBlock_mem_addr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_3_CLK
    );
  NlwBufferBlock_mem_addr_3_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_3_MUX_241_o,
      O => NlwBufferSignal_mem_addr_3_IN
    );
  NlwBufferBlock_mem_addr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_4_CLK
    );
  NlwBufferBlock_mem_addr_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_4_MUX_239_o,
      O => NlwBufferSignal_mem_addr_4_IN
    );
  NlwBufferBlock_mem_addr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_5_CLK
    );
  NlwBufferBlock_mem_addr_5_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_5_MUX_237_o,
      O => NlwBufferSignal_mem_addr_5_IN
    );
  NlwBufferBlock_mem_addr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_6_CLK
    );
  NlwBufferBlock_mem_addr_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_6_MUX_235_o,
      O => NlwBufferSignal_mem_addr_6_IN
    );
  NlwBufferBlock_mem_addr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_7_CLK
    );
  NlwBufferBlock_mem_addr_7_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_7_MUX_233_o,
      O => NlwBufferSignal_mem_addr_7_IN
    );
  NlwBufferBlock_mem_addr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_8_CLK
    );
  NlwBufferBlock_mem_addr_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_8_MUX_231_o,
      O => NlwBufferSignal_mem_addr_8_IN
    );
  NlwBufferBlock_mem_addr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_BUFG_3700,
      O => NlwBufferSignal_mem_addr_9_CLK
    );
  NlwBufferBlock_mem_addr_9_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_addr_11_R_X_9_MUX_229_o,
      O => NlwBufferSignal_mem_addr_9_IN
    );
  NlwBufferBlock_set_mem_addr_IBUF_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_set_mem_addr_IBUF_BUFG_IN
    );
  NlwBufferBlock_load_R_D1_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP_IBUFG_0,
      O => NlwBufferSignal_load_R_D1_BUFGP_BUFG_IN
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_load_R_D2_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP_IBUFG_0,
      O => NlwBufferSignal_load_R_D2_BUFGP_BUFG_IN
    );
  NlwBufferBlock_DIV_DP_R_A_35_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_35_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A291_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A291_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A291_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A291_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(34),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A291_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_3_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A291_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_34_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_34_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A281_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A281_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A281_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A281_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(33),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A281_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_2_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A281_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_33_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_33_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A271_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A271_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A271_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A271_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(32),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A271_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_1_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A271_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_32_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_32_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A261_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A261_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A261_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A261_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(31),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A261_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_0_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A261_ADR1
    );
  NlwBufferBlock_DIV_DP_R_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_4_CLK
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt41_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR1
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt41_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR0
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt41_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt41_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR4
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt41_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_ready_OBUF_3163,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt41_ADR2
    );
  NlwBufferBlock_DIV_DP_R_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_3_CLK
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR2
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt31_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR0
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt31_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt31_ADR1
    );
  NlwBufferBlock_DIV_DP_R_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_1_CLK
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR1
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR2
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_1_11_ADR4
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR0
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR1
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR2
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt21_ADR4
    );
  NlwBufferBlock_DIV_DP_R_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_2_CLK
    );
  NlwBufferBlock_DIV_DP_R_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_0_CLK
    );
  NlwBufferBlock_DIV_DP_R_cnt_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_Mcount_R_cnt,
      O => NlwBufferSignal_DIV_DP_R_cnt_0_IN
    );
  NlwBufferBlock_DIV_CTRL_load_R_cnt1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR0
    );
  NlwBufferBlock_DIV_CTRL_load_R_cnt1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_CTRL_load_R_cnt1_ADR1
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_0_11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR0
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR4
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt_xor_0_11_ADR1
    );
  NlwBufferBlock_DIV_DP_R_B_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_6_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(6),
      O => NlwBufferSignal_DIV_DP_R_B_6_IN
    );
  NlwBufferBlock_L_7_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_7_0,
      O => NlwBufferSignal_L_7_rt_ADR4
    );
  NlwBufferBlock_DIV_DP_R_B_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_7_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_4_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(4),
      O => NlwBufferSignal_DIV_DP_R_B_4_IN
    );
  NlwBufferBlock_L_5_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_5_0,
      O => NlwBufferSignal_L_5_rt_ADR0
    );
  NlwBufferBlock_DIV_DP_R_B_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_5_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_2_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(2),
      O => NlwBufferSignal_DIV_DP_R_B_2_IN
    );
  NlwBufferBlock_L_3_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_3_0,
      O => NlwBufferSignal_L_3_rt_ADR4
    );
  NlwBufferBlock_DIV_DP_R_B_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_3_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_0_CLK
    );
  NlwBufferBlock_DIV_DP_R_B_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(0),
      O => NlwBufferSignal_DIV_DP_R_B_0_IN
    );
  NlwBufferBlock_L_1_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_1_0,
      O => NlwBufferSignal_L_1_rt_ADR4
    );
  NlwBufferBlock_DIV_DP_R_B_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_B_1_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_39_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_39_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A331_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A331_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A331_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A331_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(38),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A331_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_7_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A331_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_38_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_38_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A321_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A321_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A321_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A321_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(37),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A321_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_6_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A321_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_37_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_37_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A311_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A311_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A311_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A311_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(36),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A311_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_5_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A311_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_36_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_36_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A301_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A301_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A301_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A301_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(35),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A301_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_4_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A301_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_43_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_43_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A381_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A381_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A381_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A381_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(42),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A381_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_11_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A381_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_42_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_42_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A371_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A371_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A371_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A371_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(41),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A371_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_10_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A371_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_41_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_41_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A361_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A361_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A361_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A361_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(40),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A361_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_9_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A361_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_40_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_40_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A351_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A351_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A351_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A351_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(39),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A351_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_8_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A351_ADR4
    );
  NlwBufferBlock_DIV_DP_R_A_47_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_47_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A421_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A421_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A421_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A421_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(46),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A421_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_15_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A421_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_46_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_46_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A411_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A411_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A411_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A411_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(45),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A411_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_14_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A411_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_45_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_45_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A401_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A401_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A401_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A401_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(44),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A401_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_13_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A401_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_44_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_44_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A391_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A391_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A391_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A391_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(43),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A391_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_12_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A391_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_51_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_51_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A471_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A471_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A471_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A471_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(50),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A471_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_19_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A471_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_50_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_50_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A461_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A461_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A461_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A461_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(49),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A461_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_18_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A461_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_49_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_49_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A441_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A441_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A441_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A441_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(48),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A441_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_17_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A441_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_48_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_48_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A431_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A431_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A431_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A431_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(47),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A431_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_16_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A431_ADR4
    );
  NlwBufferBlock_DIV_DP_R_A_55_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_55_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A511_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A511_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A511_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A511_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(54),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A511_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_23_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A511_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_54_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_54_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A501_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A501_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A501_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A501_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(53),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A501_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_22_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A501_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_53_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_53_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A491_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A491_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A491_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A491_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(52),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A491_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_21_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A491_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_52_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_52_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A481_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A481_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A481_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A481_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(51),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A481_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_20_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A481_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_59_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_59_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A551_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A551_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A551_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A551_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(58),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A551_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_27_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A551_ADR3
    );
  NlwBufferBlock_DIV_DP_R_A_58_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_58_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A541_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A541_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A541_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A541_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(57),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A541_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_26_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A541_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_57_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_57_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A531_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A531_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR5
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A531_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A531_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(56),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A531_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_25_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A531_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_56_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_56_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A521_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A521_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A521_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A521_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(55),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A521_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_24_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A521_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_62_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_62_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A591_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A591_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A591_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A591_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(61),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A591_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_30_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A591_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res11_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_0_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_61_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_61_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_61_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_in_R_A(61),
      O => NlwBufferSignal_DIV_DP_R_A_61_IN
    );
  NlwBufferBlock_DIV_CTRL_state_ready1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_state_ready1_ADR1
    );
  NlwBufferBlock_DIV_CTRL_state_ready1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_CTRL_state_ready1_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A581_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A581_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(60),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A581_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_29_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A581_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A581_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A581_ADR4
    );
  NlwBufferBlock_DIV_DP_R_A_60_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_60_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A571_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A571_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A571_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_32_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A571_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(59),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A571_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_adder1_out_28_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A571_ADR5
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_SW0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_SW0_ADR4
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR1
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR2
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(3),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR3
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(2),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_SW0_ADR4
    );
  NlwBufferBlock_DIV_DP_R_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_cnt_5_CLK
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_ready_OBUF_3163,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR2
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(1),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR3
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(0),
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR1
    );
  NlwBufferBlock_DIV_DP_Mcount_R_cnt5_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N14,
      O => NlwBufferSignal_DIV_DP_Mcount_R_cnt5_ADR0
    );
  NlwBufferBlock_L_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_6_CLK
    );
  NlwBufferBlock_L_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_6_IBUF_0,
      O => NlwBufferSignal_L_6_IN
    );
  NlwBufferBlock_len_7_IBUF_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_7_IBUF_0,
      O => NlwBufferSignal_len_7_IBUF_rt_ADR4
    );
  NlwBufferBlock_L_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_7_CLK
    );
  NlwBufferBlock_L_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_4_CLK
    );
  NlwBufferBlock_L_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_4_IBUF_0,
      O => NlwBufferSignal_L_4_IN
    );
  NlwBufferBlock_len_5_IBUF_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_5_IBUF_0,
      O => NlwBufferSignal_len_5_IBUF_rt_ADR0
    );
  NlwBufferBlock_L_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_5_CLK
    );
  NlwBufferBlock_L_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_2_CLK
    );
  NlwBufferBlock_L_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_2_IBUF_0,
      O => NlwBufferSignal_L_2_IN
    );
  NlwBufferBlock_len_3_IBUF_rt_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_3_IBUF_0,
      O => NlwBufferSignal_len_3_IBUF_rt_ADR1
    );
  NlwBufferBlock_L_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_3_CLK
    );
  NlwBufferBlock_L_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_0_CLK
    );
  NlwBufferBlock_L_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_0_IBUF_0,
      O => NlwBufferSignal_L_0_IN
    );
  NlwBufferBlock_len_1_IBUF_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => len_1_IBUF_0,
      O => NlwBufferSignal_len_1_IBUF_rt_ADR2
    );
  NlwBufferBlock_L_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_L_1_CLK
    );
  NlwBufferBlock_count_eq_L82_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(4),
      O => NlwBufferSignal_count_eq_L82_ADR3
    );
  NlwBufferBlock_count_eq_L82_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(4),
      O => NlwBufferSignal_count_eq_L82_ADR4
    );
  NlwBufferBlock_count_eq_L82_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(3),
      O => NlwBufferSignal_count_eq_L82_ADR1
    );
  NlwBufferBlock_count_eq_L82_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_3_0,
      O => NlwBufferSignal_count_eq_L82_ADR5
    );
  NlwBufferBlock_count_eq_L82_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(2),
      O => NlwBufferSignal_count_eq_L82_ADR0
    );
  NlwBufferBlock_count_eq_L82_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(2),
      O => NlwBufferSignal_count_eq_L82_ADR2
    );
  NlwBufferBlock_count_eq_L83_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => count_eq_L8,
      O => NlwBufferSignal_count_eq_L83_ADR1
    );
  NlwBufferBlock_count_eq_L83_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_7_0,
      O => NlwBufferSignal_count_eq_L83_ADR0
    );
  NlwBufferBlock_count_eq_L83_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(7),
      O => NlwBufferSignal_count_eq_L83_ADR5
    );
  NlwBufferBlock_count_eq_L83_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(0),
      O => NlwBufferSignal_count_eq_L83_ADR2
    );
  NlwBufferBlock_count_eq_L83_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(0),
      O => NlwBufferSignal_count_eq_L83_ADR4
    );
  NlwBufferBlock_count_eq_L83_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => count_eq_L81_3727,
      O => NlwBufferSignal_count_eq_L83_ADR3
    );
  NlwBufferBlock_division_by_zero_31_SW0_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(6),
      O => NlwBufferSignal_division_by_zero_31_SW0_ADR1
    );
  NlwBufferBlock_division_by_zero_31_SW0_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_5_0,
      O => NlwBufferSignal_division_by_zero_31_SW0_ADR0
    );
  NlwBufferBlock_division_by_zero_31_SW0_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(4),
      O => NlwBufferSignal_division_by_zero_31_SW0_ADR3
    );
  NlwBufferBlock_division_by_zero_31_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_3_0,
      O => NlwBufferSignal_division_by_zero_31_ADR1
    );
  NlwBufferBlock_division_by_zero_31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_1_0,
      O => NlwBufferSignal_division_by_zero_31_ADR3
    );
  NlwBufferBlock_division_by_zero_31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(0),
      O => NlwBufferSignal_division_by_zero_31_ADR2
    );
  NlwBufferBlock_division_by_zero_31_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_7_0,
      O => NlwBufferSignal_division_by_zero_31_ADR0
    );
  NlwBufferBlock_division_by_zero_31_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N12,
      O => NlwBufferSignal_division_by_zero_31_ADR5
    );
  NlwBufferBlock_count_eq_L81_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(1),
      O => NlwBufferSignal_count_eq_L81_ADR5
    );
  NlwBufferBlock_count_eq_L81_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_1_0,
      O => NlwBufferSignal_count_eq_L81_ADR4
    );
  NlwBufferBlock_count_eq_L81_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(6),
      O => NlwBufferSignal_count_eq_L81_ADR0
    );
  NlwBufferBlock_count_eq_L81_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L(6),
      O => NlwBufferSignal_count_eq_L81_ADR3
    );
  NlwBufferBlock_count_eq_L81_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CNT(5),
      O => NlwBufferSignal_count_eq_L81_ADR1
    );
  NlwBufferBlock_count_eq_L81_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => L_5_0,
      O => NlwBufferSignal_count_eq_L81_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(0),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(0),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_0_MUX_247_o11_ADR4
    );
  NlwBufferBlock_result_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_27_CLK
    );
  NlwBufferBlock_result_27_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_27_rstpot_ADR3
    );
  NlwBufferBlock_result_27_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_27_rstpot_ADR1
    );
  NlwBufferBlock_result_27_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_27_0,
      O => NlwBufferSignal_result_27_rstpot_ADR0
    );
  NlwBufferBlock_result_27_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_27_rstpot_ADR4
    );
  NlwBufferBlock_result_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_26_CLK
    );
  NlwBufferBlock_result_26_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_26_rstpot_ADR1
    );
  NlwBufferBlock_result_26_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_26_rstpot_ADR5
    );
  NlwBufferBlock_result_26_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(26),
      O => NlwBufferSignal_result_26_rstpot_ADR2
    );
  NlwBufferBlock_result_26_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_26_rstpot_ADR3
    );
  NlwBufferBlock_result_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_25_CLK
    );
  NlwBufferBlock_result_25_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_25_rstpot_ADR2
    );
  NlwBufferBlock_result_25_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_25_rstpot_ADR0
    );
  NlwBufferBlock_result_25_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_25_3669,
      O => NlwBufferSignal_result_25_rstpot_ADR3
    );
  NlwBufferBlock_result_25_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(25),
      O => NlwBufferSignal_result_25_rstpot_ADR5
    );
  NlwBufferBlock_result_25_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_25_rstpot_ADR4
    );
  NlwBufferBlock_result_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_24_CLK
    );
  NlwBufferBlock_result_24_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_24_rstpot_ADR2
    );
  NlwBufferBlock_result_24_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_24_rstpot_ADR0
    );
  NlwBufferBlock_result_24_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(24),
      O => NlwBufferSignal_result_24_rstpot_ADR3
    );
  NlwBufferBlock_result_24_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_24_rstpot_ADR4
    );
  NlwBufferBlock_result_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_31_CLK
    );
  NlwBufferBlock_result_31_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_31_rstpot_ADR1
    );
  NlwBufferBlock_result_31_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_31_rstpot_ADR2
    );
  NlwBufferBlock_result_31_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_31_0,
      O => NlwBufferSignal_result_31_rstpot_ADR3
    );
  NlwBufferBlock_result_31_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_31_rstpot_ADR4
    );
  NlwBufferBlock_result_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_30_CLK
    );
  NlwBufferBlock_result_30_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_30_rstpot_ADR5
    );
  NlwBufferBlock_result_30_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_30_rstpot_ADR0
    );
  NlwBufferBlock_result_30_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(30),
      O => NlwBufferSignal_result_30_rstpot_ADR2
    );
  NlwBufferBlock_result_30_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_30_rstpot_ADR3
    );
  NlwBufferBlock_result_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_29_CLK
    );
  NlwBufferBlock_result_29_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_29_rstpot_ADR0
    );
  NlwBufferBlock_result_29_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_29_rstpot_ADR3
    );
  NlwBufferBlock_result_29_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_29_3675,
      O => NlwBufferSignal_result_29_rstpot_ADR2
    );
  NlwBufferBlock_result_29_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(29),
      O => NlwBufferSignal_result_29_rstpot_ADR1
    );
  NlwBufferBlock_result_29_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_29_rstpot_ADR4
    );
  NlwBufferBlock_result_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_28_CLK
    );
  NlwBufferBlock_result_28_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_28_rstpot_ADR2
    );
  NlwBufferBlock_result_28_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_28_rstpot_ADR0
    );
  NlwBufferBlock_result_28_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(28),
      O => NlwBufferSignal_result_28_rstpot_ADR1
    );
  NlwBufferBlock_result_28_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_28_rstpot_ADR4
    );
  NlwBufferBlock_DIV_CTRL_load_R_A1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR1
    );
  NlwBufferBlock_DIV_CTRL_load_R_A1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR4
    );
  NlwBufferBlock_DIV_CTRL_load_R_A1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_start_IBUF_0,
      O => NlwBufferSignal_DIV_CTRL_load_R_A1_ADR2
    );
  NlwBufferBlock_DIV_CTRL_load_R_B1_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR1
    );
  NlwBufferBlock_DIV_CTRL_load_R_B1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR4
    );
  NlwBufferBlock_DIV_CTRL_load_R_B1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_start_IBUF_0,
      O => NlwBufferSignal_DIV_CTRL_load_R_B1_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_27_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A201_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(26),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A201_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A201_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A201_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_27_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A201_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res201_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(26),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res201_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res201_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res201_ADR3
    );
  NlwBufferBlock_DIV_DP_R_res_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_27_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_26_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A191_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(25),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A191_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A191_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A191_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(26),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A191_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res191_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(25),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res191_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res191_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res191_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_26_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_25_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A181_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(24),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A181_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A181_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A181_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_25_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A181_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res181_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(24),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res181_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res181_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res181_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_25_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_24_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A171_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(23),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A171_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A171_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A171_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(24),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A171_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res171_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_23_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res171_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res171_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res171_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_24_CLK
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(11),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(11),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_11_MUX_225_o11_ADR2
    );
  NlwBufferBlock_result_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_23_CLK
    );
  NlwBufferBlock_result_23_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_23_rstpot_ADR0
    );
  NlwBufferBlock_result_23_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_23_rstpot_ADR2
    );
  NlwBufferBlock_result_23_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_23_0,
      O => NlwBufferSignal_result_23_rstpot_ADR3
    );
  NlwBufferBlock_result_23_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_23_rstpot_ADR4
    );
  NlwBufferBlock_result_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_22_CLK
    );
  NlwBufferBlock_result_22_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_22_rstpot_ADR0
    );
  NlwBufferBlock_result_22_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_22_rstpot_ADR1
    );
  NlwBufferBlock_result_22_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(22),
      O => NlwBufferSignal_result_22_rstpot_ADR3
    );
  NlwBufferBlock_result_22_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_22_rstpot_ADR5
    );
  NlwBufferBlock_result_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_21_CLK
    );
  NlwBufferBlock_result_21_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_21_rstpot_ADR1
    );
  NlwBufferBlock_result_21_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_21_rstpot_ADR5
    );
  NlwBufferBlock_result_21_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_21_3659,
      O => NlwBufferSignal_result_21_rstpot_ADR4
    );
  NlwBufferBlock_result_21_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(21),
      O => NlwBufferSignal_result_21_rstpot_ADR2
    );
  NlwBufferBlock_result_21_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_21_rstpot_ADR3
    );
  NlwBufferBlock_result_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_20_CLK
    );
  NlwBufferBlock_result_20_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_20_rstpot_ADR0
    );
  NlwBufferBlock_result_20_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_20_rstpot_ADR4
    );
  NlwBufferBlock_result_20_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(20),
      O => NlwBufferSignal_result_20_rstpot_ADR3
    );
  NlwBufferBlock_result_20_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_20_rstpot_ADR2
    );
  NlwBufferBlock_DIV_DP_R_A_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_31_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A251_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(30),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A251_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A251_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A251_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_31_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A251_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res251_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(30),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res251_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res251_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res251_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_31_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_30_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A241_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(29),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A241_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A241_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A241_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(30),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A241_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res241_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(29),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res241_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res241_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res241_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_30_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_29_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A221_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(28),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A221_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A221_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A221_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_29_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A221_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res221_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(28),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res221_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res221_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res221_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_29_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_28_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A211_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(27),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A211_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A211_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A211_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(28),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A211_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res211_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_27_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res211_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res211_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res211_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_28_CLK
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd2_In1_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_abort_IBUF_0,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR3
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd2_In1_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_start_IBUF_0,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR2
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd2_In1_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR4
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd2_In1_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd2_In1_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(0),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A11_ADR0
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => div_abort_IBUF_0,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR1
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N16_0,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR4
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(4),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR2
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_cnt(5),
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR3
    );
  NlwBufferBlock_DIV_CTRL_state_FSM_FFd1_In_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_CTRL_state_FSM_FFd1_In_ADR0
    );
  NlwBufferBlock_result_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_3_CLK
    );
  NlwBufferBlock_result_3_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_3_rstpot_ADR1
    );
  NlwBufferBlock_result_3_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_3_rstpot_ADR3
    );
  NlwBufferBlock_result_3_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_3_3682,
      O => NlwBufferSignal_result_3_rstpot_ADR2
    );
  NlwBufferBlock_result_3_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_3_0,
      O => NlwBufferSignal_result_3_rstpot_ADR0
    );
  NlwBufferBlock_result_3_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_3_rstpot_ADR5
    );
  NlwBufferBlock_result_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_2_CLK
    );
  NlwBufferBlock_result_2_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_2_rstpot_ADR5
    );
  NlwBufferBlock_result_2_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_2_rstpot_ADR2
    );
  NlwBufferBlock_result_2_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_2_3681,
      O => NlwBufferSignal_result_2_rstpot_ADR0
    );
  NlwBufferBlock_result_2_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(2),
      O => NlwBufferSignal_result_2_rstpot_ADR3
    );
  NlwBufferBlock_result_2_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_2_rstpot_ADR4
    );
  NlwBufferBlock_result_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_1_CLK
    );
  NlwBufferBlock_result_1_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_1_rstpot_ADR0
    );
  NlwBufferBlock_result_1_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_1_rstpot_ADR1
    );
  NlwBufferBlock_result_1_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(1),
      O => NlwBufferSignal_result_1_rstpot_ADR3
    );
  NlwBufferBlock_result_1_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_1_rstpot_ADR2
    );
  NlwBufferBlock_result_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_0_CLK
    );
  NlwBufferBlock_result_0_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_0_rstpot_ADR0
    );
  NlwBufferBlock_result_0_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_0_rstpot_ADR1
    );
  NlwBufferBlock_result_0_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_0_3679,
      O => NlwBufferSignal_result_0_rstpot_ADR4
    );
  NlwBufferBlock_result_0_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_0_0,
      O => NlwBufferSignal_result_0_rstpot_ADR5
    );
  NlwBufferBlock_result_0_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_0_rstpot_ADR3
    );
  NlwBufferBlock_result_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_19_CLK
    );
  NlwBufferBlock_result_19_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_19_rstpot_ADR0
    );
  NlwBufferBlock_result_19_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_19_rstpot_ADR3
    );
  NlwBufferBlock_result_19_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_19_0,
      O => NlwBufferSignal_result_19_rstpot_ADR1
    );
  NlwBufferBlock_result_19_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_19_rstpot_ADR4
    );
  NlwBufferBlock_result_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_18_CLK
    );
  NlwBufferBlock_result_18_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_18_rstpot_ADR5
    );
  NlwBufferBlock_result_18_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_18_rstpot_ADR0
    );
  NlwBufferBlock_result_18_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(18),
      O => NlwBufferSignal_result_18_rstpot_ADR2
    );
  NlwBufferBlock_result_18_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_18_rstpot_ADR3
    );
  NlwBufferBlock_result_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_17_CLK
    );
  NlwBufferBlock_result_17_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_17_rstpot_ADR3
    );
  NlwBufferBlock_result_17_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_17_rstpot_ADR5
    );
  NlwBufferBlock_result_17_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_17_3668,
      O => NlwBufferSignal_result_17_rstpot_ADR2
    );
  NlwBufferBlock_result_17_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(17),
      O => NlwBufferSignal_result_17_rstpot_ADR1
    );
  NlwBufferBlock_result_17_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_17_rstpot_ADR4
    );
  NlwBufferBlock_result_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_16_CLK
    );
  NlwBufferBlock_result_16_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_16_rstpot_ADR0
    );
  NlwBufferBlock_result_16_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_16_rstpot_ADR1
    );
  NlwBufferBlock_result_16_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(16),
      O => NlwBufferSignal_result_16_rstpot_ADR2
    );
  NlwBufferBlock_result_16_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_16_rstpot_ADR4
    );
  NlwBufferBlock_DIV_DP_R_A_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_3_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A341_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(2),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A341_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A341_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A341_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_3_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A341_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res261_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(2),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res261_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res261_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res261_ADR3
    );
  NlwBufferBlock_DIV_DP_R_res_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_3_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_2_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A231_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(1),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A231_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A231_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A231_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(2),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A231_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res231_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(1),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res231_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res231_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res231_ADR2
    );
  NlwBufferBlock_DIV_DP_R_res_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_2_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_1_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A121_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(0),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A121_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A121_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A121_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_1_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A121_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res121_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_0_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res121_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res121_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res121_ADR3
    );
  NlwBufferBlock_DIV_DP_R_res_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_1_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_0_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_in_R_A_0_0,
      O => NlwBufferSignal_DIV_DP_R_A_0_IN
    );
  NlwBufferBlock_DIV_DP_R_A_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_19_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A111_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(18),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A111_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A111_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A111_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_19_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A111_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res111_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(18),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res111_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res111_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res111_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_19_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_18_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A101_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(17),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A101_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A101_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A101_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(18),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A101_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res101_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(17),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res101_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res101_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res101_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_18_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_17_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A91_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(16),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A91_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A91_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A91_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_17_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A91_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res91_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(16),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res91_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res91_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res91_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_17_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_16_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A81_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(15),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A81_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A81_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A81_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(16),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A81_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res81_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_15_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res81_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res81_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res81_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_16_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_11_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A34_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(10),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A34_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A34_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A34_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_11_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A34_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res31_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(10),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res31_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res31_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res31_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_11_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_10_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A21_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(9),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A21_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(10),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A21_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res21_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(9),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res21_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res21_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res21_ADR2
    );
  NlwBufferBlock_DIV_DP_R_res_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_10_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_9_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A641_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(8),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A641_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A641_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A641_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_9_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A641_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res321_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(8),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res321_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res321_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res321_ADR0
    );
  NlwBufferBlock_DIV_DP_R_res_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_9_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_8_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A631_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(7),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A631_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A631_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A631_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(8),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A631_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res311_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_7_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res311_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res311_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res311_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_8_CLK
    );
  NlwBufferBlock_R_res_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_6_CLK
    );
  NlwBufferBlock_R_res_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_6_0,
      O => NlwBufferSignal_R_res_6_IN
    );
  NlwBufferBlock_R_res_6_in_R_res_7_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_7_0,
      O => NlwBufferSignal_R_res_6_in_R_res_7_rt_ADR2
    );
  NlwBufferBlock_R_res_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_7_CLK
    );
  NlwBufferBlock_R_res_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_4_CLK
    );
  NlwBufferBlock_R_res_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_4_0,
      O => NlwBufferSignal_R_res_4_IN
    );
  NlwBufferBlock_R_res_6_in_R_res_5_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_5_0,
      O => NlwBufferSignal_R_res_6_in_R_res_5_rt_ADR3
    );
  NlwBufferBlock_R_res_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_5_CLK
    );
  NlwBufferBlock_R_res_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_2_CLK
    );
  NlwBufferBlock_R_res_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_2_0,
      O => NlwBufferSignal_R_res_2_IN
    );
  NlwBufferBlock_R_res_6_in_R_res_3_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_3_0,
      O => NlwBufferSignal_R_res_6_in_R_res_3_rt_ADR4
    );
  NlwBufferBlock_R_res_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_3_CLK
    );
  NlwBufferBlock_R_res_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_0_CLK
    );
  NlwBufferBlock_R_res_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_0_0,
      O => NlwBufferSignal_R_res_0_IN
    );
  NlwBufferBlock_Madd_in_R_res_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D2(0),
      O => NlwBufferSignal_Madd_in_R_res_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(0),
      O => NlwBufferSignal_Madd_in_R_res_ADR2
    );
  NlwBufferBlock_Madd_in_R_res_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_D1(0),
      O => NlwBufferSignal_Madd_in_R_res_ADR1
    );
  NlwBufferBlock_R_res_6_in_R_res_1_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_1_0,
      O => NlwBufferSignal_R_res_6_in_R_res_1_rt_ADR3
    );
  NlwBufferBlock_R_res_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_1_CLK
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(1),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(1),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_1_MUX_245_o11_ADR5
    );
  NlwBufferBlock_DIV_DP_R_A_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_7_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A621_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(6),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A621_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A621_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A621_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_7_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A621_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res301_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(6),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res301_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res301_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res301_ADR3
    );
  NlwBufferBlock_DIV_DP_R_res_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_7_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_6_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A611_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(5),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A611_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A611_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A611_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(6),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A611_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res291_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(5),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res291_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res291_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res291_ADR2
    );
  NlwBufferBlock_DIV_DP_R_res_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_6_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_5_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A561_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(4),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A561_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A561_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A561_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_5_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A561_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res281_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(4),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res281_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res281_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res281_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_5_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_4_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A451_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(3),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A451_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A451_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A451_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(4),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A451_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res271_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_3_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res271_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res271_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res271_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_4_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_23_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A161_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(22),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A161_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A161_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A161_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_23_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A161_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res161_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(22),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res161_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res161_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res161_ADR3
    );
  NlwBufferBlock_DIV_DP_R_res_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_23_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_22_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A151_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(21),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A151_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A151_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A151_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(22),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A151_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res151_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(21),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res151_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res151_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res151_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_22_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_21_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A141_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(20),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A141_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A141_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A141_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_21_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A141_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res141_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(20),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res141_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res141_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res141_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_21_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_20_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A131_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(19),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A131_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A131_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A131_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(20),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A131_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res131_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_19_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res131_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res131_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res131_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_20_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_15_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A71_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(14),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A71_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A71_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A71_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_15_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A71_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res71_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(14),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res71_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res71_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res71_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_15_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_14_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A61_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(13),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A61_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A61_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A61_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(14),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A61_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res61_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(13),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res61_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res61_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res61_ADR2
    );
  NlwBufferBlock_DIV_DP_R_res_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_14_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_13_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A56_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(12),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A56_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A56_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A56_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res_13_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A56_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res51_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(12),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res51_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res51_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res51_ADR4
    );
  NlwBufferBlock_DIV_DP_R_res_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_13_CLK
    );
  NlwBufferBlock_DIV_DP_R_A_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_A_12_CLK
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A45_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_A(11),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR2
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A45_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A45_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR1
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_A45_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_res(12),
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_A45_ADR3
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res41_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_11_0,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR0
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res41_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd2_3135,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR4
    );
  NlwBufferBlock_DIV_DP_Mmux_in_R_res41_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_state_FSM_FFd1_3136,
      O => NlwBufferSignal_DIV_DP_Mmux_in_R_res41_ADR1
    );
  NlwBufferBlock_DIV_DP_R_res_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DIV_DP_R_res_12_CLK
    );
  NlwBufferBlock_R_res_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_14_CLK
    );
  NlwBufferBlock_R_res_14_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_14_0,
      O => NlwBufferSignal_R_res_14_IN
    );
  NlwBufferBlock_R_res_14_in_R_res_15_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_15_0,
      O => NlwBufferSignal_R_res_14_in_R_res_15_rt_ADR2
    );
  NlwBufferBlock_R_res_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_15_CLK
    );
  NlwBufferBlock_R_res_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_12_CLK
    );
  NlwBufferBlock_R_res_12_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_12_0,
      O => NlwBufferSignal_R_res_12_IN
    );
  NlwBufferBlock_R_res_14_in_R_res_13_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_13_0,
      O => NlwBufferSignal_R_res_14_in_R_res_13_rt_ADR3
    );
  NlwBufferBlock_R_res_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_13_CLK
    );
  NlwBufferBlock_R_res_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_10_CLK
    );
  NlwBufferBlock_R_res_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_10_0,
      O => NlwBufferSignal_R_res_10_IN
    );
  NlwBufferBlock_R_res_14_in_R_res_11_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_11_0,
      O => NlwBufferSignal_R_res_14_in_R_res_11_rt_ADR2
    );
  NlwBufferBlock_R_res_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_11_CLK
    );
  NlwBufferBlock_R_res_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_8_CLK
    );
  NlwBufferBlock_R_res_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_8_0,
      O => NlwBufferSignal_R_res_8_IN
    );
  NlwBufferBlock_R_res_14_in_R_res_9_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_9_0,
      O => NlwBufferSignal_R_res_14_in_R_res_9_rt_ADR4
    );
  NlwBufferBlock_R_res_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_9_CLK
    );
  NlwBufferBlock_R_res_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_30_CLK
    );
  NlwBufferBlock_R_res_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_30_0,
      O => NlwBufferSignal_R_res_30_IN
    );
  NlwBufferBlock_in_R_res_31_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_31_0,
      O => NlwBufferSignal_in_R_res_31_rt_ADR4
    );
  NlwBufferBlock_R_res_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_31_CLK
    );
  NlwBufferBlock_R_res_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_28_CLK
    );
  NlwBufferBlock_R_res_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_28_0,
      O => NlwBufferSignal_R_res_28_IN
    );
  NlwBufferBlock_R_res_30_in_R_res_29_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_29_0,
      O => NlwBufferSignal_R_res_30_in_R_res_29_rt_ADR4
    );
  NlwBufferBlock_R_res_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_29_CLK
    );
  NlwBufferBlock_R_res_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_26_CLK
    );
  NlwBufferBlock_R_res_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_26_0,
      O => NlwBufferSignal_R_res_26_IN
    );
  NlwBufferBlock_R_res_30_in_R_res_27_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_27_0,
      O => NlwBufferSignal_R_res_30_in_R_res_27_rt_ADR2
    );
  NlwBufferBlock_R_res_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_27_CLK
    );
  NlwBufferBlock_R_res_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_24_CLK
    );
  NlwBufferBlock_R_res_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_24_0,
      O => NlwBufferSignal_R_res_24_IN
    );
  NlwBufferBlock_R_res_30_in_R_res_25_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_25_0,
      O => NlwBufferSignal_R_res_30_in_R_res_25_rt_ADR3
    );
  NlwBufferBlock_R_res_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_25_CLK
    );
  NlwBufferBlock_R_res_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_22_CLK
    );
  NlwBufferBlock_R_res_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_22_0,
      O => NlwBufferSignal_R_res_22_IN
    );
  NlwBufferBlock_R_res_22_in_R_res_23_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_23_0,
      O => NlwBufferSignal_R_res_22_in_R_res_23_rt_ADR2
    );
  NlwBufferBlock_R_res_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_23_CLK
    );
  NlwBufferBlock_R_res_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_20_CLK
    );
  NlwBufferBlock_R_res_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_20_0,
      O => NlwBufferSignal_R_res_20_IN
    );
  NlwBufferBlock_R_res_22_in_R_res_21_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_21_0,
      O => NlwBufferSignal_R_res_22_in_R_res_21_rt_ADR4
    );
  NlwBufferBlock_R_res_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_21_CLK
    );
  NlwBufferBlock_R_res_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_18_CLK
    );
  NlwBufferBlock_R_res_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_18_0,
      O => NlwBufferSignal_R_res_18_IN
    );
  NlwBufferBlock_R_res_22_in_R_res_19_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_19_0,
      O => NlwBufferSignal_R_res_22_in_R_res_19_rt_ADR2
    );
  NlwBufferBlock_R_res_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_19_CLK
    );
  NlwBufferBlock_R_res_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_16_CLK
    );
  NlwBufferBlock_R_res_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_16_0,
      O => NlwBufferSignal_R_res_16_IN
    );
  NlwBufferBlock_R_res_22_in_R_res_17_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_17_0,
      O => NlwBufferSignal_R_res_22_in_R_res_17_rt_ADR2
    );
  NlwBufferBlock_R_res_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_res_17_CLK
    );
  NlwBufferBlock_R_D1_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_30_CLK
    );
  NlwBufferBlock_R_D1_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_30_3460,
      O => NlwBufferSignal_R_D1_30_IN
    );
  NlwBufferBlock_in_R_D1_31_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_31_3463,
      O => NlwBufferSignal_in_R_D1_31_rt_ADR2
    );
  NlwBufferBlock_R_D1_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_31_CLK
    );
  NlwBufferBlock_R_D1_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_28_CLK
    );
  NlwBufferBlock_R_D1_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_28_3454,
      O => NlwBufferSignal_R_D1_28_IN
    );
  NlwBufferBlock_in_R_D1_29_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_29_3457,
      O => NlwBufferSignal_in_R_D1_29_rt_ADR4
    );
  NlwBufferBlock_R_D1_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_29_CLK
    );
  NlwBufferBlock_R_D1_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_26_CLK
    );
  NlwBufferBlock_R_D1_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_26_3447,
      O => NlwBufferSignal_R_D1_26_IN
    );
  NlwBufferBlock_in_R_D1_27_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_27_3451,
      O => NlwBufferSignal_in_R_D1_27_rt_ADR0
    );
  NlwBufferBlock_R_D1_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_27_CLK
    );
  NlwBufferBlock_R_D1_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_24_CLK
    );
  NlwBufferBlock_R_D1_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_24_3441,
      O => NlwBufferSignal_R_D1_24_IN
    );
  NlwBufferBlock_in_R_D1_25_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_25_3444,
      O => NlwBufferSignal_in_R_D1_25_rt_ADR3
    );
  NlwBufferBlock_R_D1_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_25_CLK
    );
  NlwBufferBlock_result_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_11_CLK
    );
  NlwBufferBlock_result_11_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_11_rstpot_ADR3
    );
  NlwBufferBlock_result_11_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_11_rstpot_ADR0
    );
  NlwBufferBlock_result_11_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_11_3655,
      O => NlwBufferSignal_result_11_rstpot_ADR4
    );
  NlwBufferBlock_result_11_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_11_0,
      O => NlwBufferSignal_result_11_rstpot_ADR1
    );
  NlwBufferBlock_result_11_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_11_rstpot_ADR5
    );
  NlwBufferBlock_result_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_10_CLK
    );
  NlwBufferBlock_result_10_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_10_rstpot_ADR5
    );
  NlwBufferBlock_result_10_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_10_rstpot_ADR2
    );
  NlwBufferBlock_result_10_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_10_3654,
      O => NlwBufferSignal_result_10_rstpot_ADR0
    );
  NlwBufferBlock_result_10_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(10),
      O => NlwBufferSignal_result_10_rstpot_ADR3
    );
  NlwBufferBlock_result_10_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_10_rstpot_ADR4
    );
  NlwBufferBlock_result_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_9_CLK
    );
  NlwBufferBlock_result_9_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_9_rstpot_ADR0
    );
  NlwBufferBlock_result_9_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_9_rstpot_ADR3
    );
  NlwBufferBlock_result_9_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(9),
      O => NlwBufferSignal_result_9_rstpot_ADR5
    );
  NlwBufferBlock_result_9_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_9_rstpot_ADR2
    );
  NlwBufferBlock_result_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_8_CLK
    );
  NlwBufferBlock_result_8_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_8_rstpot_ADR1
    );
  NlwBufferBlock_result_8_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_8_rstpot_ADR0
    );
  NlwBufferBlock_result_8_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(8),
      O => NlwBufferSignal_result_8_rstpot_ADR2
    );
  NlwBufferBlock_result_8_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_8_rstpot_ADR3
    );
  NlwBufferBlock_R_D2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_6_CLK
    );
  NlwBufferBlock_R_D2_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_6_3383,
      O => NlwBufferSignal_R_D2_6_IN
    );
  NlwBufferBlock_in_R_D2_7_rt_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_7_3387,
      O => NlwBufferSignal_in_R_D2_7_rt_ADR1
    );
  NlwBufferBlock_R_D2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_7_CLK
    );
  NlwBufferBlock_R_D2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_4_CLK
    );
  NlwBufferBlock_R_D2_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_4_3377,
      O => NlwBufferSignal_R_D2_4_IN
    );
  NlwBufferBlock_in_R_D2_5_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_5_3380,
      O => NlwBufferSignal_in_R_D2_5_rt_ADR3
    );
  NlwBufferBlock_R_D2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_5_CLK
    );
  NlwBufferBlock_R_D2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_2_CLK
    );
  NlwBufferBlock_R_D2_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_2_3370,
      O => NlwBufferSignal_R_D2_2_IN
    );
  NlwBufferBlock_in_R_D2_3_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_3_3374,
      O => NlwBufferSignal_in_R_D2_3_rt_ADR2
    );
  NlwBufferBlock_R_D2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_3_CLK
    );
  NlwBufferBlock_R_D2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_0_CLK
    );
  NlwBufferBlock_R_D2_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_0_3364,
      O => NlwBufferSignal_R_D2_0_IN
    );
  NlwBufferBlock_in_R_D2_1_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_1_3366,
      O => NlwBufferSignal_in_R_D2_1_rt_ADR0
    );
  NlwBufferBlock_R_D2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_1_CLK
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(10),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(10),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_10_MUX_227_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(9),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR1
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(9),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_9_MUX_229_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(7),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR1
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(7),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_7_MUX_233_o11_ADR3
    );
  NlwBufferBlock_R_D2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_14_CLK
    );
  NlwBufferBlock_R_D2_14_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_14_3409,
      O => NlwBufferSignal_R_D2_14_IN
    );
  NlwBufferBlock_in_R_D2_15_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_15_3413,
      O => NlwBufferSignal_in_R_D2_15_rt_ADR3
    );
  NlwBufferBlock_R_D2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_15_CLK
    );
  NlwBufferBlock_R_D2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_12_CLK
    );
  NlwBufferBlock_R_D2_12_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_12_3403,
      O => NlwBufferSignal_R_D2_12_IN
    );
  NlwBufferBlock_in_R_D2_13_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_13_3406,
      O => NlwBufferSignal_in_R_D2_13_rt_ADR4
    );
  NlwBufferBlock_R_D2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_13_CLK
    );
  NlwBufferBlock_R_D2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_10_CLK
    );
  NlwBufferBlock_R_D2_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_10_3396,
      O => NlwBufferSignal_R_D2_10_IN
    );
  NlwBufferBlock_in_R_D2_11_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_11_3400,
      O => NlwBufferSignal_in_R_D2_11_rt_ADR2
    );
  NlwBufferBlock_R_D2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_11_CLK
    );
  NlwBufferBlock_R_D2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_8_CLK
    );
  NlwBufferBlock_R_D2_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_8_3390,
      O => NlwBufferSignal_R_D2_8_IN
    );
  NlwBufferBlock_in_R_D2_9_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_9_3393,
      O => NlwBufferSignal_in_R_D2_9_rt_ADR0
    );
  NlwBufferBlock_R_D2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_9_CLK
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(4),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR1
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR2
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(4),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_4_MUX_239_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(3),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR1
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(3),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_3_MUX_241_o11_ADR2
    );
  NlwBufferBlock_R_D1_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_22_CLK
    );
  NlwBufferBlock_R_D1_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_22_3434,
      O => NlwBufferSignal_R_D1_22_IN
    );
  NlwBufferBlock_in_R_D1_23_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_23_3438,
      O => NlwBufferSignal_in_R_D1_23_rt_ADR2
    );
  NlwBufferBlock_R_D1_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_23_CLK
    );
  NlwBufferBlock_R_D1_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_20_CLK
    );
  NlwBufferBlock_R_D1_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_20_3428,
      O => NlwBufferSignal_R_D1_20_IN
    );
  NlwBufferBlock_in_R_D1_21_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_21_3431,
      O => NlwBufferSignal_in_R_D1_21_rt_ADR4
    );
  NlwBufferBlock_R_D1_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_21_CLK
    );
  NlwBufferBlock_R_D1_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_18_CLK
    );
  NlwBufferBlock_R_D1_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_18_3421,
      O => NlwBufferSignal_R_D1_18_IN
    );
  NlwBufferBlock_in_R_D1_19_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_19_3425,
      O => NlwBufferSignal_in_R_D1_19_rt_ADR2
    );
  NlwBufferBlock_R_D1_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_19_CLK
    );
  NlwBufferBlock_R_D1_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_16_CLK
    );
  NlwBufferBlock_R_D1_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_16_3415,
      O => NlwBufferSignal_R_D1_16_IN
    );
  NlwBufferBlock_in_R_D1_17_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_17_3418,
      O => NlwBufferSignal_in_R_D1_17_rt_ADR0
    );
  NlwBufferBlock_R_D1_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_17_CLK
    );
  NlwBufferBlock_R_D2_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_30_CLK
    );
  NlwBufferBlock_R_D2_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_30_3461,
      O => NlwBufferSignal_R_D2_30_IN
    );
  NlwBufferBlock_in_R_D2_31_rt_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_31_3464,
      O => NlwBufferSignal_in_R_D2_31_rt_ADR1
    );
  NlwBufferBlock_R_D2_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_31_CLK
    );
  NlwBufferBlock_R_D2_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_28_CLK
    );
  NlwBufferBlock_R_D2_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_28_3455,
      O => NlwBufferSignal_R_D2_28_IN
    );
  NlwBufferBlock_in_R_D2_29_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_29_3458,
      O => NlwBufferSignal_in_R_D2_29_rt_ADR2
    );
  NlwBufferBlock_R_D2_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_29_CLK
    );
  NlwBufferBlock_R_D2_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_26_CLK
    );
  NlwBufferBlock_R_D2_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_26_3448,
      O => NlwBufferSignal_R_D2_26_IN
    );
  NlwBufferBlock_in_R_D2_27_rt_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_27_3452,
      O => NlwBufferSignal_in_R_D2_27_rt_ADR1
    );
  NlwBufferBlock_R_D2_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_27_CLK
    );
  NlwBufferBlock_R_D2_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_24_CLK
    );
  NlwBufferBlock_R_D2_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_24_3442,
      O => NlwBufferSignal_R_D2_24_IN
    );
  NlwBufferBlock_in_R_D2_25_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_25_3445,
      O => NlwBufferSignal_in_R_D2_25_rt_ADR0
    );
  NlwBufferBlock_R_D2_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_25_CLK
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(2),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(2),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_2_MUX_243_o11_ADR4
    );
  NlwBufferBlock_in_R_D2_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_19_CLK
    );
  NlwBufferBlock_in_R_D2_19_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_19_IBUF_0,
      O => NlwBufferSignal_in_R_D2_19_IN
    );
  NlwBufferBlock_in_R_D2_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_18_CLK
    );
  NlwBufferBlock_in_R_D2_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_18_IBUF_0,
      O => NlwBufferSignal_in_R_D2_18_IN
    );
  NlwBufferBlock_in_R_D2_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_17_CLK
    );
  NlwBufferBlock_in_R_D2_17_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_17_IBUF_0,
      O => NlwBufferSignal_in_R_D2_17_IN
    );
  NlwBufferBlock_in_R_D2_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_16_CLK
    );
  NlwBufferBlock_in_R_D2_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_16_IBUF_0,
      O => NlwBufferSignal_in_R_D2_16_IN
    );
  NlwBufferBlock_in_R_D1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_15_CLK
    );
  NlwBufferBlock_in_R_D1_15_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_15_IBUF_0,
      O => NlwBufferSignal_in_R_D1_15_IN
    );
  NlwBufferBlock_in_R_D1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_14_CLK
    );
  NlwBufferBlock_in_R_D1_14_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_14_IBUF_0,
      O => NlwBufferSignal_in_R_D1_14_IN
    );
  NlwBufferBlock_in_R_D1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_13_CLK
    );
  NlwBufferBlock_in_R_D1_13_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_13_IBUF_0,
      O => NlwBufferSignal_in_R_D1_13_IN
    );
  NlwBufferBlock_in_R_D1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_12_CLK
    );
  NlwBufferBlock_in_R_D1_12_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_12_IBUF_0,
      O => NlwBufferSignal_in_R_D1_12_IN
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_0_3364,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR4
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_0_3363,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR1
    );
  NlwBufferBlock_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_res_0_0,
      O => NlwBufferSignal_Madd_in_R_res_31_in_R_D2_31_add_24_OUT_ADR3
    );
  NlwBufferBlock_R_D1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_6_CLK
    );
  NlwBufferBlock_R_D1_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_6_3382,
      O => NlwBufferSignal_R_D1_6_IN
    );
  NlwBufferBlock_in_R_D1_7_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_7_3386,
      O => NlwBufferSignal_in_R_D1_7_rt_ADR4
    );
  NlwBufferBlock_R_D1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_7_CLK
    );
  NlwBufferBlock_R_D1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_4_CLK
    );
  NlwBufferBlock_R_D1_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_4_3376,
      O => NlwBufferSignal_R_D1_4_IN
    );
  NlwBufferBlock_in_R_D1_5_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_5_3379,
      O => NlwBufferSignal_in_R_D1_5_rt_ADR3
    );
  NlwBufferBlock_R_D1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_5_CLK
    );
  NlwBufferBlock_R_D1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_2_CLK
    );
  NlwBufferBlock_R_D1_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_2_3369,
      O => NlwBufferSignal_R_D1_2_IN
    );
  NlwBufferBlock_in_R_D1_3_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_3_3373,
      O => NlwBufferSignal_in_R_D1_3_rt_ADR4
    );
  NlwBufferBlock_R_D1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_3_CLK
    );
  NlwBufferBlock_R_D1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_0_CLK
    );
  NlwBufferBlock_R_D1_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_0_3363,
      O => NlwBufferSignal_R_D1_0_IN
    );
  NlwBufferBlock_in_R_D1_1_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_1_3365,
      O => NlwBufferSignal_in_R_D1_1_rt_ADR3
    );
  NlwBufferBlock_R_D1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_1_CLK
    );
  NlwBufferBlock_in_R_D2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_7_CLK
    );
  NlwBufferBlock_in_R_D2_7_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_7_IBUF_0,
      O => NlwBufferSignal_in_R_D2_7_IN
    );
  NlwBufferBlock_in_R_D2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_6_CLK
    );
  NlwBufferBlock_in_R_D2_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_6_IBUF_0,
      O => NlwBufferSignal_in_R_D2_6_IN
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(6),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR1
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(6),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_6_MUX_235_o11_ADR3
    );
  NlwBufferBlock_in_R_D2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_5_CLK
    );
  NlwBufferBlock_in_R_D2_5_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_5_IBUF_0,
      O => NlwBufferSignal_in_R_D2_5_IN
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(5),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR5
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(5),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_5_MUX_237_o11_ADR0
    );
  NlwBufferBlock_in_R_D2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_4_CLK
    );
  NlwBufferBlock_in_R_D2_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_4_IBUF_0,
      O => NlwBufferSignal_in_R_D2_4_IN
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_Y(8),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR0
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => sel_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR4
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => set_mem_addr_IBUF_0,
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR3
    );
  NlwBufferBlock_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => R_X(8),
      O => NlwBufferSignal_Mmux_mem_addr_11_R_X_8_MUX_231_o11_ADR5
    );
  NlwBufferBlock_R_D1_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_14_CLK
    );
  NlwBufferBlock_R_D1_14_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_14_3408,
      O => NlwBufferSignal_R_D1_14_IN
    );
  NlwBufferBlock_in_R_D1_15_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_15_3412,
      O => NlwBufferSignal_in_R_D1_15_rt_ADR2
    );
  NlwBufferBlock_R_D1_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_15_CLK
    );
  NlwBufferBlock_R_D1_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_12_CLK
    );
  NlwBufferBlock_R_D1_12_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_12_3402,
      O => NlwBufferSignal_R_D1_12_IN
    );
  NlwBufferBlock_in_R_D1_13_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_13_3405,
      O => NlwBufferSignal_in_R_D1_13_rt_ADR3
    );
  NlwBufferBlock_R_D1_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_13_CLK
    );
  NlwBufferBlock_R_D1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_10_CLK
    );
  NlwBufferBlock_R_D1_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_10_3395,
      O => NlwBufferSignal_R_D1_10_IN
    );
  NlwBufferBlock_in_R_D1_11_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_11_3399,
      O => NlwBufferSignal_in_R_D1_11_rt_ADR2
    );
  NlwBufferBlock_R_D1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_11_CLK
    );
  NlwBufferBlock_R_D1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_8_CLK
    );
  NlwBufferBlock_R_D1_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_8_3389,
      O => NlwBufferSignal_R_D1_8_IN
    );
  NlwBufferBlock_in_R_D1_9_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D1_9_3392,
      O => NlwBufferSignal_in_R_D1_9_rt_ADR4
    );
  NlwBufferBlock_R_D1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D1_9_CLK
    );
  NlwBufferBlock_R_D2_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_22_CLK
    );
  NlwBufferBlock_R_D2_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_22_3435,
      O => NlwBufferSignal_R_D2_22_IN
    );
  NlwBufferBlock_in_R_D2_23_rt_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_23_3439,
      O => NlwBufferSignal_in_R_D2_23_rt_ADR2
    );
  NlwBufferBlock_R_D2_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_23_CLK
    );
  NlwBufferBlock_R_D2_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_20_CLK
    );
  NlwBufferBlock_R_D2_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_20_3429,
      O => NlwBufferSignal_R_D2_20_IN
    );
  NlwBufferBlock_in_R_D2_21_rt_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_21_3432,
      O => NlwBufferSignal_in_R_D2_21_rt_ADR3
    );
  NlwBufferBlock_R_D2_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_21_CLK
    );
  NlwBufferBlock_R_D2_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_18_CLK
    );
  NlwBufferBlock_R_D2_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_18_3422,
      O => NlwBufferSignal_R_D2_18_IN
    );
  NlwBufferBlock_in_R_D2_19_rt_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_19_3426,
      O => NlwBufferSignal_in_R_D2_19_rt_ADR0
    );
  NlwBufferBlock_R_D2_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_19_CLK
    );
  NlwBufferBlock_R_D2_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_16_CLK
    );
  NlwBufferBlock_R_D2_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_16_3416,
      O => NlwBufferSignal_R_D2_16_IN
    );
  NlwBufferBlock_in_R_D2_17_rt_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => in_R_D2_17_3419,
      O => NlwBufferSignal_in_R_D2_17_rt_ADR4
    );
  NlwBufferBlock_R_D2_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_R_D2_17_CLK
    );
  NlwBufferBlock_in_R_D1_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_27_CLK
    );
  NlwBufferBlock_in_R_D1_27_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_27_IBUF_0,
      O => NlwBufferSignal_in_R_D1_27_IN
    );
  NlwBufferBlock_in_R_D1_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_26_CLK
    );
  NlwBufferBlock_in_R_D1_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_26_IBUF_0,
      O => NlwBufferSignal_in_R_D1_26_IN
    );
  NlwBufferBlock_in_R_D1_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_25_CLK
    );
  NlwBufferBlock_in_R_D1_25_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_25_IBUF_0,
      O => NlwBufferSignal_in_R_D1_25_IN
    );
  NlwBufferBlock_in_R_D1_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_24_CLK
    );
  NlwBufferBlock_in_R_D1_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_24_IBUF_0,
      O => NlwBufferSignal_in_R_D1_24_IN
    );
  NlwBufferBlock_in_R_D2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_15_CLK
    );
  NlwBufferBlock_in_R_D2_15_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_15_IBUF_0,
      O => NlwBufferSignal_in_R_D2_15_IN
    );
  NlwBufferBlock_in_R_D2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_14_CLK
    );
  NlwBufferBlock_in_R_D2_14_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_14_IBUF_0,
      O => NlwBufferSignal_in_R_D2_14_IN
    );
  NlwBufferBlock_in_R_D2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_13_CLK
    );
  NlwBufferBlock_in_R_D2_13_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_13_IBUF_0,
      O => NlwBufferSignal_in_R_D2_13_IN
    );
  NlwBufferBlock_in_R_D2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_12_CLK
    );
  NlwBufferBlock_in_R_D2_12_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_12_IBUF_0,
      O => NlwBufferSignal_in_R_D2_12_IN
    );
  NlwBufferBlock_in_R_D2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_11_CLK
    );
  NlwBufferBlock_in_R_D2_11_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_11_IBUF_0,
      O => NlwBufferSignal_in_R_D2_11_IN
    );
  NlwBufferBlock_in_R_D2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_10_CLK
    );
  NlwBufferBlock_in_R_D2_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_10_IBUF_0,
      O => NlwBufferSignal_in_R_D2_10_IN
    );
  NlwBufferBlock_in_R_D2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_9_CLK
    );
  NlwBufferBlock_in_R_D2_9_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_9_IBUF_0,
      O => NlwBufferSignal_in_R_D2_9_IN
    );
  NlwBufferBlock_in_R_D2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_8_CLK
    );
  NlwBufferBlock_in_R_D2_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_8_IBUF_0,
      O => NlwBufferSignal_in_R_D2_8_IN
    );
  NlwBufferBlock_in_R_D1_11_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_11_CLK
    );
  NlwBufferBlock_in_R_D1_11_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_11_IBUF_0,
      O => NlwBufferSignal_in_R_D1_11_IN
    );
  NlwBufferBlock_in_R_D1_10_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_10_CLK
    );
  NlwBufferBlock_in_R_D1_10_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_10_IBUF_0,
      O => NlwBufferSignal_in_R_D1_10_IN
    );
  NlwBufferBlock_in_R_D1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_9_CLK
    );
  NlwBufferBlock_in_R_D1_9_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_9_IBUF_0,
      O => NlwBufferSignal_in_R_D1_9_IN
    );
  NlwBufferBlock_in_R_D1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_8_CLK
    );
  NlwBufferBlock_in_R_D1_8_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_8_IBUF_0,
      O => NlwBufferSignal_in_R_D1_8_IN
    );
  NlwBufferBlock_result_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_7_CLK
    );
  NlwBufferBlock_result_7_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_7_rstpot_ADR0
    );
  NlwBufferBlock_result_7_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_7_rstpot_ADR1
    );
  NlwBufferBlock_result_7_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_7_3686,
      O => NlwBufferSignal_result_7_rstpot_ADR4
    );
  NlwBufferBlock_result_7_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_7_0,
      O => NlwBufferSignal_result_7_rstpot_ADR5
    );
  NlwBufferBlock_result_7_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_7_rstpot_ADR3
    );
  NlwBufferBlock_result_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_6_CLK
    );
  NlwBufferBlock_result_6_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_6_rstpot_ADR1
    );
  NlwBufferBlock_result_6_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_6_rstpot_ADR2
    );
  NlwBufferBlock_result_6_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(6),
      O => NlwBufferSignal_result_6_rstpot_ADR0
    );
  NlwBufferBlock_result_6_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_6_rstpot_ADR3
    );
  NlwBufferBlock_result_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_5_CLK
    );
  NlwBufferBlock_result_5_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_5_rstpot_ADR2
    );
  NlwBufferBlock_result_5_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_5_rstpot_ADR1
    );
  NlwBufferBlock_result_5_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_5_3684,
      O => NlwBufferSignal_result_5_rstpot_ADR3
    );
  NlwBufferBlock_result_5_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(5),
      O => NlwBufferSignal_result_5_rstpot_ADR5
    );
  NlwBufferBlock_result_5_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_5_rstpot_ADR4
    );
  NlwBufferBlock_result_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_4_CLK
    );
  NlwBufferBlock_result_4_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_4_rstpot_ADR2
    );
  NlwBufferBlock_result_4_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_4_rstpot_ADR1
    );
  NlwBufferBlock_result_4_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(4),
      O => NlwBufferSignal_result_4_rstpot_ADR0
    );
  NlwBufferBlock_result_4_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_4_rstpot_ADR4
    );
  NlwBufferBlock_result_15_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_15_CLK
    );
  NlwBufferBlock_result_15_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_15_rstpot_ADR0
    );
  NlwBufferBlock_result_15_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_15_rstpot_ADR2
    );
  NlwBufferBlock_result_15_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res_15_0,
      O => NlwBufferSignal_result_15_rstpot_ADR4
    );
  NlwBufferBlock_result_15_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_15_rstpot_ADR3
    );
  NlwBufferBlock_result_14_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_14_CLK
    );
  NlwBufferBlock_result_14_rstpot_ADR5 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_14_rstpot_ADR5
    );
  NlwBufferBlock_result_14_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_14_rstpot_ADR0
    );
  NlwBufferBlock_result_14_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(14),
      O => NlwBufferSignal_result_14_rstpot_ADR2
    );
  NlwBufferBlock_result_14_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_14_rstpot_ADR3
    );
  NlwBufferBlock_result_13_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_13_CLK
    );
  NlwBufferBlock_result_13_rstpot_ADR0 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_13_rstpot_ADR0
    );
  NlwBufferBlock_result_13_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_13_rstpot_ADR1
    );
  NlwBufferBlock_result_13_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => result_13_3658,
      O => NlwBufferSignal_result_13_rstpot_ADR3
    );
  NlwBufferBlock_result_13_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(13),
      O => NlwBufferSignal_result_13_rstpot_ADR2
    );
  NlwBufferBlock_result_13_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_13_rstpot_ADR4
    );
  NlwBufferBlock_result_12_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_result_12_CLK
    );
  NlwBufferBlock_result_12_rstpot_ADR2 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_result_IBUF_0,
      O => NlwBufferSignal_result_12_rstpot_ADR2
    );
  NlwBufferBlock_result_12_rstpot_ADR1 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_CTRL_rst_n_inv,
      O => NlwBufferSignal_result_12_rstpot_ADR1
    );
  NlwBufferBlock_result_12_rstpot_ADR3 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => DIV_DP_R_res(12),
      O => NlwBufferSignal_result_12_rstpot_ADR3
    );
  NlwBufferBlock_result_12_rstpot_ADR4 : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => overflow_OBUF_0,
      O => NlwBufferSignal_result_12_rstpot_ADR4
    );
  NlwBufferBlock_in_R_D1_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_31_CLK
    );
  NlwBufferBlock_in_R_D1_31_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_31_IBUF_0,
      O => NlwBufferSignal_in_R_D1_31_IN
    );
  NlwBufferBlock_in_R_D1_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_30_CLK
    );
  NlwBufferBlock_in_R_D1_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_30_IBUF_0,
      O => NlwBufferSignal_in_R_D1_30_IN
    );
  NlwBufferBlock_in_R_D1_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_29_CLK
    );
  NlwBufferBlock_in_R_D1_29_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_29_IBUF_0,
      O => NlwBufferSignal_in_R_D1_29_IN
    );
  NlwBufferBlock_in_R_D1_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_28_CLK
    );
  NlwBufferBlock_in_R_D1_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_28_IBUF_0,
      O => NlwBufferSignal_in_R_D1_28_IN
    );
  NlwBufferBlock_in_R_D1_19_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_19_CLK
    );
  NlwBufferBlock_in_R_D1_19_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_19_IBUF_0,
      O => NlwBufferSignal_in_R_D1_19_IN
    );
  NlwBufferBlock_in_R_D1_18_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_18_CLK
    );
  NlwBufferBlock_in_R_D1_18_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_18_IBUF_0,
      O => NlwBufferSignal_in_R_D1_18_IN
    );
  NlwBufferBlock_in_R_D1_17_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_17_CLK
    );
  NlwBufferBlock_in_R_D1_17_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_17_IBUF_0,
      O => NlwBufferSignal_in_R_D1_17_IN
    );
  NlwBufferBlock_in_R_D1_16_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_16_CLK
    );
  NlwBufferBlock_in_R_D1_16_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_16_IBUF_0,
      O => NlwBufferSignal_in_R_D1_16_IN
    );
  NlwBufferBlock_in_R_D1_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_23_CLK
    );
  NlwBufferBlock_in_R_D1_23_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_23_IBUF_0,
      O => NlwBufferSignal_in_R_D1_23_IN
    );
  NlwBufferBlock_in_R_D1_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_22_CLK
    );
  NlwBufferBlock_in_R_D1_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_22_IBUF_0,
      O => NlwBufferSignal_in_R_D1_22_IN
    );
  NlwBufferBlock_in_R_D1_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_21_CLK
    );
  NlwBufferBlock_in_R_D1_21_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_21_IBUF_0,
      O => NlwBufferSignal_in_R_D1_21_IN
    );
  NlwBufferBlock_in_R_D1_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_20_CLK
    );
  NlwBufferBlock_in_R_D1_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_20_IBUF_0,
      O => NlwBufferSignal_in_R_D1_20_IN
    );
  NlwBufferBlock_in_R_D1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_7_CLK
    );
  NlwBufferBlock_in_R_D1_7_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_7_IBUF_0,
      O => NlwBufferSignal_in_R_D1_7_IN
    );
  NlwBufferBlock_in_R_D1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_6_CLK
    );
  NlwBufferBlock_in_R_D1_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_6_IBUF_0,
      O => NlwBufferSignal_in_R_D1_6_IN
    );
  NlwBufferBlock_in_R_D1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_5_CLK
    );
  NlwBufferBlock_in_R_D1_5_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_5_IBUF_0,
      O => NlwBufferSignal_in_R_D1_5_IN
    );
  NlwBufferBlock_in_R_D1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_4_CLK
    );
  NlwBufferBlock_in_R_D1_4_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_4_IBUF_0,
      O => NlwBufferSignal_in_R_D1_4_IN
    );
  NlwBufferBlock_in_R_D2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_3_CLK
    );
  NlwBufferBlock_in_R_D2_3_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_3_IBUF_0,
      O => NlwBufferSignal_in_R_D2_3_IN
    );
  NlwBufferBlock_in_R_D2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_2_CLK
    );
  NlwBufferBlock_in_R_D2_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_2_IBUF_0,
      O => NlwBufferSignal_in_R_D2_2_IN
    );
  NlwBufferBlock_in_R_D2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_1_CLK
    );
  NlwBufferBlock_in_R_D2_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_1_IBUF_0,
      O => NlwBufferSignal_in_R_D2_1_IN
    );
  NlwBufferBlock_in_R_D2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_0_CLK
    );
  NlwBufferBlock_in_R_D2_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_0_IBUF_0,
      O => NlwBufferSignal_in_R_D2_0_IN
    );
  NlwBufferBlock_in_R_D2_31_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_31_CLK
    );
  NlwBufferBlock_in_R_D2_31_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_31_IBUF_0,
      O => NlwBufferSignal_in_R_D2_31_IN
    );
  NlwBufferBlock_in_R_D2_30_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_30_CLK
    );
  NlwBufferBlock_in_R_D2_30_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_30_IBUF_0,
      O => NlwBufferSignal_in_R_D2_30_IN
    );
  NlwBufferBlock_in_R_D2_29_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_29_CLK
    );
  NlwBufferBlock_in_R_D2_29_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_29_IBUF_0,
      O => NlwBufferSignal_in_R_D2_29_IN
    );
  NlwBufferBlock_in_R_D2_28_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_28_CLK
    );
  NlwBufferBlock_in_R_D2_28_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_28_IBUF_0,
      O => NlwBufferSignal_in_R_D2_28_IN
    );
  NlwBufferBlock_in_R_D2_27_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_27_CLK
    );
  NlwBufferBlock_in_R_D2_27_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_27_IBUF_0,
      O => NlwBufferSignal_in_R_D2_27_IN
    );
  NlwBufferBlock_in_R_D2_26_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_26_CLK
    );
  NlwBufferBlock_in_R_D2_26_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_26_IBUF_0,
      O => NlwBufferSignal_in_R_D2_26_IN
    );
  NlwBufferBlock_in_R_D2_25_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_25_CLK
    );
  NlwBufferBlock_in_R_D2_25_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_25_IBUF_0,
      O => NlwBufferSignal_in_R_D2_25_IN
    );
  NlwBufferBlock_in_R_D2_24_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_24_CLK
    );
  NlwBufferBlock_in_R_D2_24_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_24_IBUF_0,
      O => NlwBufferSignal_in_R_D2_24_IN
    );
  NlwBufferBlock_in_R_D2_23_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_23_CLK
    );
  NlwBufferBlock_in_R_D2_23_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_23_IBUF_0,
      O => NlwBufferSignal_in_R_D2_23_IN
    );
  NlwBufferBlock_in_R_D2_22_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_22_CLK
    );
  NlwBufferBlock_in_R_D2_22_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_22_IBUF_0,
      O => NlwBufferSignal_in_R_D2_22_IN
    );
  NlwBufferBlock_in_R_D2_21_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_21_CLK
    );
  NlwBufferBlock_in_R_D2_21_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_21_IBUF_0,
      O => NlwBufferSignal_in_R_D2_21_IN
    );
  NlwBufferBlock_in_R_D2_20_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D2_BUFGP,
      O => NlwBufferSignal_in_R_D2_20_CLK
    );
  NlwBufferBlock_in_R_D2_20_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_20_IBUF_0,
      O => NlwBufferSignal_in_R_D2_20_IN
    );
  NlwBufferBlock_in_R_D1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_3_CLK
    );
  NlwBufferBlock_in_R_D1_3_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_3_IBUF_0,
      O => NlwBufferSignal_in_R_D1_3_IN
    );
  NlwBufferBlock_in_R_D1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_2_CLK
    );
  NlwBufferBlock_in_R_D1_2_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_2_IBUF_0,
      O => NlwBufferSignal_in_R_D1_2_IN
    );
  NlwBufferBlock_in_R_D1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_1_CLK
    );
  NlwBufferBlock_in_R_D1_1_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_1_IBUF_0,
      O => NlwBufferSignal_in_R_D1_1_IN
    );
  NlwBufferBlock_in_R_D1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => load_R_D1_BUFGP,
      O => NlwBufferSignal_in_R_D1_0_CLK
    );
  NlwBufferBlock_in_R_D1_0_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => mem_dataout_0_IBUF_0,
      O => NlwBufferSignal_in_R_D1_0_IN
    );
  NlwBlock_sumavg_dp_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_sumavg_dp_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

