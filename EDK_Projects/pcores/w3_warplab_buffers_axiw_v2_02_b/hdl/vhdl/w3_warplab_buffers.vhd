--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_bcc28bfecf25caff.vhd when simulating
-- the core, cntr_11_0_bcc28bfecf25caff. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_bcc28bfecf25caff IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END cntr_11_0_bcc28bfecf25caff;

ARCHITECTURE cntr_11_0_bcc28bfecf25caff_a OF cntr_11_0_bcc28bfecf25caff IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_bcc28bfecf25caff
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_bcc28bfecf25caff USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 3,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_bcc28bfecf25caff
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_bcc28bfecf25caff_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_d5912692bc2e79ac.vhd when simulating
-- the core, cntr_11_0_d5912692bc2e79ac. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_d5912692bc2e79ac IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END cntr_11_0_d5912692bc2e79ac;

ARCHITECTURE cntr_11_0_d5912692bc2e79ac_a OF cntr_11_0_d5912692bc2e79ac IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_d5912692bc2e79ac
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_d5912692bc2e79ac USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 15,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_d5912692bc2e79ac
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_d5912692bc2e79ac_a;

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
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;

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

entity axi_sgiface is
    generic (
        -- AXI specific.
        -- TODO: need to figure out a way to pass these generics from outside
        C_S_AXI_SUPPORT_BURST   : integer := 0;
        -- TODO: fix the internal ID width to 8
        C_S_AXI_ID_WIDTH        : integer := 8;
        C_S_AXI_DATA_WIDTH      : integer := 32;
        C_S_AXI_ADDR_WIDTH      : integer := 32;
        C_S_AXI_TOTAL_ADDR_LEN  : integer := 23;
        C_S_AXI_LINEAR_ADDR_LEN : integer := 19;
        C_S_AXI_BANK_ADDR_LEN   : integer := 2;
        C_S_AXI_AWLEN_WIDTH     : integer := 8;
        C_S_AXI_ARLEN_WIDTH     : integer := 8
    );
    port (
        -- General.
        AXI_AClk      : in  std_logic;
        AXI_AResetN    : in  std_logic;
        -- not used
        AXI_Ce        : in  std_logic;
  
        -- AXI Port.
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWID    : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        S_AXI_AWLEN   : in  std_logic_vector(C_S_AXI_AWLEN_WIDTH-1 downto 0);
        S_AXI_AWSIZE  : in  std_logic_vector(2 downto 0);
        S_AXI_AWBURST : in  std_logic_vector(1 downto 0);
        S_AXI_AWLOCK  : in  std_logic_vector(1 downto 0);
        S_AXI_AWCACHE : in  std_logic_vector(3 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;
        
        S_AXI_WLAST   : in  std_logic;
        S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;
        
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BID     : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;
        
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARID    : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        S_AXI_ARLEN   : in  std_logic_vector(C_S_AXI_ARLEN_WIDTH-1 downto 0);
        S_AXI_ARSIZE  : in  std_logic_vector(2 downto 0);
        S_AXI_ARBURST : in  std_logic_vector(1 downto 0);
        S_AXI_ARLOCK  : in  std_logic_vector(1 downto 0);
        S_AXI_ARCACHE : in  std_logic_vector(3 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;
        
        -- 'From Register'
        -- 'BUFF_SIZES'
        sm_BUFF_SIZES_dout : in std_logic_vector(32-1 downto 0);
        -- 'DESIGN_VER'
        sm_DESIGN_VER_dout : in std_logic_vector(32-1 downto 0);
        -- 'STATUS'
        sm_STATUS_dout : in std_logic_vector(2-1 downto 0);
        -- 'RFCD_AGCDoneRSSI'
        sm_RFCD_AGCDoneRSSI_dout : in std_logic_vector(32-1 downto 0);
        -- 'RFAB_AGCDoneRSSI'
        sm_RFAB_AGCDoneRSSI_dout : in std_logic_vector(32-1 downto 0);
        -- 'AGCDoneAddr'
        sm_AGCDoneAddr_dout : in std_logic_vector(32-1 downto 0);
        -- 'To Register'
        -- 'TxDelay'
        sm_TxDelay_dout : in std_logic_vector(32-1 downto 0);
        sm_TxDelay_din  : out std_logic_vector(32-1 downto 0);
        sm_TxDelay_en   : out std_logic;
        -- 'RX_BUFF_EN'
        sm_RX_BUFF_EN_dout : in std_logic_vector(32-1 downto 0);
        sm_RX_BUFF_EN_din  : out std_logic_vector(32-1 downto 0);
        sm_RX_BUFF_EN_en   : out std_logic;
        -- 'CONFIG'
        sm_CONFIG_dout : in std_logic_vector(32-1 downto 0);
        sm_CONFIG_din  : out std_logic_vector(32-1 downto 0);
        sm_CONFIG_en   : out std_logic;
        -- 'TX_BUFF_EN'
        sm_TX_BUFF_EN_dout : in std_logic_vector(32-1 downto 0);
        sm_TX_BUFF_EN_din  : out std_logic_vector(32-1 downto 0);
        sm_TX_BUFF_EN_en   : out std_logic;
        -- 'RxLength'
        sm_RxLength_dout : in std_logic_vector(24-1 downto 0);
        sm_RxLength_din  : out std_logic_vector(24-1 downto 0);
        sm_RxLength_en   : out std_logic;
        -- 'TxLength'
        sm_TxLength_dout : in std_logic_vector(24-1 downto 0);
        sm_TxLength_din  : out std_logic_vector(24-1 downto 0);
        sm_TxLength_en   : out std_logic;
        -- 'From FIFO'
        -- 'To FIFO'
        -- 'Shared Memory'
        -- 'RFD_IQ_Tx_Buffer'
        sm_RFD_IQ_Tx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFD_IQ_Tx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFD_IQ_Tx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFD_IQ_Tx_Buffer_we    : out std_logic;
        -- 'RFD_RSSI_Buffer'
        sm_RFD_RSSI_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFD_RSSI_Buffer_addr  : out std_logic_vector(12-1 downto 0);
        sm_RFD_RSSI_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFD_RSSI_Buffer_we    : out std_logic;
        -- 'RFD_IQ_Rx_Buffer'
        sm_RFD_IQ_Rx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFD_IQ_Rx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFD_IQ_Rx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFD_IQ_Rx_Buffer_we    : out std_logic;
        -- 'RFC_IQ_Tx_Buffer'
        sm_RFC_IQ_Tx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFC_IQ_Tx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFC_IQ_Tx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFC_IQ_Tx_Buffer_we    : out std_logic;
        -- 'RFC_RSSI_Buffer'
        sm_RFC_RSSI_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFC_RSSI_Buffer_addr  : out std_logic_vector(12-1 downto 0);
        sm_RFC_RSSI_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFC_RSSI_Buffer_we    : out std_logic;
        -- 'RFC_IQ_Rx_Buffer'
        sm_RFC_IQ_Rx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFC_IQ_Rx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFC_IQ_Rx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFC_IQ_Rx_Buffer_we    : out std_logic;
        -- 'RFB_IQ_Tx_Buffer'
        sm_RFB_IQ_Tx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFB_IQ_Tx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFB_IQ_Tx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFB_IQ_Tx_Buffer_we    : out std_logic;
        -- 'RFB_RSSI_Buffer'
        sm_RFB_RSSI_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFB_RSSI_Buffer_addr  : out std_logic_vector(12-1 downto 0);
        sm_RFB_RSSI_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFB_RSSI_Buffer_we    : out std_logic;
        -- 'RFB_IQ_Rx_Buffer'
        sm_RFB_IQ_Rx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFB_IQ_Rx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFB_IQ_Rx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFB_IQ_Rx_Buffer_we    : out std_logic;
        -- 'RFA_IQ_Tx_Buffer'
        sm_RFA_IQ_Tx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFA_IQ_Tx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFA_IQ_Tx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFA_IQ_Tx_Buffer_we    : out std_logic;
        -- 'RFA_RSSI_Buffer'
        sm_RFA_RSSI_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFA_RSSI_Buffer_addr  : out std_logic_vector(12-1 downto 0);
        sm_RFA_RSSI_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFA_RSSI_Buffer_we    : out std_logic;
        -- 'RFA_IQ_Rx_Buffer'
        sm_RFA_IQ_Rx_Buffer_dout  : in  std_logic_vector(32-1 downto 0);
        sm_RFA_IQ_Rx_Buffer_addr  : out std_logic_vector(15-1 downto 0);
        sm_RFA_IQ_Rx_Buffer_din   : out std_logic_vector(32-1 downto 0);
        sm_RFA_IQ_Rx_Buffer_we    : out std_logic;
        shram_en : out std_logic;

        S_AXI_RLAST   : out std_logic;
        S_AXI_RID     : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic
    );
end entity axi_sgiface;

architecture IMP of axi_sgiface is

-- Internal signals for write channel.
signal S_AXI_BVALID_i       : std_logic;
signal S_AXI_BID_i          : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
signal S_AXI_WREADY_i       : std_logic;
  
-- Internal signals for read channels.
signal S_AXI_ARLEN_i        : std_logic_vector(C_S_AXI_ARLEN_WIDTH-1 downto 0);
signal S_AXI_RLAST_i        : std_logic;
signal S_AXI_RREADY_i       : std_logic;
signal S_AXI_RVALID_i       : std_logic;
signal S_AXI_RDATA_i        : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal S_AXI_RID_i          : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);

-- for read channel
signal read_bank_addr_i     : std_logic_vector(C_S_AXI_BANK_ADDR_LEN-1 downto 0);
signal read_linear_addr_i   : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
-- for write channel
signal write_bank_addr_i    : std_logic_vector(C_S_AXI_BANK_ADDR_LEN-1 downto 0);
signal write_linear_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);

signal reg_bank_out_i       : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal fifo_bank_out_i      : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal shmem_bank_out_i     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    
-- 'From Register'
-- 'BUFF_SIZES'
signal sm_BUFF_SIZES_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'DESIGN_VER'
signal sm_DESIGN_VER_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'STATUS'
signal sm_STATUS_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFCD_AGCDoneRSSI'
signal sm_RFCD_AGCDoneRSSI_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFAB_AGCDoneRSSI'
signal sm_RFAB_AGCDoneRSSI_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'AGCDoneAddr'
signal sm_AGCDoneAddr_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'To Register'
-- 'TxDelay'
signal sm_TxDelay_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_TxDelay_en_i    : std_logic;
signal sm_TxDelay_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RX_BUFF_EN'
signal sm_RX_BUFF_EN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RX_BUFF_EN_en_i    : std_logic;
signal sm_RX_BUFF_EN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'CONFIG'
signal sm_CONFIG_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_CONFIG_en_i    : std_logic;
signal sm_CONFIG_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'TX_BUFF_EN'
signal sm_TX_BUFF_EN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_TX_BUFF_EN_en_i    : std_logic;
signal sm_TX_BUFF_EN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RxLength'
signal sm_RxLength_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RxLength_en_i    : std_logic;
signal sm_RxLength_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'TxLength'
signal sm_TxLength_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_TxLength_en_i    : std_logic;
signal sm_TxLength_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'From FIFO'
-- 'To FIFO'
-- 'Shared Memory'
-- 'RFD_IQ_Tx_Buffer'
signal sm_RFD_IQ_Tx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFD_IQ_Tx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFD_IQ_Tx_Buffer_we_i    : std_logic;
signal sm_RFD_IQ_Tx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFD_RSSI_Buffer'
signal sm_RFD_RSSI_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFD_RSSI_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFD_RSSI_Buffer_we_i    : std_logic;
signal sm_RFD_RSSI_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFD_IQ_Rx_Buffer'
signal sm_RFD_IQ_Rx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFD_IQ_Rx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFD_IQ_Rx_Buffer_we_i    : std_logic;
signal sm_RFD_IQ_Rx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFC_IQ_Tx_Buffer'
signal sm_RFC_IQ_Tx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFC_IQ_Tx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFC_IQ_Tx_Buffer_we_i    : std_logic;
signal sm_RFC_IQ_Tx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFC_RSSI_Buffer'
signal sm_RFC_RSSI_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFC_RSSI_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFC_RSSI_Buffer_we_i    : std_logic;
signal sm_RFC_RSSI_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFC_IQ_Rx_Buffer'
signal sm_RFC_IQ_Rx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFC_IQ_Rx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFC_IQ_Rx_Buffer_we_i    : std_logic;
signal sm_RFC_IQ_Rx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFB_IQ_Tx_Buffer'
signal sm_RFB_IQ_Tx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFB_IQ_Tx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFB_IQ_Tx_Buffer_we_i    : std_logic;
signal sm_RFB_IQ_Tx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFB_RSSI_Buffer'
signal sm_RFB_RSSI_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFB_RSSI_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFB_RSSI_Buffer_we_i    : std_logic;
signal sm_RFB_RSSI_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFB_IQ_Rx_Buffer'
signal sm_RFB_IQ_Rx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFB_IQ_Rx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFB_IQ_Rx_Buffer_we_i    : std_logic;
signal sm_RFB_IQ_Rx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFA_IQ_Tx_Buffer'
signal sm_RFA_IQ_Tx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFA_IQ_Tx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFA_IQ_Tx_Buffer_we_i    : std_logic;
signal sm_RFA_IQ_Tx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFA_RSSI_Buffer'
signal sm_RFA_RSSI_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFA_RSSI_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFA_RSSI_Buffer_we_i    : std_logic;
signal sm_RFA_RSSI_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'RFA_IQ_Rx_Buffer'
signal sm_RFA_IQ_Rx_Buffer_addr_i  : std_logic_vector(C_S_AXI_LINEAR_ADDR_LEN-1 downto 0);
signal sm_RFA_IQ_Rx_Buffer_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_RFA_IQ_Rx_Buffer_we_i    : std_logic;
signal sm_RFA_IQ_Rx_Buffer_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

type t_read_state is (IDLE, READ_PREP, READ_DATA);
signal read_state : t_read_state;

type t_write_state is (IDLE, WRITE_DATA, WRITE_RESPONSE);
signal write_state : t_write_state;

type t_memmap_state is (READ, WRITE);
signal memmap_state : t_memmap_state;

constant C_READ_PREP_DELAY : std_logic_vector(1 downto 0) := "11";

signal read_prep_counter : std_logic_vector(1 downto 0);
signal read_addr_counter : std_logic_vector(C_S_AXI_ARLEN_WIDTH-1 downto 0);
signal read_data_counter : std_logic_vector(C_S_AXI_ARLEN_WIDTH-1 downto 0);

-- enable of shared BRAMs
signal s_shram_en : std_logic;

signal write_addr_valid : std_logic;
signal write_ready : std_logic;

-- 're' of From/To FIFOs
signal s_fifo_re : std_logic;
-- 'we' of To FIFOs
signal s_fifo_we : std_logic;

begin

-- enable for 'Shared Memory' blocks
shram_en <= s_shram_en;
-- RFD_IQ_Tx_Buffer din
sm_RFD_IQ_Tx_Buffer_din_i <= S_AXI_WDATA;
-- RFD_RSSI_Buffer din
sm_RFD_RSSI_Buffer_din_i <= S_AXI_WDATA;
-- RFD_IQ_Rx_Buffer din
sm_RFD_IQ_Rx_Buffer_din_i <= S_AXI_WDATA;
-- RFC_IQ_Tx_Buffer din
sm_RFC_IQ_Tx_Buffer_din_i <= S_AXI_WDATA;
-- RFC_RSSI_Buffer din
sm_RFC_RSSI_Buffer_din_i <= S_AXI_WDATA;
-- RFC_IQ_Rx_Buffer din
sm_RFC_IQ_Rx_Buffer_din_i <= S_AXI_WDATA;
-- RFB_IQ_Tx_Buffer din
sm_RFB_IQ_Tx_Buffer_din_i <= S_AXI_WDATA;
-- RFB_RSSI_Buffer din
sm_RFB_RSSI_Buffer_din_i <= S_AXI_WDATA;
-- RFB_IQ_Rx_Buffer din
sm_RFB_IQ_Rx_Buffer_din_i <= S_AXI_WDATA;
-- RFA_IQ_Tx_Buffer din
sm_RFA_IQ_Tx_Buffer_din_i <= S_AXI_WDATA;
-- RFA_RSSI_Buffer din
sm_RFA_RSSI_Buffer_din_i <= S_AXI_WDATA;
-- RFA_IQ_Rx_Buffer din
sm_RFA_IQ_Rx_Buffer_din_i <= S_AXI_WDATA;

-- conversion to match with the data bus width
-- 'From Register'
-- 'BUFF_SIZES'
gen_sm_BUFF_SIZES_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_BUFF_SIZES_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_BUFF_SIZES_dout_i;
sm_BUFF_SIZES_dout_i(32-1 downto 0) <= sm_BUFF_SIZES_dout;
-- 'DESIGN_VER'
gen_sm_DESIGN_VER_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_DESIGN_VER_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_DESIGN_VER_dout_i;
sm_DESIGN_VER_dout_i(32-1 downto 0) <= sm_DESIGN_VER_dout;
-- 'STATUS'
gen_sm_STATUS_dout_i: if (2 < C_S_AXI_DATA_WIDTH) generate
    sm_STATUS_dout_i(C_S_AXI_DATA_WIDTH-1 downto 2) <= (others => '0');
end generate gen_sm_STATUS_dout_i;
sm_STATUS_dout_i(2-1 downto 0) <= sm_STATUS_dout;
-- 'RFCD_AGCDoneRSSI'
gen_sm_RFCD_AGCDoneRSSI_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFCD_AGCDoneRSSI_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFCD_AGCDoneRSSI_dout_i;
sm_RFCD_AGCDoneRSSI_dout_i(32-1 downto 0) <= sm_RFCD_AGCDoneRSSI_dout;
-- 'RFAB_AGCDoneRSSI'
gen_sm_RFAB_AGCDoneRSSI_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFAB_AGCDoneRSSI_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFAB_AGCDoneRSSI_dout_i;
sm_RFAB_AGCDoneRSSI_dout_i(32-1 downto 0) <= sm_RFAB_AGCDoneRSSI_dout;
-- 'AGCDoneAddr'
gen_sm_AGCDoneAddr_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_AGCDoneAddr_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_AGCDoneAddr_dout_i;
sm_AGCDoneAddr_dout_i(32-1 downto 0) <= sm_AGCDoneAddr_dout;
-- 'To Register'
-- 'TxDelay'
sm_TxDelay_din     <= sm_TxDelay_din_i(32-1 downto 0);
sm_TxDelay_en      <= sm_TxDelay_en_i;
gen_sm_TxDelay_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_TxDelay_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_TxDelay_dout_i;
sm_TxDelay_dout_i(32-1 downto 0) <= sm_TxDelay_dout;
-- 'RX_BUFF_EN'
sm_RX_BUFF_EN_din     <= sm_RX_BUFF_EN_din_i(32-1 downto 0);
sm_RX_BUFF_EN_en      <= sm_RX_BUFF_EN_en_i;
gen_sm_RX_BUFF_EN_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RX_BUFF_EN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RX_BUFF_EN_dout_i;
sm_RX_BUFF_EN_dout_i(32-1 downto 0) <= sm_RX_BUFF_EN_dout;
-- 'CONFIG'
sm_CONFIG_din     <= sm_CONFIG_din_i(32-1 downto 0);
sm_CONFIG_en      <= sm_CONFIG_en_i;
gen_sm_CONFIG_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_CONFIG_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_CONFIG_dout_i;
sm_CONFIG_dout_i(32-1 downto 0) <= sm_CONFIG_dout;
-- 'TX_BUFF_EN'
sm_TX_BUFF_EN_din     <= sm_TX_BUFF_EN_din_i(32-1 downto 0);
sm_TX_BUFF_EN_en      <= sm_TX_BUFF_EN_en_i;
gen_sm_TX_BUFF_EN_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_TX_BUFF_EN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_TX_BUFF_EN_dout_i;
sm_TX_BUFF_EN_dout_i(32-1 downto 0) <= sm_TX_BUFF_EN_dout;
-- 'RxLength'
sm_RxLength_din     <= sm_RxLength_din_i(24-1 downto 0);
sm_RxLength_en      <= sm_RxLength_en_i;
gen_sm_RxLength_dout_i: if (24 < C_S_AXI_DATA_WIDTH) generate
    sm_RxLength_dout_i(C_S_AXI_DATA_WIDTH-1 downto 24) <= (others => '0');
end generate gen_sm_RxLength_dout_i;
sm_RxLength_dout_i(24-1 downto 0) <= sm_RxLength_dout;
-- 'TxLength'
sm_TxLength_din     <= sm_TxLength_din_i(24-1 downto 0);
sm_TxLength_en      <= sm_TxLength_en_i;
gen_sm_TxLength_dout_i: if (24 < C_S_AXI_DATA_WIDTH) generate
    sm_TxLength_dout_i(C_S_AXI_DATA_WIDTH-1 downto 24) <= (others => '0');
end generate gen_sm_TxLength_dout_i;
sm_TxLength_dout_i(24-1 downto 0) <= sm_TxLength_dout;
-- 'From FIFO'
-- 'To FIFO'
-- 'Shared Memory'
-- 'RFD_IQ_Tx_Buffer'
sm_RFD_IQ_Tx_Buffer_addr <= sm_RFD_IQ_Tx_Buffer_addr_i(15-1 downto 0);
sm_RFD_IQ_Tx_Buffer_din  <= sm_RFD_IQ_Tx_Buffer_din_i(32-1 downto 0);
gen_sm_RFD_IQ_Tx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFD_IQ_Tx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFD_IQ_Tx_Buffer_dout_i;
sm_RFD_IQ_Tx_Buffer_dout_i(32-1 downto 0) <= sm_RFD_IQ_Tx_Buffer_dout;
sm_RFD_IQ_Tx_Buffer_we <= sm_RFD_IQ_Tx_Buffer_we_i;
-- 'RFD_RSSI_Buffer'
sm_RFD_RSSI_Buffer_addr <= sm_RFD_RSSI_Buffer_addr_i(12-1 downto 0);
sm_RFD_RSSI_Buffer_din  <= sm_RFD_RSSI_Buffer_din_i(32-1 downto 0);
gen_sm_RFD_RSSI_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFD_RSSI_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFD_RSSI_Buffer_dout_i;
sm_RFD_RSSI_Buffer_dout_i(32-1 downto 0) <= sm_RFD_RSSI_Buffer_dout;
sm_RFD_RSSI_Buffer_we <= sm_RFD_RSSI_Buffer_we_i;
-- 'RFD_IQ_Rx_Buffer'
sm_RFD_IQ_Rx_Buffer_addr <= sm_RFD_IQ_Rx_Buffer_addr_i(15-1 downto 0);
sm_RFD_IQ_Rx_Buffer_din  <= sm_RFD_IQ_Rx_Buffer_din_i(32-1 downto 0);
gen_sm_RFD_IQ_Rx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFD_IQ_Rx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFD_IQ_Rx_Buffer_dout_i;
sm_RFD_IQ_Rx_Buffer_dout_i(32-1 downto 0) <= sm_RFD_IQ_Rx_Buffer_dout;
sm_RFD_IQ_Rx_Buffer_we <= sm_RFD_IQ_Rx_Buffer_we_i;
-- 'RFC_IQ_Tx_Buffer'
sm_RFC_IQ_Tx_Buffer_addr <= sm_RFC_IQ_Tx_Buffer_addr_i(15-1 downto 0);
sm_RFC_IQ_Tx_Buffer_din  <= sm_RFC_IQ_Tx_Buffer_din_i(32-1 downto 0);
gen_sm_RFC_IQ_Tx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFC_IQ_Tx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFC_IQ_Tx_Buffer_dout_i;
sm_RFC_IQ_Tx_Buffer_dout_i(32-1 downto 0) <= sm_RFC_IQ_Tx_Buffer_dout;
sm_RFC_IQ_Tx_Buffer_we <= sm_RFC_IQ_Tx_Buffer_we_i;
-- 'RFC_RSSI_Buffer'
sm_RFC_RSSI_Buffer_addr <= sm_RFC_RSSI_Buffer_addr_i(12-1 downto 0);
sm_RFC_RSSI_Buffer_din  <= sm_RFC_RSSI_Buffer_din_i(32-1 downto 0);
gen_sm_RFC_RSSI_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFC_RSSI_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFC_RSSI_Buffer_dout_i;
sm_RFC_RSSI_Buffer_dout_i(32-1 downto 0) <= sm_RFC_RSSI_Buffer_dout;
sm_RFC_RSSI_Buffer_we <= sm_RFC_RSSI_Buffer_we_i;
-- 'RFC_IQ_Rx_Buffer'
sm_RFC_IQ_Rx_Buffer_addr <= sm_RFC_IQ_Rx_Buffer_addr_i(15-1 downto 0);
sm_RFC_IQ_Rx_Buffer_din  <= sm_RFC_IQ_Rx_Buffer_din_i(32-1 downto 0);
gen_sm_RFC_IQ_Rx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFC_IQ_Rx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFC_IQ_Rx_Buffer_dout_i;
sm_RFC_IQ_Rx_Buffer_dout_i(32-1 downto 0) <= sm_RFC_IQ_Rx_Buffer_dout;
sm_RFC_IQ_Rx_Buffer_we <= sm_RFC_IQ_Rx_Buffer_we_i;
-- 'RFB_IQ_Tx_Buffer'
sm_RFB_IQ_Tx_Buffer_addr <= sm_RFB_IQ_Tx_Buffer_addr_i(15-1 downto 0);
sm_RFB_IQ_Tx_Buffer_din  <= sm_RFB_IQ_Tx_Buffer_din_i(32-1 downto 0);
gen_sm_RFB_IQ_Tx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFB_IQ_Tx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFB_IQ_Tx_Buffer_dout_i;
sm_RFB_IQ_Tx_Buffer_dout_i(32-1 downto 0) <= sm_RFB_IQ_Tx_Buffer_dout;
sm_RFB_IQ_Tx_Buffer_we <= sm_RFB_IQ_Tx_Buffer_we_i;
-- 'RFB_RSSI_Buffer'
sm_RFB_RSSI_Buffer_addr <= sm_RFB_RSSI_Buffer_addr_i(12-1 downto 0);
sm_RFB_RSSI_Buffer_din  <= sm_RFB_RSSI_Buffer_din_i(32-1 downto 0);
gen_sm_RFB_RSSI_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFB_RSSI_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFB_RSSI_Buffer_dout_i;
sm_RFB_RSSI_Buffer_dout_i(32-1 downto 0) <= sm_RFB_RSSI_Buffer_dout;
sm_RFB_RSSI_Buffer_we <= sm_RFB_RSSI_Buffer_we_i;
-- 'RFB_IQ_Rx_Buffer'
sm_RFB_IQ_Rx_Buffer_addr <= sm_RFB_IQ_Rx_Buffer_addr_i(15-1 downto 0);
sm_RFB_IQ_Rx_Buffer_din  <= sm_RFB_IQ_Rx_Buffer_din_i(32-1 downto 0);
gen_sm_RFB_IQ_Rx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFB_IQ_Rx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFB_IQ_Rx_Buffer_dout_i;
sm_RFB_IQ_Rx_Buffer_dout_i(32-1 downto 0) <= sm_RFB_IQ_Rx_Buffer_dout;
sm_RFB_IQ_Rx_Buffer_we <= sm_RFB_IQ_Rx_Buffer_we_i;
-- 'RFA_IQ_Tx_Buffer'
sm_RFA_IQ_Tx_Buffer_addr <= sm_RFA_IQ_Tx_Buffer_addr_i(15-1 downto 0);
sm_RFA_IQ_Tx_Buffer_din  <= sm_RFA_IQ_Tx_Buffer_din_i(32-1 downto 0);
gen_sm_RFA_IQ_Tx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFA_IQ_Tx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFA_IQ_Tx_Buffer_dout_i;
sm_RFA_IQ_Tx_Buffer_dout_i(32-1 downto 0) <= sm_RFA_IQ_Tx_Buffer_dout;
sm_RFA_IQ_Tx_Buffer_we <= sm_RFA_IQ_Tx_Buffer_we_i;
-- 'RFA_RSSI_Buffer'
sm_RFA_RSSI_Buffer_addr <= sm_RFA_RSSI_Buffer_addr_i(12-1 downto 0);
sm_RFA_RSSI_Buffer_din  <= sm_RFA_RSSI_Buffer_din_i(32-1 downto 0);
gen_sm_RFA_RSSI_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFA_RSSI_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFA_RSSI_Buffer_dout_i;
sm_RFA_RSSI_Buffer_dout_i(32-1 downto 0) <= sm_RFA_RSSI_Buffer_dout;
sm_RFA_RSSI_Buffer_we <= sm_RFA_RSSI_Buffer_we_i;
-- 'RFA_IQ_Rx_Buffer'
sm_RFA_IQ_Rx_Buffer_addr <= sm_RFA_IQ_Rx_Buffer_addr_i(15-1 downto 0);
sm_RFA_IQ_Rx_Buffer_din  <= sm_RFA_IQ_Rx_Buffer_din_i(32-1 downto 0);
gen_sm_RFA_IQ_Rx_Buffer_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_RFA_IQ_Rx_Buffer_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_RFA_IQ_Rx_Buffer_dout_i;
sm_RFA_IQ_Rx_Buffer_dout_i(32-1 downto 0) <= sm_RFA_IQ_Rx_Buffer_dout;
sm_RFA_IQ_Rx_Buffer_we <= sm_RFA_IQ_Rx_Buffer_we_i;

ReadWriteSelect: process(memmap_state) is begin
    if (memmap_state = READ) then
        -- 'RFD_IQ_Tx_Buffer'
        sm_RFD_IQ_Tx_Buffer_addr_i <= read_linear_addr_i;-- 'RFD_RSSI_Buffer'
        sm_RFD_RSSI_Buffer_addr_i <= read_linear_addr_i;-- 'RFD_IQ_Rx_Buffer'
        sm_RFD_IQ_Rx_Buffer_addr_i <= read_linear_addr_i;-- 'RFC_IQ_Tx_Buffer'
        sm_RFC_IQ_Tx_Buffer_addr_i <= read_linear_addr_i;-- 'RFC_RSSI_Buffer'
        sm_RFC_RSSI_Buffer_addr_i <= read_linear_addr_i;-- 'RFC_IQ_Rx_Buffer'
        sm_RFC_IQ_Rx_Buffer_addr_i <= read_linear_addr_i;-- 'RFB_IQ_Tx_Buffer'
        sm_RFB_IQ_Tx_Buffer_addr_i <= read_linear_addr_i;-- 'RFB_RSSI_Buffer'
        sm_RFB_RSSI_Buffer_addr_i <= read_linear_addr_i;-- 'RFB_IQ_Rx_Buffer'
        sm_RFB_IQ_Rx_Buffer_addr_i <= read_linear_addr_i;-- 'RFA_IQ_Tx_Buffer'
        sm_RFA_IQ_Tx_Buffer_addr_i <= read_linear_addr_i;-- 'RFA_RSSI_Buffer'
        sm_RFA_RSSI_Buffer_addr_i <= read_linear_addr_i;-- 'RFA_IQ_Rx_Buffer'
        sm_RFA_IQ_Rx_Buffer_addr_i <= read_linear_addr_i;
    else
        -- 'RFD_IQ_Tx_Buffer'
        sm_RFD_IQ_Tx_Buffer_addr_i <= write_linear_addr_i;-- 'RFD_RSSI_Buffer'
        sm_RFD_RSSI_Buffer_addr_i <= write_linear_addr_i;-- 'RFD_IQ_Rx_Buffer'
        sm_RFD_IQ_Rx_Buffer_addr_i <= write_linear_addr_i;-- 'RFC_IQ_Tx_Buffer'
        sm_RFC_IQ_Tx_Buffer_addr_i <= write_linear_addr_i;-- 'RFC_RSSI_Buffer'
        sm_RFC_RSSI_Buffer_addr_i <= write_linear_addr_i;-- 'RFC_IQ_Rx_Buffer'
        sm_RFC_IQ_Rx_Buffer_addr_i <= write_linear_addr_i;-- 'RFB_IQ_Tx_Buffer'
        sm_RFB_IQ_Tx_Buffer_addr_i <= write_linear_addr_i;-- 'RFB_RSSI_Buffer'
        sm_RFB_RSSI_Buffer_addr_i <= write_linear_addr_i;-- 'RFB_IQ_Rx_Buffer'
        sm_RFB_IQ_Rx_Buffer_addr_i <= write_linear_addr_i;-- 'RFA_IQ_Tx_Buffer'
        sm_RFA_IQ_Tx_Buffer_addr_i <= write_linear_addr_i;-- 'RFA_RSSI_Buffer'
        sm_RFA_RSSI_Buffer_addr_i <= write_linear_addr_i;-- 'RFA_IQ_Rx_Buffer'
        sm_RFA_IQ_Rx_Buffer_addr_i <= write_linear_addr_i;
    end if;
end process ReadWriteSelect;

-----------------------------------------------------------------------------
-- address for 'Shared Memory'
-----------------------------------------------------------------------------
SharedMemory_Addr_ResetN : process(AXI_AClk) is begin
    if (AXI_AClk'event and AXI_AClk = '1') then
        if (AXI_AResetN = '0') then
            memmap_state <= READ;
        else
            if (S_AXI_AWVALID = '1') then
                -- write operation
                memmap_state <= WRITE;
            elsif (S_AXI_ARVALID = '1') then
                -- read operation
                memmap_state <= READ;
            end if;
        end if;
    end if;
end process SharedMemory_Addr_ResetN;

-----------------------------------------------------------------------------
-- WRITE Command Control
-----------------------------------------------------------------------------
S_AXI_BID     <= S_AXI_BID_i;
S_AXI_BVALID  <= S_AXI_BVALID_i;
S_AXI_WREADY  <= S_AXI_WREADY_i;
-- No error checking
S_AXI_BRESP  <= (others=>'0');

PROC_AWREADY_ACK: process(read_state, write_state, S_AXI_ARVALID, S_AXI_AWVALID) is begin
    if (write_state = IDLE and S_AXI_AWVALID = '1' and read_state = IDLE) then
        S_AXI_AWREADY <= S_AXI_AWVALID;
    else
        S_AXI_AWREADY <= '0';
    end if;
end process PROC_AWREADY_ACK;

Cmd_Decode_Write: process(AXI_AClk) is begin
    if (AXI_AClk'event and AXI_AClk = '1') then
        if (AXI_AResetN = '0') then
            write_addr_valid    <= '0';
            write_ready         <= '0';
            s_fifo_we           <= '0';
            S_AXI_BVALID_i      <= '0';
            S_AXI_BID_i         <= (others => '0');
            write_bank_addr_i   <= (others => '0');
            write_linear_addr_i <= (others => '0');
        else
            if (write_state = IDLE) then
                if (S_AXI_AWVALID = '1' and read_state = IDLE) then
                    -- reflect awid
                    S_AXI_BID_i <= S_AXI_AWID;

                    -- latch bank and linear addresses
                    write_bank_addr_i   <= S_AXI_AWADDR(C_S_AXI_TOTAL_ADDR_LEN-1 downto C_S_AXI_LINEAR_ADDR_LEN+2);
                    write_linear_addr_i <= S_AXI_AWADDR(C_S_AXI_LINEAR_ADDR_LEN+1 downto 2);
                    write_addr_valid <= '1';
                    s_fifo_we <= '1';

                    -- write state transition
                    write_state <= WRITE_DATA;
                end if;
            elsif (write_state = WRITE_DATA) then
                write_ready <= '1';
                s_fifo_we <= '0';
                write_addr_valid <= S_AXI_WVALID;
                
                if (S_AXI_WVALID = '1' and write_ready = '1') then
                    write_linear_addr_i <= Std_Logic_Vector(unsigned(write_linear_addr_i) + 1);
                end if;

                if (S_AXI_WLAST = '1' and write_ready = '1') then
                    -- start responding through B channel upon the last write data sample
                    S_AXI_BVALID_i <= '1';
                    -- write data is over
                    write_addr_valid <= '0';
                    write_ready <= '0';
                    -- write state transition
                    write_state <= WRITE_RESPONSE;
                end if;
            elsif (write_state = WRITE_RESPONSE) then

                if (S_AXI_BREADY = '1') then
                    -- write respond is over
                    S_AXI_BVALID_i <= '0';
                    S_AXI_BID_i <= (others => '0');

                    -- write state transition
                    write_state <= IDLE;
                end if;
            end if;
        end if;
    end if;
end process Cmd_Decode_Write;

Write_Linear_Addr_Decode : process(AXI_AClk) is 

begin
    if (AXI_AClk'event and AXI_AClk = '1') then
        if (AXI_AResetN = '0') then
            -- 'To Register'
            -- TxDelay din/en
            sm_TxDelay_din_i <= (others => '0');
            sm_TxDelay_en_i <= '0';
            -- RX_BUFF_EN din/en
            sm_RX_BUFF_EN_din_i <= (others => '0');
            sm_RX_BUFF_EN_en_i <= '0';
            -- CONFIG din/en
            sm_CONFIG_din_i <= (others => '0');
            sm_CONFIG_en_i <= '0';
            -- TX_BUFF_EN din/en
            sm_TX_BUFF_EN_din_i <= (others => '0');
            sm_TX_BUFF_EN_en_i <= '0';
            -- RxLength din/en
            sm_RxLength_din_i <= (others => '0');
            sm_RxLength_en_i <= '0';
            -- TxLength din/en
            sm_TxLength_din_i <= (others => '0');
            sm_TxLength_en_i <= '0';
            -- 'To FIFO'
            -- 'Shared Memory'
            -- RFD_IQ_Tx_Buffer we
            sm_RFD_IQ_Tx_Buffer_we_i <= '0';
            -- RFD_RSSI_Buffer we
            sm_RFD_RSSI_Buffer_we_i <= '0';
            -- RFD_IQ_Rx_Buffer we
            sm_RFD_IQ_Rx_Buffer_we_i <= '0';
            -- RFC_IQ_Tx_Buffer we
            sm_RFC_IQ_Tx_Buffer_we_i <= '0';
            -- RFC_RSSI_Buffer we
            sm_RFC_RSSI_Buffer_we_i <= '0';
            -- RFC_IQ_Rx_Buffer we
            sm_RFC_IQ_Rx_Buffer_we_i <= '0';
            -- RFB_IQ_Tx_Buffer we
            sm_RFB_IQ_Tx_Buffer_we_i <= '0';
            -- RFB_RSSI_Buffer we
            sm_RFB_RSSI_Buffer_we_i <= '0';
            -- RFB_IQ_Rx_Buffer we
            sm_RFB_IQ_Rx_Buffer_we_i <= '0';
            -- RFA_IQ_Tx_Buffer we
            sm_RFA_IQ_Tx_Buffer_we_i <= '0';
            -- RFA_RSSI_Buffer we
            sm_RFA_RSSI_Buffer_we_i <= '0';
            -- RFA_IQ_Rx_Buffer we
            sm_RFA_IQ_Rx_Buffer_we_i <= '0';
        else
            -- default assignments
            -- RFD_IQ_Tx_Buffer we
            sm_RFD_IQ_Tx_Buffer_we_i <= '0';
            -- RFD_RSSI_Buffer we
            sm_RFD_RSSI_Buffer_we_i <= '0';
            -- RFD_IQ_Rx_Buffer we
            sm_RFD_IQ_Rx_Buffer_we_i <= '0';
            -- RFC_IQ_Tx_Buffer we
            sm_RFC_IQ_Tx_Buffer_we_i <= '0';
            -- RFC_RSSI_Buffer we
            sm_RFC_RSSI_Buffer_we_i <= '0';
            -- RFC_IQ_Rx_Buffer we
            sm_RFC_IQ_Rx_Buffer_we_i <= '0';
            -- RFB_IQ_Tx_Buffer we
            sm_RFB_IQ_Tx_Buffer_we_i <= '0';
            -- RFB_RSSI_Buffer we
            sm_RFB_RSSI_Buffer_we_i <= '0';
            -- RFB_IQ_Rx_Buffer we
            sm_RFB_IQ_Rx_Buffer_we_i <= '0';
            -- RFA_IQ_Tx_Buffer we
            sm_RFA_IQ_Tx_Buffer_we_i <= '0';
            -- RFA_RSSI_Buffer we
            sm_RFA_RSSI_Buffer_we_i <= '0';
            -- RFA_IQ_Rx_Buffer we
            sm_RFA_IQ_Rx_Buffer_we_i <= '0';

            -- 'To Register'
            if (unsigned(write_bank_addr_i) = 2) then
                if (unsigned(write_linear_addr_i) = 0) then
                    -- TxDelay din/en
                    sm_TxDelay_din_i <= S_AXI_WDATA;
                    sm_TxDelay_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 1) then
                    -- RX_BUFF_EN din/en
                    sm_RX_BUFF_EN_din_i <= S_AXI_WDATA;
                    sm_RX_BUFF_EN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 2) then
                    -- CONFIG din/en
                    sm_CONFIG_din_i <= S_AXI_WDATA;
                    sm_CONFIG_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 3) then
                    -- TX_BUFF_EN din/en
                    sm_TX_BUFF_EN_din_i <= S_AXI_WDATA;
                    sm_TX_BUFF_EN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 4) then
                    -- RxLength din/en
                    sm_RxLength_din_i <= S_AXI_WDATA;
                    sm_RxLength_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 5) then
                    -- TxLength din/en
                    sm_TxLength_din_i <= S_AXI_WDATA;
                    sm_TxLength_en_i  <= write_addr_valid;
                end if;
            end if;        
        
            -- 'Shared Memory'
            if unsigned(write_bank_addr_i) = 0 then
                if (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 0) then
                    -- RFD_IQ_Tx_Buffer we
                    sm_RFD_IQ_Tx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 64) then
                    -- RFD_RSSI_Buffer we
                    sm_RFD_RSSI_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 1) then
                    -- RFD_IQ_Rx_Buffer we
                    sm_RFD_IQ_Rx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 2) then
                    -- RFC_IQ_Tx_Buffer we
                    sm_RFC_IQ_Tx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 65) then
                    -- RFC_RSSI_Buffer we
                    sm_RFC_RSSI_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 3) then
                    -- RFC_IQ_Rx_Buffer we
                    sm_RFC_IQ_Rx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 4) then
                    -- RFB_IQ_Tx_Buffer we
                    sm_RFB_IQ_Tx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 66) then
                    -- RFB_RSSI_Buffer we
                    sm_RFB_RSSI_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 5) then
                    -- RFB_IQ_Rx_Buffer we
                    sm_RFB_IQ_Rx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 6) then
                    -- RFA_IQ_Tx_Buffer we
                    sm_RFA_IQ_Tx_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 67) then
                    -- RFA_RSSI_Buffer we
                    sm_RFA_RSSI_Buffer_we_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 7) then
                    -- RFA_IQ_Rx_Buffer we
                    sm_RFA_IQ_Rx_Buffer_we_i  <= write_addr_valid;
                end if;
            end if;        
        end if;
    end if;
end process Write_Linear_Addr_Decode;
 
-----------------------------------------------------------------------------
-- READ Control
-----------------------------------------------------------------------------

S_AXI_RDATA  <= S_AXI_RDATA_i;
S_AXI_RVALID  <= S_AXI_RVALID_i;
S_AXI_RLAST   <= S_AXI_RLAST_i;
S_AXI_RID     <= S_AXI_RID_i;
-- TODO: no error checking
S_AXI_RRESP <= (others=>'0');

PROC_ARREADY_ACK: process(read_state, S_AXI_ARVALID, write_state, S_AXI_AWVALID) is begin
    -- Note: WRITE has higher priority than READ
    if (read_state = IDLE and S_AXI_ARVALID = '1' and write_state = IDLE and S_AXI_AWVALID /= '1') then
        S_AXI_ARREADY <= S_AXI_ARVALID;
    else
        S_AXI_ARREADY <= '0';
    end if;
end process PROC_ARREADY_ACK;

S_AXI_WREADY_i <= write_ready;

Process_Sideband: process(write_state, read_state) is begin
    if (read_state = READ_PREP) then
        s_shram_en <= '1';
    elsif (read_state = READ_DATA) then
        s_shram_en <= S_AXI_RREADY;
    elsif (write_state = WRITE_DATA) then
        s_shram_en <= S_AXI_WVALID;
    else
        s_shram_en <= '0';
    end if;
end process Process_Sideband;

Cmd_Decode_Read: process(AXI_AClk) is begin
    if (AXI_AClk'event and AXI_AClk = '1') then
        if (AXI_AResetN = '0') then
            S_AXI_RVALID_i <= '0';
            read_bank_addr_i    <= (others => '0');
            read_linear_addr_i  <= (others => '0');
            S_AXI_ARLEN_i       <= (others => '0');
            S_AXI_RLAST_i       <= '0';
            S_AXI_RID_i         <= (others => '0');
            read_state          <= IDLE;
            read_prep_counter   <= (others => '0');
            read_addr_counter   <= (others => '0');
            read_data_counter   <= (others => '0');
        else
            -- default assignments
            s_fifo_re <= '0';

            if (read_state = IDLE) then
                -- Note WRITE has higher priority than READ
                if (S_AXI_ARVALID = '1' and write_state = IDLE and S_AXI_AWVALID /= '1') then
                    -- extract bank and linear addresses
                    read_bank_addr_i    <= S_AXI_ARADDR(C_S_AXI_TOTAL_ADDR_LEN-1 downto C_S_AXI_LINEAR_ADDR_LEN+2);
                    read_linear_addr_i  <= S_AXI_ARADDR(C_S_AXI_LINEAR_ADDR_LEN+1 downto 2);
                    s_fifo_re <= '1';

                    -- reflect arid
                    S_AXI_RID_i <= S_AXI_ARID;

                    -- load read liner address and data counter
                    read_addr_counter <= S_AXI_ARLEN;
                    read_data_counter <= S_AXI_ARLEN;

                    -- load read preparation counter
                    read_prep_counter <= C_READ_PREP_DELAY;
                    -- read state transition
                    read_state <= READ_PREP;
                end if;
            elsif (read_state = READ_PREP) then
                if (unsigned(read_prep_counter) = 0) then
                    if (unsigned(read_data_counter) = 0) then
                        -- tag the last data generated by the slave
                        S_AXI_RLAST_i <= '1';
                    end if;
                    -- valid data appears
                    S_AXI_RVALID_i <= '1';
                    -- read state transition
                    read_state <= READ_DATA;
                else
                    -- decrease read preparation counter
                    read_prep_counter <= Std_Logic_Vector(unsigned(read_prep_counter) - 1);
                end if;

                if (unsigned(read_prep_counter) /= 3 and unsigned(read_addr_counter) /= 0) then
                    -- decrease address counter
                    read_addr_counter <= Std_Logic_Vector(unsigned(read_addr_counter) - 1);
                    -- increase linear address (no band crossing)
                    read_linear_addr_i <= Std_Logic_Vector(unsigned(read_linear_addr_i) + 1);
                end if;
            elsif (read_state = READ_DATA) then
                if (S_AXI_RREADY = '1') then
                    if (unsigned(read_data_counter) = 1) then
                        -- tag the last data generated by the slave
                        S_AXI_RLAST_i <= '1';
                    end if;

                    if (unsigned(read_data_counter) = 0) then
                        -- arid
                        S_AXI_RID_i <= (others => '0');
                        -- rlast
                        S_AXI_RLAST_i <= '0';
                        -- no more valid data
                        S_AXI_RVALID_i <= '0';
                        -- read state transition
                        read_state <= IDLE;
                    else
                        -- decrease read preparation counter
                        read_data_counter <= Std_Logic_Vector(unsigned(read_data_counter) - 1);

                        if (unsigned(read_addr_counter) /= 0) then
                            -- decrease address counter
                            read_addr_counter <= Std_Logic_Vector(unsigned(read_addr_counter) - 1);
                            -- increase linear address (no band crossing)
                            read_linear_addr_i <= Std_Logic_Vector(unsigned(read_linear_addr_i) + 1);
                        end if;
                    end if;
                end if;
            end if;

        end if;
    end if;
end process Cmd_Decode_Read;

Read_Linear_Addr_Decode : process(AXI_AClk) is begin
    if (AXI_AClk'event and AXI_AClk = '1') then
        if (AXI_AResetN = '0') then
            reg_bank_out_i   <= (others => '0');
            fifo_bank_out_i  <= (others => '0');
            shmem_bank_out_i <= (others => '0');
            S_AXI_RDATA_i    <= (others => '0');
        else
            if (unsigned(read_bank_addr_i) = 2) then
                -- 'From Register'
                if (unsigned(read_linear_addr_i) = 6) then
                    -- 'BUFF_SIZES' dout
                    reg_bank_out_i <= sm_BUFF_SIZES_dout_i;
                elsif (unsigned(read_linear_addr_i) = 7) then
                    -- 'DESIGN_VER' dout
                    reg_bank_out_i <= sm_DESIGN_VER_dout_i;
                elsif (unsigned(read_linear_addr_i) = 8) then
                    -- 'STATUS' dout
                    reg_bank_out_i <= sm_STATUS_dout_i;
                elsif (unsigned(read_linear_addr_i) = 9) then
                    -- 'RFCD_AGCDoneRSSI' dout
                    reg_bank_out_i <= sm_RFCD_AGCDoneRSSI_dout_i;
                elsif (unsigned(read_linear_addr_i) = 10) then
                    -- 'RFAB_AGCDoneRSSI' dout
                    reg_bank_out_i <= sm_RFAB_AGCDoneRSSI_dout_i;
                elsif (unsigned(read_linear_addr_i) = 11) then
                    -- 'AGCDoneAddr' dout
                    reg_bank_out_i <= sm_AGCDoneAddr_dout_i;
                end if;
                -- 'To Register' (with register readback)
                if (unsigned(read_linear_addr_i) = 0) then
                    -- 'TxDelay' dout
                    reg_bank_out_i <= sm_TxDelay_dout_i;
                elsif (unsigned(read_linear_addr_i) = 1) then
                    -- 'RX_BUFF_EN' dout
                    reg_bank_out_i <= sm_RX_BUFF_EN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 2) then
                    -- 'CONFIG' dout
                    reg_bank_out_i <= sm_CONFIG_dout_i;
                elsif (unsigned(read_linear_addr_i) = 3) then
                    -- 'TX_BUFF_EN' dout
                    reg_bank_out_i <= sm_TX_BUFF_EN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 4) then
                    -- 'RxLength' dout
                    reg_bank_out_i <= sm_RxLength_dout_i;
                elsif (unsigned(read_linear_addr_i) = 5) then
                    -- 'TxLength' dout
                    reg_bank_out_i <= sm_TxLength_dout_i;
                end if;

                S_AXI_RDATA_i <= reg_bank_out_i;
            elsif (unsigned(read_bank_addr_i) = 1) then
                -- 'From FIFO'
                -- 'To FIFO'

                S_AXI_RDATA_i <= fifo_bank_out_i;
            elsif (unsigned(read_bank_addr_i) = 0 and s_shram_en = '1') then
                -- 'Shared Memory'
                if (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 0) then
                    -- 'RFD_IQ_Tx_Buffer' dout
                    shmem_bank_out_i <= sm_RFD_IQ_Tx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 64) then
                    -- 'RFD_RSSI_Buffer' dout
                    shmem_bank_out_i <= sm_RFD_RSSI_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 1) then
                    -- 'RFD_IQ_Rx_Buffer' dout
                    shmem_bank_out_i <= sm_RFD_IQ_Rx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 2) then
                    -- 'RFC_IQ_Tx_Buffer' dout
                    shmem_bank_out_i <= sm_RFC_IQ_Tx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 65) then
                    -- 'RFC_RSSI_Buffer' dout
                    shmem_bank_out_i <= sm_RFC_RSSI_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 3) then
                    -- 'RFC_IQ_Rx_Buffer' dout
                    shmem_bank_out_i <= sm_RFC_IQ_Rx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 4) then
                    -- 'RFB_IQ_Tx_Buffer' dout
                    shmem_bank_out_i <= sm_RFB_IQ_Tx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 66) then
                    -- 'RFB_RSSI_Buffer' dout
                    shmem_bank_out_i <= sm_RFB_RSSI_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 5) then
                    -- 'RFB_IQ_Rx_Buffer' dout
                    shmem_bank_out_i <= sm_RFB_IQ_Rx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 6) then
                    -- 'RFA_IQ_Tx_Buffer' dout
                    shmem_bank_out_i <= sm_RFA_IQ_Tx_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 12)) = 67) then
                    -- 'RFA_RSSI_Buffer' dout
                    shmem_bank_out_i <= sm_RFA_RSSI_Buffer_dout_i;
                elsif (unsigned(read_linear_addr_i(C_S_AXI_LINEAR_ADDR_LEN-1 downto 15)) = 7) then
                    -- 'RFA_IQ_Rx_Buffer' dout
                    shmem_bank_out_i <= sm_RFA_IQ_Rx_Buffer_dout_i;
                end if;

                S_AXI_RDATA_i <= shmem_bank_out_i;
            end if;
        end if;
    end if;
end process Read_Linear_Addr_Decode;

end architecture IMP;


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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_32afb77cd2 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_32afb77cd2;


architecture behavior of concat_32afb77cd2 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal y_2_1_concat: unsigned((2 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a369e00c6b is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a369e00c6b;


architecture behavior of concat_a369e00c6b is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_068a54b68c is
  port (
    in0 : in std_logic_vector((6 - 1) downto 0);
    in1 : in std_logic_vector((10 - 1) downto 0);
    in2 : in std_logic_vector((6 - 1) downto 0);
    in3 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_068a54b68c;


architecture behavior of concat_068a54b68c is
  signal in0_1_23: unsigned((6 - 1) downto 0);
  signal in1_1_27: unsigned((10 - 1) downto 0);
  signal in2_1_31: unsigned((6 - 1) downto 0);
  signal in3_1_35: unsigned((10 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;


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
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7ea0f2fff7 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7ea0f2fff7;


architecture behavior of constant_7ea0f2fff7 is
begin
  op <= "000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fb4ee6ff0a is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fb4ee6ff0a;


architecture behavior of constant_fb4ee6ff0a is
begin
  op <= "1000000000000000";
end behavior;


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
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e2b989a05e is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e2b989a05e;


architecture behavior of inverter_e2b989a05e is
  signal ip_1_26: unsigned((1 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0");
  signal op_mem_22_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((1 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_938d99ac11 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_938d99ac11;


architecture behavior of logical_938d99ac11 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a1e126f11c is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a1e126f11c;


architecture behavior of concat_a1e126f11c is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_c83fe79b0f is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_c83fe79b0f;


architecture behavior of mux_c83fe79b0f is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_7093fd32f4 is
  port (
    input_port : in std_logic_vector((10 - 1) downto 0);
    output_port : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_7093fd32f4;


architecture behavior of reinterpret_7093fd32f4 is
  signal input_port_1_40: unsigned((10 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_c3e1ddb86e is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((12 - 1) downto 0);
    d1 : in std_logic_vector((12 - 1) downto 0);
    y : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_c3e1ddb86e;


architecture behavior of mux_c3e1ddb86e is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((12 - 1) downto 0);
  signal d1_1_27: std_logic_vector((12 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((12 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_06ee58da9a is
  port (
    in0 : in std_logic_vector((2 - 1) downto 0);
    in1 : in std_logic_vector((12 - 1) downto 0);
    y : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_06ee58da9a;


architecture behavior of concat_06ee58da9a is
  signal in0_1_23: unsigned((2 - 1) downto 0);
  signal in1_1_27: unsigned((12 - 1) downto 0);
  signal y_2_1_concat: unsigned((14 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a375668385 is
  port (
    in0 : in std_logic_vector((14 - 1) downto 0);
    in1 : in std_logic_vector((2 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a375668385;


architecture behavior of concat_a375668385 is
  signal in0_1_23: unsigned((14 - 1) downto 0);
  signal in1_1_27: unsigned((2 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_a106f99236 is
  port (
    input_port : in std_logic_vector((12 - 1) downto 0);
    output_port : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_a106f99236;


architecture behavior of reinterpret_a106f99236 is
  signal input_port_1_40: signed((12 - 1) downto 0);
  signal output_port_5_5_force: unsigned((12 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_151459306d is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_151459306d;


architecture behavior of reinterpret_151459306d is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_286b77e019 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_286b77e019;


architecture behavior of mux_286b77e019 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_a3706fc7d1 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_a3706fc7d1;


architecture behavior of mux_a3706fc7d1 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal d2_1_30: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((1 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_w3_warplab_buffers is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_w3_warplab_buffers ;
architecture behavior of xlcounter_free_w3_warplab_buffers is
  component cntr_11_0_bcc28bfecf25caff
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_bcc28bfecf25caff:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_bcc28bfecf25caff:
    component is "true";
  attribute box_type of cntr_11_0_bcc28bfecf25caff:
    component  is "black_box";
  component cntr_11_0_d5912692bc2e79ac
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_d5912692bc2e79ac:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_d5912692bc2e79ac:
    component is "true";
  attribute box_type of cntr_11_0_d5912692bc2e79ac:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_bcc28bfecf25caff")) generate
    core_instance0: cntr_11_0_bcc28bfecf25caff
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_d5912692bc2e79ac")) generate
    core_instance1: cntr_11_0_d5912692bc2e79ac
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_828d962eb0 is
  port (
    a : in std_logic_vector((15 - 1) downto 0);
    b : in std_logic_vector((24 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_828d962eb0;


architecture behavior of relational_828d962eb0 is
  signal a_1_31: unsigned((15 - 1) downto 0);
  signal b_1_34: unsigned((24 - 1) downto 0);
  signal cast_22_12: unsigned((24 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_22_12 <= u2u_cast(a_1_31, 0, 24, 0);
  result_22_3_rel <= cast_22_12 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_b9ef874a07 is
  port (
    a : in std_logic_vector((24 - 1) downto 0);
    b : in std_logic_vector((15 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_b9ef874a07;


architecture behavior of relational_b9ef874a07 is
  signal a_1_31: unsigned((24 - 1) downto 0);
  signal b_1_34: unsigned((15 - 1) downto 0);
  signal cast_20_17: unsigned((24 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_20_17 <= u2u_cast(b_1_34, 0, 24, 0);
  result_20_3_rel <= a_1_31 <= cast_20_17;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_f3a4ef3712 is
  port (
    a : in std_logic_vector((15 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_f3a4ef3712;


architecture behavior of relational_f3a4ef3712 is
  signal a_1_31: unsigned((15 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal cast_22_12: unsigned((32 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_22_12 <= u2u_cast(a_1_31, 0, 32, 0);
  result_22_3_rel <= cast_22_12 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1bef4ba0e4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1bef4ba0e4;


architecture behavior of mux_1bef4ba0e4 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_3e1f051fb7 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_3e1f051fb7;


architecture behavior of logical_3e1f051fb7 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/EDK Processor"

entity edk_processor_entity_5c1302822d is
  port (
    axi_aresetn: in std_logic; 
    from_register: in std_logic_vector(31 downto 0); 
    from_register1: in std_logic_vector(31 downto 0); 
    from_register2: in std_logic_vector(1 downto 0); 
    from_register3: in std_logic_vector(31 downto 0); 
    from_register4: in std_logic_vector(31 downto 0); 
    from_register5: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
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
    shared_memory: in std_logic_vector(31 downto 0); 
    shared_memory1: in std_logic_vector(31 downto 0); 
    shared_memory10: in std_logic_vector(31 downto 0); 
    shared_memory11: in std_logic_vector(31 downto 0); 
    shared_memory2: in std_logic_vector(31 downto 0); 
    shared_memory3: in std_logic_vector(31 downto 0); 
    shared_memory4: in std_logic_vector(31 downto 0); 
    shared_memory5: in std_logic_vector(31 downto 0); 
    shared_memory6: in std_logic_vector(31 downto 0); 
    shared_memory7: in std_logic_vector(31 downto 0); 
    shared_memory8: in std_logic_vector(31 downto 0); 
    shared_memory9: in std_logic_vector(31 downto 0); 
    to_register: in std_logic_vector(31 downto 0); 
    to_register1: in std_logic_vector(31 downto 0); 
    to_register2: in std_logic_vector(31 downto 0); 
    to_register3: in std_logic_vector(31 downto 0); 
    to_register4: in std_logic_vector(23 downto 0); 
    to_register5: in std_logic_vector(23 downto 0); 
    memmap_x0: out std_logic; 
    memmap_x1: out std_logic; 
    memmap_x10: out std_logic; 
    memmap_x11: out std_logic_vector(31 downto 0); 
    memmap_x12: out std_logic; 
    memmap_x13: out std_logic_vector(31 downto 0); 
    memmap_x14: out std_logic; 
    memmap_x15: out std_logic_vector(31 downto 0); 
    memmap_x16: out std_logic; 
    memmap_x17: out std_logic_vector(31 downto 0); 
    memmap_x18: out std_logic; 
    memmap_x19: out std_logic_vector(23 downto 0); 
    memmap_x2: out std_logic_vector(7 downto 0); 
    memmap_x20: out std_logic; 
    memmap_x21: out std_logic_vector(23 downto 0); 
    memmap_x22: out std_logic; 
    memmap_x23: out std_logic_vector(14 downto 0); 
    memmap_x24: out std_logic_vector(31 downto 0); 
    memmap_x25: out std_logic; 
    memmap_x26: out std_logic_vector(11 downto 0); 
    memmap_x27: out std_logic_vector(31 downto 0); 
    memmap_x28: out std_logic; 
    memmap_x29: out std_logic_vector(14 downto 0); 
    memmap_x3: out std_logic_vector(1 downto 0); 
    memmap_x30: out std_logic_vector(31 downto 0); 
    memmap_x31: out std_logic; 
    memmap_x32: out std_logic_vector(14 downto 0); 
    memmap_x33: out std_logic_vector(31 downto 0); 
    memmap_x34: out std_logic; 
    memmap_x35: out std_logic_vector(11 downto 0); 
    memmap_x36: out std_logic_vector(31 downto 0); 
    memmap_x37: out std_logic; 
    memmap_x38: out std_logic_vector(14 downto 0); 
    memmap_x39: out std_logic_vector(31 downto 0); 
    memmap_x4: out std_logic; 
    memmap_x40: out std_logic; 
    memmap_x41: out std_logic_vector(14 downto 0); 
    memmap_x42: out std_logic_vector(31 downto 0); 
    memmap_x43: out std_logic; 
    memmap_x44: out std_logic_vector(11 downto 0); 
    memmap_x45: out std_logic_vector(31 downto 0); 
    memmap_x46: out std_logic; 
    memmap_x47: out std_logic_vector(14 downto 0); 
    memmap_x48: out std_logic_vector(31 downto 0); 
    memmap_x49: out std_logic; 
    memmap_x5: out std_logic_vector(31 downto 0); 
    memmap_x50: out std_logic_vector(14 downto 0); 
    memmap_x51: out std_logic_vector(31 downto 0); 
    memmap_x52: out std_logic; 
    memmap_x53: out std_logic_vector(11 downto 0); 
    memmap_x54: out std_logic_vector(31 downto 0); 
    memmap_x55: out std_logic; 
    memmap_x56: out std_logic_vector(14 downto 0); 
    memmap_x57: out std_logic_vector(31 downto 0); 
    memmap_x58: out std_logic; 
    memmap_x59: out std_logic; 
    memmap_x6: out std_logic_vector(7 downto 0); 
    memmap_x7: out std_logic; 
    memmap_x8: out std_logic_vector(1 downto 0); 
    memmap_x9: out std_logic
  );
end edk_processor_entity_5c1302822d;

architecture structural of edk_processor_entity_5c1302822d is
  signal axi_aresetn_net_x0: std_logic;
  signal from_register1_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register2_data_out_net_x0: std_logic_vector(1 downto 0);
  signal from_register3_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register5_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register_data_out_net_x0: std_logic_vector(31 downto 0);
  signal memmap_s_axi_arready_net_x0: std_logic;
  signal memmap_s_axi_awready_net_x0: std_logic;
  signal memmap_s_axi_bid_net_x0: std_logic_vector(7 downto 0);
  signal memmap_s_axi_bresp_net_x0: std_logic_vector(1 downto 0);
  signal memmap_s_axi_bvalid_net_x0: std_logic;
  signal memmap_s_axi_rdata_net_x0: std_logic_vector(31 downto 0);
  signal memmap_s_axi_rid_net_x0: std_logic_vector(7 downto 0);
  signal memmap_s_axi_rlast_net_x0: std_logic;
  signal memmap_s_axi_rresp_net_x0: std_logic_vector(1 downto 0);
  signal memmap_s_axi_rvalid_net_x0: std_logic;
  signal memmap_s_axi_wready_net_x0: std_logic;
  signal memmap_shram_en_net_x0: std_logic;
  signal memmap_sm_config_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_config_en_net_x0: std_logic;
  signal memmap_sm_rfa_iq_rx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfa_iq_rx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfa_iq_rx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfa_iq_tx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfa_iq_tx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfa_iq_tx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfa_rssi_buffer_addr_net_x0: std_logic_vector(11 downto 0);
  signal memmap_sm_rfa_rssi_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfa_rssi_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfb_iq_rx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfb_iq_rx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfb_iq_rx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfb_iq_tx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfb_iq_tx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfb_iq_tx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfb_rssi_buffer_addr_net_x0: std_logic_vector(11 downto 0);
  signal memmap_sm_rfb_rssi_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfb_rssi_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfc_iq_rx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfc_iq_rx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfc_iq_rx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfc_iq_tx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfc_iq_tx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfc_iq_tx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfc_rssi_buffer_addr_net_x0: std_logic_vector(11 downto 0);
  signal memmap_sm_rfc_rssi_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfc_rssi_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfd_iq_rx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfd_iq_rx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfd_iq_rx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfd_iq_tx_buffer_addr_net_x0: std_logic_vector(14 downto 0);
  signal memmap_sm_rfd_iq_tx_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfd_iq_tx_buffer_we_net_x0: std_logic;
  signal memmap_sm_rfd_rssi_buffer_addr_net_x0: std_logic_vector(11 downto 0);
  signal memmap_sm_rfd_rssi_buffer_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rfd_rssi_buffer_we_net_x0: std_logic;
  signal memmap_sm_rx_buff_en_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_rx_buff_en_en_net_x0: std_logic;
  signal memmap_sm_rxlength_din_net_x0: std_logic_vector(23 downto 0);
  signal memmap_sm_rxlength_en_net_x0: std_logic;
  signal memmap_sm_tx_buff_en_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_tx_buff_en_en_net_x0: std_logic;
  signal memmap_sm_txdelay_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_txdelay_en_net_x0: std_logic;
  signal memmap_sm_txlength_din_net_x0: std_logic_vector(23 downto 0);
  signal memmap_sm_txlength_en_net_x0: std_logic;
  signal plb_ce_1_sg_x0: std_logic;
  signal plb_clk_1_sg_x0: std_logic;
  signal s_axi_araddr_net_x0: std_logic_vector(31 downto 0);
  signal s_axi_arburst_net_x0: std_logic_vector(1 downto 0);
  signal s_axi_arcache_net_x0: std_logic_vector(3 downto 0);
  signal s_axi_arid_net_x0: std_logic_vector(7 downto 0);
  signal s_axi_arlen_net_x0: std_logic_vector(7 downto 0);
  signal s_axi_arlock_net_x0: std_logic_vector(1 downto 0);
  signal s_axi_arprot_net_x0: std_logic_vector(2 downto 0);
  signal s_axi_arsize_net_x0: std_logic_vector(2 downto 0);
  signal s_axi_arvalid_net_x0: std_logic;
  signal s_axi_awaddr_net_x0: std_logic_vector(31 downto 0);
  signal s_axi_awburst_net_x0: std_logic_vector(1 downto 0);
  signal s_axi_awcache_net_x0: std_logic_vector(3 downto 0);
  signal s_axi_awid_net_x0: std_logic_vector(7 downto 0);
  signal s_axi_awlen_net_x0: std_logic_vector(7 downto 0);
  signal s_axi_awlock_net_x0: std_logic_vector(1 downto 0);
  signal s_axi_awprot_net_x0: std_logic_vector(2 downto 0);
  signal s_axi_awsize_net_x0: std_logic_vector(2 downto 0);
  signal s_axi_awvalid_net_x0: std_logic;
  signal s_axi_bready_net_x0: std_logic;
  signal s_axi_rready_net_x0: std_logic;
  signal s_axi_wdata_net_x0: std_logic_vector(31 downto 0);
  signal s_axi_wlast_net_x0: std_logic;
  signal s_axi_wstrb_net_x0: std_logic_vector(3 downto 0);
  signal s_axi_wvalid_net_x0: std_logic;
  signal shared_memory10_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory11_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory1_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory2_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory3_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory4_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory5_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory6_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory7_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory8_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory9_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x0: std_logic_vector(31 downto 0);
  signal to_register1_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register2_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register3_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register4_dout_net_x0: std_logic_vector(23 downto 0);
  signal to_register5_dout_net_x0: std_logic_vector(23 downto 0);
  signal to_register_dout_net_x0: std_logic_vector(31 downto 0);

begin
  axi_aresetn_net_x0 <= axi_aresetn;
  from_register_data_out_net_x0 <= from_register;
  from_register1_data_out_net_x0 <= from_register1;
  from_register2_data_out_net_x0 <= from_register2;
  from_register3_data_out_net_x0 <= from_register3;
  from_register4_data_out_net_x0 <= from_register4;
  from_register5_data_out_net_x0 <= from_register5;
  plb_ce_1_sg_x0 <= plb_ce_1;
  plb_clk_1_sg_x0 <= plb_clk_1;
  s_axi_araddr_net_x0 <= s_axi_araddr;
  s_axi_arburst_net_x0 <= s_axi_arburst;
  s_axi_arcache_net_x0 <= s_axi_arcache;
  s_axi_arid_net_x0 <= s_axi_arid;
  s_axi_arlen_net_x0 <= s_axi_arlen;
  s_axi_arlock_net_x0 <= s_axi_arlock;
  s_axi_arprot_net_x0 <= s_axi_arprot;
  s_axi_arsize_net_x0 <= s_axi_arsize;
  s_axi_arvalid_net_x0 <= s_axi_arvalid;
  s_axi_awaddr_net_x0 <= s_axi_awaddr;
  s_axi_awburst_net_x0 <= s_axi_awburst;
  s_axi_awcache_net_x0 <= s_axi_awcache;
  s_axi_awid_net_x0 <= s_axi_awid;
  s_axi_awlen_net_x0 <= s_axi_awlen;
  s_axi_awlock_net_x0 <= s_axi_awlock;
  s_axi_awprot_net_x0 <= s_axi_awprot;
  s_axi_awsize_net_x0 <= s_axi_awsize;
  s_axi_awvalid_net_x0 <= s_axi_awvalid;
  s_axi_bready_net_x0 <= s_axi_bready;
  s_axi_rready_net_x0 <= s_axi_rready;
  s_axi_wdata_net_x0 <= s_axi_wdata;
  s_axi_wlast_net_x0 <= s_axi_wlast;
  s_axi_wstrb_net_x0 <= s_axi_wstrb;
  s_axi_wvalid_net_x0 <= s_axi_wvalid;
  shared_memory_data_out_net_x0 <= shared_memory;
  shared_memory1_data_out_net_x0 <= shared_memory1;
  shared_memory10_data_out_net_x0 <= shared_memory10;
  shared_memory11_data_out_net_x0 <= shared_memory11;
  shared_memory2_data_out_net_x0 <= shared_memory2;
  shared_memory3_data_out_net_x0 <= shared_memory3;
  shared_memory4_data_out_net_x0 <= shared_memory4;
  shared_memory5_data_out_net_x0 <= shared_memory5;
  shared_memory6_data_out_net_x0 <= shared_memory6;
  shared_memory7_data_out_net_x0 <= shared_memory7;
  shared_memory8_data_out_net_x0 <= shared_memory8;
  shared_memory9_data_out_net_x0 <= shared_memory9;
  to_register_dout_net_x0 <= to_register;
  to_register1_dout_net_x0 <= to_register1;
  to_register2_dout_net_x0 <= to_register2;
  to_register3_dout_net_x0 <= to_register3;
  to_register4_dout_net_x0 <= to_register4;
  to_register5_dout_net_x0 <= to_register5;
  memmap_x0 <= memmap_s_axi_arready_net_x0;
  memmap_x1 <= memmap_s_axi_awready_net_x0;
  memmap_x10 <= memmap_s_axi_wready_net_x0;
  memmap_x11 <= memmap_sm_txdelay_din_net_x0;
  memmap_x12 <= memmap_sm_txdelay_en_net_x0;
  memmap_x13 <= memmap_sm_rx_buff_en_din_net_x0;
  memmap_x14 <= memmap_sm_rx_buff_en_en_net_x0;
  memmap_x15 <= memmap_sm_config_din_net_x0;
  memmap_x16 <= memmap_sm_config_en_net_x0;
  memmap_x17 <= memmap_sm_tx_buff_en_din_net_x0;
  memmap_x18 <= memmap_sm_tx_buff_en_en_net_x0;
  memmap_x19 <= memmap_sm_rxlength_din_net_x0;
  memmap_x2 <= memmap_s_axi_bid_net_x0;
  memmap_x20 <= memmap_sm_rxlength_en_net_x0;
  memmap_x21 <= memmap_sm_txlength_din_net_x0;
  memmap_x22 <= memmap_sm_txlength_en_net_x0;
  memmap_x23 <= memmap_sm_rfd_iq_tx_buffer_addr_net_x0;
  memmap_x24 <= memmap_sm_rfd_iq_tx_buffer_din_net_x0;
  memmap_x25 <= memmap_sm_rfd_iq_tx_buffer_we_net_x0;
  memmap_x26 <= memmap_sm_rfd_rssi_buffer_addr_net_x0;
  memmap_x27 <= memmap_sm_rfd_rssi_buffer_din_net_x0;
  memmap_x28 <= memmap_sm_rfd_rssi_buffer_we_net_x0;
  memmap_x29 <= memmap_sm_rfd_iq_rx_buffer_addr_net_x0;
  memmap_x3 <= memmap_s_axi_bresp_net_x0;
  memmap_x30 <= memmap_sm_rfd_iq_rx_buffer_din_net_x0;
  memmap_x31 <= memmap_sm_rfd_iq_rx_buffer_we_net_x0;
  memmap_x32 <= memmap_sm_rfc_iq_tx_buffer_addr_net_x0;
  memmap_x33 <= memmap_sm_rfc_iq_tx_buffer_din_net_x0;
  memmap_x34 <= memmap_sm_rfc_iq_tx_buffer_we_net_x0;
  memmap_x35 <= memmap_sm_rfc_rssi_buffer_addr_net_x0;
  memmap_x36 <= memmap_sm_rfc_rssi_buffer_din_net_x0;
  memmap_x37 <= memmap_sm_rfc_rssi_buffer_we_net_x0;
  memmap_x38 <= memmap_sm_rfc_iq_rx_buffer_addr_net_x0;
  memmap_x39 <= memmap_sm_rfc_iq_rx_buffer_din_net_x0;
  memmap_x4 <= memmap_s_axi_bvalid_net_x0;
  memmap_x40 <= memmap_sm_rfc_iq_rx_buffer_we_net_x0;
  memmap_x41 <= memmap_sm_rfb_iq_tx_buffer_addr_net_x0;
  memmap_x42 <= memmap_sm_rfb_iq_tx_buffer_din_net_x0;
  memmap_x43 <= memmap_sm_rfb_iq_tx_buffer_we_net_x0;
  memmap_x44 <= memmap_sm_rfb_rssi_buffer_addr_net_x0;
  memmap_x45 <= memmap_sm_rfb_rssi_buffer_din_net_x0;
  memmap_x46 <= memmap_sm_rfb_rssi_buffer_we_net_x0;
  memmap_x47 <= memmap_sm_rfb_iq_rx_buffer_addr_net_x0;
  memmap_x48 <= memmap_sm_rfb_iq_rx_buffer_din_net_x0;
  memmap_x49 <= memmap_sm_rfb_iq_rx_buffer_we_net_x0;
  memmap_x5 <= memmap_s_axi_rdata_net_x0;
  memmap_x50 <= memmap_sm_rfa_iq_tx_buffer_addr_net_x0;
  memmap_x51 <= memmap_sm_rfa_iq_tx_buffer_din_net_x0;
  memmap_x52 <= memmap_sm_rfa_iq_tx_buffer_we_net_x0;
  memmap_x53 <= memmap_sm_rfa_rssi_buffer_addr_net_x0;
  memmap_x54 <= memmap_sm_rfa_rssi_buffer_din_net_x0;
  memmap_x55 <= memmap_sm_rfa_rssi_buffer_we_net_x0;
  memmap_x56 <= memmap_sm_rfa_iq_rx_buffer_addr_net_x0;
  memmap_x57 <= memmap_sm_rfa_iq_rx_buffer_din_net_x0;
  memmap_x58 <= memmap_sm_rfa_iq_rx_buffer_we_net_x0;
  memmap_x59 <= memmap_shram_en_net_x0;
  memmap_x6 <= memmap_s_axi_rid_net_x0;
  memmap_x7 <= memmap_s_axi_rlast_net_x0;
  memmap_x8 <= memmap_s_axi_rresp_net_x0;
  memmap_x9 <= memmap_s_axi_rvalid_net_x0;

  memmap: entity work.axi_sgiface
    port map (
      axi_aclk => plb_clk_1_sg_x0,
      axi_aresetn => axi_aresetn_net_x0,
      axi_ce => plb_ce_1_sg_x0,
      s_axi_araddr => s_axi_araddr_net_x0,
      s_axi_arburst => s_axi_arburst_net_x0,
      s_axi_arcache => s_axi_arcache_net_x0,
      s_axi_arid => s_axi_arid_net_x0,
      s_axi_arlen => s_axi_arlen_net_x0,
      s_axi_arlock => s_axi_arlock_net_x0,
      s_axi_arprot => s_axi_arprot_net_x0,
      s_axi_arsize => s_axi_arsize_net_x0,
      s_axi_arvalid => s_axi_arvalid_net_x0,
      s_axi_awaddr => s_axi_awaddr_net_x0,
      s_axi_awburst => s_axi_awburst_net_x0,
      s_axi_awcache => s_axi_awcache_net_x0,
      s_axi_awid => s_axi_awid_net_x0,
      s_axi_awlen => s_axi_awlen_net_x0,
      s_axi_awlock => s_axi_awlock_net_x0,
      s_axi_awprot => s_axi_awprot_net_x0,
      s_axi_awsize => s_axi_awsize_net_x0,
      s_axi_awvalid => s_axi_awvalid_net_x0,
      s_axi_bready => s_axi_bready_net_x0,
      s_axi_rready => s_axi_rready_net_x0,
      s_axi_wdata => s_axi_wdata_net_x0,
      s_axi_wlast => s_axi_wlast_net_x0,
      s_axi_wstrb => s_axi_wstrb_net_x0,
      s_axi_wvalid => s_axi_wvalid_net_x0,
      sm_agcdoneaddr_dout => from_register5_data_out_net_x0,
      sm_buff_sizes_dout => from_register_data_out_net_x0,
      sm_config_dout => to_register2_dout_net_x0,
      sm_design_ver_dout => from_register1_data_out_net_x0,
      sm_rfa_iq_rx_buffer_dout => shared_memory11_data_out_net_x0,
      sm_rfa_iq_tx_buffer_dout => shared_memory9_data_out_net_x0,
      sm_rfa_rssi_buffer_dout => shared_memory10_data_out_net_x0,
      sm_rfab_agcdonerssi_dout => from_register4_data_out_net_x0,
      sm_rfb_iq_rx_buffer_dout => shared_memory8_data_out_net_x0,
      sm_rfb_iq_tx_buffer_dout => shared_memory6_data_out_net_x0,
      sm_rfb_rssi_buffer_dout => shared_memory7_data_out_net_x0,
      sm_rfc_iq_rx_buffer_dout => shared_memory5_data_out_net_x0,
      sm_rfc_iq_tx_buffer_dout => shared_memory3_data_out_net_x0,
      sm_rfc_rssi_buffer_dout => shared_memory4_data_out_net_x0,
      sm_rfcd_agcdonerssi_dout => from_register3_data_out_net_x0,
      sm_rfd_iq_rx_buffer_dout => shared_memory2_data_out_net_x0,
      sm_rfd_iq_tx_buffer_dout => shared_memory_data_out_net_x0,
      sm_rfd_rssi_buffer_dout => shared_memory1_data_out_net_x0,
      sm_rx_buff_en_dout => to_register1_dout_net_x0,
      sm_rxlength_dout => to_register4_dout_net_x0,
      sm_status_dout => from_register2_data_out_net_x0,
      sm_tx_buff_en_dout => to_register3_dout_net_x0,
      sm_txdelay_dout => to_register_dout_net_x0,
      sm_txlength_dout => to_register5_dout_net_x0,
      s_axi_arready => memmap_s_axi_arready_net_x0,
      s_axi_awready => memmap_s_axi_awready_net_x0,
      s_axi_bid => memmap_s_axi_bid_net_x0,
      s_axi_bresp => memmap_s_axi_bresp_net_x0,
      s_axi_bvalid => memmap_s_axi_bvalid_net_x0,
      s_axi_rdata => memmap_s_axi_rdata_net_x0,
      s_axi_rid => memmap_s_axi_rid_net_x0,
      s_axi_rlast => memmap_s_axi_rlast_net_x0,
      s_axi_rresp => memmap_s_axi_rresp_net_x0,
      s_axi_rvalid => memmap_s_axi_rvalid_net_x0,
      s_axi_wready => memmap_s_axi_wready_net_x0,
      shram_en => memmap_shram_en_net_x0,
      sm_config_din => memmap_sm_config_din_net_x0,
      sm_config_en => memmap_sm_config_en_net_x0,
      sm_rfa_iq_rx_buffer_addr => memmap_sm_rfa_iq_rx_buffer_addr_net_x0,
      sm_rfa_iq_rx_buffer_din => memmap_sm_rfa_iq_rx_buffer_din_net_x0,
      sm_rfa_iq_rx_buffer_we => memmap_sm_rfa_iq_rx_buffer_we_net_x0,
      sm_rfa_iq_tx_buffer_addr => memmap_sm_rfa_iq_tx_buffer_addr_net_x0,
      sm_rfa_iq_tx_buffer_din => memmap_sm_rfa_iq_tx_buffer_din_net_x0,
      sm_rfa_iq_tx_buffer_we => memmap_sm_rfa_iq_tx_buffer_we_net_x0,
      sm_rfa_rssi_buffer_addr => memmap_sm_rfa_rssi_buffer_addr_net_x0,
      sm_rfa_rssi_buffer_din => memmap_sm_rfa_rssi_buffer_din_net_x0,
      sm_rfa_rssi_buffer_we => memmap_sm_rfa_rssi_buffer_we_net_x0,
      sm_rfb_iq_rx_buffer_addr => memmap_sm_rfb_iq_rx_buffer_addr_net_x0,
      sm_rfb_iq_rx_buffer_din => memmap_sm_rfb_iq_rx_buffer_din_net_x0,
      sm_rfb_iq_rx_buffer_we => memmap_sm_rfb_iq_rx_buffer_we_net_x0,
      sm_rfb_iq_tx_buffer_addr => memmap_sm_rfb_iq_tx_buffer_addr_net_x0,
      sm_rfb_iq_tx_buffer_din => memmap_sm_rfb_iq_tx_buffer_din_net_x0,
      sm_rfb_iq_tx_buffer_we => memmap_sm_rfb_iq_tx_buffer_we_net_x0,
      sm_rfb_rssi_buffer_addr => memmap_sm_rfb_rssi_buffer_addr_net_x0,
      sm_rfb_rssi_buffer_din => memmap_sm_rfb_rssi_buffer_din_net_x0,
      sm_rfb_rssi_buffer_we => memmap_sm_rfb_rssi_buffer_we_net_x0,
      sm_rfc_iq_rx_buffer_addr => memmap_sm_rfc_iq_rx_buffer_addr_net_x0,
      sm_rfc_iq_rx_buffer_din => memmap_sm_rfc_iq_rx_buffer_din_net_x0,
      sm_rfc_iq_rx_buffer_we => memmap_sm_rfc_iq_rx_buffer_we_net_x0,
      sm_rfc_iq_tx_buffer_addr => memmap_sm_rfc_iq_tx_buffer_addr_net_x0,
      sm_rfc_iq_tx_buffer_din => memmap_sm_rfc_iq_tx_buffer_din_net_x0,
      sm_rfc_iq_tx_buffer_we => memmap_sm_rfc_iq_tx_buffer_we_net_x0,
      sm_rfc_rssi_buffer_addr => memmap_sm_rfc_rssi_buffer_addr_net_x0,
      sm_rfc_rssi_buffer_din => memmap_sm_rfc_rssi_buffer_din_net_x0,
      sm_rfc_rssi_buffer_we => memmap_sm_rfc_rssi_buffer_we_net_x0,
      sm_rfd_iq_rx_buffer_addr => memmap_sm_rfd_iq_rx_buffer_addr_net_x0,
      sm_rfd_iq_rx_buffer_din => memmap_sm_rfd_iq_rx_buffer_din_net_x0,
      sm_rfd_iq_rx_buffer_we => memmap_sm_rfd_iq_rx_buffer_we_net_x0,
      sm_rfd_iq_tx_buffer_addr => memmap_sm_rfd_iq_tx_buffer_addr_net_x0,
      sm_rfd_iq_tx_buffer_din => memmap_sm_rfd_iq_tx_buffer_din_net_x0,
      sm_rfd_iq_tx_buffer_we => memmap_sm_rfd_iq_tx_buffer_we_net_x0,
      sm_rfd_rssi_buffer_addr => memmap_sm_rfd_rssi_buffer_addr_net_x0,
      sm_rfd_rssi_buffer_din => memmap_sm_rfd_rssi_buffer_din_net_x0,
      sm_rfd_rssi_buffer_we => memmap_sm_rfd_rssi_buffer_we_net_x0,
      sm_rx_buff_en_din => memmap_sm_rx_buff_en_din_net_x0,
      sm_rx_buff_en_en => memmap_sm_rx_buff_en_en_net_x0,
      sm_rxlength_din => memmap_sm_rxlength_din_net_x0,
      sm_rxlength_en => memmap_sm_rxlength_en_net_x0,
      sm_tx_buff_en_din => memmap_sm_tx_buff_en_din_net_x0,
      sm_tx_buff_en_en => memmap_sm_tx_buff_en_en_net_x0,
      sm_txdelay_din => memmap_sm_txdelay_din_net_x0,
      sm_txdelay_en => memmap_sm_txdelay_en_net_x0,
      sm_txlength_din => memmap_sm_txlength_din_net_x0,
      sm_txlength_en => memmap_sm_txlength_en_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Memory-mapped Registers/Config Bits"

entity config_bits_entity_21c2c5f9fc is
  port (
    d: in std_logic_vector(31 downto 0); 
    agc_iq_sel: out std_logic; 
    byte_order: out std_logic; 
    continuous_tx: out std_logic; 
    rssi_clk_sel: out std_logic_vector(1 downto 0); 
    stop_tx: out std_logic
  );
end config_bits_entity_21c2c5f9fc;

architecture structural of config_bits_entity_21c2c5f9fc is
  signal b2_y_net_x0: std_logic;
  signal b3_y_net_x0: std_logic;
  signal b4_y_net_x0: std_logic;
  signal b6_y_net_x0: std_logic;
  signal b8_7_y_net_x0: std_logic_vector(1 downto 0);
  signal from_register13_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  from_register13_data_out_net_x0 <= d;
  agc_iq_sel <= b4_y_net_x0;
  byte_order <= b6_y_net_x0;
  continuous_tx <= b2_y_net_x0;
  rssi_clk_sel <= b8_7_y_net_x0;
  stop_tx <= b3_y_net_x0;

  b2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register13_data_out_net_x0,
      y(0) => b2_y_net_x0
    );

  b3: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register13_data_out_net_x0,
      y(0) => b3_y_net_x0
    );

  b4: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register13_data_out_net_x0,
      y(0) => b4_y_net_x0
    );

  b6: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register13_data_out_net_x0,
      y(0) => b6_y_net_x0
    );

  b8_7: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 8,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => from_register13_data_out_net_x0,
      y => b8_7_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Memory-mapped Registers/RFx Sel"

entity rfx_sel_entity_0c8594634e is
  port (
    x32b: in std_logic_vector(31 downto 0); 
    a: out std_logic; 
    b: out std_logic; 
    c: out std_logic; 
    d: out std_logic
  );
end rfx_sel_entity_0c8594634e;

architecture structural of rfx_sel_entity_0c8594634e is
  signal b0_y_net_x0: std_logic;
  signal b1_y_net_x0: std_logic;
  signal b2_y_net_x0: std_logic;
  signal b3_y_net_x0: std_logic;
  signal from_register16_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  from_register16_data_out_net_x0 <= x32b;
  a <= b0_y_net_x0;
  b <= b1_y_net_x0;
  c <= b2_y_net_x0;
  d <= b3_y_net_x0;

  b0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register16_data_out_net_x0,
      y(0) => b0_y_net_x0
    );

  b1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register16_data_out_net_x0,
      y(0) => b1_y_net_x0
    );

  b2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register16_data_out_net_x0,
      y(0) => b2_y_net_x0
    );

  b3: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register16_data_out_net_x0,
      y(0) => b3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Memory-mapped Registers"

entity memory_mapped_registers_entity_520e3032da is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    design_ver: in std_logic_vector(31 downto 0); 
    from_register1: in std_logic_vector(31 downto 0); 
    from_register13: in std_logic_vector(31 downto 0); 
    from_register16: in std_logic_vector(31 downto 0); 
    rfa_rssi: in std_logic_vector(9 downto 0); 
    rfb_rssi: in std_logic_vector(9 downto 0); 
    rfc_rssi: in std_logic_vector(9 downto 0); 
    rfd_rssi: in std_logic_vector(9 downto 0); 
    rx_running: in std_logic; 
    tx_running: in std_logic; 
    wr_addr: in std_logic_vector(14 downto 0); 
    concat1_x0: out std_logic_vector(31 downto 0); 
    concat2_x0: out std_logic_vector(31 downto 0); 
    concat3_x0: out std_logic_vector(31 downto 0); 
    concat_x0: out std_logic_vector(1 downto 0); 
    config_bits: out std_logic; 
    config_bits_x0: out std_logic; 
    config_bits_x1: out std_logic; 
    config_bits_x2: out std_logic; 
    config_bits_x3: out std_logic_vector(1 downto 0); 
    convert4_x0: out std_logic_vector(31 downto 0); 
    register_x1: out std_logic_vector(31 downto 0); 
    rfa_rxbuffen: out std_logic; 
    rfa_txbuffen: out std_logic; 
    rfb_rxbuffen: out std_logic; 
    rfb_txbuffen: out std_logic; 
    rfc_rxbuffen: out std_logic; 
    rfc_txbuffen: out std_logic; 
    rfd_rxbuffen: out std_logic; 
    rfd_txbuffen: out std_logic; 
    zero2_x0: out std_logic; 
    zero3_x0: out std_logic; 
    zero4_x0: out std_logic
  );
end memory_mapped_registers_entity_520e3032da;

architecture structural of memory_mapped_registers_entity_520e3032da is
  signal b0_y_net_x2: std_logic;
  signal b0_y_net_x3: std_logic;
  signal b1_y_net_x2: std_logic;
  signal b1_y_net_x3: std_logic;
  signal b2_y_net_x3: std_logic;
  signal b2_y_net_x4: std_logic;
  signal b2_y_net_x5: std_logic;
  signal b3_y_net_x3: std_logic;
  signal b3_y_net_x4: std_logic;
  signal b3_y_net_x5: std_logic;
  signal b4_y_net_x1: std_logic;
  signal b6_y_net_x1: std_logic;
  signal b8_7_y_net_x1: std_logic_vector(1 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat1_y_net_x0: std_logic_vector(31 downto 0);
  signal concat2_y_net_x0: std_logic_vector(31 downto 0);
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x0: std_logic_vector(1 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(31 downto 0);
  signal design_ver_net_x0: std_logic_vector(31 downto 0);
  signal from_register13_data_out_net_x1: std_logic_vector(31 downto 0);
  signal from_register16_data_out_net_x1: std_logic_vector(31 downto 0);
  signal from_register1_data_out_net_x1: std_logic_vector(31 downto 0);
  signal register_q_net_x2: std_logic;
  signal register_q_net_x3: std_logic;
  signal register_q_net_x4: std_logic_vector(31 downto 0);
  signal rfa_rssi_net_x0: std_logic_vector(9 downto 0);
  signal rfb_rssi_net_x0: std_logic_vector(9 downto 0);
  signal rfc_rssi_net_x0: std_logic_vector(9 downto 0);
  signal rfd_rssi_net_x0: std_logic_vector(9 downto 0);
  signal rx_addr_counter1_op_net_x0: std_logic_vector(14 downto 0);
  signal zero1_op_net: std_logic_vector(5 downto 0);
  signal zero2_op_net_x0: std_logic;
  signal zero3_op_net_x0: std_logic;
  signal zero4_op_net_x0: std_logic;
  signal zero5_op_net: std_logic_vector(15 downto 0);
  signal zero6_op_net: std_logic_vector(15 downto 0);
  signal zero7_op_net: std_logic_vector(5 downto 0);
  signal zero8_op_net: std_logic_vector(5 downto 0);
  signal zero9_op_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  design_ver_net_x0 <= design_ver;
  from_register1_data_out_net_x1 <= from_register1;
  from_register13_data_out_net_x1 <= from_register13;
  from_register16_data_out_net_x1 <= from_register16;
  rfa_rssi_net_x0 <= rfa_rssi;
  rfb_rssi_net_x0 <= rfb_rssi;
  rfc_rssi_net_x0 <= rfc_rssi;
  rfd_rssi_net_x0 <= rfd_rssi;
  register_q_net_x2 <= rx_running;
  register_q_net_x3 <= tx_running;
  rx_addr_counter1_op_net_x0 <= wr_addr;
  concat1_x0 <= concat1_y_net_x0;
  concat2_x0 <= concat2_y_net_x0;
  concat3_x0 <= concat3_y_net_x0;
  concat_x0 <= concat_y_net_x0;
  config_bits <= b2_y_net_x3;
  config_bits_x0 <= b3_y_net_x3;
  config_bits_x1 <= b4_y_net_x1;
  config_bits_x2 <= b6_y_net_x1;
  config_bits_x3 <= b8_7_y_net_x1;
  convert4_x0 <= convert4_dout_net_x0;
  register_x1 <= register_q_net_x4;
  rfa_rxbuffen <= b0_y_net_x2;
  rfa_txbuffen <= b0_y_net_x3;
  rfb_rxbuffen <= b1_y_net_x2;
  rfb_txbuffen <= b1_y_net_x3;
  rfc_rxbuffen <= b2_y_net_x4;
  rfc_txbuffen <= b2_y_net_x5;
  rfd_rxbuffen <= b3_y_net_x4;
  rfd_txbuffen <= b3_y_net_x5;
  zero2_x0 <= zero2_op_net_x0;
  zero3_x0 <= zero3_op_net_x0;
  zero4_x0 <= zero4_op_net_x0;

  concat: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => register_q_net_x2,
      in1(0) => register_q_net_x3,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => zero5_op_net,
      in1 => zero6_op_net,
      y => concat1_y_net_x0
    );

  concat2: entity work.concat_068a54b68c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => zero8_op_net,
      in1 => rfb_rssi_net_x0,
      in2 => zero1_op_net,
      in3 => rfa_rssi_net_x0,
      y => concat2_y_net_x0
    );

  concat3: entity work.concat_068a54b68c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => zero9_op_net,
      in1 => rfd_rssi_net_x0,
      in2 => zero7_op_net,
      in3 => rfc_rssi_net_x0,
      y => concat3_y_net_x0
    );

  config_bits_21c2c5f9fc: entity work.config_bits_entity_21c2c5f9fc
    port map (
      d => from_register13_data_out_net_x1,
      agc_iq_sel => b4_y_net_x1,
      byte_order => b6_y_net_x1,
      continuous_tx => b2_y_net_x3,
      rssi_clk_sel => b8_7_y_net_x1,
      stop_tx => b3_y_net_x3
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => rx_addr_counter1_op_net_x0,
      en => "1",
      dout => convert4_dout_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => design_ver_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net_x4
    );

  rfx_sel2_5bfee5f80b: entity work.rfx_sel_entity_0c8594634e
    port map (
      x32b => from_register1_data_out_net_x1,
      a => b0_y_net_x3,
      b => b1_y_net_x3,
      c => b2_y_net_x5,
      d => b3_y_net_x5
    );

  rfx_sel_0c8594634e: entity work.rfx_sel_entity_0c8594634e
    port map (
      x32b => from_register16_data_out_net_x1,
      a => b0_y_net_x2,
      b => b1_y_net_x2,
      c => b2_y_net_x4,
      d => b3_y_net_x4
    );

  zero1: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero1_op_net
    );

  zero2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => zero2_op_net_x0
    );

  zero3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => zero3_op_net_x0
    );

  zero4: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => zero4_op_net_x0
    );

  zero5: entity work.constant_fb4ee6ff0a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero5_op_net
    );

  zero6: entity work.constant_fb4ee6ff0a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero6_op_net
    );

  zero7: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero7_op_net
    );

  zero8: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero8_op_net
    );

  zero9: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero9_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Posedge"

entity posedge_entity_01ab3a7875 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end posedge_entity_01ab3a7875;

architecture structural of posedge_entity_01ab3a7875 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal trigger_in_net_x0: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  trigger_in_net_x0 <= d;
  q <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => trigger_in_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_938d99ac11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => trigger_in_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Rx Buffers/I/Q Buffer"

entity q_buffer_entity_e0767af1f2 is
  port (
    byte_order: in std_logic; 
    i_q_32b: in std_logic_vector(31 downto 0); 
    mux_x0: out std_logic_vector(31 downto 0)
  );
end q_buffer_entity_e0767af1f2;

architecture structural of q_buffer_entity_e0767af1f2 is
  signal b6_y_net_x2: std_logic;
  signal concat5_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net_x0: std_logic_vector(31 downto 0);
  signal x8lsb_0_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_16_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_24_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_8_y_net: std_logic_vector(7 downto 0);

begin
  b6_y_net_x2 <= byte_order;
  concat5_y_net_x0 <= i_q_32b;
  mux_x0 <= mux_y_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => x8lsb_0_y_net,
      in1 => x8lsb_8_y_net,
      in2 => x8lsb_16_y_net,
      in3 => x8lsb_24_y_net,
      y => concat_y_net
    );

  mux: entity work.mux_c83fe79b0f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => concat5_y_net_x0,
      d1 => concat_y_net,
      sel(0) => b6_y_net_x2,
      y => mux_y_net_x0
    );

  x8lsb_0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat5_y_net_x0,
      y => x8lsb_0_y_net
    );

  x8lsb_16: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat5_y_net_x0,
      y => x8lsb_16_y_net
    );

  x8lsb_24: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat5_y_net_x0,
      y => x8lsb_24_y_net
    );

  x8lsb_8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat5_y_net_x0,
      y => x8lsb_8_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Rx Buffers/RSSI Buffer"

entity rssi_buffer_entity_5a40e7be92 is
  port (
    addr: in std_logic_vector(14 downto 0); 
    byte_order: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rssi: in std_logic_vector(9 downto 0); 
    msb_x0: out std_logic_vector(11 downto 0); 
    mux_x0: out std_logic_vector(31 downto 0)
  );
end rssi_buffer_entity_5a40e7be92;

architecture structural of rssi_buffer_entity_5a40e7be92 is
  signal b6_y_net_x3: std_logic;
  signal bit_2_y_net: std_logic;
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal concat1_y_net: std_logic_vector(31 downto 0);
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal msb_y_net_x0: std_logic_vector(11 downto 0);
  signal mux_y_net_x0: std_logic_vector(31 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(9 downto 0);
  signal rfa_rssi_net_x1: std_logic_vector(9 downto 0);
  signal rx_addr_counter1_op_net_x1: std_logic_vector(14 downto 0);
  signal x8lsb_0_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_16_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_24_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_8_y_net: std_logic_vector(7 downto 0);

begin
  rx_addr_counter1_op_net_x1 <= addr;
  b6_y_net_x3 <= byte_order;
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  rfa_rssi_net_x1 <= rssi;
  msb_x0 <= msb_y_net_x0;
  mux_x0 <= mux_y_net_x0;

  bit_2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 15,
      y_width => 1
    )
    port map (
      x => rx_addr_counter1_op_net_x1,
      y(0) => bit_2_y_net
    );

  concat: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => register_q_net,
      in1 => convert_dout_net,
      y => concat_y_net
    );

  concat1: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => x8lsb_0_y_net,
      in1 => x8lsb_8_y_net,
      in2 => x8lsb_16_y_net,
      in3 => x8lsb_24_y_net,
      y => concat1_y_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din => reinterpret1_output_port_net,
      en => "1",
      dout => convert_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => bit_2_y_net,
      op(0) => inverter_op_net
    );

  msb: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 14,
      x_width => 15,
      y_width => 12
    )
    port map (
      x => rx_addr_counter1_op_net_x1,
      y => msb_y_net_x0
    );

  mux: entity work.mux_c83fe79b0f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => concat_y_net,
      d1 => concat1_y_net,
      sel(0) => b6_y_net_x3,
      y => mux_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => convert_dout_net,
      en(0) => inverter_op_net,
      rst => "0",
      q => register_q_net
    );

  reinterpret1: entity work.reinterpret_7093fd32f4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rfa_rssi_net_x1,
      output_port => reinterpret1_output_port_net
    );

  x8lsb_0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat_y_net,
      y => x8lsb_0_y_net
    );

  x8lsb_16: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat_y_net,
      y => x8lsb_16_y_net
    );

  x8lsb_24: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat_y_net,
      y => x8lsb_24_y_net
    );

  x8lsb_8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => concat_y_net,
      y => x8lsb_8_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Rx Buffers"

entity rfa_rx_buffers_entity_d51ed2909f is
  port (
    addr: in std_logic_vector(14 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    i_q: in std_logic_vector(31 downto 0); 
    memory_mapped_registers: in std_logic; 
    rssi: in std_logic_vector(9 downto 0); 
    we: in std_logic; 
    logical_x0: out std_logic; 
    q_buffer: out std_logic_vector(31 downto 0); 
    rssi_buffer: out std_logic_vector(11 downto 0); 
    rssi_buffer_x0: out std_logic_vector(31 downto 0)
  );
end rfa_rx_buffers_entity_d51ed2909f;

architecture structural of rfa_rx_buffers_entity_d51ed2909f is
  signal b0_y_net_x3: std_logic;
  signal b6_y_net_x4: std_logic;
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal concat5_y_net_x1: std_logic_vector(31 downto 0);
  signal convert1_dout_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal msb_y_net_x1: std_logic_vector(11 downto 0);
  signal mux_y_net_x2: std_logic_vector(31 downto 0);
  signal mux_y_net_x3: std_logic_vector(31 downto 0);
  signal register_q_net_x3: std_logic;
  signal rfa_rssi_net_x2: std_logic_vector(9 downto 0);
  signal rx_addr_counter1_op_net_x2: std_logic_vector(14 downto 0);

begin
  rx_addr_counter1_op_net_x2 <= addr;
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  b0_y_net_x3 <= en;
  concat5_y_net_x1 <= i_q;
  b6_y_net_x4 <= memory_mapped_registers;
  rfa_rssi_net_x2 <= rssi;
  register_q_net_x3 <= we;
  logical_x0 <= logical_y_net_x0;
  q_buffer <= mux_y_net_x2;
  rssi_buffer <= msb_y_net_x1;
  rssi_buffer_x0 <= mux_y_net_x3;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => b0_y_net_x3,
      en => "1",
      dout(0) => convert1_dout_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x3,
      d1(0) => convert1_dout_net,
      y(0) => logical_y_net_x0
    );

  q_buffer_e0767af1f2: entity work.q_buffer_entity_e0767af1f2
    port map (
      byte_order => b6_y_net_x4,
      i_q_32b => concat5_y_net_x1,
      mux_x0 => mux_y_net_x2
    );

  rssi_buffer_5a40e7be92: entity work.rssi_buffer_entity_5a40e7be92
    port map (
      addr => rx_addr_counter1_op_net_x2,
      byte_order => b6_y_net_x4,
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      rssi => rfa_rssi_net_x2,
      msb_x0 => msb_y_net_x1,
      mux_x0 => mux_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Inputs/ADC I"

entity adc_i_entity_1770529c7b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfa_adc_i: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_i: in std_logic_vector(11 downto 0); 
    adc_i: out std_logic_vector(11 downto 0)
  );
end adc_i_entity_1770529c7b;

architecture structural of adc_i_entity_1770529c7b is
  signal b4_y_net_x2: std_logic;
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfa_adc_i_net_x0: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_i_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  b4_y_net_x2 <= mgcagc_agcdco_sel;
  rfa_adc_i_net_x0 <= rfa_adc_i;
  rfa_agc_filt_i_net_x0 <= rfa_agc_filt_i;
  adc_i <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfa_adc_i_net_x0,
      d1 => rfa_agc_filt_i_net_x0,
      sel(0) => b4_y_net_x2,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Inputs/ADC Q"

entity adc_q_entity_90a2ab4043 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfa_adc_q: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_q: in std_logic_vector(11 downto 0); 
    adc_q: out std_logic_vector(11 downto 0)
  );
end adc_q_entity_90a2ab4043;

architecture structural of adc_q_entity_90a2ab4043 is
  signal b4_y_net_x3: std_logic;
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfa_adc_q_net_x0: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_q_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  b4_y_net_x3 <= mgcagc_agcdco_sel;
  rfa_adc_q_net_x0 <= rfa_adc_q;
  rfa_agc_filt_q_net_x0 <= rfa_agc_filt_q;
  adc_q <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfa_adc_q_net_x0,
      d1 => rfa_agc_filt_q_net_x0,
      sel(0) => b4_y_net_x3,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Inputs/Concatenates_1"

entity concatenates_1_entity_e34be0c8be is
  port (
    adc_i: in std_logic_vector(11 downto 0); 
    adc_q: in std_logic_vector(11 downto 0); 
    x32b: out std_logic_vector(31 downto 0)
  );
end concatenates_1_entity_e34be0c8be;

architecture structural of concatenates_1_entity_e34be0c8be is
  signal concat1_y_net: std_logic_vector(13 downto 0);
  signal concat2_y_net: std_logic_vector(13 downto 0);
  signal concat3_y_net: std_logic_vector(15 downto 0);
  signal concat4_y_net: std_logic_vector(15 downto 0);
  signal concat5_y_net_x2: std_logic_vector(31 downto 0);
  signal register1_q_net_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x3: std_logic_vector(11 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(11 downto 0);
  signal zero1_op_net: std_logic_vector(1 downto 0);
  signal zero2_op_net: std_logic_vector(1 downto 0);
  signal zero3_op_net: std_logic_vector(1 downto 0);
  signal zero_op_net: std_logic_vector(1 downto 0);

begin
  register1_q_net_x2 <= adc_i;
  register1_q_net_x3 <= adc_q;
  x32b <= concat5_y_net_x2;

  concat1: entity work.concat_06ee58da9a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => zero_op_net,
      in1 => reinterpret1_output_port_net,
      y => concat1_y_net
    );

  concat2: entity work.concat_06ee58da9a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => zero1_op_net,
      in1 => reinterpret_output_port_net,
      y => concat2_y_net
    );

  concat3: entity work.concat_a375668385
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat2_y_net,
      in1 => zero2_op_net,
      y => concat3_y_net
    );

  concat4: entity work.concat_a375668385
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat1_y_net,
      in1 => zero3_op_net,
      y => concat4_y_net
    );

  concat5: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat3_y_net,
      in1 => concat4_y_net,
      y => concat5_y_net_x2
    );

  reinterpret: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register1_q_net_x2,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_a106f99236
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register1_q_net_x3,
      output_port => reinterpret1_output_port_net
    );

  zero: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero_op_net
    );

  zero1: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero1_op_net
    );

  zero2: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero2_op_net
    );

  zero3: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Inputs"

entity rfa_inputs_entity_3bd8d7aeb1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfa_adc_i: in std_logic_vector(11 downto 0); 
    rfa_adc_q: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfa_agc_filt_q: in std_logic_vector(11 downto 0); 
    i_q: out std_logic_vector(31 downto 0)
  );
end rfa_inputs_entity_3bd8d7aeb1;

architecture structural of rfa_inputs_entity_3bd8d7aeb1 is
  signal b4_y_net_x4: std_logic;
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal concat5_y_net_x3: std_logic_vector(31 downto 0);
  signal register1_q_net_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x3: std_logic_vector(11 downto 0);
  signal rfa_adc_i_net_x1: std_logic_vector(11 downto 0);
  signal rfa_adc_q_net_x1: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_i_net_x1: std_logic_vector(11 downto 0);
  signal rfa_agc_filt_q_net_x1: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  b4_y_net_x4 <= mgcagc_agcdco_sel;
  rfa_adc_i_net_x1 <= rfa_adc_i;
  rfa_adc_q_net_x1 <= rfa_adc_q;
  rfa_agc_filt_i_net_x1 <= rfa_agc_filt_i;
  rfa_agc_filt_q_net_x1 <= rfa_agc_filt_q;
  i_q <= concat5_y_net_x3;

  adc_i_1770529c7b: entity work.adc_i_entity_1770529c7b
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      mgcagc_agcdco_sel => b4_y_net_x4,
      rfa_adc_i => rfa_adc_i_net_x1,
      rfa_agc_filt_i => rfa_agc_filt_i_net_x1,
      adc_i => register1_q_net_x2
    );

  adc_q_90a2ab4043: entity work.adc_q_entity_90a2ab4043
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      mgcagc_agcdco_sel => b4_y_net_x4,
      rfa_adc_q => rfa_adc_q_net_x1,
      rfa_agc_filt_q => rfa_agc_filt_q_net_x1,
      adc_q => register1_q_net_x3
    );

  concatenates_1_e34be0c8be: entity work.concatenates_1_entity_e34be0c8be
    port map (
      adc_i => register1_q_net_x2,
      adc_q => register1_q_net_x3,
      x32b => concat5_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Outputs"

entity rfa_outputs_entity_e067535922 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x32b: in std_logic_vector(31 downto 0); 
    register1_x0: out std_logic_vector(11 downto 0); 
    register_x1: out std_logic_vector(11 downto 0)
  );
end rfa_outputs_entity_e067535922;

architecture structural of rfa_outputs_entity_e067535922 is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal convert1_dout_net: std_logic_vector(11 downto 0);
  signal convert_dout_net: std_logic_vector(11 downto 0);
  signal mux_y_net_x0: std_logic_vector(31 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal register_q_net_x0: std_logic_vector(11 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(15 downto 0);
  signal x16lsb_y_net: std_logic_vector(15 downto 0);
  signal x16msb_y_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  mux_y_net_x0 <= x32b;
  register1_x0 <= register1_q_net_x0;
  register_x1 <= register_q_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => reinterpret_output_port_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => reinterpret1_output_port_net,
      en => "1",
      dout => convert1_dout_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => convert1_dout_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => convert_dout_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => x16msb_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => x16lsb_y_net,
      output_port => reinterpret1_output_port_net
    );

  x16lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => mux_y_net_x0,
      y => x16lsb_y_net
    );

  x16msb: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => mux_y_net_x0,
      y => x16msb_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFA Tx Buffers"

entity rfa_tx_buffers_entity_13355caa4d is
  port (
    byte_order: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    shared_memory: in std_logic_vector(31 downto 0); 
    constant1_x0: out std_logic; 
    constant2_x0: out std_logic_vector(31 downto 0); 
    iq_32b: out std_logic_vector(31 downto 0)
  );
end rfa_tx_buffers_entity_13355caa4d;

architecture structural of rfa_tx_buffers_entity_13355caa4d is
  signal b0_y_net_x4: std_logic;
  signal b6_y_net_x5: std_logic;
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal concat1_y_net: std_logic_vector(31 downto 0);
  signal constant1_op_net_x0: std_logic;
  signal constant2_op_net_x0: std_logic_vector(31 downto 0);
  signal constant_op_net: std_logic_vector(31 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal inverter_op_net_x0: std_logic;
  signal inverter_op_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net_x1: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x0: std_logic_vector(31 downto 0);
  signal x8lsb_0_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_16_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_24_y_net: std_logic_vector(7 downto 0);
  signal x8lsb_8_y_net: std_logic_vector(7 downto 0);

begin
  b6_y_net_x5 <= byte_order;
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  b0_y_net_x4 <= en;
  inverter_op_net_x1 <= rst;
  shared_memory_data_out_net_x0 <= shared_memory;
  constant1_x0 <= constant1_op_net_x0;
  constant2_x0 <= constant2_op_net_x0;
  iq_32b <= mux_y_net_x1;

  concat1: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => x8lsb_0_y_net,
      in1 => x8lsb_8_y_net,
      in2 => x8lsb_16_y_net,
      in3 => x8lsb_24_y_net,
      y => concat1_y_net
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant2: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net_x0
    );

  constant_x0: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din(0) => b0_y_net_x4,
      en => "1",
      dout(0) => convert1_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      ip(0) => convert1_dout_net,
      op(0) => inverter_op_net_x0
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net_x1,
      d1(0) => inverter_op_net_x0,
      y(0) => logical_y_net
    );

  mux: entity work.mux_286b77e019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => mux1_y_net,
      d1 => constant_op_net,
      sel(0) => convert_dout_net,
      y => mux_y_net_x1
    );

  mux1: entity work.mux_c83fe79b0f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => shared_memory_data_out_net_x0,
      d1 => concat1_y_net,
      sel(0) => b6_y_net_x5,
      y => mux1_y_net
    );

  x8lsb_0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => shared_memory_data_out_net_x0,
      y => x8lsb_0_y_net
    );

  x8lsb_16: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => shared_memory_data_out_net_x0,
      y => x8lsb_16_y_net
    );

  x8lsb_24: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => shared_memory_data_out_net_x0,
      y => x8lsb_24_y_net
    );

  x8lsb_8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => shared_memory_data_out_net_x0,
      y => x8lsb_8_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFB Inputs/ADC I"

entity adc_i_entity_75d757da66 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfb_adc_i: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_i: in std_logic_vector(11 downto 0); 
    adc_i: out std_logic_vector(11 downto 0)
  );
end adc_i_entity_75d757da66;

architecture structural of adc_i_entity_75d757da66 is
  signal b4_y_net_x5: std_logic;
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfb_adc_i_net_x0: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_i_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  b4_y_net_x5 <= mgcagc_agcdco_sel;
  rfb_adc_i_net_x0 <= rfb_adc_i;
  rfb_agc_filt_i_net_x0 <= rfb_agc_filt_i;
  adc_i <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfb_adc_i_net_x0,
      d1 => rfb_agc_filt_i_net_x0,
      sel(0) => b4_y_net_x5,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFB Inputs/ADC Q"

entity adc_q_entity_739fe52bf5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfb_adc_q: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_q: in std_logic_vector(11 downto 0); 
    adc_q: out std_logic_vector(11 downto 0)
  );
end adc_q_entity_739fe52bf5;

architecture structural of adc_q_entity_739fe52bf5 is
  signal b4_y_net_x6: std_logic;
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfb_adc_q_net_x0: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_q_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  b4_y_net_x6 <= mgcagc_agcdco_sel;
  rfb_adc_q_net_x0 <= rfb_adc_q;
  rfb_agc_filt_q_net_x0 <= rfb_agc_filt_q;
  adc_q <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfb_adc_q_net_x0,
      d1 => rfb_agc_filt_q_net_x0,
      sel(0) => b4_y_net_x6,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFB Inputs"

entity rfb_inputs_entity_c6b862b790 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfb_adc_i: in std_logic_vector(11 downto 0); 
    rfb_adc_q: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfb_agc_filt_q: in std_logic_vector(11 downto 0); 
    i_q: out std_logic_vector(31 downto 0)
  );
end rfb_inputs_entity_c6b862b790;

architecture structural of rfb_inputs_entity_c6b862b790 is
  signal b4_y_net_x7: std_logic;
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat5_y_net_x3: std_logic_vector(31 downto 0);
  signal register1_q_net_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x3: std_logic_vector(11 downto 0);
  signal rfb_adc_i_net_x1: std_logic_vector(11 downto 0);
  signal rfb_adc_q_net_x1: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_i_net_x1: std_logic_vector(11 downto 0);
  signal rfb_agc_filt_q_net_x1: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  b4_y_net_x7 <= mgcagc_agcdco_sel;
  rfb_adc_i_net_x1 <= rfb_adc_i;
  rfb_adc_q_net_x1 <= rfb_adc_q;
  rfb_agc_filt_i_net_x1 <= rfb_agc_filt_i;
  rfb_agc_filt_q_net_x1 <= rfb_agc_filt_q;
  i_q <= concat5_y_net_x3;

  adc_i_75d757da66: entity work.adc_i_entity_75d757da66
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      mgcagc_agcdco_sel => b4_y_net_x7,
      rfb_adc_i => rfb_adc_i_net_x1,
      rfb_agc_filt_i => rfb_agc_filt_i_net_x1,
      adc_i => register1_q_net_x2
    );

  adc_q_739fe52bf5: entity work.adc_q_entity_739fe52bf5
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      mgcagc_agcdco_sel => b4_y_net_x7,
      rfb_adc_q => rfb_adc_q_net_x1,
      rfb_agc_filt_q => rfb_agc_filt_q_net_x1,
      adc_q => register1_q_net_x3
    );

  concatenates_1_60beafdeec: entity work.concatenates_1_entity_e34be0c8be
    port map (
      adc_i => register1_q_net_x2,
      adc_q => register1_q_net_x3,
      x32b => concat5_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFC Inputs/ADC I"

entity adc_i_entity_4881e00b9f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfc_adc_i: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_i: in std_logic_vector(11 downto 0); 
    adc_i: out std_logic_vector(11 downto 0)
  );
end adc_i_entity_4881e00b9f;

architecture structural of adc_i_entity_4881e00b9f is
  signal b4_y_net_x8: std_logic;
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfc_adc_i_net_x0: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_i_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  b4_y_net_x8 <= mgcagc_agcdco_sel;
  rfc_adc_i_net_x0 <= rfc_adc_i;
  rfc_agc_filt_i_net_x0 <= rfc_agc_filt_i;
  adc_i <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfc_adc_i_net_x0,
      d1 => rfc_agc_filt_i_net_x0,
      sel(0) => b4_y_net_x8,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFC Inputs/ADC Q"

entity adc_q_entity_ff04fc6c0d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfc_adc_q: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_q: in std_logic_vector(11 downto 0); 
    adc_q: out std_logic_vector(11 downto 0)
  );
end adc_q_entity_ff04fc6c0d;

architecture structural of adc_q_entity_ff04fc6c0d is
  signal b4_y_net_x9: std_logic;
  signal ce_1_sg_x22: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfc_adc_q_net_x0: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_q_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x22 <= ce_1;
  clk_1_sg_x22 <= clk_1;
  b4_y_net_x9 <= mgcagc_agcdco_sel;
  rfc_adc_q_net_x0 <= rfc_adc_q;
  rfc_agc_filt_q_net_x0 <= rfc_agc_filt_q;
  adc_q <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfc_adc_q_net_x0,
      d1 => rfc_agc_filt_q_net_x0,
      sel(0) => b4_y_net_x9,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFC Inputs"

entity rfc_inputs_entity_db2b81f1d0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfc_adc_i: in std_logic_vector(11 downto 0); 
    rfc_adc_q: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfc_agc_filt_q: in std_logic_vector(11 downto 0); 
    i_q: out std_logic_vector(31 downto 0)
  );
end rfc_inputs_entity_db2b81f1d0;

architecture structural of rfc_inputs_entity_db2b81f1d0 is
  signal b4_y_net_x10: std_logic;
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat5_y_net_x3: std_logic_vector(31 downto 0);
  signal register1_q_net_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x3: std_logic_vector(11 downto 0);
  signal rfc_adc_i_net_x1: std_logic_vector(11 downto 0);
  signal rfc_adc_q_net_x1: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_i_net_x1: std_logic_vector(11 downto 0);
  signal rfc_agc_filt_q_net_x1: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  b4_y_net_x10 <= mgcagc_agcdco_sel;
  rfc_adc_i_net_x1 <= rfc_adc_i;
  rfc_adc_q_net_x1 <= rfc_adc_q;
  rfc_agc_filt_i_net_x1 <= rfc_agc_filt_i;
  rfc_agc_filt_q_net_x1 <= rfc_agc_filt_q;
  i_q <= concat5_y_net_x3;

  adc_i_4881e00b9f: entity work.adc_i_entity_4881e00b9f
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      mgcagc_agcdco_sel => b4_y_net_x10,
      rfc_adc_i => rfc_adc_i_net_x1,
      rfc_agc_filt_i => rfc_agc_filt_i_net_x1,
      adc_i => register1_q_net_x2
    );

  adc_q_ff04fc6c0d: entity work.adc_q_entity_ff04fc6c0d
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      mgcagc_agcdco_sel => b4_y_net_x10,
      rfc_adc_q => rfc_adc_q_net_x1,
      rfc_agc_filt_q => rfc_agc_filt_q_net_x1,
      adc_q => register1_q_net_x3
    );

  concatenates_1_c2a6896215: entity work.concatenates_1_entity_e34be0c8be
    port map (
      adc_i => register1_q_net_x2,
      adc_q => register1_q_net_x3,
      x32b => concat5_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFD Inputs/ADC I"

entity adc_i_entity_358054787c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfd_adc_i: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_i: in std_logic_vector(11 downto 0); 
    adc_i: out std_logic_vector(11 downto 0)
  );
end adc_i_entity_358054787c;

architecture structural of adc_i_entity_358054787c is
  signal b4_y_net_x11: std_logic;
  signal ce_1_sg_x28: std_logic;
  signal clk_1_sg_x28: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfd_adc_i_net_x0: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_i_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x28 <= ce_1;
  clk_1_sg_x28 <= clk_1;
  b4_y_net_x11 <= mgcagc_agcdco_sel;
  rfd_adc_i_net_x0 <= rfd_adc_i;
  rfd_agc_filt_i_net_x0 <= rfd_agc_filt_i;
  adc_i <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfd_adc_i_net_x0,
      d1 => rfd_agc_filt_i_net_x0,
      sel(0) => b4_y_net_x11,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFD Inputs/ADC Q"

entity adc_q_entity_50dc1ef592 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfd_adc_q: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_q: in std_logic_vector(11 downto 0); 
    adc_q: out std_logic_vector(11 downto 0)
  );
end adc_q_entity_50dc1ef592;

architecture structural of adc_q_entity_50dc1ef592 is
  signal b4_y_net_x12: std_logic;
  signal ce_1_sg_x29: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal mux3_y_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(11 downto 0);
  signal rfd_adc_q_net_x0: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_q_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x29 <= ce_1;
  clk_1_sg_x29 <= clk_1;
  b4_y_net_x12 <= mgcagc_agcdco_sel;
  rfd_adc_q_net_x0 <= rfd_adc_q;
  rfd_agc_filt_q_net_x0 <= rfd_agc_filt_q;
  adc_q <= register1_q_net_x0;

  mux3: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rfd_adc_q_net_x0,
      d1 => rfd_agc_filt_q_net_x0,
      sel(0) => b4_y_net_x12,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      d => mux3_y_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RFD Inputs"

entity rfd_inputs_entity_25a748319c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mgcagc_agcdco_sel: in std_logic; 
    rfd_adc_i: in std_logic_vector(11 downto 0); 
    rfd_adc_q: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_i: in std_logic_vector(11 downto 0); 
    rfd_agc_filt_q: in std_logic_vector(11 downto 0); 
    i_q: out std_logic_vector(31 downto 0)
  );
end rfd_inputs_entity_25a748319c;

architecture structural of rfd_inputs_entity_25a748319c is
  signal b4_y_net_x13: std_logic;
  signal ce_1_sg_x30: std_logic;
  signal clk_1_sg_x30: std_logic;
  signal concat5_y_net_x3: std_logic_vector(31 downto 0);
  signal register1_q_net_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x3: std_logic_vector(11 downto 0);
  signal rfd_adc_i_net_x1: std_logic_vector(11 downto 0);
  signal rfd_adc_q_net_x1: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_i_net_x1: std_logic_vector(11 downto 0);
  signal rfd_agc_filt_q_net_x1: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x30 <= ce_1;
  clk_1_sg_x30 <= clk_1;
  b4_y_net_x13 <= mgcagc_agcdco_sel;
  rfd_adc_i_net_x1 <= rfd_adc_i;
  rfd_adc_q_net_x1 <= rfd_adc_q;
  rfd_agc_filt_i_net_x1 <= rfd_agc_filt_i;
  rfd_agc_filt_q_net_x1 <= rfd_agc_filt_q;
  i_q <= concat5_y_net_x3;

  adc_i_358054787c: entity work.adc_i_entity_358054787c
    port map (
      ce_1 => ce_1_sg_x30,
      clk_1 => clk_1_sg_x30,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfd_adc_i => rfd_adc_i_net_x1,
      rfd_agc_filt_i => rfd_agc_filt_i_net_x1,
      adc_i => register1_q_net_x2
    );

  adc_q_50dc1ef592: entity work.adc_q_entity_50dc1ef592
    port map (
      ce_1 => ce_1_sg_x30,
      clk_1 => clk_1_sg_x30,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfd_adc_q => rfd_adc_q_net_x1,
      rfd_agc_filt_q => rfd_agc_filt_q_net_x1,
      adc_q => register1_q_net_x3
    );

  concatenates_1_8e7690a425: entity work.concatenates_1_entity_e34be0c8be
    port map (
      adc_i => register1_q_net_x2,
      adc_q => register1_q_net_x3,
      x32b => concat5_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/RSSI Clock Gen"

entity rssi_clock_gen_entity_26ed11435f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rssi_clk_sel: in std_logic_vector(1 downto 0); 
    clk: out std_logic
  );
end rssi_clock_gen_entity_26ed11435f;

architecture structural of rssi_clock_gen_entity_26ed11435f is
  signal b8_7_y_net_x2: std_logic_vector(1 downto 0);
  signal ce_1_sg_x33: std_logic;
  signal clk_1_sg_x33: std_logic;
  signal mux_y_net_x0: std_logic;
  signal rssi_clock_generator_op_net: std_logic_vector(2 downto 0);
  signal x1lsb_0_y_net: std_logic;
  signal x1lsb_1_y_net: std_logic;
  signal x1lsb_2_y_net: std_logic;

begin
  ce_1_sg_x33 <= ce_1;
  clk_1_sg_x33 <= clk_1;
  b8_7_y_net_x2 <= rssi_clk_sel;
  clk <= mux_y_net_x0;

  mux: entity work.mux_a3706fc7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => x1lsb_0_y_net,
      d1(0) => x1lsb_1_y_net,
      d2(0) => x1lsb_2_y_net,
      sel => b8_7_y_net_x2,
      y(0) => mux_y_net_x0
    );

  rssi_clock_generator: entity work.xlcounter_free_w3_warplab_buffers
    generic map (
      core_name0 => "cntr_11_0_bcc28bfecf25caff",
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      en => "1",
      rst => "0",
      op => rssi_clock_generator_op_net
    );

  x1lsb_0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 3,
      y_width => 1
    )
    port map (
      x => rssi_clock_generator_op_net,
      y(0) => x1lsb_0_y_net
    );

  x1lsb_1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 3,
      y_width => 1
    )
    port map (
      x => rssi_clock_generator_op_net,
      y(0) => x1lsb_1_y_net
    );

  x1lsb_2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 3,
      y_width => 1
    )
    port map (
      x => rssi_clock_generator_op_net,
      y(0) => x1lsb_2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Rx Control/S-R Latch1"

entity s_r_latch1_entity_1d39f54d3c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    r: in std_logic; 
    s: in std_logic; 
    q: out std_logic
  );
end s_r_latch1_entity_1d39f54d3c;

architecture structural of s_r_latch1_entity_1d39f54d3c is
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x7: std_logic;
  signal relational1_op_net_x0: std_logic;
  signal zero3_op_net: std_logic;

begin
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  relational1_op_net_x0 <= r;
  logical_y_net_x1 <= s;
  q <= register_q_net_x7;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => relational1_op_net_x0,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => logical_y_net_x1,
      en => "1",
      dout(0) => convert1_dout_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      d(0) => zero3_op_net,
      en(0) => convert1_dout_net,
      rst(0) => convert_dout_net,
      q(0) => register_q_net_x7
    );

  zero3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => zero3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Rx Control"

entity rx_control_entity_eaab42d120 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rxlength: in std_logic_vector(23 downto 0); 
    start: in std_logic; 
    wraddr: out std_logic_vector(14 downto 0); 
    wren: out std_logic
  );
end rx_control_entity_eaab42d120;

architecture structural of rx_control_entity_eaab42d120 is
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;
  signal from_register6_data_out_net_x0: std_logic_vector(23 downto 0);
  signal inverter1_op_net: std_logic;
  signal logical_y_net_x2: std_logic;
  signal register_q_net_x8: std_logic;
  signal relational1_op_net_x0: std_logic;
  signal rx_addr_counter1_op_net_x9: std_logic_vector(14 downto 0);

begin
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  from_register6_data_out_net_x0 <= rxlength;
  logical_y_net_x2 <= start;
  wraddr <= rx_addr_counter1_op_net_x9;
  wren <= register_q_net_x8;

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      ip(0) => register_q_net_x8,
      op(0) => inverter1_op_net
    );

  relational1: entity work.relational_828d962eb0
    port map (
      a => rx_addr_counter1_op_net_x9,
      b => from_register6_data_out_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

  rx_addr_counter1: entity work.xlcounter_free_w3_warplab_buffers
    generic map (
      core_name0 => "cntr_11_0_d5912692bc2e79ac",
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      en(0) => register_q_net_x8,
      rst(0) => inverter1_op_net,
      op => rx_addr_counter1_op_net_x9
    );

  s_r_latch1_1d39f54d3c: entity work.s_r_latch1_entity_1d39f54d3c
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      r => relational1_op_net_x0,
      s => logical_y_net_x2,
      q => register_q_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Tx Control/Posedge2"

entity posedge2_entity_31b02df6d2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end posedge2_entity_31b02df6d2;

architecture structural of posedge2_entity_31b02df6d2 is
  signal ce_1_sg_x36: std_logic;
  signal clk_1_sg_x36: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x36 <= ce_1;
  clk_1_sg_x36 <= clk_1;
  convert1_dout_net_x0 <= d;
  q <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      ip(0) => convert1_dout_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert1_dout_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Tx Control/S-R Latch"

entity s_r_latch_entity_fe31cfa5c4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    r: in std_logic; 
    s: in std_logic; 
    q: out std_logic
  );
end s_r_latch_entity_fe31cfa5c4;

architecture structural of s_r_latch_entity_fe31cfa5c4 is
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert_dout_net: std_logic;
  signal register_q_net_x4: std_logic;
  signal transmisson_mode_selector_y_net_x0: std_logic;
  signal zero3_op_net: std_logic;

begin
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  transmisson_mode_selector_y_net_x0 <= r;
  convert1_dout_net_x1 <= s;
  q <= register_q_net_x4;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => transmisson_mode_selector_y_net_x0,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => convert1_dout_net_x1,
      en => "1",
      dout(0) => convert1_dout_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      d(0) => zero3_op_net,
      en(0) => convert1_dout_net,
      rst(0) => convert_dout_net,
      q(0) => register_q_net_x4
    );

  zero3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => zero3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers/Tx Control"

entity tx_control_entity_cd1d5466f9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    continuoustx: in std_logic; 
    starttx: in std_logic; 
    stoptx: in std_logic; 
    txdelay: in std_logic_vector(31 downto 0); 
    txlength: in std_logic_vector(23 downto 0); 
    addr: out std_logic_vector(14 downto 0); 
    tx_running: out std_logic; 
    vout: out std_logic
  );
end tx_control_entity_cd1d5466f9;

architecture structural of tx_control_entity_cd1d5466f9 is
  signal b2_y_net_x4: std_logic;
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert2_dout_net: std_logic;
  signal from_register5_data_out_net_x0: std_logic_vector(23 downto 0);
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical2_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal register_q_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal transmisson_mode_selector_y_net_x0: std_logic;
  signal tx_addr_counter_op_net_x0: std_logic_vector(14 downto 0);
  signal tx_delay_counter_op_net: std_logic_vector(14 downto 0);
  signal txdelay_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  b2_y_net_x4 <= continuoustx;
  logical_y_net_x3 <= starttx;
  logical_y_net_x4 <= stoptx;
  txdelay_data_out_net_x0 <= txdelay;
  from_register5_data_out_net_x0 <= txlength;
  addr <= tx_addr_counter_op_net_x0;
  tx_running <= register_q_net_x5;
  vout <= logical1_y_net_x0;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      din(0) => logical_y_net_x3,
      en => "1",
      dout(0) => convert1_dout_net_x1
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      din(0) => logical_y_net_x4,
      en => "1",
      dout(0) => convert2_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      ip(0) => relational1_op_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x5,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x5,
      d1(0) => relational1_op_net,
      y(0) => logical1_y_net_x0
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => transmisson_mode_selector_y_net_x0,
      d1(0) => logical_y_net_x2,
      y(0) => logical2_y_net
    );

  posedge2_31b02df6d2: entity work.posedge2_entity_31b02df6d2
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      d => convert1_dout_net_x1,
      q => logical_y_net_x2
    );

  relational: entity work.relational_b9ef874a07
    port map (
      a => from_register5_data_out_net_x0,
      b => tx_addr_counter_op_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f3a4ef3712
    port map (
      a => tx_delay_counter_op_net,
      b => txdelay_data_out_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  s_r_latch_fe31cfa5c4: entity work.s_r_latch_entity_fe31cfa5c4
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      r => transmisson_mode_selector_y_net_x0,
      s => convert1_dout_net_x1,
      q => register_q_net_x5
    );

  transmisson_mode_selector: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => convert2_dout_net,
      sel(0) => b2_y_net_x4,
      y(0) => transmisson_mode_selector_y_net_x0
    );

  tx_addr_counter: entity work.xlcounter_free_w3_warplab_buffers
    generic map (
      core_name0 => "cntr_11_0_d5912692bc2e79ac",
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => logical2_y_net,
      op => tx_addr_counter_op_net_x0
    );

  tx_delay_counter: entity work.xlcounter_free_w3_warplab_buffers
    generic map (
      core_name0 => "cntr_11_0_d5912692bc2e79ac",
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical2_y_net,
      op => tx_delay_counter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_buffers"

entity w3_warplab_buffers is
  port (
    agc_done: in std_logic; 
    axi_aresetn: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_out: in std_logic_vector(31 downto 0); 
    data_out_x0: in std_logic_vector(31 downto 0); 
    data_out_x1: in std_logic_vector(1 downto 0); 
    data_out_x10: in std_logic_vector(31 downto 0); 
    data_out_x11: in std_logic_vector(31 downto 0); 
    data_out_x12: in std_logic_vector(31 downto 0); 
    data_out_x13: in std_logic_vector(31 downto 0); 
    data_out_x14: in std_logic_vector(31 downto 0); 
    data_out_x15: in std_logic_vector(31 downto 0); 
    data_out_x16: in std_logic_vector(31 downto 0); 
    data_out_x17: in std_logic_vector(31 downto 0); 
    data_out_x18: in std_logic_vector(31 downto 0); 
    data_out_x19: in std_logic_vector(31 downto 0); 
    data_out_x2: in std_logic_vector(31 downto 0); 
    data_out_x20: in std_logic_vector(23 downto 0); 
    data_out_x21: in std_logic_vector(23 downto 0); 
    data_out_x22: in std_logic_vector(31 downto 0); 
    data_out_x25: in std_logic_vector(31 downto 0); 
    data_out_x28: in std_logic_vector(31 downto 0); 
    data_out_x3: in std_logic_vector(31 downto 0); 
    data_out_x31: in std_logic_vector(31 downto 0); 
    data_out_x34: in std_logic_vector(31 downto 0); 
    data_out_x4: in std_logic_vector(31 downto 0); 
    data_out_x5: in std_logic_vector(31 downto 0); 
    data_out_x6: in std_logic_vector(31 downto 0); 
    data_out_x7: in std_logic_vector(31 downto 0); 
    data_out_x8: in std_logic_vector(31 downto 0); 
    data_out_x9: in std_logic_vector(31 downto 0); 
    design_ver: in std_logic_vector(31 downto 0); 
    dout: in std_logic_vector(31 downto 0); 
    dout_x0: in std_logic_vector(31 downto 0); 
    dout_x1: in std_logic_vector(31 downto 0); 
    dout_x2: in std_logic_vector(31 downto 0); 
    dout_x3: in std_logic_vector(23 downto 0); 
    dout_x4: in std_logic_vector(23 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
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
    addr: out std_logic_vector(14 downto 0); 
    addr_x0: out std_logic_vector(11 downto 0); 
    addr_x1: out std_logic_vector(11 downto 0); 
    addr_x10: out std_logic_vector(14 downto 0); 
    addr_x11: out std_logic_vector(14 downto 0); 
    addr_x12: out std_logic_vector(11 downto 0); 
    addr_x13: out std_logic_vector(14 downto 0); 
    addr_x14: out std_logic_vector(14 downto 0); 
    addr_x15: out std_logic_vector(11 downto 0); 
    addr_x16: out std_logic_vector(14 downto 0); 
    addr_x17: out std_logic_vector(14 downto 0); 
    addr_x18: out std_logic_vector(11 downto 0); 
    addr_x19: out std_logic_vector(14 downto 0); 
    addr_x2: out std_logic_vector(14 downto 0); 
    addr_x20: out std_logic_vector(14 downto 0); 
    addr_x21: out std_logic_vector(11 downto 0); 
    addr_x22: out std_logic_vector(14 downto 0); 
    addr_x3: out std_logic_vector(14 downto 0); 
    addr_x4: out std_logic_vector(14 downto 0); 
    addr_x5: out std_logic_vector(11 downto 0); 
    addr_x6: out std_logic_vector(14 downto 0); 
    addr_x7: out std_logic_vector(14 downto 0); 
    addr_x8: out std_logic_vector(11 downto 0); 
    addr_x9: out std_logic_vector(14 downto 0); 
    capture_running: out std_logic; 
    data_in: out std_logic_vector(31 downto 0); 
    data_in_x0: out std_logic_vector(31 downto 0); 
    data_in_x1: out std_logic_vector(31 downto 0); 
    data_in_x10: out std_logic_vector(31 downto 0); 
    data_in_x11: out std_logic_vector(31 downto 0); 
    data_in_x12: out std_logic_vector(31 downto 0); 
    data_in_x13: out std_logic_vector(31 downto 0); 
    data_in_x14: out std_logic_vector(31 downto 0); 
    data_in_x15: out std_logic_vector(23 downto 0); 
    data_in_x16: out std_logic_vector(23 downto 0); 
    data_in_x17: out std_logic_vector(31 downto 0); 
    data_in_x18: out std_logic_vector(31 downto 0); 
    data_in_x19: out std_logic_vector(31 downto 0); 
    data_in_x2: out std_logic_vector(31 downto 0); 
    data_in_x20: out std_logic_vector(1 downto 0); 
    data_in_x21: out std_logic_vector(31 downto 0); 
    data_in_x22: out std_logic_vector(31 downto 0); 
    data_in_x23: out std_logic_vector(31 downto 0); 
    data_in_x24: out std_logic_vector(31 downto 0); 
    data_in_x25: out std_logic_vector(31 downto 0); 
    data_in_x26: out std_logic_vector(31 downto 0); 
    data_in_x27: out std_logic_vector(31 downto 0); 
    data_in_x28: out std_logic_vector(31 downto 0); 
    data_in_x29: out std_logic_vector(31 downto 0); 
    data_in_x3: out std_logic_vector(31 downto 0); 
    data_in_x30: out std_logic_vector(31 downto 0); 
    data_in_x31: out std_logic_vector(31 downto 0); 
    data_in_x32: out std_logic_vector(31 downto 0); 
    data_in_x33: out std_logic_vector(31 downto 0); 
    data_in_x34: out std_logic_vector(31 downto 0); 
    data_in_x4: out std_logic_vector(31 downto 0); 
    data_in_x5: out std_logic_vector(31 downto 0); 
    data_in_x6: out std_logic_vector(31 downto 0); 
    data_in_x7: out std_logic_vector(31 downto 0); 
    data_in_x8: out std_logic_vector(31 downto 0); 
    data_in_x9: out std_logic_vector(31 downto 0); 
    debug_agc_done: out std_logic; 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x10: out std_logic; 
    en_x11: out std_logic; 
    en_x12: out std_logic; 
    en_x13: out std_logic; 
    en_x14: out std_logic; 
    en_x15: out std_logic; 
    en_x16: out std_logic; 
    en_x17: out std_logic; 
    en_x18: out std_logic; 
    en_x19: out std_logic; 
    en_x2: out std_logic; 
    en_x20: out std_logic; 
    en_x21: out std_logic; 
    en_x22: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
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
    transmit_running: out std_logic; 
    we: out std_logic; 
    we_x0: out std_logic; 
    we_x1: out std_logic; 
    we_x10: out std_logic; 
    we_x11: out std_logic; 
    we_x12: out std_logic; 
    we_x13: out std_logic; 
    we_x14: out std_logic; 
    we_x15: out std_logic; 
    we_x16: out std_logic; 
    we_x17: out std_logic; 
    we_x18: out std_logic; 
    we_x19: out std_logic; 
    we_x2: out std_logic; 
    we_x20: out std_logic; 
    we_x21: out std_logic; 
    we_x22: out std_logic; 
    we_x3: out std_logic; 
    we_x4: out std_logic; 
    we_x5: out std_logic; 
    we_x6: out std_logic; 
    we_x7: out std_logic; 
    we_x8: out std_logic; 
    we_x9: out std_logic
  );
end w3_warplab_buffers;

architecture structural of w3_warplab_buffers is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "w3_warplab_buffers,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 1.00000000000,testbench=0,total_blocks=800,xilinx_arithmetic_relational_operator_block=3,xilinx_bit_slice_extractor_block=82,xilinx_bus_concatenator_block=40,xilinx_bus_multiplexer_block=26,xilinx_constant_block_block=40,xilinx_counter_block=4,xilinx_delay_block=5,xilinx_edk_core_block=1,xilinx_edk_processor_block=1,xilinx_gateway_in_block=49,xilinx_gateway_out_block=44,xilinx_inverter_block=17,xilinx_logical_block_block=17,xilinx_register_block=24,xilinx_shared_memory_based_from_register_block=12,xilinx_shared_memory_based_to_register_block=12,xilinx_shared_memory_random_access_memory_block=24,xilinx_system_generator_block=1,xilinx_type_converter_block=33,xilinx_type_reinterpreter_block=20,}";

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
  signal axi_aresetn_net: std_logic;
  signal b0_y_net_x3: std_logic;
  signal b0_y_net_x4: std_logic;
  signal b1_y_net_x3: std_logic;
  signal b1_y_net_x4: std_logic;
  signal b2_y_net_x4: std_logic;
  signal b2_y_net_x5: std_logic;
  signal b2_y_net_x6: std_logic;
  signal b3_y_net_x3: std_logic;
  signal b3_y_net_x5: std_logic;
  signal b3_y_net_x6: std_logic;
  signal b4_y_net_x13: std_logic;
  signal b6_y_net_x17: std_logic;
  signal b8_7_y_net_x2: std_logic_vector(1 downto 0);
  signal capture_running_net: std_logic;
  signal ce_1_sg_x39: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal concat5_y_net_x3: std_logic_vector(31 downto 0);
  signal concat5_y_net_x4: std_logic_vector(31 downto 0);
  signal concat5_y_net_x5: std_logic_vector(31 downto 0);
  signal concat5_y_net_x6: std_logic_vector(31 downto 0);
  signal convert2_dout_net_x0: std_logic;
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
  signal dout_net: std_logic_vector(31 downto 0);
  signal dout_x0_net: std_logic_vector(31 downto 0);
  signal dout_x1_net: std_logic_vector(31 downto 0);
  signal dout_x2_net: std_logic_vector(31 downto 0);
  signal dout_x3_net: std_logic_vector(23 downto 0);
  signal dout_x4_net: std_logic_vector(23 downto 0);
  signal en_x11_net: std_logic;
  signal en_x12_net: std_logic;
  signal en_x13_net: std_logic;
  signal en_x14_net: std_logic;
  signal en_x15_net: std_logic;
  signal en_x16_net: std_logic;
  signal en_x20_net: std_logic;
  signal en_x21_net: std_logic;
  signal en_x22_net: std_logic;
  signal inverter_op_net_x4: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x10: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x9: std_logic;
  signal memmap_shram_en_net_x1: std_logic;
  signal mux_y_net_x1: std_logic_vector(31 downto 0);
  signal mux_y_net_x12: std_logic_vector(31 downto 0);
  signal mux_y_net_x6: std_logic_vector(31 downto 0);
  signal mux_y_net_x9: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x1: std_logic;
  signal plb_clk_1_sg_x1: std_logic;
  signal register_q_net_x5: std_logic;
  signal register_q_net_x9: std_logic;
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
  signal stoptx_net: std_logic;
  signal transmit_running_net: std_logic;
  signal trigger_in_net: std_logic;
  signal tx_addr_counter_op_net_x1: std_logic_vector(14 downto 0);
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
  signal x1_y_net_x0: std_logic;

begin
  agc_done_net_x0 <= agc_done;
  axi_aresetn_net <= axi_aresetn;
  ce_1_sg_x39 <= ce_1;
  clk_1_sg_x39 <= clk_1;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  data_out_x1_net <= data_out_x1;
  data_out_x10_net <= data_out_x10;
  data_out_x11_net <= data_out_x11;
  data_out_x12_net <= data_out_x12;
  data_out_x13_net <= data_out_x13;
  data_out_x14_net <= data_out_x14;
  data_out_x15_net <= data_out_x15;
  data_out_x16_net <= data_out_x16;
  data_out_x17_net <= data_out_x17;
  data_out_x18_net <= data_out_x18;
  data_out_x19_net <= data_out_x19;
  data_out_x2_net <= data_out_x2;
  data_out_x20_net <= data_out_x20;
  data_out_x21_net <= data_out_x21;
  data_out_x22_net <= data_out_x22;
  data_out_x25_net <= data_out_x25;
  data_out_x28_net <= data_out_x28;
  data_out_x3_net <= data_out_x3;
  data_out_x31_net <= data_out_x31;
  data_out_x34_net <= data_out_x34;
  data_out_x4_net <= data_out_x4;
  data_out_x5_net <= data_out_x5;
  data_out_x6_net <= data_out_x6;
  data_out_x7_net <= data_out_x7;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  design_ver_net <= design_ver;
  dout_net <= dout;
  dout_x0_net <= dout_x0;
  dout_x1_net <= dout_x1;
  dout_x2_net <= dout_x2;
  dout_x3_net <= dout_x3;
  dout_x4_net <= dout_x4;
  plb_ce_1_sg_x1 <= plb_ce_1;
  plb_clk_1_sg_x1 <= plb_clk_1;
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
  addr <= addr_net;
  addr_x0 <= addr_x0_net;
  addr_x1 <= addr_x1_net;
  addr_x10 <= addr_x10_net;
  addr_x11 <= rx_addr_counter1_op_net_x10;
  addr_x12 <= addr_x12_net;
  addr_x13 <= tx_addr_counter_op_net_x1;
  addr_x14 <= rx_addr_counter1_op_net_x10;
  addr_x15 <= addr_x15_net;
  addr_x16 <= tx_addr_counter_op_net_x1;
  addr_x17 <= rx_addr_counter1_op_net_x10;
  addr_x18 <= addr_x18_net;
  addr_x19 <= tx_addr_counter_op_net_x1;
  addr_x2 <= addr_x2_net;
  addr_x20 <= rx_addr_counter1_op_net_x10;
  addr_x21 <= addr_x21_net;
  addr_x22 <= tx_addr_counter_op_net_x1;
  addr_x3 <= addr_x3_net;
  addr_x4 <= addr_x4_net;
  addr_x5 <= addr_x5_net;
  addr_x6 <= addr_x6_net;
  addr_x7 <= addr_x7_net;
  addr_x8 <= addr_x8_net;
  addr_x9 <= addr_x9_net;
  capture_running <= capture_running_net;
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x13 <= data_in_x13_net;
  data_in_x14 <= data_in_x14_net;
  data_in_x15 <= data_in_x15_net;
  data_in_x16 <= data_in_x16_net;
  data_in_x17 <= data_in_x17_net;
  data_in_x18 <= data_in_x18_net;
  data_in_x19 <= data_in_x19_net;
  data_in_x2 <= data_in_x2_net;
  data_in_x20 <= data_in_x20_net;
  data_in_x21 <= data_in_x21_net;
  data_in_x22 <= data_in_x22_net;
  data_in_x23 <= data_in_x23_net;
  data_in_x24 <= data_in_x24_net;
  data_in_x25 <= data_in_x25_net;
  data_in_x26 <= data_in_x26_net;
  data_in_x27 <= data_in_x27_net;
  data_in_x28 <= data_in_x28_net;
  data_in_x29 <= data_in_x29_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x30 <= data_in_x30_net;
  data_in_x31 <= data_in_x31_net;
  data_in_x32 <= data_in_x32_net;
  data_in_x33 <= data_in_x33_net;
  data_in_x34 <= data_in_x34_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  debug_agc_done <= agc_done_net_x0;
  en <= memmap_shram_en_net_x1;
  en_x0 <= memmap_shram_en_net_x1;
  en_x1 <= memmap_shram_en_net_x1;
  en_x10 <= memmap_shram_en_net_x1;
  en_x11 <= en_x11_net;
  en_x12 <= en_x12_net;
  en_x13 <= en_x13_net;
  en_x14 <= en_x14_net;
  en_x15 <= en_x15_net;
  en_x16 <= en_x16_net;
  en_x17 <= convert2_dout_net_x0;
  en_x18 <= convert2_dout_net_x0;
  en_x19 <= convert2_dout_net_x0;
  en_x2 <= memmap_shram_en_net_x1;
  en_x20 <= en_x20_net;
  en_x21 <= en_x21_net;
  en_x22 <= en_x22_net;
  en_x3 <= memmap_shram_en_net_x1;
  en_x4 <= memmap_shram_en_net_x1;
  en_x5 <= memmap_shram_en_net_x1;
  en_x6 <= memmap_shram_en_net_x1;
  en_x7 <= memmap_shram_en_net_x1;
  en_x8 <= memmap_shram_en_net_x1;
  en_x9 <= memmap_shram_en_net_x1;
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
  we <= we_net;
  we_x0 <= we_x0_net;
  we_x1 <= we_x1_net;
  we_x10 <= we_x10_net;
  we_x11 <= logical_y_net_x9;
  we_x12 <= logical_y_net_x9;
  we_x13 <= we_x13_net;
  we_x14 <= logical_y_net_x10;
  we_x15 <= logical_y_net_x10;
  we_x16 <= we_x16_net;
  we_x17 <= logical_y_net_x11;
  we_x18 <= logical_y_net_x11;
  we_x19 <= we_x19_net;
  we_x2 <= we_x2_net;
  we_x20 <= logical_y_net_x12;
  we_x21 <= logical_y_net_x12;
  we_x22 <= we_x22_net;
  we_x3 <= we_x3_net;
  we_x4 <= we_x4_net;
  we_x5 <= we_x5_net;
  we_x6 <= we_x6_net;
  we_x7 <= we_x7_net;
  we_x8 <= we_x8_net;
  we_x9 <= we_x9_net;

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      din(0) => logical_y_net_x0,
      en => "1",
      dout(0) => convert2_dout_net_x0
    );

  edk_processor_5c1302822d: entity work.edk_processor_entity_5c1302822d
    port map (
      axi_aresetn => axi_aresetn_net,
      from_register => data_out_net,
      from_register1 => data_out_x0_net,
      from_register2 => data_out_x1_net,
      from_register3 => data_out_x2_net,
      from_register4 => data_out_x3_net,
      from_register5 => data_out_x4_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
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
      shared_memory => data_out_x5_net,
      shared_memory1 => data_out_x6_net,
      shared_memory10 => data_out_x7_net,
      shared_memory11 => data_out_x8_net,
      shared_memory2 => data_out_x9_net,
      shared_memory3 => data_out_x10_net,
      shared_memory4 => data_out_x11_net,
      shared_memory5 => data_out_x12_net,
      shared_memory6 => data_out_x13_net,
      shared_memory7 => data_out_x14_net,
      shared_memory8 => data_out_x15_net,
      shared_memory9 => data_out_x16_net,
      to_register => dout_net,
      to_register1 => dout_x0_net,
      to_register2 => dout_x1_net,
      to_register3 => dout_x2_net,
      to_register4 => dout_x3_net,
      to_register5 => dout_x4_net,
      memmap_x0 => s_axi_arready_net,
      memmap_x1 => s_axi_awready_net,
      memmap_x10 => s_axi_wready_net,
      memmap_x11 => data_in_x11_net,
      memmap_x12 => en_x11_net,
      memmap_x13 => data_in_x12_net,
      memmap_x14 => en_x12_net,
      memmap_x15 => data_in_x13_net,
      memmap_x16 => en_x13_net,
      memmap_x17 => data_in_x14_net,
      memmap_x18 => en_x14_net,
      memmap_x19 => data_in_x15_net,
      memmap_x2 => s_axi_bid_net,
      memmap_x20 => en_x15_net,
      memmap_x21 => data_in_x16_net,
      memmap_x22 => en_x16_net,
      memmap_x23 => addr_net,
      memmap_x24 => data_in_net,
      memmap_x25 => we_net,
      memmap_x26 => addr_x0_net,
      memmap_x27 => data_in_x0_net,
      memmap_x28 => we_x0_net,
      memmap_x29 => addr_x3_net,
      memmap_x3 => s_axi_bresp_net,
      memmap_x30 => data_in_x3_net,
      memmap_x31 => we_x3_net,
      memmap_x32 => addr_x4_net,
      memmap_x33 => data_in_x4_net,
      memmap_x34 => we_x4_net,
      memmap_x35 => addr_x5_net,
      memmap_x36 => data_in_x5_net,
      memmap_x37 => we_x5_net,
      memmap_x38 => addr_x6_net,
      memmap_x39 => data_in_x6_net,
      memmap_x4 => s_axi_bvalid_net,
      memmap_x40 => we_x6_net,
      memmap_x41 => addr_x7_net,
      memmap_x42 => data_in_x7_net,
      memmap_x43 => we_x7_net,
      memmap_x44 => addr_x8_net,
      memmap_x45 => data_in_x8_net,
      memmap_x46 => we_x8_net,
      memmap_x47 => addr_x9_net,
      memmap_x48 => data_in_x9_net,
      memmap_x49 => we_x9_net,
      memmap_x5 => s_axi_rdata_net,
      memmap_x50 => addr_x10_net,
      memmap_x51 => data_in_x10_net,
      memmap_x52 => we_x10_net,
      memmap_x53 => addr_x1_net,
      memmap_x54 => data_in_x1_net,
      memmap_x55 => we_x1_net,
      memmap_x56 => addr_x2_net,
      memmap_x57 => data_in_x2_net,
      memmap_x58 => we_x2_net,
      memmap_x59 => memmap_shram_en_net_x1,
      memmap_x6 => s_axi_rid_net,
      memmap_x7 => s_axi_rlast_net,
      memmap_x8 => s_axi_rresp_net,
      memmap_x9 => s_axi_rvalid_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      ip(0) => transmit_running_net,
      op(0) => inverter_op_net_x4
    );

  memory_mapped_registers_520e3032da: entity work.memory_mapped_registers_entity_520e3032da
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      design_ver => design_ver_net,
      from_register1 => data_out_x17_net,
      from_register13 => data_out_x18_net,
      from_register16 => data_out_x19_net,
      rfa_rssi => rfa_rssi_net,
      rfb_rssi => rfb_rssi_net,
      rfc_rssi => rfc_rssi_net,
      rfd_rssi => rfd_rssi_net,
      rx_running => capture_running_net,
      tx_running => register_q_net_x9,
      wr_addr => rx_addr_counter1_op_net_x10,
      concat1_x0 => data_in_x22_net,
      concat2_x0 => data_in_x18_net,
      concat3_x0 => data_in_x19_net,
      concat_x0 => data_in_x20_net,
      config_bits => b2_y_net_x4,
      config_bits_x0 => b3_y_net_x3,
      config_bits_x1 => b4_y_net_x13,
      config_bits_x2 => b6_y_net_x17,
      config_bits_x3 => b8_7_y_net_x2,
      convert4_x0 => data_in_x17_net,
      register_x1 => data_in_x21_net,
      rfa_rxbuffen => b0_y_net_x3,
      rfa_txbuffen => b0_y_net_x4,
      rfb_rxbuffen => b1_y_net_x3,
      rfb_txbuffen => b1_y_net_x4,
      rfc_rxbuffen => b2_y_net_x5,
      rfc_txbuffen => b2_y_net_x6,
      rfd_rxbuffen => b3_y_net_x5,
      rfd_txbuffen => b3_y_net_x6,
      zero2_x0 => en_x20_net,
      zero3_x0 => en_x21_net,
      zero4_x0 => en_x22_net
    );

  posedge1_d2392bf4aa: entity work.posedge_entity_01ab3a7875
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      d => trigger_in_net,
      q => logical_y_net_x3
    );

  posedge2_3ea919b9e5: entity work.posedge_entity_01ab3a7875
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      d => x1_y_net_x0,
      q => logical_y_net_x4
    );

  posedge3_4ff0ce2dac: entity work.posedge_entity_01ab3a7875
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      d => register_q_net_x5,
      q => logical_y_net_x0
    );

  posedge_01ab3a7875: entity work.posedge_entity_01ab3a7875
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      d => trigger_in_net,
      q => logical_y_net_x2
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      d(0) => agc_done_net_x0,
      en => "1",
      rst => "0",
      q(0) => register_q_net_x5
    );

  rfa_inputs_3bd8d7aeb1: entity work.rfa_inputs_entity_3bd8d7aeb1
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfa_adc_i => rfa_adc_i_net,
      rfa_adc_q => rfa_adc_q_net,
      rfa_agc_filt_i => rfa_agc_filt_i_net,
      rfa_agc_filt_q => rfa_agc_filt_q_net,
      i_q => concat5_y_net_x3
    );

  rfa_outputs_e067535922: entity work.rfa_outputs_entity_e067535922
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      x32b => mux_y_net_x1,
      register1_x0 => rfa_dac_q_net,
      register_x1 => rfa_dac_i_net
    );

  rfa_rx_buffers_d51ed2909f: entity work.rfa_rx_buffers_entity_d51ed2909f
    port map (
      addr => rx_addr_counter1_op_net_x10,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b0_y_net_x3,
      i_q => concat5_y_net_x3,
      memory_mapped_registers => b6_y_net_x17,
      rssi => rfa_rssi_net,
      we => capture_running_net,
      logical_x0 => logical_y_net_x9,
      q_buffer => data_in_x23_net,
      rssi_buffer => addr_x12_net,
      rssi_buffer_x0 => data_in_x24_net
    );

  rfa_tx_buffers_13355caa4d: entity work.rfa_tx_buffers_entity_13355caa4d
    port map (
      byte_order => b6_y_net_x17,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b0_y_net_x4,
      rst => inverter_op_net_x4,
      shared_memory => data_out_x25_net,
      constant1_x0 => we_x13_net,
      constant2_x0 => data_in_x25_net,
      iq_32b => mux_y_net_x1
    );

  rfb_inputs_c6b862b790: entity work.rfb_inputs_entity_c6b862b790
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfb_adc_i => rfb_adc_i_net,
      rfb_adc_q => rfb_adc_q_net,
      rfb_agc_filt_i => rfb_agc_filt_i_net,
      rfb_agc_filt_q => rfb_agc_filt_q_net,
      i_q => concat5_y_net_x4
    );

  rfb_outputs_12eef1a796: entity work.rfa_outputs_entity_e067535922
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      x32b => mux_y_net_x6,
      register1_x0 => rfb_dac_q_net,
      register_x1 => rfb_dac_i_net
    );

  rfb_rx_buffers_7c809248db: entity work.rfa_rx_buffers_entity_d51ed2909f
    port map (
      addr => rx_addr_counter1_op_net_x10,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b1_y_net_x3,
      i_q => concat5_y_net_x4,
      memory_mapped_registers => b6_y_net_x17,
      rssi => rfb_rssi_net,
      we => capture_running_net,
      logical_x0 => logical_y_net_x10,
      q_buffer => data_in_x26_net,
      rssi_buffer => addr_x15_net,
      rssi_buffer_x0 => data_in_x27_net
    );

  rfb_tx_buffers_3f26ef1ef1: entity work.rfa_tx_buffers_entity_13355caa4d
    port map (
      byte_order => b6_y_net_x17,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b1_y_net_x4,
      rst => inverter_op_net_x4,
      shared_memory => data_out_x28_net,
      constant1_x0 => we_x16_net,
      constant2_x0 => data_in_x28_net,
      iq_32b => mux_y_net_x6
    );

  rfc_inputs_db2b81f1d0: entity work.rfc_inputs_entity_db2b81f1d0
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfc_adc_i => rfc_adc_i_net,
      rfc_adc_q => rfc_adc_q_net,
      rfc_agc_filt_i => rfc_agc_filt_i_net,
      rfc_agc_filt_q => rfc_agc_filt_q_net,
      i_q => concat5_y_net_x5
    );

  rfc_outputs_1d033849a6: entity work.rfa_outputs_entity_e067535922
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      x32b => mux_y_net_x9,
      register1_x0 => rfc_dac_q_net,
      register_x1 => rfc_dac_i_net
    );

  rfc_rx_buffers_aaec717a4d: entity work.rfa_rx_buffers_entity_d51ed2909f
    port map (
      addr => rx_addr_counter1_op_net_x10,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b2_y_net_x5,
      i_q => concat5_y_net_x5,
      memory_mapped_registers => b6_y_net_x17,
      rssi => rfc_rssi_net,
      we => capture_running_net,
      logical_x0 => logical_y_net_x11,
      q_buffer => data_in_x29_net,
      rssi_buffer => addr_x18_net,
      rssi_buffer_x0 => data_in_x30_net
    );

  rfc_tx_buffers_e6aa8fdfea: entity work.rfa_tx_buffers_entity_13355caa4d
    port map (
      byte_order => b6_y_net_x17,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b2_y_net_x6,
      rst => inverter_op_net_x4,
      shared_memory => data_out_x31_net,
      constant1_x0 => we_x19_net,
      constant2_x0 => data_in_x31_net,
      iq_32b => mux_y_net_x9
    );

  rfd_inputs_25a748319c: entity work.rfd_inputs_entity_25a748319c
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      mgcagc_agcdco_sel => b4_y_net_x13,
      rfd_adc_i => rfd_adc_i_net,
      rfd_adc_q => rfd_adc_q_net,
      rfd_agc_filt_i => rfd_agc_filt_i_net,
      rfd_agc_filt_q => rfd_agc_filt_q_net,
      i_q => concat5_y_net_x6
    );

  rfd_outputs_191bd2d320: entity work.rfa_outputs_entity_e067535922
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      x32b => mux_y_net_x12,
      register1_x0 => rfd_dac_q_net,
      register_x1 => rfd_dac_i_net
    );

  rfd_rx_buffers_68d506b925: entity work.rfa_rx_buffers_entity_d51ed2909f
    port map (
      addr => rx_addr_counter1_op_net_x10,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b3_y_net_x5,
      i_q => concat5_y_net_x6,
      memory_mapped_registers => b6_y_net_x17,
      rssi => rfd_rssi_net,
      we => capture_running_net,
      logical_x0 => logical_y_net_x12,
      q_buffer => data_in_x32_net,
      rssi_buffer => addr_x21_net,
      rssi_buffer_x0 => data_in_x33_net
    );

  rfd_tx_buffers_888da3ae25: entity work.rfa_tx_buffers_entity_13355caa4d
    port map (
      byte_order => b6_y_net_x17,
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      en => b3_y_net_x6,
      rst => inverter_op_net_x4,
      shared_memory => data_out_x34_net,
      constant1_x0 => we_x22_net,
      constant2_x0 => data_in_x34_net,
      iq_32b => mux_y_net_x12
    );

  rssi_clock_gen_26ed11435f: entity work.rssi_clock_gen_entity_26ed11435f
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      rssi_clk_sel => b8_7_y_net_x2,
      clk => rssi_adc_clk_net
    );

  rx_control_eaab42d120: entity work.rx_control_entity_eaab42d120
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      rxlength => data_out_x21_net,
      start => logical_y_net_x2,
      wraddr => rx_addr_counter1_op_net_x10,
      wren => capture_running_net
    );

  tx_control_cd1d5466f9: entity work.tx_control_entity_cd1d5466f9
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      continuoustx => b2_y_net_x4,
      starttx => logical_y_net_x3,
      stoptx => logical_y_net_x4,
      txdelay => data_out_x22_net,
      txlength => data_out_x20_net,
      addr => tx_addr_counter_op_net_x1,
      tx_running => register_q_net_x9,
      vout => transmit_running_net
    );

  x1: entity work.logical_3e1f051fb7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => stoptx_net,
      d1(0) => b3_y_net_x3,
      y(0) => x1_y_net_x0
    );

end structural;
