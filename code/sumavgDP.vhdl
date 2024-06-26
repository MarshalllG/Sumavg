-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package sumavg_dp_pkg is
component sumavg_dp is
   generic (
      W_BITS                                    : integer := 32;
      A_BITS                                    : integer := 12;
      K_BITS                                    : integer := 8
   );
   port (
      CLK, rst_n                                : in std_logic;
      ptr1                                      : in std_logic_vector(A_BITS-1 DOWNTO 0);
      ptr2                                      : in std_logic_vector(A_BITS-1 DOWNTO 0);
      len                                       : in std_logic_vector(K_BITS-1 DOWNTO 0);
      mem_dataout                               : in std_logic_vector(W_BITS-1 DOWNTO 0);
      result                                    : out std_logic_vector(W_BITS-1 DOWNTO 0);
      mem_addr                                  : out std_logic_vector(A_BITS-1 DOWNTO 0);
      mem_datain                                : out std_logic_vector(W_BITS-1 DOWNTO 0);
         -- status signals
      count_eq_L                                : out std_logic;
      division_by_zero                          : out std_logic;
      overflow                                  : out std_logic;
         -- control signals from CU
      load_R_X                                  : in std_logic;
      load_R_Y                                  : in std_logic;
      load_R_D1                                 : in std_logic;
      load_R_D2                                 : in std_logic;
      load_R_res                                : in std_logic;
      load_L                                    : in std_logic;
      load_CNT                                  : in std_logic;
      load_result                               : in std_logic;
      sel_R_X                                   : in std_logic;
      sel_R_Y                                   : in std_logic;
      sel_R_res                                 : in std_logic;
      sel_CNT                                   : in std_logic;
      set_mem_addr                              : in std_logic;
      sel_mem_addr                              : in std_logic;
         -- div
      div_start                                 : in std_logic;
      div_ready                                 : out std_logic;
      div_abort                                 : in std_logic
   );
end component;
end sumavg_dp_pkg;
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------
-- sumavg Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.divider_pkg.all;


entity sumavg_dp is
   generic (
      W_BITS                                    : integer := 32;
      A_BITS                                    : integer := 12;
      K_BITS                                    : integer := 8
   );
   port (
      CLK, rst_n                                : in std_logic;
      ptr1                                      : in std_logic_vector(A_BITS-1 DOWNTO 0);
      ptr2                                      : in std_logic_vector(A_BITS-1 DOWNTO 0);
      len                                       : in std_logic_vector(K_BITS-1 DOWNTO 0);
      mem_dataout                               : in std_logic_vector(W_BITS-1 DOWNTO 0);
      result                                    : out std_logic_vector(W_BITS-1 DOWNTO 0);
      mem_addr                                  : out std_logic_vector(A_BITS-1 DOWNTO 0);
      mem_datain                                : out std_logic_vector(W_BITS-1 DOWNTO 0);
         -- status signals
      count_eq_L                                : out std_logic;
      division_by_zero                          : out std_logic;
      overflow                                  : out std_logic;
         -- control signals from CU
      load_R_X                                  : in std_logic;
      load_R_Y                                  : in std_logic;
      load_R_D1                                 : in std_logic;
      load_R_D2                                 : in std_logic;
      load_R_res                                : in std_logic;
      load_L                                    : in std_logic;
      load_CNT                                  : in std_logic;
      load_result                               : in std_logic;
      sel_R_X                                   : in std_logic;
      sel_R_Y                                   : in std_logic;
      sel_R_res                                 : in std_logic;
      sel_CNT                                   : in std_logic;
      set_mem_addr                              : in std_logic;
      sel_mem_addr                              : in std_logic;
         -- div
      div_start                                 : in std_logic;
      div_ready                                 : out std_logic;
      div_abort                                 : in std_logic
   );
end sumavg_dp;


architecture s of sumavg_dp is
   constant MAX_VALUE                           : integer := 2147483647; -- maximum value for Q16.16
   signal R_X, in_R_X                           : std_logic_vector(A_BITS-1 DOWNTO 0);
   signal R_Y, in_R_Y                           : std_logic_vector(A_BITS-1 DOWNTO 0);
   signal R_D1, in_R_D1                         : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal R_D2, in_R_D2                         : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal in_R_res, R_res                       : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal CNT, in_CNT                           : std_logic_vector(K_BITS-1 DOWNTO 0);
   signal in_result                             : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal L                                     : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal div_operand1, div_operand2            : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal div_remainder                         : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal div_result                            : std_logic_vector(W_BITS-1 DOWNTO 0);
   signal R_res_carry                           : std_logic; -- to handle overflow

   begin
   -- registers
   regs: process(rst_n, CLK)
      begin
      if rst_n = '0' then
         R_X <= (others => '0');
         R_Y <= (others => '0');
         R_D1 <= (others => '0');
         R_D2 <= (others => '0');
         R_res <= (others => '0');
         CNT <= (others => '0');
         L <= (others => '0');
      elsif rising_edge(CLK) then
         if load_R_X = '1' then
            R_X <= in_R_X;
         end if;
         if load_R_Y = '1' then
            R_Y <= in_R_Y;
         end if;
         if load_R_D1 <= '1' then
            R_D1 <= in_R_D1;
         end if;
         if load_R_D2 <= '1' then
            R_D2 <= in_R_D2;
         end if;
         if load_R_res = '1' then
               R_res <= in_R_res;
         end if;
         if load_CNT = '1' then
            CNT <= in_CNT;
         end if;
         if load_L = '1' then
            L <= "000000000000000000000000" & len;
         end if;
         if load_result = '1' then
            result <= in_result;
         end if;
      end if;
   end process regs;

   -- muxes
   in_R_X <= ptr1 when sel_R_X = '0' else std_logic_vector(unsigned(R_X) + 1);
   in_R_Y <= ptr2 when sel_R_Y = '0' else std_logic_vector(unsigned(R_Y) + 1);
   in_R_D1 <= mem_dataout when load_R_D1 = '1';
   in_R_D2 <= mem_dataout when load_R_D2 = '1';
   in_CNT <= (others => '0') when sel_CNT = '0' else std_logic_vector(unsigned(CNT) + 1);

   -- ACC
   R_res_carry <= '1' when unsigned(in_R_res) + unsigned(in_R_D1) + unsigned(in_R_D2) > MAX_VALUE 
                      else '0';   
   in_R_res <= std_logic_vector(unsigned(R_res) + unsigned(R_D1) + unsigned(R_D2));
   overflow <= R_res_carry; -- assign the carry-out bit to the overflow signal

   -- status signals
   count_eq_L <= '1' when to_integer(unsigned(CNT)) = to_integer(unsigned(L)) else '0';
   division_by_zero <= '0' when L /= std_logic_vector(to_unsigned(0, W_BITS)) else '1';

   -- div
   div_operand1 <= R_res;
   div_operand2 <= L;

   -- combinational devices
   DIV : divider 
      generic map (
         OPSIZE => W_BITS
      )
      port map (
         CLK => CLK,
         rst_n => rst_n, 
         abort => div_abort, 
         start => div_start,
         operand1 => div_operand1,
         operand2 => div_operand2, 
         ready => div_ready, 
         remainder => div_remainder,
         div => div_result
      );
	
  -- data outputs
   mem_addr <= R_X when (set_mem_addr = '1' and sel_mem_addr = '0') else 
               R_Y when (set_mem_addr = '1' and sel_mem_addr = '1'); 

   mem_datain <= (others => '-');

   -- Update the result output
   in_result <= div_result when R_res_carry = '0'
                else (others => '1') when R_res_carry = '1' -- set all '1' bits if overflow occurs
                else (others => '0');
end s;