
-------------------------------------------------------------------
-- System Generator version 14.3 VHDL source file.
--
-- Copyright(C) 2012 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2012 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-------------------------------------------------------------------
-- System Generator version 14.3 VHDL source file.
--
-- Copyright(C) 2012 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2012 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlclockdriver is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5;
    use_bufg: integer := 0
  );
  port (
    sysclk: in std_logic;
    sysclr: in std_logic;
    sysce: in std_logic;
    clk: out std_logic;
    clr: out std_logic;
    ce: out std_logic;
    ce_logic: out std_logic
  );
end xlclockdriver;
architecture behavior of xlclockdriver is
  component bufg
    port (
      i: in std_logic;
      o: out std_logic
    );
  end component;
  component synth_reg_w_init
    generic (
      width: integer;
      init_index: integer;
      init_value: bit_vector;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function size_of_uint(inp: integer; power_of_2: boolean)
    return integer
  is
    constant inp_vec: std_logic_vector(31 downto 0) :=
      integer_to_std_logic_vector(inp,32, xlUnsigned);
    variable result: integer;
  begin
    result := 32;
    for i in 0 to 31 loop
      if inp_vec(i) = '1' then
        result := i;
      end if;
    end loop;
    if power_of_2 then
      return result;
    else
      return result+1;
    end if;
  end;
  function is_power_of_2(inp: std_logic_vector)
    return boolean
  is
    constant width: integer := inp'length;
    variable vec: std_logic_vector(width - 1 downto 0);
    variable single_bit_set: boolean;
    variable more_than_one_bit_set: boolean;
    variable result: boolean;
  begin
    vec := inp;
    single_bit_set := false;
    more_than_one_bit_set := false;
    -- synopsys translate_off
    if (is_XorU(vec)) then
      return false;
    end if;
     -- synopsys translate_on
    if width > 0 then
      for i in 0 to width - 1 loop
        if vec(i) = '1' then
          if single_bit_set then
            more_than_one_bit_set := true;
          end if;
          single_bit_set := true;
        end if;
      end loop;
    end if;
    if (single_bit_set and not(more_than_one_bit_set)) then
      result := true;
    else
      result := false;
    end if;
    return result;
  end;
  function ce_reg_init_val(index, period : integer)
    return integer
  is
     variable result: integer;
   begin
      result := 0;
      if ((index mod period) = 0) then
          result := 1;
      end if;
      return result;
  end;
  function remaining_pipe_regs(num_pipeline_regs, period : integer)
    return integer
  is
     variable factor, result: integer;
  begin
      factor := (num_pipeline_regs / period);
      result := num_pipeline_regs - (period * factor) + 1;
      return result;
  end;

  function sg_min(L, R: INTEGER) return INTEGER is
  begin
      if L < R then
            return L;
      else
            return R;
      end if;
  end;
  constant max_pipeline_regs : integer := 8;
  constant pipe_regs : integer := 5;
  constant num_pipeline_regs : integer := sg_min(pipeline_regs, max_pipeline_regs);
  constant rem_pipeline_regs : integer := remaining_pipe_regs(num_pipeline_regs,period);
  constant period_floor: integer := max(2, period);
  constant power_of_2_counter: boolean :=
    is_power_of_2(integer_to_std_logic_vector(period_floor,32, xlUnsigned));
  constant cnt_width: integer :=
    size_of_uint(period_floor, power_of_2_counter);
  constant clk_for_ce_pulse_minus1: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector((period_floor - 2),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus2: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - 3),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus_regs: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - rem_pipeline_regs),cnt_width, xlUnsigned);
  signal clk_num: unsigned(cnt_width - 1 downto 0) := (others => '0');
  signal ce_vec : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of ce_vec:signal is "REDUCE";
  signal ce_vec_logic : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT of ce_vec_logic:signal is "REDUCE";
  signal internal_ce: std_logic_vector(0 downto 0);
  signal internal_ce_logic: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  clk <= sysclk;
  clr <= sysclr;
  cntr_gen: process(sysclk)
  begin
    if sysclk'event and sysclk = '1'  then
      if (sysce = '1') then
        if ((cnt_clr_dly(0) = '1') or (sysclr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
    end if;
  end process;
  clr_gen: process(clk_num, sysclr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= sysclr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or sysclr = '1') then
        cnt_clr(0) <= '1';
      else
        cnt_clr(0) <= '0';
      end if;
    end if;
  end process;
  clr_reg: synth_reg_w_init
    generic map (
      width => 1,
      init_index => 0,
      init_value => b"0000",
      latency => 1
    )
    port map (
      i => cnt_clr,
      ce => sysce,
      clr => sysclr,
      clk => sysclk,
      o => cnt_clr_dly
    );
  pipelined_ce : if period > 1 generate
      ce_gen: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec(num_pipeline_regs) <= '1';
          else
              ce_vec(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  pipelined_ce_logic: if period > 1 generate
      ce_gen_logic: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec_logic(num_pipeline_regs) <= '1';
          else
              ce_vec_logic(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_logic_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_logic_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec_logic(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec_logic(index-1 downto index-1)
                  );
      end generate;
      internal_ce_logic <= ce_vec_logic(0 downto 0);
  end generate;
  use_bufg_true: if period > 1 and use_bufg = 1 generate
    ce_bufg_inst: bufg
      port map (
        i => internal_ce(0),
        o => ce
      );
    ce_bufg_inst_logic: bufg
      port map (
        i => internal_ce_logic(0),
        o => ce_logic
      );
  end generate;
  use_bufg_false: if period > 1 and (use_bufg = 0) generate
    ce <= internal_ce(0);
    ce_logic <= internal_ce_logic(0);
  end generate;
  generate_system_clk: if period = 1 generate
    ce <= sysce;
    ce_logic <= sysce;
  end generate;
end architecture behavior;

-------------------------------------------------------------------
-- System Generator version 14.3 VHDL source file.
--
-- Copyright(C) 2012 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2012 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity xland2 is
  port (
    a : in std_logic;
    b : in std_logic;
    dout : out std_logic
    );
end xland2;
architecture behavior of xland2 is
begin
    dout <= a and b;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity default_clock_driver_w3_warplab_agc is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    ce_1: out std_logic; 
    ce_2: out std_logic; 
    ce_4: out std_logic; 
    clk_1: out std_logic; 
    clk_2: out std_logic; 
    clk_4: out std_logic
  );
end default_clock_driver_w3_warplab_agc;

architecture structural of default_clock_driver_w3_warplab_agc is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_clk: std_logic;
  signal xlclockdriver_2_ce: std_logic;
  signal xlclockdriver_2_clk: std_logic;
  signal xlclockdriver_4_ce: std_logic;
  signal xlclockdriver_4_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  ce_1 <= xlclockdriver_1_ce;
  ce_2 <= xlclockdriver_2_ce;
  ce_4 <= xlclockdriver_4_ce;
  clk_1 <= xlclockdriver_1_clk;
  clk_2 <= xlclockdriver_2_clk;
  clk_4 <= xlclockdriver_4_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );

  xlclockdriver_2: entity work.xlclockdriver
    generic map (
      log_2_period => 2,
      period => 2,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_2_ce,
      clk => xlclockdriver_2_clk
    );

  xlclockdriver_4: entity work.xlclockdriver
    generic map (
      log_2_period => 3,
      period => 4,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_4_ce,
      clk => xlclockdriver_4_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity plb_clock_driver_w3_warplab_agc is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    plb_ce_1: out std_logic; 
    plb_clk_1: out std_logic
  );
end plb_clock_driver_w3_warplab_agc;

architecture structural of plb_clock_driver_w3_warplab_agc is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  plb_ce_1 <= xlclockdriver_1_ce;
  plb_clk_1 <= xlclockdriver_1_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity w3_warplab_agc_cw is
  port (
    axi_aresetn: in std_logic; 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    i_in_a: in std_logic_vector(11 downto 0); 
    i_in_b: in std_logic_vector(11 downto 0); 
    i_in_c: in std_logic_vector(11 downto 0); 
    i_in_d: in std_logic_vector(11 downto 0); 
    mreset_in: in std_logic; 
    packet_in: in std_logic; 
    q_in_a: in std_logic_vector(11 downto 0); 
    q_in_b: in std_logic_vector(11 downto 0); 
    q_in_c: in std_logic_vector(11 downto 0); 
    q_in_d: in std_logic_vector(11 downto 0); 
    reset_in: in std_logic; 
    rssi_in_a: in std_logic_vector(9 downto 0); 
    rssi_in_b: in std_logic_vector(9 downto 0); 
    rssi_in_c: in std_logic_vector(9 downto 0); 
    rssi_in_d: in std_logic_vector(9 downto 0); 
    s_axi_araddr: in std_logic_vector(31 downto 0); 
    s_axi_arburst: in std_logic_vector(1 downto 0); 
    s_axi_arcache: in std_logic_vector(3 downto 0); 
    s_axi_arid: in std_logic_vector(7 downto 0); 
    s_axi_arlen: in std_logic_vector(7 downto 0); 
    s_axi_arlock: in std_logic_vector(1 downto 0); 
    s_axi_arprot: in std_logic_vector(2 downto 0); 
    s_axi_arsize: in std_logic_vector(2 downto 0); 
    s_axi_arvalid: in std_logic; 
    s_axi_awaddr: in std_logic_vector(31 downto 0); 
    s_axi_awburst: in std_logic_vector(1 downto 0); 
    s_axi_awcache: in std_logic_vector(3 downto 0); 
    s_axi_awid: in std_logic_vector(7 downto 0); 
    s_axi_awlen: in std_logic_vector(7 downto 0); 
    s_axi_awlock: in std_logic_vector(1 downto 0); 
    s_axi_awprot: in std_logic_vector(2 downto 0); 
    s_axi_awsize: in std_logic_vector(2 downto 0); 
    s_axi_awvalid: in std_logic; 
    s_axi_bready: in std_logic; 
    s_axi_rready: in std_logic; 
    s_axi_wdata: in std_logic_vector(31 downto 0); 
    s_axi_wlast: in std_logic; 
    s_axi_wstrb: in std_logic_vector(3 downto 0); 
    s_axi_wvalid: in std_logic; 
    xps_ce: in std_logic := '1'; 
    xps_clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    agc_done: out std_logic; 
    debug_agc: out std_logic; 
    debug_agc_rst: out std_logic; 
    debug_agc_rstfbk: out std_logic; 
    debug_pktin: out std_logic; 
    done_a: out std_logic; 
    done_b: out std_logic; 
    done_c: out std_logic; 
    done_d: out std_logic; 
    g_bb_a: out std_logic_vector(4 downto 0); 
    g_bb_b: out std_logic_vector(4 downto 0); 
    g_bb_c: out std_logic_vector(4 downto 0); 
    g_bb_d: out std_logic_vector(4 downto 0); 
    g_rf_a: out std_logic_vector(1 downto 0); 
    g_rf_b: out std_logic_vector(1 downto 0); 
    g_rf_c: out std_logic_vector(1 downto 0); 
    g_rf_d: out std_logic_vector(1 downto 0); 
    i_out_a: out std_logic_vector(11 downto 0); 
    i_out_b: out std_logic_vector(11 downto 0); 
    i_out_c: out std_logic_vector(11 downto 0); 
    i_out_d: out std_logic_vector(11 downto 0); 
    q_out_a: out std_logic_vector(11 downto 0); 
    q_out_b: out std_logic_vector(11 downto 0); 
    q_out_c: out std_logic_vector(11 downto 0); 
    q_out_d: out std_logic_vector(11 downto 0); 
    rxhp_a: out std_logic; 
    rxhp_b: out std_logic; 
    rxhp_c: out std_logic; 
    rxhp_d: out std_logic; 
    s_axi_arready: out std_logic; 
    s_axi_awready: out std_logic; 
    s_axi_bid: out std_logic_vector(7 downto 0); 
    s_axi_bresp: out std_logic_vector(1 downto 0); 
    s_axi_bvalid: out std_logic; 
    s_axi_rdata: out std_logic_vector(31 downto 0); 
    s_axi_rid: out std_logic_vector(7 downto 0); 
    s_axi_rlast: out std_logic; 
    s_axi_rresp: out std_logic_vector(1 downto 0); 
    s_axi_rvalid: out std_logic; 
    s_axi_wready: out std_logic
  );
end w3_warplab_agc_cw;

architecture structural of w3_warplab_agc_cw is
  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type: string;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal ADJ_reg_ce: std_logic;
  signal AGC_EN_GLOBAL_reg_ce: std_logic;
  signal AGC_EN_reg_ce: std_logic;
  signal AGC_TRIGGER_DELAY_reg_ce: std_logic;
  signal AVG_LEN_reg_ce: std_logic;
  signal Bits_reg_ce: std_logic;
  signal DCO_Timing_reg_ce: std_logic;
  signal GBB_A_reg_ce: std_logic;
  signal GBB_B_reg_ce: std_logic;
  signal GBB_C_reg_ce: std_logic;
  signal GBB_D_reg_ce: std_logic;
  signal GBB_Init_reg_ce: std_logic;
  signal GRF_A_reg_ce: std_logic;
  signal GRF_B_reg_ce: std_logic;
  signal GRF_C_reg_ce: std_logic;
  signal GRF_D_reg_ce: std_logic;
  signal MRESET_IN_reg_ce: std_logic;
  signal PACKET_IN_reg_ce: std_logic;
  signal SRESET_IN_reg_ce: std_logic;
  signal T_dB_reg_ce: std_logic;
  signal Thresholds_reg_ce: std_logic;
  signal Timing_reg_ce: std_logic;
  signal agc_done_net: std_logic;
  signal axi_aresetn_net: std_logic;
  signal ce_1_sg_x82: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x82: signal is "REDUCE";
  signal ce_2_sg_x42: std_logic;
  attribute MAX_FANOUT of ce_2_sg_x42: signal is "REDUCE";
  signal ce_4_sg_x9: std_logic;
  attribute MAX_FANOUT of ce_4_sg_x9: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clkNet_x0: std_logic;
  signal clk_1_sg_x82: std_logic;
  signal clk_2_sg_x42: std_logic;
  signal clk_4_sg_x9: std_logic;
  signal constant1_op_net_x1: std_logic;
  signal constant1_op_net_x2: std_logic;
  signal constant2_op_net_x1: std_logic;
  signal constant2_op_net_x2: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal constant3_op_net_x2: std_logic;
  signal constant_op_net_x1: std_logic;
  signal constant_op_net_x2: std_logic;
  signal data_in_net: std_logic_vector(31 downto 0);
  signal data_in_x0_net: std_logic_vector(31 downto 0);
  signal data_in_x10_net: std_logic_vector(8 downto 0);
  signal data_in_x11_net: std_logic;
  signal data_in_x12_net: std_logic_vector(15 downto 0);
  signal data_in_x13_net: std_logic_vector(4 downto 0);
  signal data_in_x14_net: std_logic_vector(4 downto 0);
  signal data_in_x15_net: std_logic_vector(4 downto 0);
  signal data_in_x16_net: std_logic_vector(4 downto 0);
  signal data_in_x17_net: std_logic_vector(1 downto 0);
  signal data_in_x18_net: std_logic_vector(1 downto 0);
  signal data_in_x19_net: std_logic_vector(1 downto 0);
  signal data_in_x1_net: std_logic_vector(15 downto 0);
  signal data_in_x20_net: std_logic_vector(1 downto 0);
  signal data_in_x2_net: std_logic;
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic;
  signal data_in_x5_net: std_logic;
  signal data_in_x6_net: std_logic_vector(15 downto 0);
  signal data_in_x7_net: std_logic_vector(31 downto 0);
  signal data_in_x8_net: std_logic_vector(9 downto 0);
  signal data_in_x9_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(1 downto 0);
  signal data_out_x0_net: std_logic_vector(1 downto 0);
  signal data_out_x10_net: std_logic_vector(15 downto 0);
  signal data_out_x11_net: std_logic_vector(9 downto 0);
  signal data_out_x12_net: std_logic_vector(31 downto 0);
  signal data_out_x13_net: std_logic_vector(15 downto 0);
  signal data_out_x14_net: std_logic;
  signal data_out_x15_net: std_logic;
  signal data_out_x16_net: std_logic_vector(31 downto 0);
  signal data_out_x17_net: std_logic;
  signal data_out_x18_net: std_logic_vector(15 downto 0);
  signal data_out_x19_net: std_logic_vector(31 downto 0);
  signal data_out_x1_net: std_logic_vector(1 downto 0);
  signal data_out_x20_net: std_logic_vector(31 downto 0);
  signal data_out_x2_net: std_logic_vector(1 downto 0);
  signal data_out_x3_net: std_logic_vector(4 downto 0);
  signal data_out_x4_net: std_logic_vector(4 downto 0);
  signal data_out_x5_net: std_logic_vector(4 downto 0);
  signal data_out_x6_net: std_logic_vector(4 downto 0);
  signal data_out_x7_net: std_logic_vector(15 downto 0);
  signal data_out_x8_net: std_logic;
  signal data_out_x9_net: std_logic_vector(8 downto 0);
  signal debug_agc_net: std_logic;
  signal debug_agc_rst_net: std_logic;
  signal debug_agc_rstfbk_net: std_logic;
  signal debug_pktin_net: std_logic;
  signal done_a_net: std_logic;
  signal done_b_net: std_logic;
  signal done_c_net: std_logic;
  signal done_d_net: std_logic;
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal en_x10_net: std_logic;
  signal en_x11_net: std_logic;
  signal en_x12_net: std_logic;
  signal en_x1_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal en_x9_net: std_logic;
  signal g_bb_a_net: std_logic_vector(4 downto 0);
  signal g_bb_b_net: std_logic_vector(4 downto 0);
  signal g_bb_c_net: std_logic_vector(4 downto 0);
  signal g_bb_d_net: std_logic_vector(4 downto 0);
  signal g_rf_a_net: std_logic_vector(1 downto 0);
  signal g_rf_b_net: std_logic_vector(1 downto 0);
  signal g_rf_c_net: std_logic_vector(1 downto 0);
  signal g_rf_d_net: std_logic_vector(1 downto 0);
  signal i_in_a_net: std_logic_vector(11 downto 0);
  signal i_in_b_net: std_logic_vector(11 downto 0);
  signal i_in_c_net: std_logic_vector(11 downto 0);
  signal i_in_d_net: std_logic_vector(11 downto 0);
  signal i_out_a_net: std_logic_vector(11 downto 0);
  signal i_out_b_net: std_logic_vector(11 downto 0);
  signal i_out_c_net: std_logic_vector(11 downto 0);
  signal i_out_d_net: std_logic_vector(11 downto 0);
  signal mreset_in_net: std_logic;
  signal packet_in_net: std_logic;
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal plb_ce_1_sg_x1: std_logic;
  attribute MAX_FANOUT of plb_ce_1_sg_x1: signal is "REDUCE";
  signal plb_clk_1_sg_x1: std_logic;
  signal q_in_a_net: std_logic_vector(11 downto 0);
  signal q_in_b_net: std_logic_vector(11 downto 0);
  signal q_in_c_net: std_logic_vector(11 downto 0);
  signal q_in_d_net: std_logic_vector(11 downto 0);
  signal q_out_a_net: std_logic_vector(11 downto 0);
  signal q_out_b_net: std_logic_vector(11 downto 0);
  signal q_out_c_net: std_logic_vector(11 downto 0);
  signal q_out_d_net: std_logic_vector(11 downto 0);
  signal reset_in_net: std_logic;
  signal rssi_in_a_net: std_logic_vector(9 downto 0);
  signal rssi_in_b_net: std_logic_vector(9 downto 0);
  signal rssi_in_c_net: std_logic_vector(9 downto 0);
  signal rssi_in_d_net: std_logic_vector(9 downto 0);
  signal rxhp_a_net: std_logic;
  signal rxhp_b_net: std_logic;
  signal rxhp_c_net: std_logic;
  signal rxhp_d_net: std_logic;
  signal s_axi_araddr_net: std_logic_vector(31 downto 0);
  signal s_axi_arburst_net: std_logic_vector(1 downto 0);
  signal s_axi_arcache_net: std_logic_vector(3 downto 0);
  signal s_axi_arid_net: std_logic_vector(7 downto 0);
  signal s_axi_arlen_net: std_logic_vector(7 downto 0);
  signal s_axi_arlock_net: std_logic_vector(1 downto 0);
  signal s_axi_arprot_net: std_logic_vector(2 downto 0);
  signal s_axi_arready_net: std_logic;
  signal s_axi_arsize_net: std_logic_vector(2 downto 0);
  signal s_axi_arvalid_net: std_logic;
  signal s_axi_awaddr_net: std_logic_vector(31 downto 0);
  signal s_axi_awburst_net: std_logic_vector(1 downto 0);
  signal s_axi_awcache_net: std_logic_vector(3 downto 0);
  signal s_axi_awid_net: std_logic_vector(7 downto 0);
  signal s_axi_awlen_net: std_logic_vector(7 downto 0);
  signal s_axi_awlock_net: std_logic_vector(1 downto 0);
  signal s_axi_awprot_net: std_logic_vector(2 downto 0);
  signal s_axi_awready_net: std_logic;
  signal s_axi_awsize_net: std_logic_vector(2 downto 0);
  signal s_axi_awvalid_net: std_logic;
  signal s_axi_bid_net: std_logic_vector(7 downto 0);
  signal s_axi_bready_net: std_logic;
  signal s_axi_bresp_net: std_logic_vector(1 downto 0);
  signal s_axi_bvalid_net: std_logic;
  signal s_axi_rdata_net: std_logic_vector(31 downto 0);
  signal s_axi_rid_net: std_logic_vector(7 downto 0);
  signal s_axi_rlast_net: std_logic;
  signal s_axi_rready_net: std_logic;
  signal s_axi_rresp_net: std_logic_vector(1 downto 0);
  signal s_axi_rvalid_net: std_logic;
  signal s_axi_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_wlast_net: std_logic;
  signal s_axi_wready_net: std_logic;
  signal s_axi_wstrb_net: std_logic_vector(3 downto 0);
  signal s_axi_wvalid_net: std_logic;

begin
  axi_aresetn_net <= axi_aresetn;
  clkNet <= clk;
  i_in_a_net <= i_in_a;
  i_in_b_net <= i_in_b;
  i_in_c_net <= i_in_c;
  i_in_d_net <= i_in_d;
  mreset_in_net <= mreset_in;
  packet_in_net <= packet_in;
  q_in_a_net <= q_in_a;
  q_in_b_net <= q_in_b;
  q_in_c_net <= q_in_c;
  q_in_d_net <= q_in_d;
  reset_in_net <= reset_in;
  rssi_in_a_net <= rssi_in_a;
  rssi_in_b_net <= rssi_in_b;
  rssi_in_c_net <= rssi_in_c;
  rssi_in_d_net <= rssi_in_d;
  s_axi_araddr_net <= s_axi_araddr;
  s_axi_arburst_net <= s_axi_arburst;
  s_axi_arcache_net <= s_axi_arcache;
  s_axi_arid_net <= s_axi_arid;
  s_axi_arlen_net <= s_axi_arlen;
  s_axi_arlock_net <= s_axi_arlock;
  s_axi_arprot_net <= s_axi_arprot;
  s_axi_arsize_net <= s_axi_arsize;
  s_axi_arvalid_net <= s_axi_arvalid;
  s_axi_awaddr_net <= s_axi_awaddr;
  s_axi_awburst_net <= s_axi_awburst;
  s_axi_awcache_net <= s_axi_awcache;
  s_axi_awid_net <= s_axi_awid;
  s_axi_awlen_net <= s_axi_awlen;
  s_axi_awlock_net <= s_axi_awlock;
  s_axi_awprot_net <= s_axi_awprot;
  s_axi_awsize_net <= s_axi_awsize;
  s_axi_awvalid_net <= s_axi_awvalid;
  s_axi_bready_net <= s_axi_bready;
  s_axi_rready_net <= s_axi_rready;
  s_axi_wdata_net <= s_axi_wdata;
  s_axi_wlast_net <= s_axi_wlast;
  s_axi_wstrb_net <= s_axi_wstrb;
  s_axi_wvalid_net <= s_axi_wvalid;
  clkNet_x0 <= xps_clk;
  agc_done <= agc_done_net;
  debug_agc <= debug_agc_net;
  debug_agc_rst <= debug_agc_rst_net;
  debug_agc_rstfbk <= debug_agc_rstfbk_net;
  debug_pktin <= debug_pktin_net;
  done_a <= done_a_net;
  done_b <= done_b_net;
  done_c <= done_c_net;
  done_d <= done_d_net;
  g_bb_a <= g_bb_a_net;
  g_bb_b <= g_bb_b_net;
  g_bb_c <= g_bb_c_net;
  g_bb_d <= g_bb_d_net;
  g_rf_a <= g_rf_a_net;
  g_rf_b <= g_rf_b_net;
  g_rf_c <= g_rf_c_net;
  g_rf_d <= g_rf_d_net;
  i_out_a <= i_out_a_net;
  i_out_b <= i_out_b_net;
  i_out_c <= i_out_c_net;
  i_out_d <= i_out_d_net;
  q_out_a <= q_out_a_net;
  q_out_b <= q_out_b_net;
  q_out_c <= q_out_c_net;
  q_out_d <= q_out_d_net;
  rxhp_a <= rxhp_a_net;
  rxhp_b <= rxhp_b_net;
  rxhp_c <= rxhp_c_net;
  rxhp_d <= rxhp_d_net;
  s_axi_arready <= s_axi_arready_net;
  s_axi_awready <= s_axi_awready_net;
  s_axi_bid <= s_axi_bid_net;
  s_axi_bresp <= s_axi_bresp_net;
  s_axi_bvalid <= s_axi_bvalid_net;
  s_axi_rdata <= s_axi_rdata_net;
  s_axi_rid <= s_axi_rid_net;
  s_axi_rlast <= s_axi_rlast_net;
  s_axi_rresp <= s_axi_rresp_net;
  s_axi_rvalid <= s_axi_rvalid_net;
  s_axi_wready <= s_axi_wready_net;

  ADJ: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000001000",
      latency => 1
    )
    port map (
      ce => ADJ_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x12_net,
      o => data_out_x7_net
    );

  ADJ_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x12_net,
      dout => ADJ_reg_ce
    );

  AGC_EN: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000001",
      latency => 1
    )
    port map (
      ce => AGC_EN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x3_net,
      o => data_out_x16_net
    );

  AGC_EN_GLOBAL: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"1",
      latency => 1
    )
    port map (
      ce => AGC_EN_GLOBAL_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x11_net,
      o(0) => data_out_x8_net
    );

  AGC_EN_GLOBAL_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x11_net,
      dout => AGC_EN_GLOBAL_reg_ce
    );

  AGC_EN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x3_net,
      dout => AGC_EN_reg_ce
    );

  AGC_TRIGGER_DELAY: entity work.synth_reg_w_init
    generic map (
      width => 9,
      init_index => 2,
      init_value => b"000000000",
      latency => 1
    )
    port map (
      ce => AGC_TRIGGER_DELAY_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x10_net,
      o => data_out_x9_net
    );

  AGC_TRIGGER_DELAY_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x10_net,
      dout => AGC_TRIGGER_DELAY_reg_ce
    );

  AVG_LEN: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000100001111",
      latency => 1
    )
    port map (
      ce => AVG_LEN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x9_net,
      o => data_out_x10_net
    );

  AVG_LEN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x9_net,
      dout => AVG_LEN_reg_ce
    );

  Bits: entity work.synth_reg_w_init
    generic map (
      width => 10,
      init_index => 2,
      init_value => b"0000000110",
      latency => 1
    )
    port map (
      ce => Bits_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x8_net,
      o => data_out_x11_net
    );

  Bits_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x8_net,
      dout => Bits_reg_ce
    );

  DCO_Timing: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00010010000000000001000000000000",
      latency => 1
    )
    port map (
      ce => DCO_Timing_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x7_net,
      o => data_out_x12_net
    );

  DCO_Timing_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x7_net,
      dout => DCO_Timing_reg_ce
    );

  GBB_A: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_A_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x13_net,
      o => data_out_x6_net
    );

  GBB_A_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant_op_net_x1,
      dout => GBB_A_reg_ce
    );

  GBB_B: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_B_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x14_net,
      o => data_out_x5_net
    );

  GBB_B_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant1_op_net_x1,
      dout => GBB_B_reg_ce
    );

  GBB_C: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_C_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x15_net,
      o => data_out_x4_net
    );

  GBB_C_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant2_op_net_x1,
      dout => GBB_C_reg_ce
    );

  GBB_D: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_D_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x16_net,
      o => data_out_x3_net
    );

  GBB_D_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant3_op_net_x1,
      dout => GBB_D_reg_ce
    );

  GBB_Init: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000110100",
      latency => 1
    )
    port map (
      ce => GBB_Init_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x6_net,
      o => data_out_x13_net
    );

  GBB_Init_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x6_net,
      dout => GBB_Init_reg_ce
    );

  GRF_A: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_A_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x17_net,
      o => data_out_x2_net
    );

  GRF_A_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant_op_net_x2,
      dout => GRF_A_reg_ce
    );

  GRF_B: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_B_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x18_net,
      o => data_out_x1_net
    );

  GRF_B_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant1_op_net_x2,
      dout => GRF_B_reg_ce
    );

  GRF_C: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_C_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x19_net,
      o => data_out_x0_net
    );

  GRF_C_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant2_op_net_x2,
      dout => GRF_C_reg_ce
    );

  GRF_D: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_D_reg_ce,
      clk => clk_1_sg_x82,
      clr => '0',
      i => data_in_x20_net,
      o => data_out_net
    );

  GRF_D_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x82,
      b => constant3_op_net_x2,
      dout => GRF_D_reg_ce
    );

  MRESET_IN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x5_net,
      dout => MRESET_IN_reg_ce
    );

  MRESET_IN_x0: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => MRESET_IN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x5_net,
      o(0) => data_out_x14_net
    );

  PACKET_IN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x4_net,
      dout => PACKET_IN_reg_ce
    );

  PACKET_IN_x0: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => PACKET_IN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x4_net,
      o(0) => data_out_x15_net
    );

  SRESET_IN: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => SRESET_IN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x2_net,
      o(0) => data_out_x17_net
    );

  SRESET_IN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x2_net,
      dout => SRESET_IN_reg_ce
    );

  T_dB: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000000000",
      latency => 1
    )
    port map (
      ce => T_dB_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x1_net,
      o => data_out_x18_net
    );

  T_dB_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x1_net,
      dout => T_dB_reg_ce
    );

  Thresholds: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000110101011100101110100110",
      latency => 1
    )
    port map (
      ce => Thresholds_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x0_net,
      o => data_out_x19_net
    );

  Thresholds_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x0_net,
      dout => Thresholds_reg_ce
    );

  Timing: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"10011010100101100010101000101000",
      latency => 1
    )
    port map (
      ce => Timing_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_net,
      o => data_out_x20_net
    );

  Timing_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_net,
      dout => Timing_reg_ce
    );

  default_clock_driver_w3_warplab_agc_x0: entity work.default_clock_driver_w3_warplab_agc
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x82,
      ce_2 => ce_2_sg_x42,
      ce_4 => ce_4_sg_x9,
      clk_1 => clk_1_sg_x82,
      clk_2 => clk_2_sg_x42,
      clk_4 => clk_4_sg_x9
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  plb_clock_driver_w3_warplab_agc_x0: entity work.plb_clock_driver_w3_warplab_agc
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet_x0,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1
    );

  w3_warplab_agc_x0: entity work.w3_warplab_agc
    port map (
      axi_aresetn => axi_aresetn_net,
      ce_1 => ce_1_sg_x82,
      ce_2 => ce_2_sg_x42,
      ce_4 => ce_4_sg_x9,
      clk_1 => clk_1_sg_x82,
      clk_2 => clk_2_sg_x42,
      clk_4 => clk_4_sg_x9,
      data_out => data_out_net,
      data_out_x0 => data_out_x0_net,
      data_out_x1 => data_out_x1_net,
      data_out_x10 => data_out_x10_net,
      data_out_x11 => data_out_x11_net,
      data_out_x12 => data_out_x12_net,
      data_out_x13 => data_out_x13_net,
      data_out_x14 => data_out_x14_net,
      data_out_x15 => data_out_x15_net,
      data_out_x16 => data_out_x16_net,
      data_out_x17 => data_out_x17_net,
      data_out_x18 => data_out_x18_net,
      data_out_x19 => data_out_x19_net,
      data_out_x2 => data_out_x2_net,
      data_out_x20 => data_out_x20_net,
      data_out_x3 => data_out_x3_net,
      data_out_x4 => data_out_x4_net,
      data_out_x5 => data_out_x5_net,
      data_out_x6 => data_out_x6_net,
      data_out_x7 => data_out_x7_net,
      data_out_x8 => data_out_x8_net,
      data_out_x9 => data_out_x9_net,
      dout => data_out_x20_net,
      dout_x0 => data_out_x19_net,
      dout_x1 => data_out_x18_net,
      dout_x10 => data_out_x9_net,
      dout_x11 => data_out_x8_net,
      dout_x12 => data_out_x7_net,
      dout_x2 => data_out_x17_net,
      dout_x3 => data_out_x16_net,
      dout_x4 => data_out_x15_net,
      dout_x5 => data_out_x14_net,
      dout_x6 => data_out_x13_net,
      dout_x7 => data_out_x12_net,
      dout_x8 => data_out_x11_net,
      dout_x9 => data_out_x10_net,
      i_in_a => i_in_a_net,
      i_in_b => i_in_b_net,
      i_in_c => i_in_c_net,
      i_in_d => i_in_d_net,
      mreset_in => mreset_in_net,
      packet_in => packet_in_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
      q_in_a => q_in_a_net,
      q_in_b => q_in_b_net,
      q_in_c => q_in_c_net,
      q_in_d => q_in_d_net,
      reset_in => reset_in_net,
      rssi_in_a => rssi_in_a_net,
      rssi_in_b => rssi_in_b_net,
      rssi_in_c => rssi_in_c_net,
      rssi_in_d => rssi_in_d_net,
      s_axi_araddr => s_axi_araddr_net,
      s_axi_arburst => s_axi_arburst_net,
      s_axi_arcache => s_axi_arcache_net,
      s_axi_arid => s_axi_arid_net,
      s_axi_arlen => s_axi_arlen_net,
      s_axi_arlock => s_axi_arlock_net,
      s_axi_arprot => s_axi_arprot_net,
      s_axi_arsize => s_axi_arsize_net,
      s_axi_arvalid => s_axi_arvalid_net,
      s_axi_awaddr => s_axi_awaddr_net,
      s_axi_awburst => s_axi_awburst_net,
      s_axi_awcache => s_axi_awcache_net,
      s_axi_awid => s_axi_awid_net,
      s_axi_awlen => s_axi_awlen_net,
      s_axi_awlock => s_axi_awlock_net,
      s_axi_awprot => s_axi_awprot_net,
      s_axi_awsize => s_axi_awsize_net,
      s_axi_awvalid => s_axi_awvalid_net,
      s_axi_bready => s_axi_bready_net,
      s_axi_rready => s_axi_rready_net,
      s_axi_wdata => s_axi_wdata_net,
      s_axi_wlast => s_axi_wlast_net,
      s_axi_wstrb => s_axi_wstrb_net,
      s_axi_wvalid => s_axi_wvalid_net,
      agc_done => agc_done_net,
      data_in => data_in_net,
      data_in_x0 => data_in_x0_net,
      data_in_x1 => data_in_x1_net,
      data_in_x10 => data_in_x10_net,
      data_in_x11 => data_in_x11_net,
      data_in_x12 => data_in_x12_net,
      data_in_x13 => data_in_x13_net,
      data_in_x14 => data_in_x14_net,
      data_in_x15 => data_in_x15_net,
      data_in_x16 => data_in_x16_net,
      data_in_x17 => data_in_x17_net,
      data_in_x18 => data_in_x18_net,
      data_in_x19 => data_in_x19_net,
      data_in_x2 => data_in_x2_net,
      data_in_x20 => data_in_x20_net,
      data_in_x3 => data_in_x3_net,
      data_in_x4 => data_in_x4_net,
      data_in_x5 => data_in_x5_net,
      data_in_x6 => data_in_x6_net,
      data_in_x7 => data_in_x7_net,
      data_in_x8 => data_in_x8_net,
      data_in_x9 => data_in_x9_net,
      debug_agc => debug_agc_net,
      debug_agc_rst => debug_agc_rst_net,
      debug_agc_rstfbk => debug_agc_rstfbk_net,
      debug_pktin => debug_pktin_net,
      done_a => done_a_net,
      done_b => done_b_net,
      done_c => done_c_net,
      done_d => done_d_net,
      en => en_net,
      en_x0 => en_x0_net,
      en_x1 => en_x1_net,
      en_x10 => en_x10_net,
      en_x11 => en_x11_net,
      en_x12 => en_x12_net,
      en_x13 => constant_op_net_x1,
      en_x14 => constant1_op_net_x1,
      en_x15 => constant2_op_net_x1,
      en_x16 => constant3_op_net_x1,
      en_x17 => constant_op_net_x2,
      en_x18 => constant1_op_net_x2,
      en_x19 => constant2_op_net_x2,
      en_x2 => en_x2_net,
      en_x20 => constant3_op_net_x2,
      en_x3 => en_x3_net,
      en_x4 => en_x4_net,
      en_x5 => en_x5_net,
      en_x6 => en_x6_net,
      en_x7 => en_x7_net,
      en_x8 => en_x8_net,
      en_x9 => en_x9_net,
      g_bb_a => g_bb_a_net,
      g_bb_b => g_bb_b_net,
      g_bb_c => g_bb_c_net,
      g_bb_d => g_bb_d_net,
      g_rf_a => g_rf_a_net,
      g_rf_b => g_rf_b_net,
      g_rf_c => g_rf_c_net,
      g_rf_d => g_rf_d_net,
      i_out_a => i_out_a_net,
      i_out_b => i_out_b_net,
      i_out_c => i_out_c_net,
      i_out_d => i_out_d_net,
      q_out_a => q_out_a_net,
      q_out_b => q_out_b_net,
      q_out_c => q_out_c_net,
      q_out_d => q_out_d_net,
      rxhp_a => rxhp_a_net,
      rxhp_b => rxhp_b_net,
      rxhp_c => rxhp_c_net,
      rxhp_d => rxhp_d_net,
      s_axi_arready => s_axi_arready_net,
      s_axi_awready => s_axi_awready_net,
      s_axi_bid => s_axi_bid_net,
      s_axi_bresp => s_axi_bresp_net,
      s_axi_bvalid => s_axi_bvalid_net,
      s_axi_rdata => s_axi_rdata_net,
      s_axi_rid => s_axi_rid_net,
      s_axi_rlast => s_axi_rlast_net,
      s_axi_rresp => s_axi_rresp_net,
      s_axi_rvalid => s_axi_rvalid_net,
      s_axi_wready => s_axi_wready_net
    );

end structural;
