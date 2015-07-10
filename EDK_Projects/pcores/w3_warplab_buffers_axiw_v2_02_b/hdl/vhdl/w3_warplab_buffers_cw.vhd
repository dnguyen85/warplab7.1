
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

entity default_clock_driver_w3_warplab_buffers is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    ce_1: out std_logic; 
    clk_1: out std_logic
  );
end default_clock_driver_w3_warplab_buffers;

architecture structural of default_clock_driver_w3_warplab_buffers is
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
  ce_1 <= xlclockdriver_1_ce;
  clk_1 <= xlclockdriver_1_clk;

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

entity plb_clock_driver_w3_warplab_buffers is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    plb_ce_1: out std_logic; 
    plb_clk_1: out std_logic
  );
end plb_clock_driver_w3_warplab_buffers;

architecture structural of plb_clock_driver_w3_warplab_buffers is
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

entity w3_warplab_buffers_cw is
  port (
    agc_done: in std_logic; 
    axi_aresetn: in std_logic; 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    design_ver: in std_logic_vector(31 downto 0); 
    rfa_adc_i: in std_logic_vector(11 downto 0); 
    rfa_adc_q: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_q: in std_logic_vector(11 downto 0); 
    rfa_rssi: in std_logic_vector(9 downto 0); 
    rfb_adc_i: in std_logic_vector(11 downto 0); 
    rfb_adc_q: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_q: in std_logic_vector(11 downto 0); 
    rfb_rssi: in std_logic_vector(9 downto 0); 
    rfc_adc_i: in std_logic_vector(11 downto 0); 
    rfc_adc_q: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_q: in std_logic_vector(11 downto 0); 
    rfc_rssi: in std_logic_vector(9 downto 0); 
    rfd_adc_i: in std_logic_vector(11 downto 0); 
    rfd_adc_q: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_q: in std_logic_vector(11 downto 0); 
    rfd_rssi: in std_logic_vector(9 downto 0); 
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
    stoptx: in std_logic; 
    trigger_in: in std_logic; 
    xps_ce: in std_logic := '1'; 
    xps_clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    capture_running: out std_logic; 
    debug_agc_done: out std_logic; 
    rfa_dac_i: out std_logic_vector(11 downto 0); 
    rfa_dac_q: out std_logic_vector(11 downto 0); 
    rfb_dac_i: out std_logic_vector(11 downto 0); 
    rfb_dac_q: out std_logic_vector(11 downto 0); 
    rfc_dac_i: out std_logic_vector(11 downto 0); 
    rfc_dac_q: out std_logic_vector(11 downto 0); 
    rfd_dac_i: out std_logic_vector(11 downto 0); 
    rfd_dac_q: out std_logic_vector(11 downto 0); 
    rssi_adc_clk: out std_logic; 
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
    s_axi_wready: out std_logic; 
    transmit_running: out std_logic
  );
end w3_warplab_buffers_cw;

architecture structural of w3_warplab_buffers_cw is
  component block_memory_generator_virtex6_7_3_0bb38ca62568dca5
    port (
      addra: in std_logic_vector(11 downto 0); 
      addrb: in std_logic_vector(11 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of block_memory_generator_virtex6_7_3_0bb38ca62568dca5: component is true;
  attribute box_type: string;
  attribute box_type of block_memory_generator_virtex6_7_3_0bb38ca62568dca5: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of block_memory_generator_virtex6_7_3_0bb38ca62568dca5: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_7_3_0bb38ca62568dca5: component is false;
  attribute dont_touch of block_memory_generator_virtex6_7_3_0bb38ca62568dca5: component is true;

  component block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port (
      addra: in std_logic_vector(14 downto 0); 
      addrb: in std_logic_vector(14 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_7_3_5c11493ba40b847c: component is true;
  attribute box_type of block_memory_generator_virtex6_7_3_5c11493ba40b847c: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_7_3_5c11493ba40b847c: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_7_3_5c11493ba40b847c: component is false;
  attribute dont_touch of block_memory_generator_virtex6_7_3_5c11493ba40b847c: component is true;

  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal AGCDoneAddr_reg_ce: std_logic;
  signal BUFF_SIZES_reg_ce: std_logic;
  signal CONFIG_reg_ce: std_logic;
  signal DESIGN_VER_reg_ce: std_logic;
  signal RFAB_AGCDoneRSSI_reg_ce: std_logic;
  signal RFA_IQ_Rx_Buffer_reg_ce: std_logic;
  signal RFA_IQ_Tx_Buffer_reg_ce: std_logic;
  signal RFA_RSSI_Buffer_reg_ce: std_logic;
  signal RFB_IQ_Rx_Buffer_reg_ce: std_logic;
  signal RFB_IQ_Tx_Buffer_reg_ce: std_logic;
  signal RFB_RSSI_Buffer_reg_ce: std_logic;
  signal RFCD_AGCDoneRSSI_reg_ce: std_logic;
  signal RFC_IQ_Rx_Buffer_reg_ce: std_logic;
  signal RFC_IQ_Tx_Buffer_reg_ce: std_logic;
  signal RFC_RSSI_Buffer_reg_ce: std_logic;
  signal RFD_IQ_Rx_Buffer_reg_ce: std_logic;
  signal RFD_IQ_Tx_Buffer_reg_ce: std_logic;
  signal RFD_RSSI_Buffer_reg_ce: std_logic;
  signal RX_BUFF_EN_reg_ce: std_logic;
  signal RxLength_reg_ce: std_logic;
  signal STATUS_reg_ce: std_logic;
  signal TX_BUFF_EN_reg_ce: std_logic;
  signal TxDelay_reg_ce: std_logic;
  signal TxLength_reg_ce: std_logic;
  signal addr_net: std_logic_vector(14 downto 0);
  signal addr_x0_net: std_logic_vector(11 downto 0);
  signal addr_x10_net: std_logic_vector(14 downto 0);
  signal addr_x12_net: std_logic_vector(11 downto 0);
  signal addr_x15_net: std_logic_vector(11 downto 0);
  signal addr_x18_net: std_logic_vector(11 downto 0);
  signal addr_x1_net: std_logic_vector(11 downto 0);
  signal addr_x21_net: std_logic_vector(11 downto 0);
  signal addr_x2_net: std_logic_vector(14 downto 0);
  signal addr_x3_net: std_logic_vector(14 downto 0);
  signal addr_x4_net: std_logic_vector(14 downto 0);
  signal addr_x5_net: std_logic_vector(11 downto 0);
  signal addr_x6_net: std_logic_vector(14 downto 0);
  signal addr_x7_net: std_logic_vector(14 downto 0);
  signal addr_x8_net: std_logic_vector(11 downto 0);
  signal addr_x9_net: std_logic_vector(14 downto 0);
  signal agc_done_net_x0: std_logic;
  signal agc_done_net_x1: std_logic;
  signal axi_aresetn_net: std_logic;
  signal capture_running_net: std_logic;
  signal ce_1_sg_x39: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x39: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clkNet_x0: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert2_dout_net_x1: std_logic;
  signal convert2_dout_net_x2: std_logic;
  signal data_in_net: std_logic_vector(31 downto 0);
  signal data_in_x0_net: std_logic_vector(31 downto 0);
  signal data_in_x10_net: std_logic_vector(31 downto 0);
  signal data_in_x11_net: std_logic_vector(31 downto 0);
  signal data_in_x12_net: std_logic_vector(31 downto 0);
  signal data_in_x13_net: std_logic_vector(31 downto 0);
  signal data_in_x14_net: std_logic_vector(31 downto 0);
  signal data_in_x15_net: std_logic_vector(23 downto 0);
  signal data_in_x16_net: std_logic_vector(23 downto 0);
  signal data_in_x17_net: std_logic_vector(31 downto 0);
  signal data_in_x18_net: std_logic_vector(31 downto 0);
  signal data_in_x19_net: std_logic_vector(31 downto 0);
  signal data_in_x1_net: std_logic_vector(31 downto 0);
  signal data_in_x20_net: std_logic_vector(1 downto 0);
  signal data_in_x21_net: std_logic_vector(31 downto 0);
  signal data_in_x22_net: std_logic_vector(31 downto 0);
  signal data_in_x23_net: std_logic_vector(31 downto 0);
  signal data_in_x24_net: std_logic_vector(31 downto 0);
  signal data_in_x25_net: std_logic_vector(31 downto 0);
  signal data_in_x26_net: std_logic_vector(31 downto 0);
  signal data_in_x27_net: std_logic_vector(31 downto 0);
  signal data_in_x28_net: std_logic_vector(31 downto 0);
  signal data_in_x29_net: std_logic_vector(31 downto 0);
  signal data_in_x2_net: std_logic_vector(31 downto 0);
  signal data_in_x30_net: std_logic_vector(31 downto 0);
  signal data_in_x31_net: std_logic_vector(31 downto 0);
  signal data_in_x32_net: std_logic_vector(31 downto 0);
  signal data_in_x33_net: std_logic_vector(31 downto 0);
  signal data_in_x34_net: std_logic_vector(31 downto 0);
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic_vector(31 downto 0);
  signal data_in_x5_net: std_logic_vector(31 downto 0);
  signal data_in_x6_net: std_logic_vector(31 downto 0);
  signal data_in_x7_net: std_logic_vector(31 downto 0);
  signal data_in_x8_net: std_logic_vector(31 downto 0);
  signal data_in_x9_net: std_logic_vector(31 downto 0);
  signal data_out_net: std_logic_vector(31 downto 0);
  signal data_out_x0_net: std_logic_vector(31 downto 0);
  signal data_out_x10_net: std_logic_vector(31 downto 0);
  signal data_out_x11_net: std_logic_vector(31 downto 0);
  signal data_out_x12_net: std_logic_vector(31 downto 0);
  signal data_out_x13_net: std_logic_vector(31 downto 0);
  signal data_out_x14_net: std_logic_vector(31 downto 0);
  signal data_out_x15_net: std_logic_vector(31 downto 0);
  signal data_out_x16_net: std_logic_vector(31 downto 0);
  signal data_out_x17_net: std_logic_vector(31 downto 0);
  signal data_out_x18_net: std_logic_vector(31 downto 0);
  signal data_out_x19_net: std_logic_vector(31 downto 0);
  signal data_out_x1_net: std_logic_vector(1 downto 0);
  signal data_out_x20_net: std_logic_vector(23 downto 0);
  signal data_out_x21_net: std_logic_vector(23 downto 0);
  signal data_out_x22_net: std_logic_vector(31 downto 0);
  signal data_out_x25_net: std_logic_vector(31 downto 0);
  signal data_out_x28_net: std_logic_vector(31 downto 0);
  signal data_out_x2_net: std_logic_vector(31 downto 0);
  signal data_out_x31_net: std_logic_vector(31 downto 0);
  signal data_out_x34_net: std_logic_vector(31 downto 0);
  signal data_out_x3_net: std_logic_vector(31 downto 0);
  signal data_out_x4_net: std_logic_vector(31 downto 0);
  signal data_out_x5_net: std_logic_vector(31 downto 0);
  signal data_out_x6_net: std_logic_vector(31 downto 0);
  signal data_out_x7_net: std_logic_vector(31 downto 0);
  signal data_out_x8_net: std_logic_vector(31 downto 0);
  signal data_out_x9_net: std_logic_vector(31 downto 0);
  signal design_ver_net: std_logic_vector(31 downto 0);
  signal en_x11_net: std_logic;
  signal en_x12_net: std_logic;
  signal en_x13_net: std_logic;
  signal en_x14_net: std_logic;
  signal en_x15_net: std_logic;
  signal en_x16_net: std_logic;
  signal en_x20_net: std_logic;
  signal en_x21_net: std_logic;
  signal en_x22_net: std_logic;
  signal logical_y_net_x10: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x9: std_logic;
  signal memmap_shram_en_net_x1: std_logic;
  signal memmap_shram_en_net_x10: std_logic;
  signal memmap_shram_en_net_x11: std_logic;
  signal memmap_shram_en_net_x12: std_logic;
  signal memmap_shram_en_net_x2: std_logic;
  signal memmap_shram_en_net_x3: std_logic;
  signal memmap_shram_en_net_x4: std_logic;
  signal memmap_shram_en_net_x5: std_logic;
  signal memmap_shram_en_net_x6: std_logic;
  signal memmap_shram_en_net_x7: std_logic;
  signal memmap_shram_en_net_x8: std_logic;
  signal memmap_shram_en_net_x9: std_logic;
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
  signal rfa_adc_i_net: std_logic_vector(11 downto 0);
  signal rfa_adc_q_net: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_i_net: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_q_net: std_logic_vector(11 downto 0);
  signal rfa_dac_i_net: std_logic_vector(11 downto 0);
  signal rfa_dac_q_net: std_logic_vector(11 downto 0);
  signal rfa_rssi_net: std_logic_vector(9 downto 0);
  signal rfb_adc_i_net: std_logic_vector(11 downto 0);
  signal rfb_adc_q_net: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_i_net: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_q_net: std_logic_vector(11 downto 0);
  signal rfb_dac_i_net: std_logic_vector(11 downto 0);
  signal rfb_dac_q_net: std_logic_vector(11 downto 0);
  signal rfb_rssi_net: std_logic_vector(9 downto 0);
  signal rfc_adc_i_net: std_logic_vector(11 downto 0);
  signal rfc_adc_q_net: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_i_net: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_q_net: std_logic_vector(11 downto 0);
  signal rfc_dac_i_net: std_logic_vector(11 downto 0);
  signal rfc_dac_q_net: std_logic_vector(11 downto 0);
  signal rfc_rssi_net: std_logic_vector(9 downto 0);
  signal rfd_adc_i_net: std_logic_vector(11 downto 0);
  signal rfd_adc_q_net: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_i_net: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_q_net: std_logic_vector(11 downto 0);
  signal rfd_dac_i_net: std_logic_vector(11 downto 0);
  signal rfd_dac_q_net: std_logic_vector(11 downto 0);
  signal rfd_rssi_net: std_logic_vector(9 downto 0);
  signal rssi_adc_clk_net: std_logic;
  signal rx_addr_counter1_op_net_x10: std_logic_vector(14 downto 0);
  signal rx_addr_counter1_op_net_x11: std_logic_vector(14 downto 0);
  signal rx_addr_counter1_op_net_x12: std_logic_vector(14 downto 0);
  signal rx_addr_counter1_op_net_x13: std_logic_vector(14 downto 0);
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
  signal shared_memory_data_out_net: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x1: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x2: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x3: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x4: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x5: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x6: std_logic_vector(31 downto 0);
  signal stoptx_net: std_logic;
  signal transmit_running_net: std_logic;
  signal trigger_in_net: std_logic;
  signal tx_addr_counter_op_net_x1: std_logic_vector(14 downto 0);
  signal tx_addr_counter_op_net_x2: std_logic_vector(14 downto 0);
  signal tx_addr_counter_op_net_x3: std_logic_vector(14 downto 0);
  signal tx_addr_counter_op_net_x4: std_logic_vector(14 downto 0);
  signal we_net: std_logic;
  signal we_x0_net: std_logic;
  signal we_x10_net: std_logic;
  signal we_x13_net: std_logic;
  signal we_x16_net: std_logic;
  signal we_x19_net: std_logic;
  signal we_x1_net: std_logic;
  signal we_x22_net: std_logic;
  signal we_x2_net: std_logic;
  signal we_x3_net: std_logic;
  signal we_x4_net: std_logic;
  signal we_x5_net: std_logic;
  signal we_x6_net: std_logic;
  signal we_x7_net: std_logic;
  signal we_x8_net: std_logic;
  signal we_x9_net: std_logic;

begin
  agc_done_net_x0 <= agc_done;
  axi_aresetn_net <= axi_aresetn;
  clkNet <= clk;
  design_ver_net <= design_ver;
  rfa_adc_i_net <= rfa_adc_i;
  rfa_adc_q_net <= rfa_adc_q;
  rfa_agc_filt_i_net <= rfa_agc_filt_i;
  rfa_agc_filt_q_net <= rfa_agc_filt_q;
  rfa_rssi_net <= rfa_rssi;
  rfb_adc_i_net <= rfb_adc_i;
  rfb_adc_q_net <= rfb_adc_q;
  rfb_agc_filt_i_net <= rfb_agc_filt_i;
  rfb_agc_filt_q_net <= rfb_agc_filt_q;
  rfb_rssi_net <= rfb_rssi;
  rfc_adc_i_net <= rfc_adc_i;
  rfc_adc_q_net <= rfc_adc_q;
  rfc_agc_filt_i_net <= rfc_agc_filt_i;
  rfc_agc_filt_q_net <= rfc_agc_filt_q;
  rfc_rssi_net <= rfc_rssi;
  rfd_adc_i_net <= rfd_adc_i;
  rfd_adc_q_net <= rfd_adc_q;
  rfd_agc_filt_i_net <= rfd_agc_filt_i;
  rfd_agc_filt_q_net <= rfd_agc_filt_q;
  rfd_rssi_net <= rfd_rssi;
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
  stoptx_net <= stoptx;
  trigger_in_net <= trigger_in;
  clkNet_x0 <= xps_clk;
  capture_running <= capture_running_net;
  debug_agc_done <= agc_done_net_x1;
  rfa_dac_i <= rfa_dac_i_net;
  rfa_dac_q <= rfa_dac_q_net;
  rfb_dac_i <= rfb_dac_i_net;
  rfb_dac_q <= rfb_dac_q_net;
  rfc_dac_i <= rfc_dac_i_net;
  rfc_dac_q <= rfc_dac_q_net;
  rfd_dac_i <= rfd_dac_i_net;
  rfd_dac_q <= rfd_dac_q_net;
  rssi_adc_clk <= rssi_adc_clk_net;
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
  transmit_running <= transmit_running_net;

  AGCDoneAddr: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => AGCDoneAddr_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x17_net,
      o => data_out_x4_net
    );

  AGCDoneAddr_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => convert2_dout_net_x0,
      dout => AGCDoneAddr_reg_ce
    );

  BUFF_SIZES: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => BUFF_SIZES_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x22_net,
      o => data_out_net
    );

  BUFF_SIZES_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => en_x22_net,
      dout => BUFF_SIZES_reg_ce
    );

  CONFIG_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x13_net,
      dout => CONFIG_reg_ce
    );

  CONFIG_x0: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => CONFIG_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x13_net,
      o => data_out_x18_net
    );

  DESIGN_VER_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => en_x21_net,
      dout => DESIGN_VER_reg_ce
    );

  DESIGN_VER_x0: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => DESIGN_VER_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x21_net,
      o => data_out_x0_net
    );

  RFAB_AGCDoneRSSI: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => RFAB_AGCDoneRSSI_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x18_net,
      o => data_out_x3_net
    );

  RFAB_AGCDoneRSSI_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => convert2_dout_net_x1,
      dout => RFAB_AGCDoneRSSI_reg_ce
    );

  RFA_IQ_Rx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => rx_addr_counter1_op_net_x12,
      addrb => addr_x2_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x23_net,
      dinb => data_in_x2_net,
      ena => ce_1_sg_x39,
      enb => RFA_IQ_Rx_Buffer_reg_ce,
      wea(0) => logical_y_net_x9,
      web(0) => we_x2_net,
      douta => shared_memory_data_out_net,
      doutb => data_out_x8_net
    );

  RFA_IQ_Rx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x4,
      dout => RFA_IQ_Rx_Buffer_reg_ce
    );

  RFA_IQ_Tx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => tx_addr_counter_op_net_x4,
      addrb => addr_x10_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x25_net,
      dinb => data_in_x10_net,
      ena => ce_1_sg_x39,
      enb => RFA_IQ_Tx_Buffer_reg_ce,
      wea(0) => we_x13_net,
      web(0) => we_x10_net,
      douta => data_out_x25_net,
      doutb => data_out_x16_net
    );

  RFA_IQ_Tx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x12,
      dout => RFA_IQ_Tx_Buffer_reg_ce
    );

  RFA_RSSI_Buffer: block_memory_generator_virtex6_7_3_0bb38ca62568dca5
    port map (
      addra => addr_x12_net,
      addrb => addr_x1_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x24_net,
      dinb => data_in_x1_net,
      ena => ce_1_sg_x39,
      enb => RFA_RSSI_Buffer_reg_ce,
      wea(0) => logical_y_net_x10,
      web(0) => we_x1_net,
      douta => shared_memory_data_out_net_x0,
      doutb => data_out_x7_net
    );

  RFA_RSSI_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x3,
      dout => RFA_RSSI_Buffer_reg_ce
    );

  RFB_IQ_Rx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => rx_addr_counter1_op_net_x13,
      addrb => addr_x9_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x26_net,
      dinb => data_in_x9_net,
      ena => ce_1_sg_x39,
      enb => RFB_IQ_Rx_Buffer_reg_ce,
      wea(0) => logical_y_net_x11,
      web(0) => we_x9_net,
      douta => shared_memory_data_out_net_x1,
      doutb => data_out_x15_net
    );

  RFB_IQ_Rx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x11,
      dout => RFB_IQ_Rx_Buffer_reg_ce
    );

  RFB_IQ_Tx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => tx_addr_counter_op_net_x1,
      addrb => addr_x7_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x28_net,
      dinb => data_in_x7_net,
      ena => ce_1_sg_x39,
      enb => RFB_IQ_Tx_Buffer_reg_ce,
      wea(0) => we_x16_net,
      web(0) => we_x7_net,
      douta => data_out_x28_net,
      doutb => data_out_x13_net
    );

  RFB_IQ_Tx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x9,
      dout => RFB_IQ_Tx_Buffer_reg_ce
    );

  RFB_RSSI_Buffer: block_memory_generator_virtex6_7_3_0bb38ca62568dca5
    port map (
      addra => addr_x15_net,
      addrb => addr_x8_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x27_net,
      dinb => data_in_x8_net,
      ena => ce_1_sg_x39,
      enb => RFB_RSSI_Buffer_reg_ce,
      wea(0) => logical_y_net_x12,
      web(0) => we_x8_net,
      douta => shared_memory_data_out_net_x2,
      doutb => data_out_x14_net
    );

  RFB_RSSI_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x10,
      dout => RFB_RSSI_Buffer_reg_ce
    );

  RFCD_AGCDoneRSSI: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => RFCD_AGCDoneRSSI_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x19_net,
      o => data_out_x2_net
    );

  RFCD_AGCDoneRSSI_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => convert2_dout_net_x2,
      dout => RFCD_AGCDoneRSSI_reg_ce
    );

  RFC_IQ_Rx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => rx_addr_counter1_op_net_x10,
      addrb => addr_x6_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x29_net,
      dinb => data_in_x6_net,
      ena => ce_1_sg_x39,
      enb => RFC_IQ_Rx_Buffer_reg_ce,
      wea(0) => logical_y_net_x13,
      web(0) => we_x6_net,
      douta => shared_memory_data_out_net_x3,
      doutb => data_out_x12_net
    );

  RFC_IQ_Rx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x8,
      dout => RFC_IQ_Rx_Buffer_reg_ce
    );

  RFC_IQ_Tx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => tx_addr_counter_op_net_x2,
      addrb => addr_x4_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x31_net,
      dinb => data_in_x4_net,
      ena => ce_1_sg_x39,
      enb => RFC_IQ_Tx_Buffer_reg_ce,
      wea(0) => we_x19_net,
      web(0) => we_x4_net,
      douta => data_out_x31_net,
      doutb => data_out_x10_net
    );

  RFC_IQ_Tx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x6,
      dout => RFC_IQ_Tx_Buffer_reg_ce
    );

  RFC_RSSI_Buffer: block_memory_generator_virtex6_7_3_0bb38ca62568dca5
    port map (
      addra => addr_x18_net,
      addrb => addr_x5_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x30_net,
      dinb => data_in_x5_net,
      ena => ce_1_sg_x39,
      enb => RFC_RSSI_Buffer_reg_ce,
      wea(0) => logical_y_net_x14,
      web(0) => we_x5_net,
      douta => shared_memory_data_out_net_x4,
      doutb => data_out_x11_net
    );

  RFC_RSSI_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x7,
      dout => RFC_RSSI_Buffer_reg_ce
    );

  RFD_IQ_Rx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => rx_addr_counter1_op_net_x11,
      addrb => addr_x3_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x32_net,
      dinb => data_in_x3_net,
      ena => ce_1_sg_x39,
      enb => RFD_IQ_Rx_Buffer_reg_ce,
      wea(0) => logical_y_net_x15,
      web(0) => we_x3_net,
      douta => shared_memory_data_out_net_x5,
      doutb => data_out_x9_net
    );

  RFD_IQ_Rx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x5,
      dout => RFD_IQ_Rx_Buffer_reg_ce
    );

  RFD_IQ_Tx_Buffer: block_memory_generator_virtex6_7_3_5c11493ba40b847c
    port map (
      addra => tx_addr_counter_op_net_x3,
      addrb => addr_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x34_net,
      dinb => data_in_net,
      ena => ce_1_sg_x39,
      enb => RFD_IQ_Tx_Buffer_reg_ce,
      wea(0) => we_x22_net,
      web(0) => we_net,
      douta => data_out_x34_net,
      doutb => data_out_x5_net
    );

  RFD_IQ_Tx_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x1,
      dout => RFD_IQ_Tx_Buffer_reg_ce
    );

  RFD_RSSI_Buffer: block_memory_generator_virtex6_7_3_0bb38ca62568dca5
    port map (
      addra => addr_x21_net,
      addrb => addr_x0_net,
      clka => clk_1_sg_x39,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x33_net,
      dinb => data_in_x0_net,
      ena => ce_1_sg_x39,
      enb => RFD_RSSI_Buffer_reg_ce,
      wea(0) => logical_y_net_x16,
      web(0) => we_x0_net,
      douta => shared_memory_data_out_net_x6,
      doutb => data_out_x6_net
    );

  RFD_RSSI_Buffer_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => memmap_shram_en_net_x2,
      dout => RFD_RSSI_Buffer_reg_ce
    );

  RX_BUFF_EN: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => RX_BUFF_EN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x12_net,
      o => data_out_x19_net
    );

  RX_BUFF_EN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x12_net,
      dout => RX_BUFF_EN_reg_ce
    );

  RxLength: entity work.synth_reg_w_init
    generic map (
      width => 24,
      init_index => 2,
      init_value => b"000000000111111111111111",
      latency => 1
    )
    port map (
      ce => RxLength_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x15_net,
      o => data_out_x21_net
    );

  RxLength_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x15_net,
      dout => RxLength_reg_ce
    );

  STATUS: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => STATUS_reg_ce,
      clk => clk_1_sg_x39,
      clr => '0',
      i => data_in_x20_net,
      o => data_out_x1_net
    );

  STATUS_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x39,
      b => en_x20_net,
      dout => STATUS_reg_ce
    );

  TX_BUFF_EN: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TX_BUFF_EN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x14_net,
      o => data_out_x17_net
    );

  TX_BUFF_EN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x14_net,
      dout => TX_BUFF_EN_reg_ce
    );

  TxDelay: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000001111101000",
      latency => 1
    )
    port map (
      ce => TxDelay_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x11_net,
      o => data_out_x22_net
    );

  TxDelay_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x11_net,
      dout => TxDelay_reg_ce
    );

  TxLength: entity work.synth_reg_w_init
    generic map (
      width => 24,
      init_index => 2,
      init_value => b"000000000111111111111111",
      latency => 1
    )
    port map (
      ce => TxLength_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x16_net,
      o => data_out_x20_net
    );

  TxLength_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x16_net,
      dout => TxLength_reg_ce
    );

  default_clock_driver_w3_warplab_buffers_x0: entity work.default_clock_driver_w3_warplab_buffers
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  plb_clock_driver_w3_warplab_buffers_x0: entity work.plb_clock_driver_w3_warplab_buffers
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet_x0,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1
    );

  w3_warplab_buffers_x0: entity work.w3_warplab_buffers
    port map (
      agc_done => agc_done_net_x0,
      axi_aresetn => axi_aresetn_net,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
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
      data_out_x21 => data_out_x21_net,
      data_out_x22 => data_out_x22_net,
      data_out_x25 => data_out_x25_net,
      data_out_x28 => data_out_x28_net,
      data_out_x3 => data_out_x3_net,
      data_out_x31 => data_out_x31_net,
      data_out_x34 => data_out_x34_net,
      data_out_x4 => data_out_x4_net,
      data_out_x5 => data_out_x5_net,
      data_out_x6 => data_out_x6_net,
      data_out_x7 => data_out_x7_net,
      data_out_x8 => data_out_x8_net,
      data_out_x9 => data_out_x9_net,
      design_ver => design_ver_net,
      dout => data_out_x22_net,
      dout_x0 => data_out_x19_net,
      dout_x1 => data_out_x18_net,
      dout_x2 => data_out_x17_net,
      dout_x3 => data_out_x21_net,
      dout_x4 => data_out_x20_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
      rfa_adc_i => rfa_adc_i_net,
      rfa_adc_q => rfa_adc_q_net,
      rfa_agc_filt_i => rfa_agc_filt_i_net,
      rfa_agc_filt_q => rfa_agc_filt_q_net,
      rfa_rssi => rfa_rssi_net,
      rfb_adc_i => rfb_adc_i_net,
      rfb_adc_q => rfb_adc_q_net,
      rfb_agc_filt_i => rfb_agc_filt_i_net,
      rfb_agc_filt_q => rfb_agc_filt_q_net,
      rfb_rssi => rfb_rssi_net,
      rfc_adc_i => rfc_adc_i_net,
      rfc_adc_q => rfc_adc_q_net,
      rfc_agc_filt_i => rfc_agc_filt_i_net,
      rfc_agc_filt_q => rfc_agc_filt_q_net,
      rfc_rssi => rfc_rssi_net,
      rfd_adc_i => rfd_adc_i_net,
      rfd_adc_q => rfd_adc_q_net,
      rfd_agc_filt_i => rfd_agc_filt_i_net,
      rfd_agc_filt_q => rfd_agc_filt_q_net,
      rfd_rssi => rfd_rssi_net,
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
      stoptx => stoptx_net,
      trigger_in => trigger_in_net,
      addr => addr_net,
      addr_x0 => addr_x0_net,
      addr_x1 => addr_x1_net,
      addr_x10 => addr_x10_net,
      addr_x11 => rx_addr_counter1_op_net_x12,
      addr_x12 => addr_x12_net,
      addr_x13 => tx_addr_counter_op_net_x4,
      addr_x14 => rx_addr_counter1_op_net_x13,
      addr_x15 => addr_x15_net,
      addr_x16 => tx_addr_counter_op_net_x1,
      addr_x17 => rx_addr_counter1_op_net_x10,
      addr_x18 => addr_x18_net,
      addr_x19 => tx_addr_counter_op_net_x2,
      addr_x2 => addr_x2_net,
      addr_x20 => rx_addr_counter1_op_net_x11,
      addr_x21 => addr_x21_net,
      addr_x22 => tx_addr_counter_op_net_x3,
      addr_x3 => addr_x3_net,
      addr_x4 => addr_x4_net,
      addr_x5 => addr_x5_net,
      addr_x6 => addr_x6_net,
      addr_x7 => addr_x7_net,
      addr_x8 => addr_x8_net,
      addr_x9 => addr_x9_net,
      capture_running => capture_running_net,
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
      data_in_x21 => data_in_x21_net,
      data_in_x22 => data_in_x22_net,
      data_in_x23 => data_in_x23_net,
      data_in_x24 => data_in_x24_net,
      data_in_x25 => data_in_x25_net,
      data_in_x26 => data_in_x26_net,
      data_in_x27 => data_in_x27_net,
      data_in_x28 => data_in_x28_net,
      data_in_x29 => data_in_x29_net,
      data_in_x3 => data_in_x3_net,
      data_in_x30 => data_in_x30_net,
      data_in_x31 => data_in_x31_net,
      data_in_x32 => data_in_x32_net,
      data_in_x33 => data_in_x33_net,
      data_in_x34 => data_in_x34_net,
      data_in_x4 => data_in_x4_net,
      data_in_x5 => data_in_x5_net,
      data_in_x6 => data_in_x6_net,
      data_in_x7 => data_in_x7_net,
      data_in_x8 => data_in_x8_net,
      data_in_x9 => data_in_x9_net,
      debug_agc_done => agc_done_net_x1,
      en => memmap_shram_en_net_x1,
      en_x0 => memmap_shram_en_net_x2,
      en_x1 => memmap_shram_en_net_x3,
      en_x10 => memmap_shram_en_net_x12,
      en_x11 => en_x11_net,
      en_x12 => en_x12_net,
      en_x13 => en_x13_net,
      en_x14 => en_x14_net,
      en_x15 => en_x15_net,
      en_x16 => en_x16_net,
      en_x17 => convert2_dout_net_x0,
      en_x18 => convert2_dout_net_x1,
      en_x19 => convert2_dout_net_x2,
      en_x2 => memmap_shram_en_net_x4,
      en_x20 => en_x20_net,
      en_x21 => en_x21_net,
      en_x22 => en_x22_net,
      en_x3 => memmap_shram_en_net_x5,
      en_x4 => memmap_shram_en_net_x6,
      en_x5 => memmap_shram_en_net_x7,
      en_x6 => memmap_shram_en_net_x8,
      en_x7 => memmap_shram_en_net_x9,
      en_x8 => memmap_shram_en_net_x10,
      en_x9 => memmap_shram_en_net_x11,
      rfa_dac_i => rfa_dac_i_net,
      rfa_dac_q => rfa_dac_q_net,
      rfb_dac_i => rfb_dac_i_net,
      rfb_dac_q => rfb_dac_q_net,
      rfc_dac_i => rfc_dac_i_net,
      rfc_dac_q => rfc_dac_q_net,
      rfd_dac_i => rfd_dac_i_net,
      rfd_dac_q => rfd_dac_q_net,
      rssi_adc_clk => rssi_adc_clk_net,
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
      s_axi_wready => s_axi_wready_net,
      transmit_running => transmit_running_net,
      we => we_net,
      we_x0 => we_x0_net,
      we_x1 => we_x1_net,
      we_x10 => we_x10_net,
      we_x11 => logical_y_net_x9,
      we_x12 => logical_y_net_x10,
      we_x13 => we_x13_net,
      we_x14 => logical_y_net_x11,
      we_x15 => logical_y_net_x12,
      we_x16 => we_x16_net,
      we_x17 => logical_y_net_x13,
      we_x18 => logical_y_net_x14,
      we_x19 => we_x19_net,
      we_x2 => we_x2_net,
      we_x20 => logical_y_net_x15,
      we_x21 => logical_y_net_x16,
      we_x22 => we_x22_net,
      we_x3 => we_x3_net,
      we_x4 => we_x4_net,
      we_x5 => we_x5_net,
      we_x6 => we_x6_net,
      we_x7 => we_x7_net,
      we_x8 => we_x8_net,
      we_x9 => we_x9_net
    );

end structural;
