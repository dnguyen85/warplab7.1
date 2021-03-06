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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_06d08e1fe4aa4fc8.vhd when simulating
-- the core, dmg_72_06d08e1fe4aa4fc8. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_06d08e1fe4aa4fc8 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_06d08e1fe4aa4fc8;

ARCHITECTURE dmg_72_06d08e1fe4aa4fc8_a OF dmg_72_06d08e1fe4aa4fc8 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_06d08e1fe4aa4fc8
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_06d08e1fe4aa4fc8 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_06d08e1fe4aa4fc8.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_06d08e1fe4aa4fc8
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_06d08e1fe4aa4fc8_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_9597ec0fc16677a4.vhd when simulating
-- the core, dmg_72_9597ec0fc16677a4. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_9597ec0fc16677a4 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_9597ec0fc16677a4;

ARCHITECTURE dmg_72_9597ec0fc16677a4_a OF dmg_72_9597ec0fc16677a4 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_9597ec0fc16677a4
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_9597ec0fc16677a4 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_9597ec0fc16677a4.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_9597ec0fc16677a4
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_9597ec0fc16677a4_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_ad11112b0335bf51.vhd when simulating
-- the core, dmg_72_ad11112b0335bf51. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_ad11112b0335bf51 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_ad11112b0335bf51;

ARCHITECTURE dmg_72_ad11112b0335bf51_a OF dmg_72_ad11112b0335bf51 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_ad11112b0335bf51
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_ad11112b0335bf51 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_ad11112b0335bf51.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_ad11112b0335bf51
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_ad11112b0335bf51_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file asr_11_0_597bf05c40469981.vhd when simulating
-- the core, asr_11_0_597bf05c40469981. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_597bf05c40469981 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END asr_11_0_597bf05c40469981;

ARCHITECTURE asr_11_0_597bf05c40469981_a OF asr_11_0_597bf05c40469981 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_597bf05c40469981
  PORT (
    a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_597bf05c40469981 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 2,
      c_ainit_val => "00000000000000",
      c_default_data => "00000000000000",
      c_depth => 4,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_597bf05c40469981.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "00000000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 14,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_597bf05c40469981
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_597bf05c40469981_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_0db9fd72c1a8b774.vhd when simulating
-- the core, dmg_72_0db9fd72c1a8b774. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_0db9fd72c1a8b774 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_0db9fd72c1a8b774;

ARCHITECTURE dmg_72_0db9fd72c1a8b774_a OF dmg_72_0db9fd72c1a8b774 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_0db9fd72c1a8b774
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_0db9fd72c1a8b774 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_0db9fd72c1a8b774.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_0db9fd72c1a8b774
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_0db9fd72c1a8b774_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_3913ec4c2c742f6b.vhd when simulating
-- the core, dmg_72_3913ec4c2c742f6b. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_3913ec4c2c742f6b IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_3913ec4c2c742f6b;

ARCHITECTURE dmg_72_3913ec4c2c742f6b_a OF dmg_72_3913ec4c2c742f6b IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_3913ec4c2c742f6b
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_3913ec4c2c742f6b USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_3913ec4c2c742f6b.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_3913ec4c2c742f6b
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_3913ec4c2c742f6b_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_4e87c9c942f9a11c.vhd when simulating
-- the core, addsb_11_0_4e87c9c942f9a11c. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_4e87c9c942f9a11c IS
  PORT (
    a : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
  );
END addsb_11_0_4e87c9c942f9a11c;

ARCHITECTURE addsb_11_0_4e87c9c942f9a11c_a OF addsb_11_0_4e87c9c942f9a11c IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_4e87c9c942f9a11c
  PORT (
    a : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_4e87c9c942f9a11c USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 19,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000000000",
      c_b_width => 19,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 19,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_4e87c9c942f9a11c
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_4e87c9c942f9a11c_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_ce30a0daa329b557.vhd when simulating
-- the core, dmg_72_ce30a0daa329b557. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_ce30a0daa329b557 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_ce30a0daa329b557;

ARCHITECTURE dmg_72_ce30a0daa329b557_a OF dmg_72_ce30a0daa329b557 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_ce30a0daa329b557
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_ce30a0daa329b557 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_ce30a0daa329b557.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_ce30a0daa329b557
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_ce30a0daa329b557_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_a5d34286aa2d813b.vhd when simulating
-- the core, dmg_72_a5d34286aa2d813b. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_a5d34286aa2d813b IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_a5d34286aa2d813b;

ARCHITECTURE dmg_72_a5d34286aa2d813b_a OF dmg_72_a5d34286aa2d813b IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_a5d34286aa2d813b
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_a5d34286aa2d813b USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_a5d34286aa2d813b.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_a5d34286aa2d813b
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_a5d34286aa2d813b_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_4bb4a7d145e1d5f4.vhd when simulating
-- the core, dmg_72_4bb4a7d145e1d5f4. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_4bb4a7d145e1d5f4 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_4bb4a7d145e1d5f4;

ARCHITECTURE dmg_72_4bb4a7d145e1d5f4_a OF dmg_72_4bb4a7d145e1d5f4 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_4bb4a7d145e1d5f4
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_4bb4a7d145e1d5f4 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_4bb4a7d145e1d5f4.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_4bb4a7d145e1d5f4
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_4bb4a7d145e1d5f4_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_6454489cfe866515.vhd when simulating
-- the core, cntr_11_0_6454489cfe866515. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_6454489cfe866515 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_6454489cfe866515;

ARCHITECTURE cntr_11_0_6454489cfe866515_a OF cntr_11_0_6454489cfe866515 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_6454489cfe866515
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_6454489cfe866515 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 2,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_6454489cfe866515
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_6454489cfe866515_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_b57caca5d7a9e9ce.vhd when simulating
-- the core, dmg_72_b57caca5d7a9e9ce. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_b57caca5d7a9e9ce IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_b57caca5d7a9e9ce;

ARCHITECTURE dmg_72_b57caca5d7a9e9ce_a OF dmg_72_b57caca5d7a9e9ce IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_b57caca5d7a9e9ce
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_b57caca5d7a9e9ce USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_b57caca5d7a9e9ce.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_b57caca5d7a9e9ce
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_b57caca5d7a9e9ce_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_11bed54822ead293.vhd when simulating
-- the core, dmg_72_11bed54822ead293. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_11bed54822ead293 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_11bed54822ead293;

ARCHITECTURE dmg_72_11bed54822ead293_a OF dmg_72_11bed54822ead293 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_11bed54822ead293
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_11bed54822ead293 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_11bed54822ead293.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_11bed54822ead293
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_11bed54822ead293_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_8ed98a9908037566.vhd when simulating
-- the core, addsb_11_0_8ed98a9908037566. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_8ed98a9908037566 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END addsb_11_0_8ed98a9908037566;

ARCHITECTURE addsb_11_0_8ed98a9908037566_a OF addsb_11_0_8ed98a9908037566 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_8ed98a9908037566
  PORT (
    a : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_8ed98a9908037566 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 20,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000000",
      c_b_width => 20,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 1,
      c_out_width => 20,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_8ed98a9908037566
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_8ed98a9908037566_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_67d31cf7dc7c210a.vhd when simulating
-- the core, dmg_72_67d31cf7dc7c210a. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_67d31cf7dc7c210a IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_67d31cf7dc7c210a;

ARCHITECTURE dmg_72_67d31cf7dc7c210a_a OF dmg_72_67d31cf7dc7c210a IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_67d31cf7dc7c210a
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_67d31cf7dc7c210a USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_67d31cf7dc7c210a.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_67d31cf7dc7c210a
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_67d31cf7dc7c210a_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_028598dce83d7ad5.vhd when simulating
-- the core, dmg_72_028598dce83d7ad5. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_028598dce83d7ad5 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_028598dce83d7ad5;

ARCHITECTURE dmg_72_028598dce83d7ad5_a OF dmg_72_028598dce83d7ad5 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_028598dce83d7ad5
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_028598dce83d7ad5 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_028598dce83d7ad5.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_028598dce83d7ad5
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_028598dce83d7ad5_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_e0c678d57737019d.vhd when simulating
-- the core, dmg_72_e0c678d57737019d. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_e0c678d57737019d IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_e0c678d57737019d;

ARCHITECTURE dmg_72_e0c678d57737019d_a OF dmg_72_e0c678d57737019d IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_e0c678d57737019d
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_e0c678d57737019d USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_e0c678d57737019d.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_e0c678d57737019d
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_e0c678d57737019d_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_4a23b6088e17bc61.vhd when simulating
-- the core, mult_11_2_4a23b6088e17bc61. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_4a23b6088e17bc61 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_4a23b6088e17bc61;

ARCHITECTURE mult_11_2_4a23b6088e17bc61_a OF mult_11_2_4a23b6088e17bc61 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_4a23b6088e17bc61
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_4a23b6088e17bc61 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 18,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_4a23b6088e17bc61
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_4a23b6088e17bc61_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_01881a62ed6d8354.vhd when simulating
-- the core, dmg_72_01881a62ed6d8354. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_01881a62ed6d8354 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_01881a62ed6d8354;

ARCHITECTURE dmg_72_01881a62ed6d8354_a OF dmg_72_01881a62ed6d8354 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_01881a62ed6d8354
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_01881a62ed6d8354 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_01881a62ed6d8354.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_01881a62ed6d8354
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_01881a62ed6d8354_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_cd074a7c6800c4d6.vhd when simulating
-- the core, mult_11_2_cd074a7c6800c4d6. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_cd074a7c6800c4d6 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(33 DOWNTO 0)
  );
END mult_11_2_cd074a7c6800c4d6;

ARCHITECTURE mult_11_2_cd074a7c6800c4d6_a OF mult_11_2_cd074a7c6800c4d6 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_cd074a7c6800c4d6
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(33 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_cd074a7c6800c4d6 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 18,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 33,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_cd074a7c6800c4d6
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_cd074a7c6800c4d6_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_828b8027be7fb0bc.vhd when simulating
-- the core, mult_11_2_828b8027be7fb0bc. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_828b8027be7fb0bc IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(33 DOWNTO 0)
  );
END mult_11_2_828b8027be7fb0bc;

ARCHITECTURE mult_11_2_828b8027be7fb0bc_a OF mult_11_2_828b8027be7fb0bc IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_828b8027be7fb0bc
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(33 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_828b8027be7fb0bc USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 18,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 33,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_828b8027be7fb0bc
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_828b8027be7fb0bc_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_be3d7f4412623d74.vhd when simulating
-- the core, dmg_72_be3d7f4412623d74. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_be3d7f4412623d74 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_be3d7f4412623d74;

ARCHITECTURE dmg_72_be3d7f4412623d74_a OF dmg_72_be3d7f4412623d74 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_be3d7f4412623d74
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_be3d7f4412623d74 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_be3d7f4412623d74.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_be3d7f4412623d74
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_be3d7f4412623d74_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_30599e13b79eaff5.vhd when simulating
-- the core, addsb_11_0_30599e13b79eaff5. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_30599e13b79eaff5 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
  );
END addsb_11_0_30599e13b79eaff5;

ARCHITECTURE addsb_11_0_30599e13b79eaff5_a OF addsb_11_0_30599e13b79eaff5 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_30599e13b79eaff5
  PORT (
    a : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(20 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_30599e13b79eaff5 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 21,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000000",
      c_b_width => 21,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 21,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_30599e13b79eaff5
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_30599e13b79eaff5_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_413287803ea38355.vhd when simulating
-- the core, mult_11_2_413287803ea38355. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_413287803ea38355 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_413287803ea38355;

ARCHITECTURE mult_11_2_413287803ea38355_a OF mult_11_2_413287803ea38355 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_413287803ea38355
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_413287803ea38355 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 18,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_413287803ea38355
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_413287803ea38355_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_e754a337110a9a61.vhd when simulating
-- the core, dmg_72_e754a337110a9a61. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_e754a337110a9a61 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_e754a337110a9a61;

ARCHITECTURE dmg_72_e754a337110a9a61_a OF dmg_72_e754a337110a9a61 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_e754a337110a9a61
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_e754a337110a9a61 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_e754a337110a9a61.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_e754a337110a9a61
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_e754a337110a9a61_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_79670dbac218c443.vhd when simulating
-- the core, dmg_72_79670dbac218c443. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_79670dbac218c443 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_79670dbac218c443;

ARCHITECTURE dmg_72_79670dbac218c443_a OF dmg_72_79670dbac218c443 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_79670dbac218c443
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_79670dbac218c443 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_79670dbac218c443.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_79670dbac218c443
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_79670dbac218c443_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_44a016e7bbf20c55.vhd when simulating
-- the core, dmg_72_44a016e7bbf20c55. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_44a016e7bbf20c55 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_44a016e7bbf20c55;

ARCHITECTURE dmg_72_44a016e7bbf20c55_a OF dmg_72_44a016e7bbf20c55 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_44a016e7bbf20c55
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_44a016e7bbf20c55 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_44a016e7bbf20c55.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_44a016e7bbf20c55
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_44a016e7bbf20c55_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_09b667907b137b19.vhd when simulating
-- the core, dmg_72_09b667907b137b19. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_09b667907b137b19 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_09b667907b137b19;

ARCHITECTURE dmg_72_09b667907b137b19_a OF dmg_72_09b667907b137b19 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_09b667907b137b19
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_09b667907b137b19 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_09b667907b137b19.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_09b667907b137b19
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_09b667907b137b19_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_620a723f39b6b521.vhd when simulating
-- the core, dmg_72_620a723f39b6b521. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_620a723f39b6b521 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_620a723f39b6b521;

ARCHITECTURE dmg_72_620a723f39b6b521_a OF dmg_72_620a723f39b6b521 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_620a723f39b6b521
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_620a723f39b6b521 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_620a723f39b6b521.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_620a723f39b6b521
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_620a723f39b6b521_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_537be620516e9499.vhd when simulating
-- the core, dmg_72_537be620516e9499. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_537be620516e9499 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_537be620516e9499;

ARCHITECTURE dmg_72_537be620516e9499_a OF dmg_72_537be620516e9499 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_537be620516e9499
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_537be620516e9499 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_537be620516e9499.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_537be620516e9499
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_537be620516e9499_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_5001c9c7e113a79b.vhd when simulating
-- the core, dmg_72_5001c9c7e113a79b. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_5001c9c7e113a79b IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_5001c9c7e113a79b;

ARCHITECTURE dmg_72_5001c9c7e113a79b_a OF dmg_72_5001c9c7e113a79b IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_5001c9c7e113a79b
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_5001c9c7e113a79b USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_5001c9c7e113a79b.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_5001c9c7e113a79b
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_5001c9c7e113a79b_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_40b2d7b77c441b08.vhd when simulating
-- the core, dmg_72_40b2d7b77c441b08. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_40b2d7b77c441b08 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_40b2d7b77c441b08;

ARCHITECTURE dmg_72_40b2d7b77c441b08_a OF dmg_72_40b2d7b77c441b08 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_40b2d7b77c441b08
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_40b2d7b77c441b08 USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_40b2d7b77c441b08.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_40b2d7b77c441b08
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_40b2d7b77c441b08_a;
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
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_72_b11308332472044c.vhd when simulating
-- the core, dmg_72_b11308332472044c. When compiling the wrapper file, be sure to
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
ENTITY dmg_72_b11308332472044c IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_72_b11308332472044c;

ARCHITECTURE dmg_72_b11308332472044c_a OF dmg_72_b11308332472044c IS
-- synthesis translate_off
COMPONENT wrapped_dmg_72_b11308332472044c
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_72_b11308332472044c USE ENTITY XilinxCoreLib.dist_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex6",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_72_b11308332472044c.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_72_b11308332472044c
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_72_b11308332472044c_a;

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
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlclockenablegenerator is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5
  );
  port (
    clk: in std_logic;
    clr: in std_logic;
    ce: out std_logic
  );
end xlclockenablegenerator;
architecture behavior of xlclockenablegenerator is
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
  signal internal_ce: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  cntr_gen: process(clk)
  begin
    if clk'event and clk = '1'  then
        if ((cnt_clr_dly(0) = '1') or (clr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
  end process;
  clr_gen: process(clk_num, clr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= clr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or clr = '1') then
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
      ce => '1',
      clr => clr,
      clk => clk,
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
                  ce => '1',
                  clr => clr,
                  clk => clk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  generate_clock_enable: if period > 1 generate
    ce <= internal_ce(0);
  end generate;
  generate_clock_enable_constant: if period = 1 generate
    ce <= '1';
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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom_dist_rate_change_filters_txrx_2ch is
  generic (
    core_name0: string := "";
    addr_width: integer := 2;
    latency: integer := 0;
    c_width: integer := 12;
    c_address_width: integer := 4
  );
  port (
    addr: in std_logic_vector(addr_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom_dist_rate_change_filters_txrx_2ch ;
architecture behavior of xlsprom_dist_rate_change_filters_txrx_2ch is
  component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i           : in std_logic_vector(width - 1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width - 1 downto 0));
  end component;
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  constant num_extra_addr_bits: integer := (c_address_width - addr_width);
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_ce: std_logic;
  component dmg_72_620a723f39b6b521
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_620a723f39b6b521:
    component is true;
  attribute fpga_dont_touch of dmg_72_620a723f39b6b521:
    component is "true";
  attribute box_type of dmg_72_620a723f39b6b521:
    component  is "black_box";
  component dmg_72_44a016e7bbf20c55
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_44a016e7bbf20c55:
    component is true;
  attribute fpga_dont_touch of dmg_72_44a016e7bbf20c55:
    component is "true";
  attribute box_type of dmg_72_44a016e7bbf20c55:
    component  is "black_box";
  component dmg_72_09b667907b137b19
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_09b667907b137b19:
    component is true;
  attribute fpga_dont_touch of dmg_72_09b667907b137b19:
    component is "true";
  attribute box_type of dmg_72_09b667907b137b19:
    component  is "black_box";
  component dmg_72_e754a337110a9a61
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_e754a337110a9a61:
    component is true;
  attribute fpga_dont_touch of dmg_72_e754a337110a9a61:
    component is "true";
  attribute box_type of dmg_72_e754a337110a9a61:
    component  is "black_box";
  component dmg_72_06d08e1fe4aa4fc8
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_06d08e1fe4aa4fc8:
    component is true;
  attribute fpga_dont_touch of dmg_72_06d08e1fe4aa4fc8:
    component is "true";
  attribute box_type of dmg_72_06d08e1fe4aa4fc8:
    component  is "black_box";
  component dmg_72_a5d34286aa2d813b
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_a5d34286aa2d813b:
    component is true;
  attribute fpga_dont_touch of dmg_72_a5d34286aa2d813b:
    component is "true";
  attribute box_type of dmg_72_a5d34286aa2d813b:
    component  is "black_box";
  component dmg_72_ce30a0daa329b557
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_ce30a0daa329b557:
    component is true;
  attribute fpga_dont_touch of dmg_72_ce30a0daa329b557:
    component is "true";
  attribute box_type of dmg_72_ce30a0daa329b557:
    component  is "black_box";
  component dmg_72_5001c9c7e113a79b
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_5001c9c7e113a79b:
    component is true;
  attribute fpga_dont_touch of dmg_72_5001c9c7e113a79b:
    component is "true";
  attribute box_type of dmg_72_5001c9c7e113a79b:
    component  is "black_box";
  component dmg_72_028598dce83d7ad5
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_028598dce83d7ad5:
    component is true;
  attribute fpga_dont_touch of dmg_72_028598dce83d7ad5:
    component is "true";
  attribute box_type of dmg_72_028598dce83d7ad5:
    component  is "black_box";
  component dmg_72_ad11112b0335bf51
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_ad11112b0335bf51:
    component is true;
  attribute fpga_dont_touch of dmg_72_ad11112b0335bf51:
    component is "true";
  attribute box_type of dmg_72_ad11112b0335bf51:
    component  is "black_box";
  component dmg_72_79670dbac218c443
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_79670dbac218c443:
    component is true;
  attribute fpga_dont_touch of dmg_72_79670dbac218c443:
    component is "true";
  attribute box_type of dmg_72_79670dbac218c443:
    component  is "black_box";
  component dmg_72_40b2d7b77c441b08
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_40b2d7b77c441b08:
    component is true;
  attribute fpga_dont_touch of dmg_72_40b2d7b77c441b08:
    component is "true";
  attribute box_type of dmg_72_40b2d7b77c441b08:
    component  is "black_box";
  component dmg_72_be3d7f4412623d74
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_be3d7f4412623d74:
    component is true;
  attribute fpga_dont_touch of dmg_72_be3d7f4412623d74:
    component is "true";
  attribute box_type of dmg_72_be3d7f4412623d74:
    component  is "black_box";
  component dmg_72_01881a62ed6d8354
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_01881a62ed6d8354:
    component is true;
  attribute fpga_dont_touch of dmg_72_01881a62ed6d8354:
    component is "true";
  attribute box_type of dmg_72_01881a62ed6d8354:
    component  is "black_box";
  component dmg_72_0db9fd72c1a8b774
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_0db9fd72c1a8b774:
    component is true;
  attribute fpga_dont_touch of dmg_72_0db9fd72c1a8b774:
    component is "true";
  attribute box_type of dmg_72_0db9fd72c1a8b774:
    component  is "black_box";
  component dmg_72_e0c678d57737019d
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_e0c678d57737019d:
    component is true;
  attribute fpga_dont_touch of dmg_72_e0c678d57737019d:
    component is "true";
  attribute box_type of dmg_72_e0c678d57737019d:
    component  is "black_box";
  component dmg_72_b57caca5d7a9e9ce
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_b57caca5d7a9e9ce:
    component is true;
  attribute fpga_dont_touch of dmg_72_b57caca5d7a9e9ce:
    component is "true";
  attribute box_type of dmg_72_b57caca5d7a9e9ce:
    component  is "black_box";
  component dmg_72_b11308332472044c
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_b11308332472044c:
    component is true;
  attribute fpga_dont_touch of dmg_72_b11308332472044c:
    component is "true";
  attribute box_type of dmg_72_b11308332472044c:
    component  is "black_box";
  component dmg_72_67d31cf7dc7c210a
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_67d31cf7dc7c210a:
    component is true;
  attribute fpga_dont_touch of dmg_72_67d31cf7dc7c210a:
    component is "true";
  attribute box_type of dmg_72_67d31cf7dc7c210a:
    component  is "black_box";
  component dmg_72_9597ec0fc16677a4
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_9597ec0fc16677a4:
    component is true;
  attribute fpga_dont_touch of dmg_72_9597ec0fc16677a4:
    component is "true";
  attribute box_type of dmg_72_9597ec0fc16677a4:
    component  is "black_box";
  component dmg_72_537be620516e9499
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_537be620516e9499:
    component is true;
  attribute fpga_dont_touch of dmg_72_537be620516e9499:
    component is "true";
  attribute box_type of dmg_72_537be620516e9499:
    component  is "black_box";
  component dmg_72_11bed54822ead293
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_11bed54822ead293:
    component is true;
  attribute fpga_dont_touch of dmg_72_11bed54822ead293:
    component is "true";
  attribute box_type of dmg_72_11bed54822ead293:
    component  is "black_box";
  component dmg_72_3913ec4c2c742f6b
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_3913ec4c2c742f6b:
    component is true;
  attribute fpga_dont_touch of dmg_72_3913ec4c2c742f6b:
    component is "true";
  attribute box_type of dmg_72_3913ec4c2c742f6b:
    component  is "black_box";
  component dmg_72_4bb4a7d145e1d5f4
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of dmg_72_4bb4a7d145e1d5f4:
    component is true;
  attribute fpga_dont_touch of dmg_72_4bb4a7d145e1d5f4:
    component is "true";
  attribute box_type of dmg_72_4bb4a7d145e1d5f4:
    component  is "black_box";
begin
  need_to_pad_addr: if num_extra_addr_bits > 0 generate
      core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
    core_addr(addr_width - 1 downto 0) <= addr;
  end generate;
  no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
    core_addr <= addr;
  end generate;
  core_ce <= ce and en(0);
  comp0: if ((core_name0 = "dmg_72_620a723f39b6b521")) generate
    core_instance0: dmg_72_620a723f39b6b521
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "dmg_72_44a016e7bbf20c55")) generate
    core_instance1: dmg_72_44a016e7bbf20c55
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp2: if ((core_name0 = "dmg_72_09b667907b137b19")) generate
    core_instance2: dmg_72_09b667907b137b19
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp3: if ((core_name0 = "dmg_72_e754a337110a9a61")) generate
    core_instance3: dmg_72_e754a337110a9a61
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp4: if ((core_name0 = "dmg_72_06d08e1fe4aa4fc8")) generate
    core_instance4: dmg_72_06d08e1fe4aa4fc8
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp5: if ((core_name0 = "dmg_72_a5d34286aa2d813b")) generate
    core_instance5: dmg_72_a5d34286aa2d813b
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp6: if ((core_name0 = "dmg_72_ce30a0daa329b557")) generate
    core_instance6: dmg_72_ce30a0daa329b557
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp7: if ((core_name0 = "dmg_72_5001c9c7e113a79b")) generate
    core_instance7: dmg_72_5001c9c7e113a79b
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp8: if ((core_name0 = "dmg_72_028598dce83d7ad5")) generate
    core_instance8: dmg_72_028598dce83d7ad5
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp9: if ((core_name0 = "dmg_72_ad11112b0335bf51")) generate
    core_instance9: dmg_72_ad11112b0335bf51
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp10: if ((core_name0 = "dmg_72_79670dbac218c443")) generate
    core_instance10: dmg_72_79670dbac218c443
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp11: if ((core_name0 = "dmg_72_40b2d7b77c441b08")) generate
    core_instance11: dmg_72_40b2d7b77c441b08
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp12: if ((core_name0 = "dmg_72_be3d7f4412623d74")) generate
    core_instance12: dmg_72_be3d7f4412623d74
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp13: if ((core_name0 = "dmg_72_01881a62ed6d8354")) generate
    core_instance13: dmg_72_01881a62ed6d8354
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp14: if ((core_name0 = "dmg_72_0db9fd72c1a8b774")) generate
    core_instance14: dmg_72_0db9fd72c1a8b774
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp15: if ((core_name0 = "dmg_72_e0c678d57737019d")) generate
    core_instance15: dmg_72_e0c678d57737019d
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp16: if ((core_name0 = "dmg_72_b57caca5d7a9e9ce")) generate
    core_instance16: dmg_72_b57caca5d7a9e9ce
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp17: if ((core_name0 = "dmg_72_b11308332472044c")) generate
    core_instance17: dmg_72_b11308332472044c
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp18: if ((core_name0 = "dmg_72_67d31cf7dc7c210a")) generate
    core_instance18: dmg_72_67d31cf7dc7c210a
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp19: if ((core_name0 = "dmg_72_9597ec0fc16677a4")) generate
    core_instance19: dmg_72_9597ec0fc16677a4
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp20: if ((core_name0 = "dmg_72_537be620516e9499")) generate
    core_instance20: dmg_72_537be620516e9499
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp21: if ((core_name0 = "dmg_72_11bed54822ead293")) generate
    core_instance21: dmg_72_11bed54822ead293
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp22: if ((core_name0 = "dmg_72_3913ec4c2c742f6b")) generate
    core_instance22: dmg_72_3913ec4c2c742f6b
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp23: if ((core_name0 = "dmg_72_4bb4a7d145e1d5f4")) generate
    core_instance23: dmg_72_4bb4a7d145e1d5f4
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_0_or_1: if (latency <= 1)
  generate
    data <= core_data_out;
  end generate;
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
entity xlcounter_free_rate_change_filters_txrx_2ch is
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
end xlcounter_free_rate_change_filters_txrx_2ch ;
architecture behavior of xlcounter_free_rate_change_filters_txrx_2ch is
  component cntr_11_0_6454489cfe866515
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_6454489cfe866515:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_6454489cfe866515:
    component is "true";
  attribute box_type of cntr_11_0_6454489cfe866515:
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
  comp0: if ((core_name0 = "cntr_11_0_6454489cfe866515")) generate
    core_instance0: cntr_11_0_6454489cfe866515
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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xldsamp is
  generic (
    d_width: integer := 12;
    d_bin_pt: integer := 0;
    d_arith: integer := xlUnsigned;
    q_width: integer := 12;
    q_bin_pt: integer := 0;
    q_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    ds_ratio: integer := 2;
    phase: integer := 0;
    latency: integer := 1
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    src_clk: in std_logic;
    src_ce: in std_logic;
    src_clr: in std_logic;
    dest_clk: in std_logic;
    dest_ce: in std_logic;
    dest_clr: in std_logic;
    en: in std_logic_vector(en_width - 1 downto 0);
    q: out std_logic_vector(q_width - 1 downto 0)
  );
end xldsamp;
architecture struct of xldsamp is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component fdse
    port (
      q: out   std_ulogic;
      d: in    std_ulogic;
      c: in    std_ulogic;
      s: in    std_ulogic;
      ce: in    std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  signal adjusted_dest_ce: std_logic;
  signal adjusted_dest_ce_w_en: std_logic;
  signal dest_ce_w_en: std_logic;
  signal smpld_d: std_logic_vector(d_width-1 downto 0);
begin
  adjusted_ce_needed: if ((latency = 0) or (phase /= (ds_ratio - 1))) generate
    dest_ce_reg: fdse
      port map (
        q => adjusted_dest_ce,
        d => dest_ce,
        c => src_clk,
        s => src_clr,
        ce => src_ce
      );
  end generate;
  latency_eq_0: if (latency = 0) generate
    shutter_d_reg: synth_reg
      generic map (
        width => d_width,
        latency => 1
      )
      port map (
        i => d,
        ce => adjusted_dest_ce,
        clr => src_clr,
        clk => src_clk,
        o => smpld_d
      );
    shutter_mux: process (adjusted_dest_ce, d, smpld_d)
    begin
      if adjusted_dest_ce = '0' then
        q <= smpld_d;
      else
        q <= d;
      end if;
    end process;
  end generate;
  latency_gt_0: if (latency > 0) generate
    dbl_reg_test: if (phase /= (ds_ratio-1)) generate
        smpl_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => 1
          )
          port map (
            i => d,
            ce => adjusted_dest_ce_w_en,
            clr => src_clr,
            clk => src_clk,
            o => smpld_d
          );
    end generate;
    sngl_reg_test: if (phase = (ds_ratio -1)) generate
      smpld_d <= d;
    end generate;
    latency_pipe: synth_reg
      generic map (
        width => d_width,
        latency => latency
      )
      port map (
        i => smpld_d,
        ce => dest_ce_w_en,
        clr => src_clr,
        clk => dest_clk,
        o => q
      );
  end generate;
  dest_ce_w_en <= dest_ce and en(0);
  adjusted_dest_ce_w_en <= adjusted_dest_ce and en(0);
end architecture struct;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlusamp is
    generic (
             d_width      : integer := 5;
             d_bin_pt     : integer := 2;
             d_arith      : integer := xlUnsigned;
             q_width      : integer := 5;
             q_bin_pt     : integer := 2;
             q_arith      : integer := xlUnsigned;
             en_width     : integer := 1;
             en_bin_pt    : integer := 0;
             en_arith     : integer := xlUnsigned;
             sampling_ratio     : integer := 2;
             latency      : integer := 1;
             copy_samples : integer := 0);
    port (
          d        : in std_logic_vector (d_width-1 downto 0);
          src_clk  : in std_logic;
          src_ce   : in std_logic;
          src_clr  : in std_logic;
          dest_clk : in std_logic;
          dest_ce  : in std_logic;
          dest_clr : in std_logic;
          en       : in std_logic_vector(en_width-1 downto 0);
          q        : out std_logic_vector (q_width-1 downto 0)
         );
end xlusamp;
architecture struct of xlusamp is
    component synth_reg
      generic (
        width: integer := 16;
        latency: integer := 5
      );
      port (
        i: in std_logic_vector(width - 1 downto 0);
        ce: in std_logic;
        clr: in std_logic;
        clk: in std_logic;
        o: out std_logic_vector(width - 1 downto 0)
      );
    end component;
    component FDSE
        port (q  : out   std_ulogic;
              d  : in    std_ulogic;
              c  : in    std_ulogic;
              s  : in    std_ulogic;
              ce : in    std_ulogic);
    end component;
    attribute syn_black_box of FDSE : component is true;
    attribute fpga_dont_touch of FDSE : component is "true";
    signal zero    : std_logic_vector (d_width-1 downto 0);
    signal mux_sel : std_logic;
    signal sampled_d  : std_logic_vector (d_width-1 downto 0);
    signal internal_ce : std_logic;
begin
   sel_gen : FDSE
                port map (q  => mux_sel,
                        d  => src_ce,
            c  => src_clk,
            s  => src_clr,
            ce => dest_ce);
  internal_ce <= src_ce and en(0);
  copy_samples_false : if (copy_samples = 0) generate
      zero <= (others => '0');
      gen_q_cp_smpls_0_and_lat_0: if (latency = 0) generate
        cp_smpls_0_and_lat_0: process (mux_sel, d, zero)
        begin
          if (mux_sel = '1') then
            q <= d;
          else
            q <= zero;
          end if;
        end process cp_smpls_0_and_lat_0;
      end generate;
      gen_q_cp_smpls_0_and_lat_gt_0: if (latency > 0) generate
        sampled_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => latency
          )
          port map (
            i => d,
            ce => internal_ce,
            clr => src_clr,
            clk => src_clk,
            o => sampled_d
          );

        gen_q_check_mux_sel: process (mux_sel, sampled_d, zero)
        begin
          if (mux_sel = '1') then
            q <= sampled_d;
          else
            q <= zero;
          end if;
        end process gen_q_check_mux_sel;
      end generate;
   end generate;
   copy_samples_true : if (copy_samples = 1) generate
     gen_q_cp_smpls_1_and_lat_0: if (latency = 0) generate
       q <= d;
     end generate;
     gen_q_cp_smpls_1_and_lat_gt_0: if (latency > 0) generate
       q <= sampled_d;
       sampled_d_reg2: synth_reg
         generic map (
           width => d_width,
           latency => latency
         )
         port map (
           i => d,
           ce => internal_ce,
           clr => src_clr,
           clk => src_clk,
           o => sampled_d
         );
     end generate;
   end generate;
end architecture struct;

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
        C_S_AXI_TOTAL_ADDR_LEN  : integer := 12;
        C_S_AXI_LINEAR_ADDR_LEN : integer := 8;
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
        -- 'CoefCounter'
        sm_CoefCounter_dout : in std_logic_vector(32-1 downto 0);
        -- 'To Register'
        -- 'FilterOptions'
        sm_FilterOptions_dout : in std_logic_vector(32-1 downto 0);
        sm_FilterOptions_din  : out std_logic_vector(32-1 downto 0);
        sm_FilterOptions_en   : out std_logic;
        -- 'From FIFO'
        -- 'To FIFO'
        -- 'Shared Memory'

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
-- 'CoefCounter'
signal sm_CoefCounter_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'To Register'
-- 'FilterOptions'
signal sm_FilterOptions_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_FilterOptions_en_i    : std_logic;
signal sm_FilterOptions_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'From FIFO'
-- 'To FIFO'
-- 'Shared Memory'

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

-- conversion to match with the data bus width
-- 'From Register'
-- 'CoefCounter'
gen_sm_CoefCounter_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_CoefCounter_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_CoefCounter_dout_i;
sm_CoefCounter_dout_i(32-1 downto 0) <= sm_CoefCounter_dout;
-- 'To Register'
-- 'FilterOptions'
sm_FilterOptions_din     <= sm_FilterOptions_din_i(32-1 downto 0);
sm_FilterOptions_en      <= sm_FilterOptions_en_i;
gen_sm_FilterOptions_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_FilterOptions_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_FilterOptions_dout_i;
sm_FilterOptions_dout_i(32-1 downto 0) <= sm_FilterOptions_dout;
-- 'From FIFO'
-- 'To FIFO'
-- 'Shared Memory'

ReadWriteSelect: process(memmap_state) is begin
    if (memmap_state = READ) then
    else
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
            -- FilterOptions din/en
            sm_FilterOptions_din_i <= (others => '0');
            sm_FilterOptions_en_i <= '0';
            -- 'To FIFO'
            -- 'Shared Memory'
        else
            -- default assignments

            -- 'To Register'
            if (unsigned(write_bank_addr_i) = 2) then
                if (unsigned(write_linear_addr_i) = 0) then
                    -- FilterOptions din/en
                    sm_FilterOptions_din_i <= S_AXI_WDATA;
                    sm_FilterOptions_en_i  <= write_addr_valid;
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
                if (unsigned(read_linear_addr_i) = 1) then
                    -- 'CoefCounter' dout
                    reg_bank_out_i <= sm_CoefCounter_dout_i;
                end if;
                -- 'To Register' (with register readback)
                if (unsigned(read_linear_addr_i) = 0) then
                    -- 'FilterOptions' dout
                    reg_bank_out_i <= sm_FilterOptions_dout_i;
                end if;

                S_AXI_RDATA_i <= reg_bank_out_i;
            elsif (unsigned(read_bank_addr_i) = 1) then
                -- 'From FIFO'
                -- 'To FIFO'

                S_AXI_RDATA_i <= fifo_bank_out_i;
            elsif (unsigned(read_bank_addr_i) = 0 and s_shram_en = '1') then
                -- 'Shared Memory'

                S_AXI_RDATA_i <= shmem_bank_out_i;
            end if;
        end if;
    end if;
end process Read_Linear_Addr_Decode;

end architecture IMP;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_fb3b65ea20 is
  port (
    a : in std_logic_vector((24 - 1) downto 0);
    b : in std_logic_vector((24 - 1) downto 0);
    s : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_fb3b65ea20;


architecture behavior of addsub_fb3b65ea20 is
  signal a_17_32: signed((24 - 1) downto 0);
  signal b_17_35: signed((24 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((25 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000000000");
  signal op_mem_91_20_front_din: signed((25 - 1) downto 0);
  signal op_mem_91_20_back: signed((25 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((25 - 1) downto 0);
  signal cast_69_22: signed((25 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((25 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 22, 25, 22);
  cast_69_22 <= s2s_cast(b_17_35, 22, 25, 22);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_b4fd6cc060 is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((25 - 1) downto 0);
    s : out std_logic_vector((26 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b4fd6cc060;


architecture behavior of addsub_b4fd6cc060 is
  signal a_17_32: signed((25 - 1) downto 0);
  signal b_17_35: signed((25 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((26 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000000000000");
  signal op_mem_91_20_front_din: signed((26 - 1) downto 0);
  signal op_mem_91_20_back: signed((26 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((26 - 1) downto 0);
  signal cast_69_22: signed((26 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((26 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 22, 26, 22);
  cast_69_22 <= s2s_cast(b_17_35, 22, 26, 22);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_5648981406 is
  port (
    a : in std_logic_vector((26 - 1) downto 0);
    b : in std_logic_vector((26 - 1) downto 0);
    s : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_5648981406;


architecture behavior of addsub_5648981406 is
  signal a_17_32: signed((26 - 1) downto 0);
  signal b_17_35: signed((26 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((27 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((27 - 1) downto 0);
  signal op_mem_91_20_back: signed((27 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((27 - 1) downto 0);
  signal cast_69_22: signed((27 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((27 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 22, 27, 22);
  cast_69_22 <= s2s_cast(b_17_35, 22, 27, 22);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_e0682e6552 is
  port (
    a : in std_logic_vector((27 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    s : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_e0682e6552;


architecture behavior of addsub_e0682e6552 is
  signal a_17_32: signed((27 - 1) downto 0);
  signal b_17_35: signed((27 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((28 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((28 - 1) downto 0);
  signal op_mem_91_20_back: signed((28 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((28 - 1) downto 0);
  signal cast_69_22: signed((28 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((28 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 22, 28, 22);
  cast_69_22 <= s2s_cast(b_17_35, 22, 28, 22);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_69_5_addsub);
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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult_rate_change_filters_txrx_2ch is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult_rate_change_filters_txrx_2ch;
architecture behavior of xlmult_rate_change_filters_txrx_2ch is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_413287803ea38355
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_413287803ea38355:
    component is true;
  attribute fpga_dont_touch of mult_11_2_413287803ea38355:
    component is "true";
  attribute box_type of mult_11_2_413287803ea38355:
    component  is "black_box";
  component mult_11_2_4a23b6088e17bc61
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_4a23b6088e17bc61:
    component is true;
  attribute fpga_dont_touch of mult_11_2_4a23b6088e17bc61:
    component is "true";
  attribute box_type of mult_11_2_4a23b6088e17bc61:
    component  is "black_box";
  component mult_11_2_cd074a7c6800c4d6
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_cd074a7c6800c4d6:
    component is true;
  attribute fpga_dont_touch of mult_11_2_cd074a7c6800c4d6:
    component is "true";
  attribute box_type of mult_11_2_cd074a7c6800c4d6:
    component  is "black_box";
  component mult_11_2_828b8027be7fb0bc
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_828b8027be7fb0bc:
    component is true;
  attribute fpga_dont_touch of mult_11_2_828b8027be7fb0bc:
    component is "true";
  attribute box_type of mult_11_2_828b8027be7fb0bc:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_413287803ea38355")) generate
    core_instance0: mult_11_2_413287803ea38355
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_4a23b6088e17bc61")) generate
    core_instance1: mult_11_2_4a23b6088e17bc61
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp2: if ((core_name0 = "mult_11_2_cd074a7c6800c4d6")) generate
    core_instance2: mult_11_2_cd074a7c6800c4d6
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp3: if ((core_name0 = "mult_11_2_828b8027be7fb0bc")) generate
    core_instance3: mult_11_2_828b8027be7fb0bc
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
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
use ieee.std_logic_unsigned.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xltdd_multich is
    generic (
        frame_length  : integer := 4;
        data_width    : integer := 4);
    port (
        d : in std_logic_vector (data_width-1 downto 0);
        vin : in std_logic_vector (0 downto 0) := (others => '1');
        src_clk: in std_logic;
        src_ce: in std_logic;
        src_clr: in std_logic;
        dest_clk: in std_logic;
        dest_ce: in std_logic;
        dest_clr: in std_logic;
        q0 : out std_logic_vector (data_width-1 downto 0);
        q1 : out std_logic_vector (data_width-1 downto 0);
        q2 : out std_logic_vector (data_width-1 downto 0);
        q3 : out std_logic_vector (data_width-1 downto 0);
        q4 : out std_logic_vector (data_width-1 downto 0);
        q5 : out std_logic_vector (data_width-1 downto 0);
        q6 : out std_logic_vector (data_width-1 downto 0);
        q7 : out std_logic_vector (data_width-1 downto 0);
        q8 : out std_logic_vector (data_width-1 downto 0);
        q9 : out std_logic_vector (data_width-1 downto 0);
        q10 : out std_logic_vector (data_width-1 downto 0);
        q11 : out std_logic_vector (data_width-1 downto 0);
        q12 : out std_logic_vector (data_width-1 downto 0);
        q13 : out std_logic_vector (data_width-1 downto 0);
        q14 : out std_logic_vector (data_width-1 downto 0);
        q15 : out std_logic_vector (data_width-1 downto 0);
        q16 : out std_logic_vector (data_width-1 downto 0);
        q17 : out std_logic_vector (data_width-1 downto 0);
        q18 : out std_logic_vector (data_width-1 downto 0);
        q19 : out std_logic_vector (data_width-1 downto 0);
        q20 : out std_logic_vector (data_width-1 downto 0);
        q21 : out std_logic_vector (data_width-1 downto 0);
        q22 : out std_logic_vector (data_width-1 downto 0);
        q23 : out std_logic_vector (data_width-1 downto 0);
        q24 : out std_logic_vector (data_width-1 downto 0);
        q25 : out std_logic_vector (data_width-1 downto 0);
        q26 : out std_logic_vector (data_width-1 downto 0);
        q27 : out std_logic_vector (data_width-1 downto 0);
        q28 : out std_logic_vector (data_width-1 downto 0);
        q29 : out std_logic_vector (data_width-1 downto 0);
        q30 : out std_logic_vector (data_width-1 downto 0);
        q31 : out std_logic_vector (data_width-1 downto 0);
        vout : out std_logic_vector (0 downto 0));
end xltdd_multich;
architecture behavior of xltdd_multich is
    component SRL16E
        -- synopsys translate_off
        generic (INIT : bit_vector := X"0000");
        -- synopsys translate_on
        port (D   : in std_ulogic;
              CE  : in std_ulogic;
              CLK : in std_ulogic;
              A0  : in std_ulogic;
              A1  : in std_ulogic;
              A2  : in std_ulogic;
              A3  : in std_ulogic;
              Q   : out std_ulogic);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";

    component synth_reg
        generic (width   : integer;
                 latency : integer);
        port (i   : in std_logic_vector(width-1 downto 0);
              ce  : in std_logic;
              clr : in std_logic;
              clk : in std_logic;
              o   : out std_logic_vector(width-1 downto 0));
    end component;

    type temp_array is array (0 to 31) of std_logic_vector(data_width-1 downto 0);
    signal i, o, dout_temp, capture_in : temp_array;

    constant pg_addr : std_logic_vector(3 downto 0)
        := integer_to_std_logic_vector(frame_length-1, 4, xlUnsigned);
    constant cnt_zero : std_logic_vector(3 downto 0) := (others => '0');
    signal smpl_dout: std_logic_vector(data_width-1 downto 0);
    signal fifo_addr: std_logic_vector(3 downto 0) := (others => '0');
    signal dly_fifo_en,fifo_en, pg_out, src_en : std_logic;
    signal tmp_vout : std_logic_vector(0 downto 0) := (others => '0');
    signal cnt_by_one : std_logic_vector(0 downto 0);

begin
    src_en <= src_ce and vin(0);
    fifo_en <= src_en and pg_out;
    dly_fifo_en <= fifo_en after 200 ps;
    cnt_by_one(0) <= '1';
       fd_array: for index in frame_length - 1 downto 0 generate
          comp : synth_reg
             generic map (width      => data_width,
                          latency    => 1)
             port map (i   => i(index),
                       ce  => src_en,
                       clr => src_clr,
                       clk => src_clk,
                       o   => o(index));
          capture : synth_reg
             generic map (width      => data_width,
                           latency    => 1)
             port map (i   => capture_in(index),
                       ce  => dest_ce,
                       clr => dest_clr,
                       clk => dest_clk,
                       o   => dout_temp(frame_length-1-index));
          signal_0: if (index = 0) generate
                       i(index) <= d;
                       capture_in(index) <= d;
          end generate;
          signal_gt_0: if (index > 0) generate
                        i(index) <= o(index - 1);
                        capture_in(index) <= o(index - 1);
          end generate;
       end generate;
        q0 <= dout_temp(0);
        q1 <= dout_temp(1);
        q2 <= dout_temp(2);
        q3 <= dout_temp(3);
        q4 <= dout_temp(4);
        q5 <= dout_temp(5);
        q6 <= dout_temp(6);
        q7 <= dout_temp(7);
        q8 <= dout_temp(8);
        q9 <= dout_temp(9);
        q10 <= dout_temp(10);
        q11 <= dout_temp(11);
        q12 <= dout_temp(12);
        q13 <= dout_temp(13);
        q14 <= dout_temp(14);
        q15 <= dout_temp(15);
        q16 <= dout_temp(16);
        q17 <= dout_temp(17);
        q18 <= dout_temp(18);
        q19 <= dout_temp(19);
        q20 <= dout_temp(20);
        q21 <= dout_temp(21);
        q22 <= dout_temp(22);
        q23 <= dout_temp(23);
        q24 <= dout_temp(24);
        q25 <= dout_temp(25);
        q26 <= dout_temp(26);
        q27 <= dout_temp(27);
        q28 <= dout_temp(28);
        q29 <= dout_temp(29);
        q30 <= dout_temp(30);
        q31 <= dout_temp(31);

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xladdrsr_rate_change_filters_txrx_2ch is
  generic (
    core_name0: string := "";
    addr_arith: integer := xlSigned;
    addr_bin_pt: integer := 7;
    addr_width: integer := 12;
    core_addr_width: integer := 0;
    d_arith: integer := xlSigned;
    d_bin_pt: integer := 7;
    d_width: integer := 12;
    en_width: integer := 5;
    en_bin_pt: integer := 2;
    en_arith: integer := xlUnsigned;
    q_arith: integer := xlSigned;
    q_bin_pt: integer := 7;
    q_width: integer := xlSigned
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    en: in std_logic_vector(0 downto 0) := (others => '1');
    q: out std_logic_vector(d_width - 1 downto 0)
  );
end xladdrsr_rate_change_filters_txrx_2ch;
architecture behavior of xladdrsr_rate_change_filters_txrx_2ch is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_597bf05c40469981
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;

  attribute syn_black_box of asr_11_0_597bf05c40469981:
    component is true;
  attribute fpga_dont_touch of asr_11_0_597bf05c40469981:
    component is "true";
  attribute box_type of asr_11_0_597bf05c40469981:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_597bf05c40469981")) generate
    core_instance0: asr_11_0_597bf05c40469981
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
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
use ieee.std_logic_unsigned.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xltdm is
    generic (
        num_inputs    : integer := 2;
        data_width    : integer := 4;
        hasValid      : integer := 0);
    port (
        src_clk: in std_logic;
        src_ce: in std_logic;
        dest_clk: in std_logic;
        dest_ce: in std_logic;
    d0 : in std_logic_vector (data_width-1 downto 0):= (others => '0');
        d1 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d2 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d3 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d4 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d5 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d6 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d7 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d8 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d9 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d10 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d11 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d12 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d13 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d14 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d15 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d16 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d17 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d18 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d19 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d20 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d21 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d22 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d23 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d24 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d25 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d26 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d27 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d28 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d29 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d30 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
        d31 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    vin : in std_logic_vector (0 downto 0) := (others => '1');
        q : out std_logic_vector (data_width-1 downto 0);
        vout : out std_logic_vector (0 downto 0));
end xltdm;
architecture behavior of xltdm is
    type temp_array is array (0 to 31) of std_logic_vector(data_width-1 downto 0);
    signal din_temp : temp_array;

    signal src_en, dest_en : std_logic;
    signal indx_cntr : integer := 0;

begin
    dest_en <= dest_ce and vin(0);
    src_en <= src_ce and vin(0);
    vout <= vin;
    q <= din_temp(indx_cntr);
   index_counter : process(src_clk)
    begin
        if rising_edge(src_clk) then
                      if (src_en = '1') then
                indx_cntr <= 0;
            else
                if (dest_en = '1') then
                    indx_cntr <= indx_cntr + 1;
                end if;
                        end if;
        end if;
    end process;

    din_temp(0) <= d0;
    din_temp(1) <= d1;
    din_temp(2) <= d2;
    din_temp(3) <= d3;
    din_temp(4) <= d4;
    din_temp(5) <= d5;
    din_temp(6) <= d6;
    din_temp(7) <= d7;
    din_temp(8) <= d8;
    din_temp(9) <= d9;
    din_temp(10) <= d10;
    din_temp(11) <= d11;
    din_temp(12) <= d12;
    din_temp(13) <= d13;
    din_temp(14) <= d14;
    din_temp(15) <= d15;
    din_temp(16) <= d16;
    din_temp(17) <= d17;
    din_temp(18) <= d18;
    din_temp(19) <= d19;
    din_temp(20) <= d20;
    din_temp(21) <= d21;
    din_temp(22) <= d22;
    din_temp(23) <= d23;
    din_temp(24) <= d24;
    din_temp(25) <= d25;
    din_temp(26) <= d26;
    din_temp(27) <= d27;
    din_temp(28) <= d28;
    din_temp(29) <= d29;
    din_temp(30) <= d30;
    din_temp(31) <= d31;

end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_79c0cf3136 is
  port (
    b : in std_logic_vector((28 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_79c0cf3136;


architecture behavior of accum_79c0cf3136 is
  signal b_17_24: signed((28 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23_next: signed((32 - 1) downto 0);
  signal accum_reg_41_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal cast_51_22: signed((33 - 1) downto 0);
  signal cast_51_42: signed((33 - 1) downto 0);
  signal accum_reg_51_9_addsub: signed((33 - 1) downto 0);
  signal accum_reg_join_47_1: signed((33 - 1) downto 0);
  signal cast_accum_reg_41_23_next: signed((32 - 1) downto 0);
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        accum_reg_41_23 <= accum_reg_41_23_next;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_22 <= s2s_cast(accum_reg_41_23, 22, 33, 22);
  cast_51_42 <= s2s_cast(b_17_24, 22, 33, 22);
  accum_reg_51_9_addsub <= cast_51_22 + cast_51_42;
  proc_if_47_1: process (accum_reg_51_9_addsub, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1 <= s2s_cast(b_17_24, 22, 33, 22);
    else 
      accum_reg_join_47_1 <= accum_reg_51_9_addsub;
    end if;
  end process proc_if_47_1;
  cast_accum_reg_41_23_next <= s2s_cast(accum_reg_join_47_1, 22, 32, 22);
  accum_reg_41_23_next <= cast_accum_reg_41_23_next;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0f59f02ba5 is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0f59f02ba5;


architecture behavior of constant_0f59f02ba5 is
begin
  op <= "011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_1782056a32 is
  port (
    d : in std_logic_vector((2 - 1) downto 0);
    q : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_1782056a32;


architecture behavior of delay_1782056a32 is
  signal d_1_22: std_logic_vector((2 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_706b9eb7ce is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_706b9eb7ce;


architecture behavior of relational_706b9eb7ce is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal cast_12_17: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 3, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_274c6fde11 is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_274c6fde11;


architecture behavior of scale_274c6fde11 is
  signal ip_17_23: signed((32 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_rate_change_filters_txrx_2ch is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_rate_change_filters_txrx_2ch;
architecture behavior of xladdsub_rate_change_filters_txrx_2ch is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_4e87c9c942f9a11c
    port (
          a: in std_logic_vector(19 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(19 - 1 downto 0)
    );
  end component;
  component addsb_11_0_8ed98a9908037566
    port (
          a: in std_logic_vector(20 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(20 - 1 downto 0)
    );
  end component;
  component addsb_11_0_30599e13b79eaff5
    port (
          a: in std_logic_vector(21 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(21 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_4e87c9c942f9a11c")) generate
    core_instance0: addsb_11_0_4e87c9c942f9a11c
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_8ed98a9908037566")) generate
    core_instance1: addsb_11_0_8ed98a9908037566
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_30599e13b79eaff5")) generate
    core_instance2: addsb_11_0_30599e13b79eaff5
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Control & Coefficients/Rx Coefficients"

entity rx_coefficients_entity_d7b48a493e is
  port (
    addr: in std_logic_vector(1 downto 0); 
    ce_2: in std_logic; 
    clk_2: in std_logic; 
    rom_0_x0: out std_logic_vector(17 downto 0); 
    rom_10_x0: out std_logic_vector(17 downto 0); 
    rom_11_x0: out std_logic_vector(17 downto 0); 
    rom_12_x0: out std_logic_vector(17 downto 0); 
    rom_13_x0: out std_logic_vector(17 downto 0); 
    rom_14_x0: out std_logic_vector(17 downto 0); 
    rom_15_x0: out std_logic_vector(17 downto 0); 
    rom_1_x0: out std_logic_vector(17 downto 0); 
    rom_2_x0: out std_logic_vector(17 downto 0); 
    rom_3_x0: out std_logic_vector(17 downto 0); 
    rom_4_x0: out std_logic_vector(17 downto 0); 
    rom_5_x0: out std_logic_vector(17 downto 0); 
    rom_6_x0: out std_logic_vector(17 downto 0); 
    rom_7_x0: out std_logic_vector(17 downto 0); 
    rom_8_x0: out std_logic_vector(17 downto 0); 
    rom_9_x0: out std_logic_vector(17 downto 0)
  );
end rx_coefficients_entity_d7b48a493e;

architecture structural of rx_coefficients_entity_d7b48a493e is
  signal ce_2_sg_x0: std_logic;
  signal clk_2_sg_x0: std_logic;
  signal rom_0_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x0: std_logic_vector(17 downto 0);
  signal x2_bit_counter_op_net_x0: std_logic_vector(1 downto 0);

begin
  x2_bit_counter_op_net_x0 <= addr;
  ce_2_sg_x0 <= ce_2;
  clk_2_sg_x0 <= clk_2;
  rom_0_x0 <= rom_0_data_net_x0;
  rom_10_x0 <= rom_10_data_net_x0;
  rom_11_x0 <= rom_11_data_net_x0;
  rom_12_x0 <= rom_12_data_net_x0;
  rom_13_x0 <= rom_13_data_net_x0;
  rom_14_x0 <= rom_14_data_net_x0;
  rom_15_x0 <= rom_15_data_net_x0;
  rom_1_x0 <= rom_1_data_net_x0;
  rom_2_x0 <= rom_2_data_net_x0;
  rom_3_x0 <= rom_3_data_net_x0;
  rom_4_x0 <= rom_4_data_net_x0;
  rom_5_x0 <= rom_5_data_net_x0;
  rom_6_x0 <= rom_6_data_net_x0;
  rom_7_x0 <= rom_7_data_net_x0;
  rom_8_x0 <= rom_8_data_net_x0;
  rom_9_x0 <= rom_9_data_net_x0;

  rom_0: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_620a723f39b6b521",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_0_data_net_x0
    );

  rom_1: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_44a016e7bbf20c55",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_1_data_net_x0
    );

  rom_10: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_09b667907b137b19",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_10_data_net_x0
    );

  rom_11: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_e754a337110a9a61",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_11_data_net_x0
    );

  rom_12: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_06d08e1fe4aa4fc8",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_12_data_net_x0
    );

  rom_13: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_a5d34286aa2d813b",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_13_data_net_x0
    );

  rom_14: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_ce30a0daa329b557",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_14_data_net_x0
    );

  rom_15: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_5001c9c7e113a79b",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_15_data_net_x0
    );

  rom_2: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_028598dce83d7ad5",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_2_data_net_x0
    );

  rom_3: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_ad11112b0335bf51",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_3_data_net_x0
    );

  rom_4: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_79670dbac218c443",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_4_data_net_x0
    );

  rom_5: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_40b2d7b77c441b08",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_5_data_net_x0
    );

  rom_6: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_be3d7f4412623d74",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_6_data_net_x0
    );

  rom_7: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_01881a62ed6d8354",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_7_data_net_x0
    );

  rom_8: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_0db9fd72c1a8b774",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_8_data_net_x0
    );

  rom_9: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_e0c678d57737019d",
      latency => 1
    )
    port map (
      addr => x2_bit_counter_op_net_x0,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      en => "1",
      data => rom_9_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Control & Coefficients/Tx Coefficients"

entity tx_coefficients_entity_32dc025913 is
  port (
    addr: in std_logic_vector(1 downto 0); 
    ce_2: in std_logic; 
    clk_2: in std_logic; 
    tx_rom_0: out std_logic_vector(17 downto 0); 
    tx_rom_1: out std_logic_vector(17 downto 0); 
    tx_rom_2: out std_logic_vector(17 downto 0); 
    tx_rom_3: out std_logic_vector(17 downto 0); 
    tx_rom_4: out std_logic_vector(17 downto 0); 
    tx_rom_5: out std_logic_vector(17 downto 0); 
    tx_rom_6: out std_logic_vector(17 downto 0); 
    tx_rom_7: out std_logic_vector(17 downto 0)
  );
end tx_coefficients_entity_32dc025913;

architecture structural of tx_coefficients_entity_32dc025913 is
  signal ce_2_sg_x1: std_logic;
  signal clk_2_sg_x1: std_logic;
  signal delay_q_net_x0: std_logic_vector(1 downto 0);
  signal rom_0_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x0: std_logic_vector(17 downto 0);

begin
  delay_q_net_x0 <= addr;
  ce_2_sg_x1 <= ce_2;
  clk_2_sg_x1 <= clk_2;
  tx_rom_0 <= rom_0_data_net_x0;
  tx_rom_1 <= rom_1_data_net_x0;
  tx_rom_2 <= rom_2_data_net_x0;
  tx_rom_3 <= rom_3_data_net_x0;
  tx_rom_4 <= rom_4_data_net_x0;
  tx_rom_5 <= rom_5_data_net_x0;
  tx_rom_6 <= rom_6_data_net_x0;
  tx_rom_7 <= rom_7_data_net_x0;

  rom_0: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_b57caca5d7a9e9ce",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_0_data_net_x0
    );

  rom_1: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_b11308332472044c",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_1_data_net_x0
    );

  rom_2: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_67d31cf7dc7c210a",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_2_data_net_x0
    );

  rom_3: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_9597ec0fc16677a4",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_3_data_net_x0
    );

  rom_4: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_537be620516e9499",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_4_data_net_x0
    );

  rom_5: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_11bed54822ead293",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_5_data_net_x0
    );

  rom_6: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_3913ec4c2c742f6b",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_6_data_net_x0
    );

  rom_7: entity work.xlsprom_dist_rate_change_filters_txrx_2ch
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_72_4bb4a7d145e1d5f4",
      latency => 1
    )
    port map (
      addr => delay_q_net_x0,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      en => "1",
      data => rom_7_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Control & Coefficients"

entity \control___coefficients_entity_921d0096f5\ is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    from_register: in std_logic_vector(31 downto 0); 
    coefaddr: out std_logic_vector(1 downto 0); 
    constant_x1: out std_logic; 
    convert_x0: out std_logic_vector(31 downto 0); 
    rx_coefficients: out std_logic_vector(17 downto 0); 
    rx_coefficients_x0: out std_logic_vector(17 downto 0); 
    rx_coefficients_x1: out std_logic_vector(17 downto 0); 
    rx_coefficients_x10: out std_logic_vector(17 downto 0); 
    rx_coefficients_x11: out std_logic_vector(17 downto 0); 
    rx_coefficients_x12: out std_logic_vector(17 downto 0); 
    rx_coefficients_x13: out std_logic_vector(17 downto 0); 
    rx_coefficients_x14: out std_logic_vector(17 downto 0); 
    rx_coefficients_x2: out std_logic_vector(17 downto 0); 
    rx_coefficients_x3: out std_logic_vector(17 downto 0); 
    rx_coefficients_x4: out std_logic_vector(17 downto 0); 
    rx_coefficients_x5: out std_logic_vector(17 downto 0); 
    rx_coefficients_x6: out std_logic_vector(17 downto 0); 
    rx_coefficients_x7: out std_logic_vector(17 downto 0); 
    rx_coefficients_x8: out std_logic_vector(17 downto 0); 
    rx_coefficients_x9: out std_logic_vector(17 downto 0); 
    tx_coefficients: out std_logic_vector(17 downto 0); 
    tx_coefficients_x0: out std_logic_vector(17 downto 0); 
    tx_coefficients_x1: out std_logic_vector(17 downto 0); 
    tx_coefficients_x2: out std_logic_vector(17 downto 0); 
    tx_coefficients_x3: out std_logic_vector(17 downto 0); 
    tx_coefficients_x4: out std_logic_vector(17 downto 0); 
    tx_coefficients_x5: out std_logic_vector(17 downto 0); 
    tx_coefficients_x6: out std_logic_vector(17 downto 0)
  );
end \control___coefficients_entity_921d0096f5\;

architecture structural of \control___coefficients_entity_921d0096f5\ is
  signal ce_1_sg_x0: std_logic;
  signal ce_2_sg_x2: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal clk_2_sg_x2: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal delay_q_net_x0: std_logic_vector(1 downto 0);
  signal down_sample_q_net: std_logic;
  signal from_register_data_out_net_x0: std_logic_vector(31 downto 0);
  signal rom_0_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x1: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x1: std_logic_vector(17 downto 0);
  signal up_sample1_q_net: std_logic_vector(1 downto 0);
  signal x1lsb_y_net: std_logic;
  signal x2_bit_counter_op_net_x1: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  ce_2_sg_x2 <= ce_2;
  clk_1_sg_x0 <= clk_1;
  clk_2_sg_x2 <= clk_2;
  from_register_data_out_net_x0 <= from_register;
  coefaddr <= x2_bit_counter_op_net_x1;
  constant_x1 <= constant_op_net_x0;
  convert_x0 <= convert_dout_net_x0;
  rx_coefficients <= rom_0_data_net_x2;
  rx_coefficients_x0 <= rom_1_data_net_x2;
  rx_coefficients_x1 <= rom_10_data_net_x1;
  rx_coefficients_x10 <= rom_5_data_net_x2;
  rx_coefficients_x11 <= rom_6_data_net_x2;
  rx_coefficients_x12 <= rom_7_data_net_x2;
  rx_coefficients_x13 <= rom_8_data_net_x1;
  rx_coefficients_x14 <= rom_9_data_net_x1;
  rx_coefficients_x2 <= rom_11_data_net_x1;
  rx_coefficients_x3 <= rom_12_data_net_x1;
  rx_coefficients_x4 <= rom_13_data_net_x1;
  rx_coefficients_x5 <= rom_14_data_net_x1;
  rx_coefficients_x6 <= rom_15_data_net_x1;
  rx_coefficients_x7 <= rom_2_data_net_x2;
  rx_coefficients_x8 <= rom_3_data_net_x2;
  rx_coefficients_x9 <= rom_4_data_net_x2;
  tx_coefficients <= rom_0_data_net_x3;
  tx_coefficients_x0 <= rom_1_data_net_x3;
  tx_coefficients_x1 <= rom_2_data_net_x3;
  tx_coefficients_x2 <= rom_3_data_net_x3;
  tx_coefficients_x3 <= rom_4_data_net_x3;
  tx_coefficients_x4 <= rom_5_data_net_x3;
  tx_coefficients_x5 <= rom_6_data_net_x3;
  tx_coefficients_x6 <= rom_7_data_net_x3;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
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
      din => up_sample1_q_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_2_sg_x2,
      clk => clk_2_sg_x2,
      d => x2_bit_counter_op_net_x1,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => x1lsb_y_net,
      dest_ce => ce_2_sg_x2,
      dest_clk => clk_2_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x0,
      src_clk => clk_1_sg_x0,
      src_clr => '0',
      q(0) => down_sample_q_net
    );

  rx_coefficients_d7b48a493e: entity work.rx_coefficients_entity_d7b48a493e
    port map (
      addr => x2_bit_counter_op_net_x1,
      ce_2 => ce_2_sg_x2,
      clk_2 => clk_2_sg_x2,
      rom_0_x0 => rom_0_data_net_x2,
      rom_10_x0 => rom_10_data_net_x1,
      rom_11_x0 => rom_11_data_net_x1,
      rom_12_x0 => rom_12_data_net_x1,
      rom_13_x0 => rom_13_data_net_x1,
      rom_14_x0 => rom_14_data_net_x1,
      rom_15_x0 => rom_15_data_net_x1,
      rom_1_x0 => rom_1_data_net_x2,
      rom_2_x0 => rom_2_data_net_x2,
      rom_3_x0 => rom_3_data_net_x2,
      rom_4_x0 => rom_4_data_net_x2,
      rom_5_x0 => rom_5_data_net_x2,
      rom_6_x0 => rom_6_data_net_x2,
      rom_7_x0 => rom_7_data_net_x2,
      rom_8_x0 => rom_8_data_net_x1,
      rom_9_x0 => rom_9_data_net_x1
    );

  tx_coefficients_32dc025913: entity work.tx_coefficients_entity_32dc025913
    port map (
      addr => delay_q_net_x0,
      ce_2 => ce_2_sg_x2,
      clk_2 => clk_2_sg_x2,
      tx_rom_0 => rom_0_data_net_x3,
      tx_rom_1 => rom_1_data_net_x3,
      tx_rom_2 => rom_2_data_net_x3,
      tx_rom_3 => rom_3_data_net_x3,
      tx_rom_4 => rom_4_data_net_x3,
      tx_rom_5 => rom_5_data_net_x3,
      tx_rom_6 => rom_6_data_net_x3,
      tx_rom_7 => rom_7_data_net_x3
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2
    )
    port map (
      d => x2_bit_counter_op_net_x1,
      dest_ce => ce_1_sg_x0,
      dest_clk => clk_1_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x2,
      src_clk => clk_2_sg_x2,
      src_clr => '0',
      q => up_sample1_q_net
    );

  x1lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => from_register_data_out_net_x0,
      y(0) => x1lsb_y_net
    );

  x2_bit_counter: entity work.xlcounter_free_rate_change_filters_txrx_2ch
    generic map (
      core_name0 => "cntr_11_0_6454489cfe866515",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_2_sg_x2,
      clk => clk_2_sg_x2,
      clr => '0',
      en => "1",
      rst(0) => down_sample_q_net,
      op => x2_bit_counter_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/EDK Processor"

entity edk_processor_entity_c8fce31041 is
  port (
    axi_aresetn: in std_logic; 
    from_register: in std_logic_vector(31 downto 0); 
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
    to_register: in std_logic_vector(31 downto 0); 
    memmap_x0: out std_logic; 
    memmap_x1: out std_logic; 
    memmap_x10: out std_logic; 
    memmap_x11: out std_logic_vector(31 downto 0); 
    memmap_x12: out std_logic; 
    memmap_x2: out std_logic_vector(7 downto 0); 
    memmap_x3: out std_logic_vector(1 downto 0); 
    memmap_x4: out std_logic; 
    memmap_x5: out std_logic_vector(31 downto 0); 
    memmap_x6: out std_logic_vector(7 downto 0); 
    memmap_x7: out std_logic; 
    memmap_x8: out std_logic_vector(1 downto 0); 
    memmap_x9: out std_logic
  );
end edk_processor_entity_c8fce31041;

architecture structural of edk_processor_entity_c8fce31041 is
  signal axi_aresetn_net_x0: std_logic;
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
  signal memmap_sm_filteroptions_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_filteroptions_en_net_x0: std_logic;
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
  signal to_register_dout_net_x0: std_logic_vector(31 downto 0);

begin
  axi_aresetn_net_x0 <= axi_aresetn;
  from_register_data_out_net_x0 <= from_register;
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
  to_register_dout_net_x0 <= to_register;
  memmap_x0 <= memmap_s_axi_arready_net_x0;
  memmap_x1 <= memmap_s_axi_awready_net_x0;
  memmap_x10 <= memmap_s_axi_wready_net_x0;
  memmap_x11 <= memmap_sm_filteroptions_din_net_x0;
  memmap_x12 <= memmap_sm_filteroptions_en_net_x0;
  memmap_x2 <= memmap_s_axi_bid_net_x0;
  memmap_x3 <= memmap_s_axi_bresp_net_x0;
  memmap_x4 <= memmap_s_axi_bvalid_net_x0;
  memmap_x5 <= memmap_s_axi_rdata_net_x0;
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
      sm_coefcounter_dout => from_register_data_out_net_x0,
      sm_filteroptions_dout => to_register_dout_net_x0,
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
      sm_filteroptions_din => memmap_sm_filteroptions_din_net_x0,
      sm_filteroptions_en => memmap_sm_filteroptions_en_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Adders/Adder Tree"

entity adder_tree_entity_5934ffa93a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(23 downto 0); 
    in2: in std_logic_vector(23 downto 0); 
    in3: in std_logic_vector(23 downto 0); 
    in4: in std_logic_vector(23 downto 0); 
    in5: in std_logic_vector(23 downto 0); 
    in6: in std_logic_vector(23 downto 0); 
    in7: in std_logic_vector(23 downto 0); 
    in8: in std_logic_vector(23 downto 0); 
    out1: out std_logic_vector(26 downto 0)
  );
end adder_tree_entity_5934ffa93a;

architecture structural of adder_tree_entity_5934ffa93a is
  signal addsub1_s_net: std_logic_vector(24 downto 0);
  signal addsub2_s_net: std_logic_vector(25 downto 0);
  signal addsub3_s_net: std_logic_vector(24 downto 0);
  signal addsub4_s_net: std_logic_vector(24 downto 0);
  signal addsub5_s_net: std_logic_vector(25 downto 0);
  signal addsub6_s_net_x0: std_logic_vector(26 downto 0);
  signal addsub_s_net: std_logic_vector(24 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal mult1_p_net_x0: std_logic_vector(23 downto 0);
  signal mult2_p_net_x0: std_logic_vector(23 downto 0);
  signal mult3_p_net_x0: std_logic_vector(23 downto 0);
  signal mult4_p_net_x0: std_logic_vector(23 downto 0);
  signal mult5_p_net_x0: std_logic_vector(23 downto 0);
  signal mult6_p_net_x0: std_logic_vector(23 downto 0);
  signal mult7_p_net_x0: std_logic_vector(23 downto 0);
  signal mult8_p_net_x0: std_logic_vector(23 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  mult5_p_net_x0 <= in1;
  mult6_p_net_x0 <= in2;
  mult4_p_net_x0 <= in3;
  mult8_p_net_x0 <= in4;
  mult2_p_net_x0 <= in5;
  mult3_p_net_x0 <= in6;
  mult1_p_net_x0 <= in7;
  mult7_p_net_x0 <= in8;
  out1 <= addsub6_s_net_x0;

  addsub: entity work.addsub_fb3b65ea20
    port map (
      a => mult5_p_net_x0,
      b => mult6_p_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_fb3b65ea20
    port map (
      a => mult4_p_net_x0,
      b => mult8_p_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub1_s_net
    );

  addsub2: entity work.addsub_b4fd6cc060
    port map (
      a => addsub_s_net,
      b => addsub1_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub2_s_net
    );

  addsub3: entity work.addsub_fb3b65ea20
    port map (
      a => mult2_p_net_x0,
      b => mult3_p_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub3_s_net
    );

  addsub4: entity work.addsub_fb3b65ea20
    port map (
      a => mult1_p_net_x0,
      b => mult7_p_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.addsub_b4fd6cc060
    port map (
      a => addsub3_s_net,
      b => addsub4_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub5_s_net
    );

  addsub6: entity work.addsub_5648981406
    port map (
      a => addsub2_s_net,
      b => addsub5_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub6_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Adders"

entity adders_entity_9d69ff7704 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(23 downto 0); 
    in10: in std_logic_vector(23 downto 0); 
    in11: in std_logic_vector(23 downto 0); 
    in12: in std_logic_vector(23 downto 0); 
    in13: in std_logic_vector(23 downto 0); 
    in14: in std_logic_vector(23 downto 0); 
    in15: in std_logic_vector(23 downto 0); 
    in16: in std_logic_vector(23 downto 0); 
    in2: in std_logic_vector(23 downto 0); 
    in3: in std_logic_vector(23 downto 0); 
    in4: in std_logic_vector(23 downto 0); 
    in5: in std_logic_vector(23 downto 0); 
    in6: in std_logic_vector(23 downto 0); 
    in7: in std_logic_vector(23 downto 0); 
    in8: in std_logic_vector(23 downto 0); 
    in9: in std_logic_vector(23 downto 0); 
    out1: out std_logic_vector(27 downto 0)
  );
end adders_entity_9d69ff7704;

architecture structural of adders_entity_9d69ff7704 is
  signal addsub6_s_net_x0: std_logic_vector(26 downto 0);
  signal addsub6_s_net_x1: std_logic_vector(26 downto 0);
  signal addsub6_s_net_x2: std_logic_vector(27 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal mult10_p_net_x1: std_logic_vector(23 downto 0);
  signal mult11_p_net_x1: std_logic_vector(23 downto 0);
  signal mult12_p_net_x1: std_logic_vector(23 downto 0);
  signal mult13_p_net_x1: std_logic_vector(23 downto 0);
  signal mult14_p_net_x1: std_logic_vector(23 downto 0);
  signal mult15_p_net_x1: std_logic_vector(23 downto 0);
  signal mult16_p_net_x1: std_logic_vector(23 downto 0);
  signal mult1_p_net_x1: std_logic_vector(23 downto 0);
  signal mult2_p_net_x1: std_logic_vector(23 downto 0);
  signal mult3_p_net_x1: std_logic_vector(23 downto 0);
  signal mult4_p_net_x1: std_logic_vector(23 downto 0);
  signal mult5_p_net_x1: std_logic_vector(23 downto 0);
  signal mult6_p_net_x1: std_logic_vector(23 downto 0);
  signal mult7_p_net_x1: std_logic_vector(23 downto 0);
  signal mult8_p_net_x1: std_logic_vector(23 downto 0);
  signal mult9_p_net_x1: std_logic_vector(23 downto 0);

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  mult13_p_net_x1 <= in1;
  mult6_p_net_x1 <= in10;
  mult4_p_net_x1 <= in11;
  mult8_p_net_x1 <= in12;
  mult2_p_net_x1 <= in13;
  mult3_p_net_x1 <= in14;
  mult1_p_net_x1 <= in15;
  mult7_p_net_x1 <= in16;
  mult14_p_net_x1 <= in2;
  mult12_p_net_x1 <= in3;
  mult16_p_net_x1 <= in4;
  mult10_p_net_x1 <= in5;
  mult11_p_net_x1 <= in6;
  mult9_p_net_x1 <= in7;
  mult15_p_net_x1 <= in8;
  mult5_p_net_x1 <= in9;
  out1 <= addsub6_s_net_x2;

  adder_tree1_eaf340aa6b: entity work.adder_tree_entity_5934ffa93a
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      in1 => mult13_p_net_x1,
      in2 => mult14_p_net_x1,
      in3 => mult12_p_net_x1,
      in4 => mult16_p_net_x1,
      in5 => mult10_p_net_x1,
      in6 => mult11_p_net_x1,
      in7 => mult9_p_net_x1,
      in8 => mult15_p_net_x1,
      out1 => addsub6_s_net_x1
    );

  adder_tree_5934ffa93a: entity work.adder_tree_entity_5934ffa93a
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      in1 => mult5_p_net_x1,
      in2 => mult6_p_net_x1,
      in3 => mult4_p_net_x1,
      in4 => mult8_p_net_x1,
      in5 => mult2_p_net_x1,
      in6 => mult3_p_net_x1,
      in7 => mult1_p_net_x1,
      in8 => mult7_p_net_x1,
      out1 => addsub6_s_net_x0
    );

  addsub6: entity work.addsub_e0682e6552
    port map (
      a => addsub6_s_net_x1,
      b => addsub6_s_net_x0,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      s => addsub6_s_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Delays"

entity delays_entity_b9e90345f4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(13 downto 0); 
    in10: in std_logic_vector(13 downto 0); 
    in11: in std_logic_vector(13 downto 0); 
    in12: in std_logic_vector(13 downto 0); 
    in13: in std_logic_vector(13 downto 0); 
    in14: in std_logic_vector(13 downto 0); 
    in15: in std_logic_vector(13 downto 0); 
    in16: in std_logic_vector(13 downto 0); 
    in2: in std_logic_vector(13 downto 0); 
    in3: in std_logic_vector(13 downto 0); 
    in4: in std_logic_vector(13 downto 0); 
    in5: in std_logic_vector(13 downto 0); 
    in6: in std_logic_vector(13 downto 0); 
    in7: in std_logic_vector(13 downto 0); 
    in8: in std_logic_vector(13 downto 0); 
    in9: in std_logic_vector(13 downto 0); 
    out1: out std_logic_vector(13 downto 0); 
    out10: out std_logic_vector(13 downto 0); 
    out11: out std_logic_vector(13 downto 0); 
    out12: out std_logic_vector(13 downto 0); 
    out13: out std_logic_vector(13 downto 0); 
    out14: out std_logic_vector(13 downto 0); 
    out15: out std_logic_vector(13 downto 0); 
    out16: out std_logic_vector(13 downto 0); 
    out2: out std_logic_vector(13 downto 0); 
    out3: out std_logic_vector(13 downto 0); 
    out4: out std_logic_vector(13 downto 0); 
    out5: out std_logic_vector(13 downto 0); 
    out6: out std_logic_vector(13 downto 0); 
    out7: out std_logic_vector(13 downto 0); 
    out8: out std_logic_vector(13 downto 0); 
    out9: out std_logic_vector(13 downto 0)
  );
end delays_entity_b9e90345f4;

architecture structural of delays_entity_b9e90345f4 is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal register10_q_net: std_logic_vector(13 downto 0);
  signal register11_q_net: std_logic_vector(13 downto 0);
  signal register12_q_net: std_logic_vector(13 downto 0);
  signal register13_q_net: std_logic_vector(13 downto 0);
  signal register14_q_net: std_logic_vector(13 downto 0);
  signal register15_q_net: std_logic_vector(13 downto 0);
  signal register16_q_net: std_logic_vector(13 downto 0);
  signal register17_q_net: std_logic_vector(13 downto 0);
  signal register18_q_net_x0: std_logic_vector(13 downto 0);
  signal register19_q_net_x0: std_logic_vector(13 downto 0);
  signal register20_q_net_x0: std_logic_vector(13 downto 0);
  signal register21_q_net_x0: std_logic_vector(13 downto 0);
  signal register22_q_net_x0: std_logic_vector(13 downto 0);
  signal register23_q_net_x0: std_logic_vector(13 downto 0);
  signal register24_q_net_x0: std_logic_vector(13 downto 0);
  signal register25_q_net_x0: std_logic_vector(13 downto 0);
  signal register26_q_net_x0: std_logic_vector(13 downto 0);
  signal register27_q_net_x0: std_logic_vector(13 downto 0);
  signal register28_q_net_x0: std_logic_vector(13 downto 0);
  signal register29_q_net_x0: std_logic_vector(13 downto 0);
  signal register2_q_net: std_logic_vector(13 downto 0);
  signal register30_q_net_x0: std_logic_vector(13 downto 0);
  signal register31_q_net_x0: std_logic_vector(13 downto 0);
  signal register32_q_net_x0: std_logic_vector(13 downto 0);
  signal register33_q_net_x0: std_logic_vector(13 downto 0);
  signal register3_q_net: std_logic_vector(13 downto 0);
  signal register4_q_net: std_logic_vector(13 downto 0);
  signal register5_q_net: std_logic_vector(13 downto 0);
  signal register6_q_net: std_logic_vector(13 downto 0);
  signal register7_q_net: std_logic_vector(13 downto 0);
  signal register8_q_net: std_logic_vector(13 downto 0);
  signal register9_q_net: std_logic_vector(13 downto 0);
  signal time_division_multiplexer10_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer11_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer12_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer13_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer14_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer15_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer16_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer2_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer3_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer4_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer5_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer6_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer7_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer8_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer9_q_net_x0: std_logic_vector(13 downto 0);
  signal time_division_multiplexer_q_net_x0: std_logic_vector(13 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  time_division_multiplexer_q_net_x0 <= in1;
  time_division_multiplexer10_q_net_x0 <= in10;
  time_division_multiplexer11_q_net_x0 <= in11;
  time_division_multiplexer12_q_net_x0 <= in12;
  time_division_multiplexer13_q_net_x0 <= in13;
  time_division_multiplexer14_q_net_x0 <= in14;
  time_division_multiplexer15_q_net_x0 <= in15;
  time_division_multiplexer16_q_net_x0 <= in16;
  time_division_multiplexer2_q_net_x0 <= in2;
  time_division_multiplexer3_q_net_x0 <= in3;
  time_division_multiplexer4_q_net_x0 <= in4;
  time_division_multiplexer5_q_net_x0 <= in5;
  time_division_multiplexer6_q_net_x0 <= in6;
  time_division_multiplexer7_q_net_x0 <= in7;
  time_division_multiplexer8_q_net_x0 <= in8;
  time_division_multiplexer9_q_net_x0 <= in9;
  out1 <= register26_q_net_x0;
  out10 <= register19_q_net_x0;
  out11 <= register20_q_net_x0;
  out12 <= register21_q_net_x0;
  out13 <= register22_q_net_x0;
  out14 <= register23_q_net_x0;
  out15 <= register24_q_net_x0;
  out16 <= register25_q_net_x0;
  out2 <= register27_q_net_x0;
  out3 <= register28_q_net_x0;
  out4 <= register29_q_net_x0;
  out5 <= register30_q_net_x0;
  out6 <= register31_q_net_x0;
  out7 <= register32_q_net_x0;
  out8 <= register33_q_net_x0;
  out9 <= register18_q_net_x0;

  register10: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer9_q_net_x0,
      en => "1",
      rst => "0",
      q => register10_q_net
    );

  register11: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer10_q_net_x0,
      en => "1",
      rst => "0",
      q => register11_q_net
    );

  register12: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer11_q_net_x0,
      en => "1",
      rst => "0",
      q => register12_q_net
    );

  register13: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer12_q_net_x0,
      en => "1",
      rst => "0",
      q => register13_q_net
    );

  register14: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer13_q_net_x0,
      en => "1",
      rst => "0",
      q => register14_q_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer14_q_net_x0,
      en => "1",
      rst => "0",
      q => register15_q_net
    );

  register16: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer15_q_net_x0,
      en => "1",
      rst => "0",
      q => register16_q_net
    );

  register17: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer16_q_net_x0,
      en => "1",
      rst => "0",
      q => register17_q_net
    );

  register18: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register10_q_net,
      en => "1",
      rst => "0",
      q => register18_q_net_x0
    );

  register19: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register11_q_net,
      en => "1",
      rst => "0",
      q => register19_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer_q_net_x0,
      en => "1",
      rst => "0",
      q => register2_q_net
    );

  register20: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register12_q_net,
      en => "1",
      rst => "0",
      q => register20_q_net_x0
    );

  register21: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register13_q_net,
      en => "1",
      rst => "0",
      q => register21_q_net_x0
    );

  register22: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register14_q_net,
      en => "1",
      rst => "0",
      q => register22_q_net_x0
    );

  register23: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register15_q_net,
      en => "1",
      rst => "0",
      q => register23_q_net_x0
    );

  register24: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register16_q_net,
      en => "1",
      rst => "0",
      q => register24_q_net_x0
    );

  register25: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register17_q_net,
      en => "1",
      rst => "0",
      q => register25_q_net_x0
    );

  register26: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register2_q_net,
      en => "1",
      rst => "0",
      q => register26_q_net_x0
    );

  register27: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register3_q_net,
      en => "1",
      rst => "0",
      q => register27_q_net_x0
    );

  register28: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register4_q_net,
      en => "1",
      rst => "0",
      q => register28_q_net_x0
    );

  register29: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register5_q_net,
      en => "1",
      rst => "0",
      q => register29_q_net_x0
    );

  register3: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer2_q_net_x0,
      en => "1",
      rst => "0",
      q => register3_q_net
    );

  register30: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register6_q_net,
      en => "1",
      rst => "0",
      q => register30_q_net_x0
    );

  register31: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register7_q_net,
      en => "1",
      rst => "0",
      q => register31_q_net_x0
    );

  register32: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register8_q_net,
      en => "1",
      rst => "0",
      q => register32_q_net_x0
    );

  register33: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register9_q_net,
      en => "1",
      rst => "0",
      q => register33_q_net_x0
    );

  register4: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer3_q_net_x0,
      en => "1",
      rst => "0",
      q => register4_q_net
    );

  register5: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer4_q_net_x0,
      en => "1",
      rst => "0",
      q => register5_q_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer5_q_net_x0,
      en => "1",
      rst => "0",
      q => register6_q_net
    );

  register7: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer6_q_net_x0,
      en => "1",
      rst => "0",
      q => register7_q_net
    );

  register8: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer7_q_net_x0,
      en => "1",
      rst => "0",
      q => register8_q_net
    );

  register9: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => time_division_multiplexer8_q_net_x0,
      en => "1",
      rst => "0",
      q => register9_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/ROMS & Mults"

entity \roms___mults_entity_73095b5e49\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(13 downto 0); 
    in10: in std_logic_vector(13 downto 0); 
    in11: in std_logic_vector(13 downto 0); 
    in12: in std_logic_vector(13 downto 0); 
    in13: in std_logic_vector(13 downto 0); 
    in14: in std_logic_vector(13 downto 0); 
    in15: in std_logic_vector(13 downto 0); 
    in16: in std_logic_vector(13 downto 0); 
    in2: in std_logic_vector(13 downto 0); 
    in3: in std_logic_vector(13 downto 0); 
    in4: in std_logic_vector(13 downto 0); 
    in5: in std_logic_vector(13 downto 0); 
    in6: in std_logic_vector(13 downto 0); 
    in7: in std_logic_vector(13 downto 0); 
    in8: in std_logic_vector(13 downto 0); 
    in9: in std_logic_vector(13 downto 0); 
    rom_0: in std_logic_vector(17 downto 0); 
    rom_1: in std_logic_vector(17 downto 0); 
    rom_10: in std_logic_vector(17 downto 0); 
    rom_11: in std_logic_vector(17 downto 0); 
    rom_12: in std_logic_vector(17 downto 0); 
    rom_13: in std_logic_vector(17 downto 0); 
    rom_14: in std_logic_vector(17 downto 0); 
    rom_15: in std_logic_vector(17 downto 0); 
    rom_2: in std_logic_vector(17 downto 0); 
    rom_3: in std_logic_vector(17 downto 0); 
    rom_4: in std_logic_vector(17 downto 0); 
    rom_5: in std_logic_vector(17 downto 0); 
    rom_6: in std_logic_vector(17 downto 0); 
    rom_7: in std_logic_vector(17 downto 0); 
    rom_8: in std_logic_vector(17 downto 0); 
    rom_9: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(23 downto 0); 
    out10: out std_logic_vector(23 downto 0); 
    out11: out std_logic_vector(23 downto 0); 
    out12: out std_logic_vector(23 downto 0); 
    out13: out std_logic_vector(23 downto 0); 
    out14: out std_logic_vector(23 downto 0); 
    out15: out std_logic_vector(23 downto 0); 
    out16: out std_logic_vector(23 downto 0); 
    out2: out std_logic_vector(23 downto 0); 
    out3: out std_logic_vector(23 downto 0); 
    out4: out std_logic_vector(23 downto 0); 
    out5: out std_logic_vector(23 downto 0); 
    out6: out std_logic_vector(23 downto 0); 
    out7: out std_logic_vector(23 downto 0); 
    out8: out std_logic_vector(23 downto 0); 
    out9: out std_logic_vector(23 downto 0)
  );
end \roms___mults_entity_73095b5e49\;

architecture structural of \roms___mults_entity_73095b5e49\ is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal mult10_p_net_x2: std_logic_vector(23 downto 0);
  signal mult11_p_net_x2: std_logic_vector(23 downto 0);
  signal mult12_p_net_x2: std_logic_vector(23 downto 0);
  signal mult13_p_net_x2: std_logic_vector(23 downto 0);
  signal mult14_p_net_x2: std_logic_vector(23 downto 0);
  signal mult15_p_net_x2: std_logic_vector(23 downto 0);
  signal mult16_p_net_x2: std_logic_vector(23 downto 0);
  signal mult1_p_net_x2: std_logic_vector(23 downto 0);
  signal mult2_p_net_x2: std_logic_vector(23 downto 0);
  signal mult3_p_net_x2: std_logic_vector(23 downto 0);
  signal mult4_p_net_x2: std_logic_vector(23 downto 0);
  signal mult5_p_net_x2: std_logic_vector(23 downto 0);
  signal mult6_p_net_x2: std_logic_vector(23 downto 0);
  signal mult7_p_net_x2: std_logic_vector(23 downto 0);
  signal mult8_p_net_x2: std_logic_vector(23 downto 0);
  signal mult9_p_net_x2: std_logic_vector(23 downto 0);
  signal register18_q_net_x1: std_logic_vector(13 downto 0);
  signal register19_q_net_x1: std_logic_vector(13 downto 0);
  signal register20_q_net_x1: std_logic_vector(13 downto 0);
  signal register21_q_net_x1: std_logic_vector(13 downto 0);
  signal register22_q_net_x1: std_logic_vector(13 downto 0);
  signal register23_q_net_x1: std_logic_vector(13 downto 0);
  signal register24_q_net_x1: std_logic_vector(13 downto 0);
  signal register25_q_net_x1: std_logic_vector(13 downto 0);
  signal register26_q_net_x1: std_logic_vector(13 downto 0);
  signal register27_q_net_x1: std_logic_vector(13 downto 0);
  signal register28_q_net_x1: std_logic_vector(13 downto 0);
  signal register29_q_net_x1: std_logic_vector(13 downto 0);
  signal register30_q_net_x1: std_logic_vector(13 downto 0);
  signal register31_q_net_x1: std_logic_vector(13 downto 0);
  signal register32_q_net_x1: std_logic_vector(13 downto 0);
  signal register33_q_net_x1: std_logic_vector(13 downto 0);
  signal rom_0_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x2: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x2: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  register26_q_net_x1 <= in1;
  register19_q_net_x1 <= in10;
  register20_q_net_x1 <= in11;
  register21_q_net_x1 <= in12;
  register22_q_net_x1 <= in13;
  register23_q_net_x1 <= in14;
  register24_q_net_x1 <= in15;
  register25_q_net_x1 <= in16;
  register27_q_net_x1 <= in2;
  register28_q_net_x1 <= in3;
  register29_q_net_x1 <= in4;
  register30_q_net_x1 <= in5;
  register31_q_net_x1 <= in6;
  register32_q_net_x1 <= in7;
  register33_q_net_x1 <= in8;
  register18_q_net_x1 <= in9;
  rom_0_data_net_x3 <= rom_0;
  rom_1_data_net_x3 <= rom_1;
  rom_10_data_net_x2 <= rom_10;
  rom_11_data_net_x2 <= rom_11;
  rom_12_data_net_x2 <= rom_12;
  rom_13_data_net_x2 <= rom_13;
  rom_14_data_net_x2 <= rom_14;
  rom_15_data_net_x2 <= rom_15;
  rom_2_data_net_x3 <= rom_2;
  rom_3_data_net_x3 <= rom_3;
  rom_4_data_net_x3 <= rom_4;
  rom_5_data_net_x3 <= rom_5;
  rom_6_data_net_x3 <= rom_6;
  rom_7_data_net_x3 <= rom_7;
  rom_8_data_net_x2 <= rom_8;
  rom_9_data_net_x2 <= rom_9;
  out1 <= mult13_p_net_x2;
  out10 <= mult6_p_net_x2;
  out11 <= mult4_p_net_x2;
  out12 <= mult8_p_net_x2;
  out13 <= mult2_p_net_x2;
  out14 <= mult3_p_net_x2;
  out15 <= mult1_p_net_x2;
  out16 <= mult7_p_net_x2;
  out2 <= mult14_p_net_x2;
  out3 <= mult12_p_net_x2;
  out4 <= mult16_p_net_x2;
  out5 <= mult10_p_net_x2;
  out6 <= mult11_p_net_x2;
  out7 <= mult9_p_net_x2;
  out8 <= mult15_p_net_x2;
  out9 <= mult5_p_net_x2;

  mult1: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register24_q_net_x1,
      b => rom_1_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net_x2
    );

  mult10: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register30_q_net_x1,
      b => rom_11_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult10_p_net_x2
    );

  mult11: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register31_q_net_x1,
      b => rom_10_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult11_p_net_x2
    );

  mult12: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register28_q_net_x1,
      b => rom_13_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult12_p_net_x2
    );

  mult13: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register26_q_net_x1,
      b => rom_15_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult13_p_net_x2
    );

  mult14: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register27_q_net_x1,
      b => rom_14_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult14_p_net_x2
    );

  mult15: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register33_q_net_x1,
      b => rom_8_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult15_p_net_x2
    );

  mult16: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register29_q_net_x1,
      b => rom_12_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net_x2
    );

  mult2: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register22_q_net_x1,
      b => rom_3_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net_x2
    );

  mult3: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register23_q_net_x1,
      b => rom_2_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net_x2
    );

  mult4: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register20_q_net_x1,
      b => rom_5_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult4_p_net_x2
    );

  mult5: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register18_q_net_x1,
      b => rom_7_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult5_p_net_x2
    );

  mult6: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register19_q_net_x1,
      b => rom_6_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult6_p_net_x2
    );

  mult7: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register25_q_net_x1,
      b => rom_0_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult7_p_net_x2
    );

  mult8: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register21_q_net_x1,
      b => rom_4_data_net_x3,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult8_p_net_x2
    );

  mult9: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_413287803ea38355",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register32_q_net_x1,
      b => rom_9_data_net_x2,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult9_p_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Sample RAMs/MemoryA/TDD"

entity tdd_entity_7e524c987d is
  port (
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    x: in std_logic_vector(13 downto 0); 
    x_0: out std_logic_vector(13 downto 0); 
    x_1: out std_logic_vector(13 downto 0); 
    x_2: out std_logic_vector(13 downto 0); 
    x_3: out std_logic_vector(13 downto 0)
  );
end tdd_entity_7e524c987d;

architecture structural of tdd_entity_7e524c987d is
  signal ce_2_sg_x3: std_logic;
  signal ce_8_sg_x0: std_logic;
  signal clk_2_sg_x3: std_logic;
  signal clk_8_sg_x0: std_logic;
  signal down_sample_q_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q0_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q1_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q2_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q3_net_x0: std_logic_vector(13 downto 0);

begin
  ce_2_sg_x3 <= ce_2;
  ce_8_sg_x0 <= ce_8;
  clk_2_sg_x3 <= clk_2;
  clk_8_sg_x0 <= clk_8;
  down_sample_q_net_x0 <= x;
  x_0 <= tdd_q3_net_x0;
  x_1 <= tdd_q2_net_x0;
  x_2 <= tdd_q1_net_x0;
  x_3 <= tdd_q0_net_x0;

  tdd: entity work.xltdd_multich
    generic map (
      data_width => 14,
      frame_length => 4
    )
    port map (
      d => down_sample_q_net_x0,
      dest_ce => ce_8_sg_x0,
      dest_clk => clk_8_sg_x0,
      dest_clr => '0',
      src_ce => ce_2_sg_x3,
      src_clk => clk_2_sg_x3,
      src_clr => '0',
      q0 => tdd_q0_net_x0,
      q1 => tdd_q1_net_x0,
      q2 => tdd_q2_net_x0,
      q3 => tdd_q3_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Sample RAMs/MemoryA"

entity memorya_entity_faa1f19065 is
  port (
    addr: in std_logic_vector(1 downto 0); 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    x: in std_logic_vector(13 downto 0); 
    out1: out std_logic_vector(13 downto 0); 
    out10: out std_logic_vector(13 downto 0); 
    out11: out std_logic_vector(13 downto 0); 
    out12: out std_logic_vector(13 downto 0); 
    out13: out std_logic_vector(13 downto 0); 
    out14: out std_logic_vector(13 downto 0); 
    out15: out std_logic_vector(13 downto 0); 
    out16: out std_logic_vector(13 downto 0); 
    out2: out std_logic_vector(13 downto 0); 
    out3: out std_logic_vector(13 downto 0); 
    out4: out std_logic_vector(13 downto 0); 
    out5: out std_logic_vector(13 downto 0); 
    out6: out std_logic_vector(13 downto 0); 
    out7: out std_logic_vector(13 downto 0); 
    out8: out std_logic_vector(13 downto 0); 
    out9: out std_logic_vector(13 downto 0)
  );
end memorya_entity_faa1f19065;

architecture structural of memorya_entity_faa1f19065 is
  signal asr_0_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_10_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_11_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_12_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_13_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_14_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_15_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_1_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_2_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_3_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_4_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_5_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_6_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_7_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_8_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_9_q_net_x0: std_logic_vector(13 downto 0);
  signal ce_2_sg_x4: std_logic;
  signal ce_8_sg_x1: std_logic;
  signal clk_2_sg_x4: std_logic;
  signal clk_8_sg_x1: std_logic;
  signal delay10_q_net: std_logic_vector(13 downto 0);
  signal delay11_q_net: std_logic_vector(13 downto 0);
  signal delay12_q_net: std_logic_vector(13 downto 0);
  signal delay16_q_net_x0: std_logic_vector(1 downto 0);
  signal delay1_q_net: std_logic_vector(13 downto 0);
  signal delay2_q_net: std_logic_vector(13 downto 0);
  signal delay3_q_net: std_logic_vector(13 downto 0);
  signal delay4_q_net: std_logic_vector(13 downto 0);
  signal delay5_q_net: std_logic_vector(13 downto 0);
  signal delay6_q_net: std_logic_vector(13 downto 0);
  signal delay7_q_net: std_logic_vector(13 downto 0);
  signal delay8_q_net: std_logic_vector(13 downto 0);
  signal delay9_q_net: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(13 downto 0);
  signal tdd_q0_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q1_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q2_net_x0: std_logic_vector(13 downto 0);
  signal tdd_q3_net_x0: std_logic_vector(13 downto 0);

begin
  delay16_q_net_x0 <= addr;
  ce_2_sg_x4 <= ce_2;
  ce_8_sg_x1 <= ce_8;
  clk_2_sg_x4 <= clk_2;
  clk_8_sg_x1 <= clk_8;
  down_sample_q_net_x1 <= x;
  out1 <= asr_8_q_net_x0;
  out10 <= asr_1_q_net_x0;
  out11 <= asr_2_q_net_x0;
  out12 <= asr_3_q_net_x0;
  out13 <= asr_4_q_net_x0;
  out14 <= asr_5_q_net_x0;
  out15 <= asr_6_q_net_x0;
  out16 <= asr_7_q_net_x0;
  out2 <= asr_9_q_net_x0;
  out3 <= asr_10_q_net_x0;
  out4 <= asr_11_q_net_x0;
  out5 <= asr_12_q_net_x0;
  out6 <= asr_13_q_net_x0;
  out7 <= asr_14_q_net_x0;
  out8 <= asr_15_q_net_x0;
  out9 <= asr_0_q_net_x0;

  asr_0: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay3_q_net,
      en => "1",
      q => asr_0_q_net_x0
    );

  asr_1: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay2_q_net,
      en => "1",
      q => asr_1_q_net_x0
    );

  asr_10: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay10_q_net,
      en => "1",
      q => asr_10_q_net_x0
    );

  asr_11: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay9_q_net,
      en => "1",
      q => asr_11_q_net_x0
    );

  asr_12: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay8_q_net,
      en => "1",
      q => asr_12_q_net_x0
    );

  asr_13: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay7_q_net,
      en => "1",
      q => asr_13_q_net_x0
    );

  asr_14: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay6_q_net,
      en => "1",
      q => asr_14_q_net_x0
    );

  asr_15: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay5_q_net,
      en => "1",
      q => asr_15_q_net_x0
    );

  asr_2: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay1_q_net,
      en => "1",
      q => asr_2_q_net_x0
    );

  asr_3: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay4_q_net,
      en => "1",
      q => asr_3_q_net_x0
    );

  asr_4: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => tdd_q0_net_x0,
      en => "1",
      q => asr_4_q_net_x0
    );

  asr_5: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => tdd_q1_net_x0,
      en => "1",
      q => asr_5_q_net_x0
    );

  asr_6: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => tdd_q2_net_x0,
      en => "1",
      q => asr_6_q_net_x0
    );

  asr_7: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => tdd_q3_net_x0,
      en => "1",
      q => asr_7_q_net_x0
    );

  asr_8: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay12_q_net,
      en => "1",
      q => asr_8_q_net_x0
    );

  asr_9: entity work.xladdrsr_rate_change_filters_txrx_2ch
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 2,
      core_addr_width => 2,
      core_name0 => "asr_11_0_597bf05c40469981",
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      addr => delay16_q_net_x0,
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      clr => '0',
      d => delay11_q_net,
      en => "1",
      q => asr_9_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => tdd_q2_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay10: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay6_q_net,
      en => '1',
      rst => '1',
      q => delay10_q_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay7_q_net,
      en => '1',
      rst => '1',
      q => delay11_q_net
    );

  delay12: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay8_q_net,
      en => '1',
      rst => '1',
      q => delay12_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => tdd_q1_net_x0,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => tdd_q0_net_x0,
      en => '1',
      rst => '1',
      q => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => tdd_q3_net_x0,
      en => '1',
      rst => '1',
      q => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay4_q_net,
      en => '1',
      rst => '1',
      q => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay1_q_net,
      en => '1',
      rst => '1',
      q => delay6_q_net
    );

  delay7: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay2_q_net,
      en => '1',
      rst => '1',
      q => delay7_q_net
    );

  delay8: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay3_q_net,
      en => '1',
      rst => '1',
      q => delay8_q_net
    );

  delay9: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_8_sg_x1,
      clk => clk_8_sg_x1,
      d => delay5_q_net,
      en => '1',
      rst => '1',
      q => delay9_q_net
    );

  tdd_7e524c987d: entity work.tdd_entity_7e524c987d
    port map (
      ce_2 => ce_2_sg_x4,
      ce_8 => ce_8_sg_x1,
      clk_2 => clk_2_sg_x4,
      clk_8 => clk_8_sg_x1,
      x => down_sample_q_net_x1,
      x_0 => tdd_q3_net_x0,
      x_1 => tdd_q2_net_x0,
      x_2 => tdd_q1_net_x0,
      x_3 => tdd_q0_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A/Sample RAMs"

entity sample_rams_entity_995f75d437 is
  port (
    addr: in std_logic_vector(1 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    xa: in std_logic_vector(13 downto 0); 
    xb: in std_logic_vector(13 downto 0); 
    out1: out std_logic_vector(13 downto 0); 
    out10: out std_logic_vector(13 downto 0); 
    out11: out std_logic_vector(13 downto 0); 
    out12: out std_logic_vector(13 downto 0); 
    out13: out std_logic_vector(13 downto 0); 
    out14: out std_logic_vector(13 downto 0); 
    out15: out std_logic_vector(13 downto 0); 
    out16: out std_logic_vector(13 downto 0); 
    out2: out std_logic_vector(13 downto 0); 
    out3: out std_logic_vector(13 downto 0); 
    out4: out std_logic_vector(13 downto 0); 
    out5: out std_logic_vector(13 downto 0); 
    out6: out std_logic_vector(13 downto 0); 
    out7: out std_logic_vector(13 downto 0); 
    out8: out std_logic_vector(13 downto 0); 
    out9: out std_logic_vector(13 downto 0)
  );
end sample_rams_entity_995f75d437;

architecture structural of sample_rams_entity_995f75d437 is
  signal asr_0_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_0_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_10_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_10_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_11_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_11_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_12_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_12_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_13_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_13_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_14_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_14_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_15_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_15_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_1_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_1_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_2_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_2_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_3_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_3_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_4_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_4_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_5_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_5_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_6_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_6_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_7_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_7_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_8_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_8_q_net_x1: std_logic_vector(13 downto 0);
  signal asr_9_q_net_x0: std_logic_vector(13 downto 0);
  signal asr_9_q_net_x1: std_logic_vector(13 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal ce_2_sg_x7: std_logic;
  signal ce_8_sg_x4: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal clk_2_sg_x7: std_logic;
  signal clk_8_sg_x4: std_logic;
  signal delay16_q_net_x2: std_logic_vector(1 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(13 downto 0);
  signal time_division_multiplexer10_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer11_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer12_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer13_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer14_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer15_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer8_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer9_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer_q_net_x1: std_logic_vector(13 downto 0);

begin
  delay16_q_net_x2 <= addr;
  ce_1_sg_x6 <= ce_1;
  ce_2_sg_x7 <= ce_2;
  ce_8_sg_x4 <= ce_8;
  clk_1_sg_x6 <= clk_1;
  clk_2_sg_x7 <= clk_2;
  clk_8_sg_x4 <= clk_8;
  down_sample_q_net_x2 <= xa;
  down_sample1_q_net_x2 <= xb;
  out1 <= time_division_multiplexer_q_net_x1;
  out10 <= time_division_multiplexer10_q_net_x1;
  out11 <= time_division_multiplexer11_q_net_x1;
  out12 <= time_division_multiplexer12_q_net_x1;
  out13 <= time_division_multiplexer13_q_net_x1;
  out14 <= time_division_multiplexer14_q_net_x1;
  out15 <= time_division_multiplexer15_q_net_x1;
  out16 <= time_division_multiplexer16_q_net_x1;
  out2 <= time_division_multiplexer2_q_net_x1;
  out3 <= time_division_multiplexer3_q_net_x1;
  out4 <= time_division_multiplexer4_q_net_x1;
  out5 <= time_division_multiplexer5_q_net_x1;
  out6 <= time_division_multiplexer6_q_net_x1;
  out7 <= time_division_multiplexer7_q_net_x1;
  out8 <= time_division_multiplexer8_q_net_x1;
  out9 <= time_division_multiplexer9_q_net_x1;

  memorya_faa1f19065: entity work.memorya_entity_faa1f19065
    port map (
      addr => delay16_q_net_x2,
      ce_2 => ce_2_sg_x7,
      ce_8 => ce_8_sg_x4,
      clk_2 => clk_2_sg_x7,
      clk_8 => clk_8_sg_x4,
      x => down_sample_q_net_x2,
      out1 => asr_8_q_net_x0,
      out10 => asr_1_q_net_x0,
      out11 => asr_2_q_net_x0,
      out12 => asr_3_q_net_x0,
      out13 => asr_4_q_net_x0,
      out14 => asr_5_q_net_x0,
      out15 => asr_6_q_net_x0,
      out16 => asr_7_q_net_x0,
      out2 => asr_9_q_net_x0,
      out3 => asr_10_q_net_x0,
      out4 => asr_11_q_net_x0,
      out5 => asr_12_q_net_x0,
      out6 => asr_13_q_net_x0,
      out7 => asr_14_q_net_x0,
      out8 => asr_15_q_net_x0,
      out9 => asr_0_q_net_x0
    );

  memoryb_5eb698dedf: entity work.memorya_entity_faa1f19065
    port map (
      addr => delay16_q_net_x2,
      ce_2 => ce_2_sg_x7,
      ce_8 => ce_8_sg_x4,
      clk_2 => clk_2_sg_x7,
      clk_8 => clk_8_sg_x4,
      x => down_sample1_q_net_x2,
      out1 => asr_8_q_net_x1,
      out10 => asr_1_q_net_x1,
      out11 => asr_2_q_net_x1,
      out12 => asr_3_q_net_x1,
      out13 => asr_4_q_net_x1,
      out14 => asr_5_q_net_x1,
      out15 => asr_6_q_net_x1,
      out16 => asr_7_q_net_x1,
      out2 => asr_9_q_net_x1,
      out3 => asr_10_q_net_x1,
      out4 => asr_11_q_net_x1,
      out5 => asr_12_q_net_x1,
      out6 => asr_13_q_net_x1,
      out7 => asr_14_q_net_x1,
      out8 => asr_15_q_net_x1,
      out9 => asr_0_q_net_x1
    );

  time_division_multiplexer: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_8_q_net_x0,
      d1 => asr_8_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer_q_net_x1
    );

  time_division_multiplexer10: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_1_q_net_x0,
      d1 => asr_1_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer10_q_net_x1
    );

  time_division_multiplexer11: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_2_q_net_x0,
      d1 => asr_2_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer11_q_net_x1
    );

  time_division_multiplexer12: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_3_q_net_x0,
      d1 => asr_3_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer12_q_net_x1
    );

  time_division_multiplexer13: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_4_q_net_x0,
      d1 => asr_4_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer13_q_net_x1
    );

  time_division_multiplexer14: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_5_q_net_x0,
      d1 => asr_5_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer14_q_net_x1
    );

  time_division_multiplexer15: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_6_q_net_x0,
      d1 => asr_6_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer15_q_net_x1
    );

  time_division_multiplexer16: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_7_q_net_x0,
      d1 => asr_7_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer16_q_net_x1
    );

  time_division_multiplexer2: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_9_q_net_x0,
      d1 => asr_9_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer2_q_net_x1
    );

  time_division_multiplexer3: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_10_q_net_x0,
      d1 => asr_10_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer3_q_net_x1
    );

  time_division_multiplexer4: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_11_q_net_x0,
      d1 => asr_11_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer4_q_net_x1
    );

  time_division_multiplexer5: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_12_q_net_x0,
      d1 => asr_12_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer5_q_net_x1
    );

  time_division_multiplexer6: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_13_q_net_x0,
      d1 => asr_13_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer6_q_net_x1
    );

  time_division_multiplexer7: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_14_q_net_x0,
      d1 => asr_14_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer7_q_net_x1
    );

  time_division_multiplexer8: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_15_q_net_x0,
      d1 => asr_15_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer8_q_net_x1
    );

  time_division_multiplexer9: entity work.xltdm
    generic map (
      data_width => 14,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => asr_0_q_net_x0,
      d1 => asr_0_q_net_x1,
      dest_ce => ce_1_sg_x6,
      dest_clk => clk_1_sg_x6,
      src_ce => ce_2_sg_x7,
      src_clk => clk_2_sg_x7,
      q => time_division_multiplexer9_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation A"

entity x2_ch_decimation_a_entity_a1c6b9006f is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    coefaddr: in std_logic_vector(1 downto 0); 
    control_coefficients: in std_logic_vector(17 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x10: in std_logic_vector(17 downto 0); 
    control_coefficients_x11: in std_logic_vector(17 downto 0); 
    control_coefficients_x12: in std_logic_vector(17 downto 0); 
    control_coefficients_x13: in std_logic_vector(17 downto 0); 
    control_coefficients_x14: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    control_coefficients_x7: in std_logic_vector(17 downto 0); 
    control_coefficients_x8: in std_logic_vector(17 downto 0); 
    control_coefficients_x9: in std_logic_vector(17 downto 0); 
    xa: in std_logic_vector(13 downto 0); 
    xb: in std_logic_vector(13 downto 0); 
    ya: out std_logic_vector(13 downto 0); 
    yb: out std_logic_vector(13 downto 0)
  );
end x2_ch_decimation_a_entity_a1c6b9006f;

architecture structural of x2_ch_decimation_a_entity_a1c6b9006f is
  signal accumulator1_q_net: std_logic_vector(31 downto 0);
  signal accumulator_q_net: std_logic_vector(31 downto 0);
  signal addsub6_s_net_x2: std_logic_vector(27 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal ce_2_sg_x8: std_logic;
  signal ce_8_sg_x5: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal clk_2_sg_x8: std_logic;
  signal clk_8_sg_x5: std_logic;
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal convert1_dout_net: std_logic_vector(13 downto 0);
  signal convert_dout_net: std_logic_vector(13 downto 0);
  signal delay16_q_net_x2: std_logic_vector(1 downto 0);
  signal delay1_q_net: std_logic_vector(1 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(13 downto 0);
  signal down_sample1_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(13 downto 0);
  signal mult10_p_net_x2: std_logic_vector(23 downto 0);
  signal mult11_p_net_x2: std_logic_vector(23 downto 0);
  signal mult12_p_net_x2: std_logic_vector(23 downto 0);
  signal mult13_p_net_x2: std_logic_vector(23 downto 0);
  signal mult14_p_net_x2: std_logic_vector(23 downto 0);
  signal mult15_p_net_x2: std_logic_vector(23 downto 0);
  signal mult16_p_net_x2: std_logic_vector(23 downto 0);
  signal mult1_p_net_x2: std_logic_vector(23 downto 0);
  signal mult2_p_net_x2: std_logic_vector(23 downto 0);
  signal mult3_p_net_x2: std_logic_vector(23 downto 0);
  signal mult4_p_net_x2: std_logic_vector(23 downto 0);
  signal mult5_p_net_x2: std_logic_vector(23 downto 0);
  signal mult6_p_net_x2: std_logic_vector(23 downto 0);
  signal mult7_p_net_x2: std_logic_vector(23 downto 0);
  signal mult8_p_net_x2: std_logic_vector(23 downto 0);
  signal mult9_p_net_x2: std_logic_vector(23 downto 0);
  signal register18_q_net_x1: std_logic_vector(13 downto 0);
  signal register19_q_net_x1: std_logic_vector(13 downto 0);
  signal register1_q_net: std_logic_vector(13 downto 0);
  signal register20_q_net_x1: std_logic_vector(13 downto 0);
  signal register21_q_net_x1: std_logic_vector(13 downto 0);
  signal register22_q_net_x1: std_logic_vector(13 downto 0);
  signal register23_q_net_x1: std_logic_vector(13 downto 0);
  signal register24_q_net_x1: std_logic_vector(13 downto 0);
  signal register25_q_net_x1: std_logic_vector(13 downto 0);
  signal register26_q_net_x1: std_logic_vector(13 downto 0);
  signal register27_q_net_x1: std_logic_vector(13 downto 0);
  signal register28_q_net_x1: std_logic_vector(13 downto 0);
  signal register29_q_net_x1: std_logic_vector(13 downto 0);
  signal register30_q_net_x1: std_logic_vector(13 downto 0);
  signal register31_q_net_x1: std_logic_vector(13 downto 0);
  signal register32_q_net_x1: std_logic_vector(13 downto 0);
  signal register33_q_net_x1: std_logic_vector(13 downto 0);
  signal register_q_net: std_logic_vector(13 downto 0);
  signal relational_op_net: std_logic;
  signal rom_0_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x3: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x3: std_logic_vector(17 downto 0);
  signal scale1_op_net: std_logic_vector(31 downto 0);
  signal scale_op_net: std_logic_vector(31 downto 0);
  signal tdd_q0_net: std_logic_vector(27 downto 0);
  signal tdd_q1_net: std_logic_vector(27 downto 0);
  signal time_division_multiplexer10_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer11_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer12_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer13_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer14_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer15_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer8_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer9_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer_q_net_x1: std_logic_vector(13 downto 0);
  signal x2_bit_counter_op_net_x2: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  ce_2_sg_x8 <= ce_2;
  ce_8_sg_x5 <= ce_8;
  clk_1_sg_x7 <= clk_1;
  clk_2_sg_x8 <= clk_2;
  clk_8_sg_x5 <= clk_8;
  x2_bit_counter_op_net_x2 <= coefaddr;
  rom_0_data_net_x4 <= control_coefficients;
  rom_1_data_net_x4 <= control_coefficients_x0;
  rom_10_data_net_x3 <= control_coefficients_x1;
  rom_5_data_net_x4 <= control_coefficients_x10;
  rom_6_data_net_x4 <= control_coefficients_x11;
  rom_7_data_net_x4 <= control_coefficients_x12;
  rom_8_data_net_x3 <= control_coefficients_x13;
  rom_9_data_net_x3 <= control_coefficients_x14;
  rom_11_data_net_x3 <= control_coefficients_x2;
  rom_12_data_net_x3 <= control_coefficients_x3;
  rom_13_data_net_x3 <= control_coefficients_x4;
  rom_14_data_net_x3 <= control_coefficients_x5;
  rom_15_data_net_x3 <= control_coefficients_x6;
  rom_2_data_net_x4 <= control_coefficients_x7;
  rom_3_data_net_x4 <= control_coefficients_x8;
  rom_4_data_net_x4 <= control_coefficients_x9;
  down_sample_q_net_x3 <= xa;
  down_sample1_q_net_x3 <= xb;
  ya <= down_sample1_q_net_x0;
  yb <= down_sample_q_net_x0;

  accumulator: entity work.accum_79c0cf3136
    port map (
      b => tdd_q1_net,
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      clr => '0',
      rst(0) => relational_op_net,
      q => accumulator_q_net
    );

  accumulator1: entity work.accum_79c0cf3136
    port map (
      b => tdd_q0_net,
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      clr => '0',
      rst(0) => relational_op_net,
      q => accumulator1_q_net
    );

  adders_9d69ff7704: entity work.adders_entity_9d69ff7704
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in1 => mult13_p_net_x2,
      in10 => mult6_p_net_x2,
      in11 => mult4_p_net_x2,
      in12 => mult8_p_net_x2,
      in13 => mult2_p_net_x2,
      in14 => mult3_p_net_x2,
      in15 => mult1_p_net_x2,
      in16 => mult7_p_net_x2,
      in2 => mult14_p_net_x2,
      in3 => mult12_p_net_x2,
      in4 => mult16_p_net_x2,
      in5 => mult10_p_net_x2,
      in6 => mult11_p_net_x2,
      in7 => mult9_p_net_x2,
      in8 => mult15_p_net_x2,
      in9 => mult5_p_net_x2,
      out1 => addsub6_s_net_x2
    );

  constant_x0: entity work.constant_0f59f02ba5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      clr => '0',
      din => scale1_op_net,
      en => "1",
      dout => convert1_dout_net
    );

  delay1: entity work.delay_1782056a32
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => x2_bit_counter_op_net_x2,
      q => delay1_q_net
    );

  delay16: entity work.delay_1782056a32
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => x2_bit_counter_op_net_x2,
      q => delay16_q_net_x2
    );

  delays_b9e90345f4: entity work.delays_entity_b9e90345f4
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in1 => time_division_multiplexer_q_net_x1,
      in10 => time_division_multiplexer10_q_net_x1,
      in11 => time_division_multiplexer11_q_net_x1,
      in12 => time_division_multiplexer12_q_net_x1,
      in13 => time_division_multiplexer13_q_net_x1,
      in14 => time_division_multiplexer14_q_net_x1,
      in15 => time_division_multiplexer15_q_net_x1,
      in16 => time_division_multiplexer16_q_net_x1,
      in2 => time_division_multiplexer2_q_net_x1,
      in3 => time_division_multiplexer3_q_net_x1,
      in4 => time_division_multiplexer4_q_net_x1,
      in5 => time_division_multiplexer5_q_net_x1,
      in6 => time_division_multiplexer6_q_net_x1,
      in7 => time_division_multiplexer7_q_net_x1,
      in8 => time_division_multiplexer8_q_net_x1,
      in9 => time_division_multiplexer9_q_net_x1,
      out1 => register26_q_net_x1,
      out10 => register19_q_net_x1,
      out11 => register20_q_net_x1,
      out12 => register21_q_net_x1,
      out13 => register22_q_net_x1,
      out14 => register23_q_net_x1,
      out15 => register24_q_net_x1,
      out16 => register25_q_net_x1,
      out2 => register27_q_net_x1,
      out3 => register28_q_net_x1,
      out4 => register29_q_net_x1,
      out5 => register30_q_net_x1,
      out6 => register31_q_net_x1,
      out7 => register32_q_net_x1,
      out8 => register33_q_net_x1,
      out9 => register18_q_net_x1
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => register_q_net,
      dest_ce => ce_8_sg_x5,
      dest_clk => clk_8_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x8,
      src_clk => clk_2_sg_x8,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => register1_q_net,
      dest_ce => ce_8_sg_x5,
      dest_clk => clk_8_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x8,
      src_clk => clk_2_sg_x8,
      src_clr => '0',
      q => down_sample1_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      d => convert1_dout_net,
      en(0) => relational_op_net,
      rst => "0",
      q => register1_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_2_sg_x8,
      clk => clk_2_sg_x8,
      d => convert_dout_net,
      en(0) => relational_op_net,
      rst => "0",
      q => register_q_net
    );

  relational: entity work.relational_706b9eb7ce
    port map (
      a => constant_op_net,
      b => delay1_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  roms_mults_73095b5e49: entity work.\roms___mults_entity_73095b5e49\
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in1 => register26_q_net_x1,
      in10 => register19_q_net_x1,
      in11 => register20_q_net_x1,
      in12 => register21_q_net_x1,
      in13 => register22_q_net_x1,
      in14 => register23_q_net_x1,
      in15 => register24_q_net_x1,
      in16 => register25_q_net_x1,
      in2 => register27_q_net_x1,
      in3 => register28_q_net_x1,
      in4 => register29_q_net_x1,
      in5 => register30_q_net_x1,
      in6 => register31_q_net_x1,
      in7 => register32_q_net_x1,
      in8 => register33_q_net_x1,
      in9 => register18_q_net_x1,
      rom_0 => rom_0_data_net_x4,
      rom_1 => rom_1_data_net_x4,
      rom_10 => rom_10_data_net_x3,
      rom_11 => rom_11_data_net_x3,
      rom_12 => rom_12_data_net_x3,
      rom_13 => rom_13_data_net_x3,
      rom_14 => rom_14_data_net_x3,
      rom_15 => rom_15_data_net_x3,
      rom_2 => rom_2_data_net_x4,
      rom_3 => rom_3_data_net_x4,
      rom_4 => rom_4_data_net_x4,
      rom_5 => rom_5_data_net_x4,
      rom_6 => rom_6_data_net_x4,
      rom_7 => rom_7_data_net_x4,
      rom_8 => rom_8_data_net_x3,
      rom_9 => rom_9_data_net_x3,
      out1 => mult13_p_net_x2,
      out10 => mult6_p_net_x2,
      out11 => mult4_p_net_x2,
      out12 => mult8_p_net_x2,
      out13 => mult2_p_net_x2,
      out14 => mult3_p_net_x2,
      out15 => mult1_p_net_x2,
      out16 => mult7_p_net_x2,
      out2 => mult14_p_net_x2,
      out3 => mult12_p_net_x2,
      out4 => mult16_p_net_x2,
      out5 => mult10_p_net_x2,
      out6 => mult11_p_net_x2,
      out7 => mult9_p_net_x2,
      out8 => mult15_p_net_x2,
      out9 => mult5_p_net_x2
    );

  sample_rams_995f75d437: entity work.sample_rams_entity_995f75d437
    port map (
      addr => delay16_q_net_x2,
      ce_1 => ce_1_sg_x7,
      ce_2 => ce_2_sg_x8,
      ce_8 => ce_8_sg_x5,
      clk_1 => clk_1_sg_x7,
      clk_2 => clk_2_sg_x8,
      clk_8 => clk_8_sg_x5,
      xa => down_sample_q_net_x3,
      xb => down_sample1_q_net_x3,
      out1 => time_division_multiplexer_q_net_x1,
      out10 => time_division_multiplexer10_q_net_x1,
      out11 => time_division_multiplexer11_q_net_x1,
      out12 => time_division_multiplexer12_q_net_x1,
      out13 => time_division_multiplexer13_q_net_x1,
      out14 => time_division_multiplexer14_q_net_x1,
      out15 => time_division_multiplexer15_q_net_x1,
      out16 => time_division_multiplexer16_q_net_x1,
      out2 => time_division_multiplexer2_q_net_x1,
      out3 => time_division_multiplexer3_q_net_x1,
      out4 => time_division_multiplexer4_q_net_x1,
      out5 => time_division_multiplexer5_q_net_x1,
      out6 => time_division_multiplexer6_q_net_x1,
      out7 => time_division_multiplexer7_q_net_x1,
      out8 => time_division_multiplexer8_q_net_x1,
      out9 => time_division_multiplexer9_q_net_x1
    );

  scale: entity work.scale_274c6fde11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

  scale1: entity work.scale_274c6fde11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator1_q_net,
      op => scale1_op_net
    );

  tdd: entity work.xltdd_multich
    generic map (
      data_width => 28,
      frame_length => 2
    )
    port map (
      d => addsub6_s_net_x2,
      dest_ce => ce_2_sg_x8,
      dest_clk => clk_2_sg_x8,
      dest_clr => '0',
      src_ce => ce_1_sg_x7,
      src_clk => clk_1_sg_x7,
      src_clr => '0',
      q0 => tdd_q0_net,
      q1 => tdd_q1_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation B/ROMS & Mults"

entity \roms___mults_entity_6435740f2a\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(13 downto 0); 
    in10: in std_logic_vector(13 downto 0); 
    in11: in std_logic_vector(13 downto 0); 
    in12: in std_logic_vector(13 downto 0); 
    in13: in std_logic_vector(13 downto 0); 
    in14: in std_logic_vector(13 downto 0); 
    in15: in std_logic_vector(13 downto 0); 
    in16: in std_logic_vector(13 downto 0); 
    in2: in std_logic_vector(13 downto 0); 
    in3: in std_logic_vector(13 downto 0); 
    in4: in std_logic_vector(13 downto 0); 
    in5: in std_logic_vector(13 downto 0); 
    in6: in std_logic_vector(13 downto 0); 
    in7: in std_logic_vector(13 downto 0); 
    in8: in std_logic_vector(13 downto 0); 
    in9: in std_logic_vector(13 downto 0); 
    rom_0: in std_logic_vector(17 downto 0); 
    rom_1: in std_logic_vector(17 downto 0); 
    rom_10: in std_logic_vector(17 downto 0); 
    rom_11: in std_logic_vector(17 downto 0); 
    rom_12: in std_logic_vector(17 downto 0); 
    rom_13: in std_logic_vector(17 downto 0); 
    rom_14: in std_logic_vector(17 downto 0); 
    rom_15: in std_logic_vector(17 downto 0); 
    rom_2: in std_logic_vector(17 downto 0); 
    rom_3: in std_logic_vector(17 downto 0); 
    rom_4: in std_logic_vector(17 downto 0); 
    rom_5: in std_logic_vector(17 downto 0); 
    rom_6: in std_logic_vector(17 downto 0); 
    rom_7: in std_logic_vector(17 downto 0); 
    rom_8: in std_logic_vector(17 downto 0); 
    rom_9: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(23 downto 0); 
    out10: out std_logic_vector(23 downto 0); 
    out11: out std_logic_vector(23 downto 0); 
    out12: out std_logic_vector(23 downto 0); 
    out13: out std_logic_vector(23 downto 0); 
    out14: out std_logic_vector(23 downto 0); 
    out15: out std_logic_vector(23 downto 0); 
    out16: out std_logic_vector(23 downto 0); 
    out2: out std_logic_vector(23 downto 0); 
    out3: out std_logic_vector(23 downto 0); 
    out4: out std_logic_vector(23 downto 0); 
    out5: out std_logic_vector(23 downto 0); 
    out6: out std_logic_vector(23 downto 0); 
    out7: out std_logic_vector(23 downto 0); 
    out8: out std_logic_vector(23 downto 0); 
    out9: out std_logic_vector(23 downto 0)
  );
end \roms___mults_entity_6435740f2a\;

architecture structural of \roms___mults_entity_6435740f2a\ is
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal mult10_p_net_x2: std_logic_vector(23 downto 0);
  signal mult11_p_net_x2: std_logic_vector(23 downto 0);
  signal mult12_p_net_x2: std_logic_vector(23 downto 0);
  signal mult13_p_net_x2: std_logic_vector(23 downto 0);
  signal mult14_p_net_x2: std_logic_vector(23 downto 0);
  signal mult15_p_net_x2: std_logic_vector(23 downto 0);
  signal mult16_p_net_x2: std_logic_vector(23 downto 0);
  signal mult1_p_net_x2: std_logic_vector(23 downto 0);
  signal mult2_p_net_x2: std_logic_vector(23 downto 0);
  signal mult3_p_net_x2: std_logic_vector(23 downto 0);
  signal mult4_p_net_x2: std_logic_vector(23 downto 0);
  signal mult5_p_net_x2: std_logic_vector(23 downto 0);
  signal mult6_p_net_x2: std_logic_vector(23 downto 0);
  signal mult7_p_net_x2: std_logic_vector(23 downto 0);
  signal mult8_p_net_x2: std_logic_vector(23 downto 0);
  signal mult9_p_net_x2: std_logic_vector(23 downto 0);
  signal register18_q_net_x1: std_logic_vector(13 downto 0);
  signal register19_q_net_x1: std_logic_vector(13 downto 0);
  signal register20_q_net_x1: std_logic_vector(13 downto 0);
  signal register21_q_net_x1: std_logic_vector(13 downto 0);
  signal register22_q_net_x1: std_logic_vector(13 downto 0);
  signal register23_q_net_x1: std_logic_vector(13 downto 0);
  signal register24_q_net_x1: std_logic_vector(13 downto 0);
  signal register25_q_net_x1: std_logic_vector(13 downto 0);
  signal register26_q_net_x1: std_logic_vector(13 downto 0);
  signal register27_q_net_x1: std_logic_vector(13 downto 0);
  signal register28_q_net_x1: std_logic_vector(13 downto 0);
  signal register29_q_net_x1: std_logic_vector(13 downto 0);
  signal register30_q_net_x1: std_logic_vector(13 downto 0);
  signal register31_q_net_x1: std_logic_vector(13 downto 0);
  signal register32_q_net_x1: std_logic_vector(13 downto 0);
  signal register33_q_net_x1: std_logic_vector(13 downto 0);
  signal rom_0_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x4: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  register26_q_net_x1 <= in1;
  register19_q_net_x1 <= in10;
  register20_q_net_x1 <= in11;
  register21_q_net_x1 <= in12;
  register22_q_net_x1 <= in13;
  register23_q_net_x1 <= in14;
  register24_q_net_x1 <= in15;
  register25_q_net_x1 <= in16;
  register27_q_net_x1 <= in2;
  register28_q_net_x1 <= in3;
  register29_q_net_x1 <= in4;
  register30_q_net_x1 <= in5;
  register31_q_net_x1 <= in6;
  register32_q_net_x1 <= in7;
  register33_q_net_x1 <= in8;
  register18_q_net_x1 <= in9;
  rom_0_data_net_x5 <= rom_0;
  rom_1_data_net_x5 <= rom_1;
  rom_10_data_net_x4 <= rom_10;
  rom_11_data_net_x4 <= rom_11;
  rom_12_data_net_x4 <= rom_12;
  rom_13_data_net_x4 <= rom_13;
  rom_14_data_net_x4 <= rom_14;
  rom_15_data_net_x4 <= rom_15;
  rom_2_data_net_x5 <= rom_2;
  rom_3_data_net_x5 <= rom_3;
  rom_4_data_net_x5 <= rom_4;
  rom_5_data_net_x5 <= rom_5;
  rom_6_data_net_x5 <= rom_6;
  rom_7_data_net_x5 <= rom_7;
  rom_8_data_net_x4 <= rom_8;
  rom_9_data_net_x4 <= rom_9;
  out1 <= mult13_p_net_x2;
  out10 <= mult6_p_net_x2;
  out11 <= mult4_p_net_x2;
  out12 <= mult8_p_net_x2;
  out13 <= mult2_p_net_x2;
  out14 <= mult3_p_net_x2;
  out15 <= mult1_p_net_x2;
  out16 <= mult7_p_net_x2;
  out2 <= mult14_p_net_x2;
  out3 <= mult12_p_net_x2;
  out4 <= mult16_p_net_x2;
  out5 <= mult10_p_net_x2;
  out6 <= mult11_p_net_x2;
  out7 <= mult9_p_net_x2;
  out8 <= mult15_p_net_x2;
  out9 <= mult5_p_net_x2;

  mult1: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register24_q_net_x1,
      b => rom_1_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net_x2
    );

  mult10: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register30_q_net_x1,
      b => rom_11_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult10_p_net_x2
    );

  mult11: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register31_q_net_x1,
      b => rom_10_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult11_p_net_x2
    );

  mult12: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register28_q_net_x1,
      b => rom_13_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult12_p_net_x2
    );

  mult13: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register26_q_net_x1,
      b => rom_15_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult13_p_net_x2
    );

  mult14: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register27_q_net_x1,
      b => rom_14_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult14_p_net_x2
    );

  mult15: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register33_q_net_x1,
      b => rom_8_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult15_p_net_x2
    );

  mult16: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register29_q_net_x1,
      b => rom_12_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult16_p_net_x2
    );

  mult2: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register22_q_net_x1,
      b => rom_3_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net_x2
    );

  mult3: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register23_q_net_x1,
      b => rom_2_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net_x2
    );

  mult4: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register20_q_net_x1,
      b => rom_5_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult4_p_net_x2
    );

  mult5: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register18_q_net_x1,
      b => rom_7_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult5_p_net_x2
    );

  mult6: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register19_q_net_x1,
      b => rom_6_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult6_p_net_x2
    );

  mult7: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register25_q_net_x1,
      b => rom_0_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult7_p_net_x2
    );

  mult8: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register21_q_net_x1,
      b => rom_4_data_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult8_p_net_x2
    );

  mult9: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 14,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_4a23b6088e17bc61",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => register32_q_net_x1,
      b => rom_9_data_net_x4,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult9_p_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path/2-Ch Decimation B"

entity x2_ch_decimation_b_entity_d7ce389590 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    coefaddr: in std_logic_vector(1 downto 0); 
    control_coefficients: in std_logic_vector(17 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x10: in std_logic_vector(17 downto 0); 
    control_coefficients_x11: in std_logic_vector(17 downto 0); 
    control_coefficients_x12: in std_logic_vector(17 downto 0); 
    control_coefficients_x13: in std_logic_vector(17 downto 0); 
    control_coefficients_x14: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    control_coefficients_x7: in std_logic_vector(17 downto 0); 
    control_coefficients_x8: in std_logic_vector(17 downto 0); 
    control_coefficients_x9: in std_logic_vector(17 downto 0); 
    xa: in std_logic_vector(13 downto 0); 
    xb: in std_logic_vector(13 downto 0); 
    ya: out std_logic_vector(13 downto 0); 
    yb: out std_logic_vector(13 downto 0)
  );
end x2_ch_decimation_b_entity_d7ce389590;

architecture structural of x2_ch_decimation_b_entity_d7ce389590 is
  signal accumulator1_q_net: std_logic_vector(31 downto 0);
  signal accumulator_q_net: std_logic_vector(31 downto 0);
  signal addsub6_s_net_x2: std_logic_vector(27 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal ce_2_sg_x14: std_logic;
  signal ce_8_sg_x11: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal clk_2_sg_x14: std_logic;
  signal clk_8_sg_x11: std_logic;
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal convert1_dout_net: std_logic_vector(13 downto 0);
  signal convert_dout_net: std_logic_vector(13 downto 0);
  signal delay16_q_net_x2: std_logic_vector(1 downto 0);
  signal delay1_q_net: std_logic_vector(1 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(13 downto 0);
  signal down_sample2_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample3_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(13 downto 0);
  signal mult10_p_net_x2: std_logic_vector(23 downto 0);
  signal mult11_p_net_x2: std_logic_vector(23 downto 0);
  signal mult12_p_net_x2: std_logic_vector(23 downto 0);
  signal mult13_p_net_x2: std_logic_vector(23 downto 0);
  signal mult14_p_net_x2: std_logic_vector(23 downto 0);
  signal mult15_p_net_x2: std_logic_vector(23 downto 0);
  signal mult16_p_net_x2: std_logic_vector(23 downto 0);
  signal mult1_p_net_x2: std_logic_vector(23 downto 0);
  signal mult2_p_net_x2: std_logic_vector(23 downto 0);
  signal mult3_p_net_x2: std_logic_vector(23 downto 0);
  signal mult4_p_net_x2: std_logic_vector(23 downto 0);
  signal mult5_p_net_x2: std_logic_vector(23 downto 0);
  signal mult6_p_net_x2: std_logic_vector(23 downto 0);
  signal mult7_p_net_x2: std_logic_vector(23 downto 0);
  signal mult8_p_net_x2: std_logic_vector(23 downto 0);
  signal mult9_p_net_x2: std_logic_vector(23 downto 0);
  signal register18_q_net_x1: std_logic_vector(13 downto 0);
  signal register19_q_net_x1: std_logic_vector(13 downto 0);
  signal register1_q_net: std_logic_vector(13 downto 0);
  signal register20_q_net_x1: std_logic_vector(13 downto 0);
  signal register21_q_net_x1: std_logic_vector(13 downto 0);
  signal register22_q_net_x1: std_logic_vector(13 downto 0);
  signal register23_q_net_x1: std_logic_vector(13 downto 0);
  signal register24_q_net_x1: std_logic_vector(13 downto 0);
  signal register25_q_net_x1: std_logic_vector(13 downto 0);
  signal register26_q_net_x1: std_logic_vector(13 downto 0);
  signal register27_q_net_x1: std_logic_vector(13 downto 0);
  signal register28_q_net_x1: std_logic_vector(13 downto 0);
  signal register29_q_net_x1: std_logic_vector(13 downto 0);
  signal register30_q_net_x1: std_logic_vector(13 downto 0);
  signal register31_q_net_x1: std_logic_vector(13 downto 0);
  signal register32_q_net_x1: std_logic_vector(13 downto 0);
  signal register33_q_net_x1: std_logic_vector(13 downto 0);
  signal register_q_net: std_logic_vector(13 downto 0);
  signal relational_op_net: std_logic;
  signal rom_0_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x5: std_logic_vector(17 downto 0);
  signal scale1_op_net: std_logic_vector(31 downto 0);
  signal scale_op_net: std_logic_vector(31 downto 0);
  signal tdd_q0_net: std_logic_vector(27 downto 0);
  signal tdd_q1_net: std_logic_vector(27 downto 0);
  signal time_division_multiplexer10_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer11_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer12_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer13_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer14_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer15_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer8_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer9_q_net_x1: std_logic_vector(13 downto 0);
  signal time_division_multiplexer_q_net_x1: std_logic_vector(13 downto 0);
  signal x2_bit_counter_op_net_x3: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  ce_2_sg_x14 <= ce_2;
  ce_8_sg_x11 <= ce_8;
  clk_1_sg_x14 <= clk_1;
  clk_2_sg_x14 <= clk_2;
  clk_8_sg_x11 <= clk_8;
  x2_bit_counter_op_net_x3 <= coefaddr;
  rom_0_data_net_x6 <= control_coefficients;
  rom_1_data_net_x6 <= control_coefficients_x0;
  rom_10_data_net_x5 <= control_coefficients_x1;
  rom_5_data_net_x6 <= control_coefficients_x10;
  rom_6_data_net_x6 <= control_coefficients_x11;
  rom_7_data_net_x6 <= control_coefficients_x12;
  rom_8_data_net_x5 <= control_coefficients_x13;
  rom_9_data_net_x5 <= control_coefficients_x14;
  rom_11_data_net_x5 <= control_coefficients_x2;
  rom_12_data_net_x5 <= control_coefficients_x3;
  rom_13_data_net_x5 <= control_coefficients_x4;
  rom_14_data_net_x5 <= control_coefficients_x5;
  rom_15_data_net_x5 <= control_coefficients_x6;
  rom_2_data_net_x6 <= control_coefficients_x7;
  rom_3_data_net_x6 <= control_coefficients_x8;
  rom_4_data_net_x6 <= control_coefficients_x9;
  down_sample2_q_net_x3 <= xa;
  down_sample3_q_net_x3 <= xb;
  ya <= down_sample1_q_net_x0;
  yb <= down_sample_q_net_x0;

  accumulator: entity work.accum_79c0cf3136
    port map (
      b => tdd_q1_net,
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      clr => '0',
      rst(0) => relational_op_net,
      q => accumulator_q_net
    );

  accumulator1: entity work.accum_79c0cf3136
    port map (
      b => tdd_q0_net,
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      clr => '0',
      rst(0) => relational_op_net,
      q => accumulator1_q_net
    );

  adders_1786d6697f: entity work.adders_entity_9d69ff7704
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in1 => mult13_p_net_x2,
      in10 => mult6_p_net_x2,
      in11 => mult4_p_net_x2,
      in12 => mult8_p_net_x2,
      in13 => mult2_p_net_x2,
      in14 => mult3_p_net_x2,
      in15 => mult1_p_net_x2,
      in16 => mult7_p_net_x2,
      in2 => mult14_p_net_x2,
      in3 => mult12_p_net_x2,
      in4 => mult16_p_net_x2,
      in5 => mult10_p_net_x2,
      in6 => mult11_p_net_x2,
      in7 => mult9_p_net_x2,
      in8 => mult15_p_net_x2,
      in9 => mult5_p_net_x2,
      out1 => addsub6_s_net_x2
    );

  constant_x0: entity work.constant_0f59f02ba5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      clr => '0',
      din => scale1_op_net,
      en => "1",
      dout => convert1_dout_net
    );

  delay1: entity work.delay_1782056a32
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => x2_bit_counter_op_net_x3,
      q => delay1_q_net
    );

  delay16: entity work.delay_1782056a32
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => x2_bit_counter_op_net_x3,
      q => delay16_q_net_x2
    );

  delays_4806a5cc5f: entity work.delays_entity_b9e90345f4
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in1 => time_division_multiplexer_q_net_x1,
      in10 => time_division_multiplexer10_q_net_x1,
      in11 => time_division_multiplexer11_q_net_x1,
      in12 => time_division_multiplexer12_q_net_x1,
      in13 => time_division_multiplexer13_q_net_x1,
      in14 => time_division_multiplexer14_q_net_x1,
      in15 => time_division_multiplexer15_q_net_x1,
      in16 => time_division_multiplexer16_q_net_x1,
      in2 => time_division_multiplexer2_q_net_x1,
      in3 => time_division_multiplexer3_q_net_x1,
      in4 => time_division_multiplexer4_q_net_x1,
      in5 => time_division_multiplexer5_q_net_x1,
      in6 => time_division_multiplexer6_q_net_x1,
      in7 => time_division_multiplexer7_q_net_x1,
      in8 => time_division_multiplexer8_q_net_x1,
      in9 => time_division_multiplexer9_q_net_x1,
      out1 => register26_q_net_x1,
      out10 => register19_q_net_x1,
      out11 => register20_q_net_x1,
      out12 => register21_q_net_x1,
      out13 => register22_q_net_x1,
      out14 => register23_q_net_x1,
      out15 => register24_q_net_x1,
      out16 => register25_q_net_x1,
      out2 => register27_q_net_x1,
      out3 => register28_q_net_x1,
      out4 => register29_q_net_x1,
      out5 => register30_q_net_x1,
      out6 => register31_q_net_x1,
      out7 => register32_q_net_x1,
      out8 => register33_q_net_x1,
      out9 => register18_q_net_x1
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => register_q_net,
      dest_ce => ce_8_sg_x11,
      dest_clk => clk_8_sg_x11,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x14,
      src_clk => clk_2_sg_x14,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => register1_q_net,
      dest_ce => ce_8_sg_x11,
      dest_clk => clk_8_sg_x11,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x14,
      src_clk => clk_2_sg_x14,
      src_clr => '0',
      q => down_sample1_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      d => convert1_dout_net,
      en(0) => relational_op_net,
      rst => "0",
      q => register1_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_2_sg_x14,
      clk => clk_2_sg_x14,
      d => convert_dout_net,
      en(0) => relational_op_net,
      rst => "0",
      q => register_q_net
    );

  relational: entity work.relational_706b9eb7ce
    port map (
      a => constant_op_net,
      b => delay1_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  roms_mults_6435740f2a: entity work.\roms___mults_entity_6435740f2a\
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in1 => register26_q_net_x1,
      in10 => register19_q_net_x1,
      in11 => register20_q_net_x1,
      in12 => register21_q_net_x1,
      in13 => register22_q_net_x1,
      in14 => register23_q_net_x1,
      in15 => register24_q_net_x1,
      in16 => register25_q_net_x1,
      in2 => register27_q_net_x1,
      in3 => register28_q_net_x1,
      in4 => register29_q_net_x1,
      in5 => register30_q_net_x1,
      in6 => register31_q_net_x1,
      in7 => register32_q_net_x1,
      in8 => register33_q_net_x1,
      in9 => register18_q_net_x1,
      rom_0 => rom_0_data_net_x6,
      rom_1 => rom_1_data_net_x6,
      rom_10 => rom_10_data_net_x5,
      rom_11 => rom_11_data_net_x5,
      rom_12 => rom_12_data_net_x5,
      rom_13 => rom_13_data_net_x5,
      rom_14 => rom_14_data_net_x5,
      rom_15 => rom_15_data_net_x5,
      rom_2 => rom_2_data_net_x6,
      rom_3 => rom_3_data_net_x6,
      rom_4 => rom_4_data_net_x6,
      rom_5 => rom_5_data_net_x6,
      rom_6 => rom_6_data_net_x6,
      rom_7 => rom_7_data_net_x6,
      rom_8 => rom_8_data_net_x5,
      rom_9 => rom_9_data_net_x5,
      out1 => mult13_p_net_x2,
      out10 => mult6_p_net_x2,
      out11 => mult4_p_net_x2,
      out12 => mult8_p_net_x2,
      out13 => mult2_p_net_x2,
      out14 => mult3_p_net_x2,
      out15 => mult1_p_net_x2,
      out16 => mult7_p_net_x2,
      out2 => mult14_p_net_x2,
      out3 => mult12_p_net_x2,
      out4 => mult16_p_net_x2,
      out5 => mult10_p_net_x2,
      out6 => mult11_p_net_x2,
      out7 => mult9_p_net_x2,
      out8 => mult15_p_net_x2,
      out9 => mult5_p_net_x2
    );

  sample_rams_ff2b4d5dbd: entity work.sample_rams_entity_995f75d437
    port map (
      addr => delay16_q_net_x2,
      ce_1 => ce_1_sg_x14,
      ce_2 => ce_2_sg_x14,
      ce_8 => ce_8_sg_x11,
      clk_1 => clk_1_sg_x14,
      clk_2 => clk_2_sg_x14,
      clk_8 => clk_8_sg_x11,
      xa => down_sample2_q_net_x3,
      xb => down_sample3_q_net_x3,
      out1 => time_division_multiplexer_q_net_x1,
      out10 => time_division_multiplexer10_q_net_x1,
      out11 => time_division_multiplexer11_q_net_x1,
      out12 => time_division_multiplexer12_q_net_x1,
      out13 => time_division_multiplexer13_q_net_x1,
      out14 => time_division_multiplexer14_q_net_x1,
      out15 => time_division_multiplexer15_q_net_x1,
      out16 => time_division_multiplexer16_q_net_x1,
      out2 => time_division_multiplexer2_q_net_x1,
      out3 => time_division_multiplexer3_q_net_x1,
      out4 => time_division_multiplexer4_q_net_x1,
      out5 => time_division_multiplexer5_q_net_x1,
      out6 => time_division_multiplexer6_q_net_x1,
      out7 => time_division_multiplexer7_q_net_x1,
      out8 => time_division_multiplexer8_q_net_x1,
      out9 => time_division_multiplexer9_q_net_x1
    );

  scale: entity work.scale_274c6fde11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

  scale1: entity work.scale_274c6fde11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator1_q_net,
      op => scale1_op_net
    );

  tdd: entity work.xltdd_multich
    generic map (
      data_width => 28,
      frame_length => 2
    )
    port map (
      d => addsub6_s_net_x2,
      dest_ce => ce_2_sg_x14,
      dest_clk => clk_2_sg_x14,
      dest_clr => '0',
      src_ce => ce_1_sg_x14,
      src_clk => clk_1_sg_x14,
      src_clr => '0',
      q0 => tdd_q0_net,
      q1 => tdd_q1_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Rx Path"

entity rx_path_entity_5ac61534c2 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    control_coefficients: in std_logic_vector(1 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x10: in std_logic_vector(17 downto 0); 
    control_coefficients_x11: in std_logic_vector(17 downto 0); 
    control_coefficients_x12: in std_logic_vector(17 downto 0); 
    control_coefficients_x13: in std_logic_vector(17 downto 0); 
    control_coefficients_x14: in std_logic_vector(17 downto 0); 
    control_coefficients_x15: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    control_coefficients_x7: in std_logic_vector(17 downto 0); 
    control_coefficients_x8: in std_logic_vector(17 downto 0); 
    control_coefficients_x9: in std_logic_vector(17 downto 0); 
    rxa_i_40m: in std_logic_vector(13 downto 0); 
    rxa_q_40m: in std_logic_vector(13 downto 0); 
    rxb_i_40m: in std_logic_vector(13 downto 0); 
    rxb_q_40m: in std_logic_vector(13 downto 0); 
    up_sample1_x0: out std_logic_vector(13 downto 0); 
    up_sample2_x0: out std_logic_vector(13 downto 0); 
    up_sample3_x0: out std_logic_vector(13 downto 0); 
    up_sample_x0: out std_logic_vector(13 downto 0)
  );
end rx_path_entity_5ac61534c2;

architecture structural of rx_path_entity_5ac61534c2 is
  signal ce_1_sg_x15: std_logic;
  signal ce_2_sg_x15: std_logic;
  signal ce_8_sg_x12: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal clk_2_sg_x15: std_logic;
  signal clk_8_sg_x12: std_logic;
  signal down_sample1_q_net_x0: std_logic_vector(13 downto 0);
  signal down_sample1_q_net_x1: std_logic_vector(13 downto 0);
  signal down_sample1_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample2_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample3_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(13 downto 0);
  signal rom_0_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x6: std_logic_vector(17 downto 0);
  signal rxa_i_40m_net_x0: std_logic_vector(13 downto 0);
  signal rxa_q_40m_net_x0: std_logic_vector(13 downto 0);
  signal rxb_i_40m_net_x0: std_logic_vector(13 downto 0);
  signal rxb_q_40m_net_x0: std_logic_vector(13 downto 0);
  signal up_sample1_q_net_x0: std_logic_vector(13 downto 0);
  signal up_sample2_q_net_x0: std_logic_vector(13 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(13 downto 0);
  signal up_sample_q_net_x0: std_logic_vector(13 downto 0);
  signal x2_bit_counter_op_net_x4: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x15 <= ce_1;
  ce_2_sg_x15 <= ce_2;
  ce_8_sg_x12 <= ce_8;
  clk_1_sg_x15 <= clk_1;
  clk_2_sg_x15 <= clk_2;
  clk_8_sg_x12 <= clk_8;
  x2_bit_counter_op_net_x4 <= control_coefficients;
  rom_0_data_net_x7 <= control_coefficients_x0;
  rom_1_data_net_x7 <= control_coefficients_x1;
  rom_4_data_net_x7 <= control_coefficients_x10;
  rom_5_data_net_x7 <= control_coefficients_x11;
  rom_6_data_net_x7 <= control_coefficients_x12;
  rom_7_data_net_x7 <= control_coefficients_x13;
  rom_8_data_net_x6 <= control_coefficients_x14;
  rom_9_data_net_x6 <= control_coefficients_x15;
  rom_10_data_net_x6 <= control_coefficients_x2;
  rom_11_data_net_x6 <= control_coefficients_x3;
  rom_12_data_net_x6 <= control_coefficients_x4;
  rom_13_data_net_x6 <= control_coefficients_x5;
  rom_14_data_net_x6 <= control_coefficients_x6;
  rom_15_data_net_x6 <= control_coefficients_x7;
  rom_2_data_net_x7 <= control_coefficients_x8;
  rom_3_data_net_x7 <= control_coefficients_x9;
  rxa_i_40m_net_x0 <= rxa_i_40m;
  rxa_q_40m_net_x0 <= rxa_q_40m;
  rxb_i_40m_net_x0 <= rxb_i_40m;
  rxb_q_40m_net_x0 <= rxb_q_40m;
  up_sample1_x0 <= up_sample1_q_net_x0;
  up_sample2_x0 <= up_sample2_q_net_x0;
  up_sample3_x0 <= up_sample3_q_net_x0;
  up_sample_x0 <= up_sample_q_net_x0;

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => rxa_i_40m_net_x0,
      dest_ce => ce_2_sg_x15,
      dest_clk => clk_2_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q => down_sample_q_net_x3
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => rxa_q_40m_net_x0,
      dest_ce => ce_2_sg_x15,
      dest_clk => clk_2_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q => down_sample1_q_net_x3
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => rxb_i_40m_net_x0,
      dest_ce => ce_2_sg_x15,
      dest_clk => clk_2_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q => down_sample2_q_net_x3
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => rxb_q_40m_net_x0,
      dest_ce => ce_2_sg_x15,
      dest_clk => clk_2_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q => down_sample3_q_net_x3
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample1_q_net_x0,
      dest_ce => ce_1_sg_x15,
      dest_clk => clk_1_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x12,
      src_clk => clk_8_sg_x12,
      src_clr => '0',
      q => up_sample_q_net_x0
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample_q_net_x0,
      dest_ce => ce_1_sg_x15,
      dest_clk => clk_1_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x12,
      src_clk => clk_8_sg_x12,
      src_clr => '0',
      q => up_sample1_q_net_x0
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample1_q_net_x1,
      dest_ce => ce_1_sg_x15,
      dest_clk => clk_1_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x12,
      src_clk => clk_8_sg_x12,
      src_clr => '0',
      q => up_sample2_q_net_x0
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample_q_net_x1,
      dest_ce => ce_1_sg_x15,
      dest_clk => clk_1_sg_x15,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x12,
      src_clk => clk_8_sg_x12,
      src_clr => '0',
      q => up_sample3_q_net_x0
    );

  x2_ch_decimation_a_a1c6b9006f: entity work.x2_ch_decimation_a_entity_a1c6b9006f
    port map (
      ce_1 => ce_1_sg_x15,
      ce_2 => ce_2_sg_x15,
      ce_8 => ce_8_sg_x12,
      clk_1 => clk_1_sg_x15,
      clk_2 => clk_2_sg_x15,
      clk_8 => clk_8_sg_x12,
      coefaddr => x2_bit_counter_op_net_x4,
      control_coefficients => rom_0_data_net_x7,
      control_coefficients_x0 => rom_1_data_net_x7,
      control_coefficients_x1 => rom_10_data_net_x6,
      control_coefficients_x10 => rom_5_data_net_x7,
      control_coefficients_x11 => rom_6_data_net_x7,
      control_coefficients_x12 => rom_7_data_net_x7,
      control_coefficients_x13 => rom_8_data_net_x6,
      control_coefficients_x14 => rom_9_data_net_x6,
      control_coefficients_x2 => rom_11_data_net_x6,
      control_coefficients_x3 => rom_12_data_net_x6,
      control_coefficients_x4 => rom_13_data_net_x6,
      control_coefficients_x5 => rom_14_data_net_x6,
      control_coefficients_x6 => rom_15_data_net_x6,
      control_coefficients_x7 => rom_2_data_net_x7,
      control_coefficients_x8 => rom_3_data_net_x7,
      control_coefficients_x9 => rom_4_data_net_x7,
      xa => down_sample_q_net_x3,
      xb => down_sample1_q_net_x3,
      ya => down_sample1_q_net_x0,
      yb => down_sample_q_net_x0
    );

  x2_ch_decimation_b_d7ce389590: entity work.x2_ch_decimation_b_entity_d7ce389590
    port map (
      ce_1 => ce_1_sg_x15,
      ce_2 => ce_2_sg_x15,
      ce_8 => ce_8_sg_x12,
      clk_1 => clk_1_sg_x15,
      clk_2 => clk_2_sg_x15,
      clk_8 => clk_8_sg_x12,
      coefaddr => x2_bit_counter_op_net_x4,
      control_coefficients => rom_0_data_net_x7,
      control_coefficients_x0 => rom_1_data_net_x7,
      control_coefficients_x1 => rom_10_data_net_x6,
      control_coefficients_x10 => rom_5_data_net_x7,
      control_coefficients_x11 => rom_6_data_net_x7,
      control_coefficients_x12 => rom_7_data_net_x7,
      control_coefficients_x13 => rom_8_data_net_x6,
      control_coefficients_x14 => rom_9_data_net_x6,
      control_coefficients_x2 => rom_11_data_net_x6,
      control_coefficients_x3 => rom_12_data_net_x6,
      control_coefficients_x4 => rom_13_data_net_x6,
      control_coefficients_x5 => rom_14_data_net_x6,
      control_coefficients_x6 => rom_15_data_net_x6,
      control_coefficients_x7 => rom_2_data_net_x7,
      control_coefficients_x8 => rom_3_data_net_x7,
      control_coefficients_x9 => rom_4_data_net_x7,
      xa => down_sample2_q_net_x3,
      xb => down_sample3_q_net_x3,
      ya => down_sample1_q_net_x1,
      yb => down_sample_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp A/Adders"

entity adders_entity_d50b966b8b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(17 downto 0); 
    in2: in std_logic_vector(17 downto 0); 
    in3: in std_logic_vector(17 downto 0); 
    in4: in std_logic_vector(17 downto 0); 
    in5: in std_logic_vector(17 downto 0); 
    in6: in std_logic_vector(17 downto 0); 
    in7: in std_logic_vector(17 downto 0); 
    in8: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(15 downto 0)
  );
end adders_entity_d50b966b8b;

architecture structural of adders_entity_d50b966b8b is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub2_s_net: std_logic_vector(19 downto 0);
  signal addsub3_s_net: std_logic_vector(18 downto 0);
  signal addsub4_s_net: std_logic_vector(18 downto 0);
  signal addsub5_s_net: std_logic_vector(19 downto 0);
  signal addsub7_s_net: std_logic_vector(18 downto 0);
  signal addsub8_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal mult1_p_net_x0: std_logic_vector(17 downto 0);
  signal mult2_p_net_x0: std_logic_vector(17 downto 0);
  signal mult3_p_net_x0: std_logic_vector(17 downto 0);
  signal mult4_p_net_x0: std_logic_vector(17 downto 0);
  signal mult5_p_net_x0: std_logic_vector(17 downto 0);
  signal mult6_p_net_x0: std_logic_vector(17 downto 0);
  signal mult7_p_net_x0: std_logic_vector(17 downto 0);
  signal mult8_p_net_x0: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  mult2_p_net_x0 <= in1;
  mult1_p_net_x0 <= in2;
  mult3_p_net_x0 <= in3;
  mult4_p_net_x0 <= in4;
  mult5_p_net_x0 <= in5;
  mult6_p_net_x0 <= in6;
  mult7_p_net_x0 <= in7;
  mult8_p_net_x0 <= in8;
  out1 <= addsub8_s_net_x0;

  addsub1: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 19,
      core_name0 => "addsb_11_0_4e87c9c942f9a11c",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 19,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 19
    )
    port map (
      a => mult3_p_net_x0,
      b => mult4_p_net_x0,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 19,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 19,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 20,
      core_name0 => "addsb_11_0_8ed98a9908037566",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 20,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 20
    )
    port map (
      a => addsub7_s_net,
      b => addsub1_s_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub2_s_net
    );

  addsub3: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 19,
      core_name0 => "addsb_11_0_4e87c9c942f9a11c",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 19,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 19
    )
    port map (
      a => mult5_p_net_x0,
      b => mult6_p_net_x0,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub3_s_net
    );

  addsub4: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 19,
      core_name0 => "addsb_11_0_4e87c9c942f9a11c",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 19,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 19
    )
    port map (
      a => mult7_p_net_x0,
      b => mult8_p_net_x0,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub4_s_net
    );

  addsub5: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 19,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 19,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 20,
      core_name0 => "addsb_11_0_8ed98a9908037566",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 20,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 20
    )
    port map (
      a => addsub3_s_net,
      b => addsub4_s_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub5_s_net
    );

  addsub7: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 19,
      core_name0 => "addsb_11_0_4e87c9c942f9a11c",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 19,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 17,
      s_width => 19
    )
    port map (
      a => mult2_p_net_x0,
      b => mult1_p_net_x0,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub7_s_net
    );

  addsub8: entity work.xladdsub_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 20,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 20,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 21,
      core_name0 => "addsb_11_0_30599e13b79eaff5",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 21,
      latency => 0,
      overflow => 3,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 15,
      s_width => 16
    )
    port map (
      a => addsub2_s_net,
      b => addsub5_s_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      s => addsub8_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp A/Mults & ROMs"

entity \mults___roms_entity_a68393a6a4\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(15 downto 0); 
    in2: in std_logic_vector(15 downto 0); 
    in3: in std_logic_vector(15 downto 0); 
    in4: in std_logic_vector(15 downto 0); 
    in5: in std_logic_vector(15 downto 0); 
    in6: in std_logic_vector(15 downto 0); 
    in7: in std_logic_vector(15 downto 0); 
    in8: in std_logic_vector(15 downto 0); 
    tx_rom_0: in std_logic_vector(17 downto 0); 
    tx_rom_1: in std_logic_vector(17 downto 0); 
    tx_rom_2: in std_logic_vector(17 downto 0); 
    tx_rom_3: in std_logic_vector(17 downto 0); 
    tx_rom_4: in std_logic_vector(17 downto 0); 
    tx_rom_5: in std_logic_vector(17 downto 0); 
    tx_rom_6: in std_logic_vector(17 downto 0); 
    tx_rom_7: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0); 
    out2: out std_logic_vector(17 downto 0); 
    out3: out std_logic_vector(17 downto 0); 
    out4: out std_logic_vector(17 downto 0); 
    out5: out std_logic_vector(17 downto 0); 
    out6: out std_logic_vector(17 downto 0); 
    out7: out std_logic_vector(17 downto 0); 
    out8: out std_logic_vector(17 downto 0)
  );
end \mults___roms_entity_a68393a6a4\;

architecture structural of \mults___roms_entity_a68393a6a4\ is
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal mult1_p_net_x1: std_logic_vector(17 downto 0);
  signal mult2_p_net_x1: std_logic_vector(17 downto 0);
  signal mult3_p_net_x1: std_logic_vector(17 downto 0);
  signal mult4_p_net_x1: std_logic_vector(17 downto 0);
  signal mult5_p_net_x1: std_logic_vector(17 downto 0);
  signal mult6_p_net_x1: std_logic_vector(17 downto 0);
  signal mult7_p_net_x1: std_logic_vector(17 downto 0);
  signal mult8_p_net_x1: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x4: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x4: std_logic_vector(17 downto 0);
  signal time_division_multiplexer16_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer1_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer2_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer3_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer4_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer5_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer6_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer7_q_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  time_division_multiplexer16_q_net_x0 <= in1;
  time_division_multiplexer1_q_net_x0 <= in2;
  time_division_multiplexer3_q_net_x0 <= in3;
  time_division_multiplexer2_q_net_x0 <= in4;
  time_division_multiplexer5_q_net_x0 <= in5;
  time_division_multiplexer4_q_net_x0 <= in6;
  time_division_multiplexer7_q_net_x0 <= in7;
  time_division_multiplexer6_q_net_x0 <= in8;
  rom_0_data_net_x4 <= tx_rom_0;
  rom_1_data_net_x4 <= tx_rom_1;
  rom_2_data_net_x4 <= tx_rom_2;
  rom_3_data_net_x4 <= tx_rom_3;
  rom_4_data_net_x4 <= tx_rom_4;
  rom_5_data_net_x4 <= tx_rom_5;
  rom_6_data_net_x4 <= tx_rom_6;
  rom_7_data_net_x4 <= tx_rom_7;
  out1 <= mult2_p_net_x1;
  out2 <= mult1_p_net_x1;
  out3 <= mult3_p_net_x1;
  out4 <= mult4_p_net_x1;
  out5 <= mult5_p_net_x1;
  out6 <= mult6_p_net_x1;
  out7 <= mult7_p_net_x1;
  out8 <= mult8_p_net_x1;

  mult1: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer1_q_net_x0,
      b => rom_1_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net_x1
    );

  mult2: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer16_q_net_x0,
      b => rom_0_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net_x1
    );

  mult3: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer3_q_net_x0,
      b => rom_2_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net_x1
    );

  mult4: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer2_q_net_x0,
      b => rom_3_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult4_p_net_x1
    );

  mult5: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer5_q_net_x0,
      b => rom_4_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult5_p_net_x1
    );

  mult6: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer4_q_net_x0,
      b => rom_5_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult6_p_net_x1
    );

  mult7: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer7_q_net_x0,
      b => rom_6_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult7_p_net_x1
    );

  mult8: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_cd074a7c6800c4d6",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer6_q_net_x0,
      b => rom_7_data_net_x4,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      core_ce => ce_1_sg_x17,
      core_clk => clk_1_sg_x17,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult8_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp A/Sample RAMs/Delays"

entity delays_entity_f19efca2a3 is
  port (
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0); 
    out3: out std_logic_vector(15 downto 0); 
    out4: out std_logic_vector(15 downto 0); 
    out5: out std_logic_vector(15 downto 0); 
    out6: out std_logic_vector(15 downto 0); 
    out7: out std_logic_vector(15 downto 0); 
    out8: out std_logic_vector(15 downto 0)
  );
end delays_entity_f19efca2a3;

architecture structural of delays_entity_f19efca2a3 is
  signal ce_2_sg_x16: std_logic;
  signal ce_8_sg_x13: std_logic;
  signal clk_2_sg_x16: std_logic;
  signal clk_8_sg_x13: std_logic;
  signal delay1_q_net: std_logic_vector(15 downto 0);
  signal delay2_q_net: std_logic_vector(15 downto 0);
  signal delay3_q_net: std_logic_vector(15 downto 0);
  signal delay4_q_net: std_logic_vector(15 downto 0);
  signal delay5_q_net: std_logic_vector(15 downto 0);
  signal delay6_q_net: std_logic_vector(15 downto 0);
  signal delay_q_net: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample10_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample15_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample4_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample5_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample6_q_net_x0: std_logic_vector(15 downto 0);

begin
  ce_2_sg_x16 <= ce_2;
  ce_8_sg_x13 <= ce_8;
  clk_2_sg_x16 <= clk_2;
  clk_8_sg_x13 <= clk_8;
  down_sample2_q_net_x0 <= x;
  out1 <= up_sample2_q_net_x0;
  out2 <= up_sample1_q_net_x0;
  out3 <= up_sample10_q_net_x0;
  out4 <= up_sample3_q_net_x0;
  out5 <= up_sample4_q_net_x0;
  out6 <= up_sample5_q_net_x0;
  out7 <= up_sample6_q_net_x0;
  out8 <= up_sample15_q_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => down_sample2_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay_q_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay1_q_net,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay2_q_net,
      en => '1',
      rst => '1',
      q => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay3_q_net,
      en => '1',
      rst => '1',
      q => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay4_q_net,
      en => '1',
      rst => '1',
      q => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_8_sg_x13,
      clk => clk_8_sg_x13,
      d => delay5_q_net,
      en => '1',
      rst => '1',
      q => delay6_q_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample1_q_net_x0
    );

  up_sample10: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay1_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample10_q_net_x0
    );

  up_sample15: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay6_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample15_q_net_x0
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => down_sample2_q_net_x0,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample2_q_net_x0
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay2_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample3_q_net_x0
    );

  up_sample4: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay3_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample4_q_net_x0
    );

  up_sample5: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay4_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample5_q_net_x0
    );

  up_sample6: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => delay5_q_net,
      dest_ce => ce_2_sg_x16,
      dest_clk => clk_2_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_8_sg_x13,
      src_clk => clk_8_sg_x13,
      src_clr => '0',
      q => up_sample6_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp A/Sample RAMs"

entity sample_rams_entity_9a2f3e86c8 is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0); 
    out3: out std_logic_vector(15 downto 0); 
    out4: out std_logic_vector(15 downto 0); 
    out5: out std_logic_vector(15 downto 0); 
    out6: out std_logic_vector(15 downto 0); 
    out7: out std_logic_vector(15 downto 0); 
    out8: out std_logic_vector(15 downto 0)
  );
end sample_rams_entity_9a2f3e86c8;

architecture structural of sample_rams_entity_9a2f3e86c8 is
  signal ce_1_sg_x18: std_logic;
  signal ce_2_sg_x18: std_logic;
  signal ce_8_sg_x15: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal clk_2_sg_x18: std_logic;
  signal clk_8_sg_x15: std_logic;
  signal down_sample1_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer1_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample10_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample10_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample15_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample15_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample1_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample2_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample3_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample4_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample4_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample5_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample5_q_net_x1: std_logic_vector(15 downto 0);
  signal up_sample6_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample6_q_net_x1: std_logic_vector(15 downto 0);

begin
  down_sample2_q_net_x1 <= a;
  down_sample1_q_net_x1 <= b;
  ce_1_sg_x18 <= ce_1;
  ce_2_sg_x18 <= ce_2;
  ce_8_sg_x15 <= ce_8;
  clk_1_sg_x18 <= clk_1;
  clk_2_sg_x18 <= clk_2;
  clk_8_sg_x15 <= clk_8;
  out1 <= time_division_multiplexer16_q_net_x1;
  out2 <= time_division_multiplexer1_q_net_x1;
  out3 <= time_division_multiplexer3_q_net_x1;
  out4 <= time_division_multiplexer2_q_net_x1;
  out5 <= time_division_multiplexer5_q_net_x1;
  out6 <= time_division_multiplexer4_q_net_x1;
  out7 <= time_division_multiplexer7_q_net_x1;
  out8 <= time_division_multiplexer6_q_net_x1;

  delays1_2e09d4ddbe: entity work.delays_entity_f19efca2a3
    port map (
      ce_2 => ce_2_sg_x18,
      ce_8 => ce_8_sg_x15,
      clk_2 => clk_2_sg_x18,
      clk_8 => clk_8_sg_x15,
      x => down_sample1_q_net_x1,
      out1 => up_sample2_q_net_x1,
      out2 => up_sample1_q_net_x1,
      out3 => up_sample10_q_net_x1,
      out4 => up_sample3_q_net_x1,
      out5 => up_sample4_q_net_x1,
      out6 => up_sample5_q_net_x1,
      out7 => up_sample6_q_net_x1,
      out8 => up_sample15_q_net_x1
    );

  delays_f19efca2a3: entity work.delays_entity_f19efca2a3
    port map (
      ce_2 => ce_2_sg_x18,
      ce_8 => ce_8_sg_x15,
      clk_2 => clk_2_sg_x18,
      clk_8 => clk_8_sg_x15,
      x => down_sample2_q_net_x1,
      out1 => up_sample2_q_net_x0,
      out2 => up_sample1_q_net_x0,
      out3 => up_sample10_q_net_x0,
      out4 => up_sample3_q_net_x0,
      out5 => up_sample4_q_net_x0,
      out6 => up_sample5_q_net_x0,
      out7 => up_sample6_q_net_x0,
      out8 => up_sample15_q_net_x0
    );

  time_division_multiplexer1: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample1_q_net_x0,
      d1 => up_sample1_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer1_q_net_x1
    );

  time_division_multiplexer16: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample2_q_net_x0,
      d1 => up_sample2_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer16_q_net_x1
    );

  time_division_multiplexer2: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample3_q_net_x0,
      d1 => up_sample3_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer2_q_net_x1
    );

  time_division_multiplexer3: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample10_q_net_x0,
      d1 => up_sample10_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer3_q_net_x1
    );

  time_division_multiplexer4: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample5_q_net_x0,
      d1 => up_sample5_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer4_q_net_x1
    );

  time_division_multiplexer5: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample4_q_net_x0,
      d1 => up_sample4_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer5_q_net_x1
    );

  time_division_multiplexer6: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample15_q_net_x0,
      d1 => up_sample15_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer6_q_net_x1
    );

  time_division_multiplexer7: entity work.xltdm
    generic map (
      data_width => 16,
      hasValid => 0,
      num_inputs => 2
    )
    port map (
      d0 => up_sample6_q_net_x0,
      d1 => up_sample6_q_net_x1,
      dest_ce => ce_1_sg_x18,
      dest_clk => clk_1_sg_x18,
      src_ce => ce_2_sg_x18,
      src_clk => clk_2_sg_x18,
      q => time_division_multiplexer7_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp A"

entity x2_ch_interp_a_entity_cb93480a34 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    control_coefficients: in std_logic_vector(17 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    xa: in std_logic_vector(15 downto 0); 
    xb: in std_logic_vector(15 downto 0); 
    ya: out std_logic_vector(15 downto 0); 
    yb: out std_logic_vector(15 downto 0)
  );
end x2_ch_interp_a_entity_cb93480a34;

architecture structural of x2_ch_interp_a_entity_cb93480a34 is
  signal addsub8_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x19: std_logic;
  signal ce_2_sg_x19: std_logic;
  signal ce_8_sg_x16: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal clk_2_sg_x19: std_logic;
  signal clk_8_sg_x16: std_logic;
  signal down_sample1_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x2: std_logic_vector(15 downto 0);
  signal mult1_p_net_x1: std_logic_vector(17 downto 0);
  signal mult2_p_net_x1: std_logic_vector(17 downto 0);
  signal mult3_p_net_x1: std_logic_vector(17 downto 0);
  signal mult4_p_net_x1: std_logic_vector(17 downto 0);
  signal mult5_p_net_x1: std_logic_vector(17 downto 0);
  signal mult6_p_net_x1: std_logic_vector(17 downto 0);
  signal mult7_p_net_x1: std_logic_vector(17 downto 0);
  signal mult8_p_net_x1: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x5: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x5: std_logic_vector(17 downto 0);
  signal tdd_q0_net_x0: std_logic_vector(15 downto 0);
  signal tdd_q1_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer1_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x19 <= ce_1;
  ce_2_sg_x19 <= ce_2;
  ce_8_sg_x16 <= ce_8;
  clk_1_sg_x19 <= clk_1;
  clk_2_sg_x19 <= clk_2;
  clk_8_sg_x16 <= clk_8;
  rom_0_data_net_x5 <= control_coefficients;
  rom_1_data_net_x5 <= control_coefficients_x0;
  rom_2_data_net_x5 <= control_coefficients_x1;
  rom_3_data_net_x5 <= control_coefficients_x2;
  rom_4_data_net_x5 <= control_coefficients_x3;
  rom_5_data_net_x5 <= control_coefficients_x4;
  rom_6_data_net_x5 <= control_coefficients_x5;
  rom_7_data_net_x5 <= control_coefficients_x6;
  down_sample2_q_net_x2 <= xa;
  down_sample1_q_net_x2 <= xb;
  ya <= tdd_q0_net_x0;
  yb <= tdd_q1_net_x0;

  adders_d50b966b8b: entity work.adders_entity_d50b966b8b
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      in1 => mult2_p_net_x1,
      in2 => mult1_p_net_x1,
      in3 => mult3_p_net_x1,
      in4 => mult4_p_net_x1,
      in5 => mult5_p_net_x1,
      in6 => mult6_p_net_x1,
      in7 => mult7_p_net_x1,
      in8 => mult8_p_net_x1,
      out1 => addsub8_s_net_x0
    );

  mults_roms_a68393a6a4: entity work.\mults___roms_entity_a68393a6a4\
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      in1 => time_division_multiplexer16_q_net_x1,
      in2 => time_division_multiplexer1_q_net_x1,
      in3 => time_division_multiplexer3_q_net_x1,
      in4 => time_division_multiplexer2_q_net_x1,
      in5 => time_division_multiplexer5_q_net_x1,
      in6 => time_division_multiplexer4_q_net_x1,
      in7 => time_division_multiplexer7_q_net_x1,
      in8 => time_division_multiplexer6_q_net_x1,
      tx_rom_0 => rom_0_data_net_x5,
      tx_rom_1 => rom_1_data_net_x5,
      tx_rom_2 => rom_2_data_net_x5,
      tx_rom_3 => rom_3_data_net_x5,
      tx_rom_4 => rom_4_data_net_x5,
      tx_rom_5 => rom_5_data_net_x5,
      tx_rom_6 => rom_6_data_net_x5,
      tx_rom_7 => rom_7_data_net_x5,
      out1 => mult2_p_net_x1,
      out2 => mult1_p_net_x1,
      out3 => mult3_p_net_x1,
      out4 => mult4_p_net_x1,
      out5 => mult5_p_net_x1,
      out6 => mult6_p_net_x1,
      out7 => mult7_p_net_x1,
      out8 => mult8_p_net_x1
    );

  sample_rams_9a2f3e86c8: entity work.sample_rams_entity_9a2f3e86c8
    port map (
      a => down_sample2_q_net_x2,
      b => down_sample1_q_net_x2,
      ce_1 => ce_1_sg_x19,
      ce_2 => ce_2_sg_x19,
      ce_8 => ce_8_sg_x16,
      clk_1 => clk_1_sg_x19,
      clk_2 => clk_2_sg_x19,
      clk_8 => clk_8_sg_x16,
      out1 => time_division_multiplexer16_q_net_x1,
      out2 => time_division_multiplexer1_q_net_x1,
      out3 => time_division_multiplexer3_q_net_x1,
      out4 => time_division_multiplexer2_q_net_x1,
      out5 => time_division_multiplexer5_q_net_x1,
      out6 => time_division_multiplexer4_q_net_x1,
      out7 => time_division_multiplexer7_q_net_x1,
      out8 => time_division_multiplexer6_q_net_x1
    );

  tdd: entity work.xltdd_multich
    generic map (
      data_width => 16,
      frame_length => 2
    )
    port map (
      d => addsub8_s_net_x0,
      dest_ce => ce_2_sg_x19,
      dest_clk => clk_2_sg_x19,
      dest_clr => '0',
      src_ce => ce_1_sg_x19,
      src_clk => clk_1_sg_x19,
      src_clr => '0',
      q0 => tdd_q0_net_x0,
      q1 => tdd_q1_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp B/Mults & ROMs"

entity \mults___roms_entity_81c1d6ae21\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(15 downto 0); 
    in2: in std_logic_vector(15 downto 0); 
    in3: in std_logic_vector(15 downto 0); 
    in4: in std_logic_vector(15 downto 0); 
    in5: in std_logic_vector(15 downto 0); 
    in6: in std_logic_vector(15 downto 0); 
    in7: in std_logic_vector(15 downto 0); 
    in8: in std_logic_vector(15 downto 0); 
    tx_rom_0: in std_logic_vector(17 downto 0); 
    tx_rom_1: in std_logic_vector(17 downto 0); 
    tx_rom_2: in std_logic_vector(17 downto 0); 
    tx_rom_3: in std_logic_vector(17 downto 0); 
    tx_rom_4: in std_logic_vector(17 downto 0); 
    tx_rom_5: in std_logic_vector(17 downto 0); 
    tx_rom_6: in std_logic_vector(17 downto 0); 
    tx_rom_7: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0); 
    out2: out std_logic_vector(17 downto 0); 
    out3: out std_logic_vector(17 downto 0); 
    out4: out std_logic_vector(17 downto 0); 
    out5: out std_logic_vector(17 downto 0); 
    out6: out std_logic_vector(17 downto 0); 
    out7: out std_logic_vector(17 downto 0); 
    out8: out std_logic_vector(17 downto 0)
  );
end \mults___roms_entity_81c1d6ae21\;

architecture structural of \mults___roms_entity_81c1d6ae21\ is
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal mult1_p_net_x1: std_logic_vector(17 downto 0);
  signal mult2_p_net_x1: std_logic_vector(17 downto 0);
  signal mult3_p_net_x1: std_logic_vector(17 downto 0);
  signal mult4_p_net_x1: std_logic_vector(17 downto 0);
  signal mult5_p_net_x1: std_logic_vector(17 downto 0);
  signal mult6_p_net_x1: std_logic_vector(17 downto 0);
  signal mult7_p_net_x1: std_logic_vector(17 downto 0);
  signal mult8_p_net_x1: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x6: std_logic_vector(17 downto 0);
  signal time_division_multiplexer16_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer1_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer2_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer3_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer4_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer5_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer6_q_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer7_q_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  time_division_multiplexer16_q_net_x0 <= in1;
  time_division_multiplexer1_q_net_x0 <= in2;
  time_division_multiplexer3_q_net_x0 <= in3;
  time_division_multiplexer2_q_net_x0 <= in4;
  time_division_multiplexer5_q_net_x0 <= in5;
  time_division_multiplexer4_q_net_x0 <= in6;
  time_division_multiplexer7_q_net_x0 <= in7;
  time_division_multiplexer6_q_net_x0 <= in8;
  rom_0_data_net_x6 <= tx_rom_0;
  rom_1_data_net_x6 <= tx_rom_1;
  rom_2_data_net_x6 <= tx_rom_2;
  rom_3_data_net_x6 <= tx_rom_3;
  rom_4_data_net_x6 <= tx_rom_4;
  rom_5_data_net_x6 <= tx_rom_5;
  rom_6_data_net_x6 <= tx_rom_6;
  rom_7_data_net_x6 <= tx_rom_7;
  out1 <= mult2_p_net_x1;
  out2 <= mult1_p_net_x1;
  out3 <= mult3_p_net_x1;
  out4 <= mult4_p_net_x1;
  out5 <= mult5_p_net_x1;
  out6 <= mult6_p_net_x1;
  out7 <= mult7_p_net_x1;
  out8 <= mult8_p_net_x1;

  mult1: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer1_q_net_x0,
      b => rom_1_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net_x1
    );

  mult2: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer16_q_net_x0,
      b => rom_0_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net_x1
    );

  mult3: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer3_q_net_x0,
      b => rom_2_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net_x1
    );

  mult4: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer2_q_net_x0,
      b => rom_3_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult4_p_net_x1
    );

  mult5: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer5_q_net_x0,
      b => rom_4_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult5_p_net_x1
    );

  mult6: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer4_q_net_x0,
      b => rom_5_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult6_p_net_x1
    );

  mult7: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer7_q_net_x0,
      b => rom_6_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult7_p_net_x1
    );

  mult8: entity work.xlmult_rate_change_filters_txrx_2ch
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 16,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_828b8027be7fb0bc",
      extra_registers => 0,
      multsign => 2,
      overflow => 3,
      p_arith => xlSigned,
      p_bin_pt => 17,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => time_division_multiplexer6_q_net_x0,
      b => rom_7_data_net_x6,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      core_ce => ce_1_sg_x21,
      core_clk => clk_1_sg_x21,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult8_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path/2-Ch Interp B"

entity x2_ch_interp_b_entity_95c48eacec is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    control_coefficients: in std_logic_vector(17 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    xa: in std_logic_vector(15 downto 0); 
    xb: in std_logic_vector(15 downto 0); 
    ya: out std_logic_vector(15 downto 0); 
    yb: out std_logic_vector(15 downto 0)
  );
end x2_ch_interp_b_entity_95c48eacec;

architecture structural of x2_ch_interp_b_entity_95c48eacec is
  signal addsub8_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x23: std_logic;
  signal ce_2_sg_x23: std_logic;
  signal ce_8_sg_x20: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal clk_2_sg_x23: std_logic;
  signal clk_8_sg_x20: std_logic;
  signal down_sample3_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample4_q_net_x2: std_logic_vector(15 downto 0);
  signal mult1_p_net_x1: std_logic_vector(17 downto 0);
  signal mult2_p_net_x1: std_logic_vector(17 downto 0);
  signal mult3_p_net_x1: std_logic_vector(17 downto 0);
  signal mult4_p_net_x1: std_logic_vector(17 downto 0);
  signal mult5_p_net_x1: std_logic_vector(17 downto 0);
  signal mult6_p_net_x1: std_logic_vector(17 downto 0);
  signal mult7_p_net_x1: std_logic_vector(17 downto 0);
  signal mult8_p_net_x1: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x7: std_logic_vector(17 downto 0);
  signal tdd_q0_net_x0: std_logic_vector(15 downto 0);
  signal tdd_q1_net_x0: std_logic_vector(15 downto 0);
  signal time_division_multiplexer16_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer1_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer2_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer3_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer4_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer5_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer6_q_net_x1: std_logic_vector(15 downto 0);
  signal time_division_multiplexer7_q_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x23 <= ce_1;
  ce_2_sg_x23 <= ce_2;
  ce_8_sg_x20 <= ce_8;
  clk_1_sg_x23 <= clk_1;
  clk_2_sg_x23 <= clk_2;
  clk_8_sg_x20 <= clk_8;
  rom_0_data_net_x7 <= control_coefficients;
  rom_1_data_net_x7 <= control_coefficients_x0;
  rom_2_data_net_x7 <= control_coefficients_x1;
  rom_3_data_net_x7 <= control_coefficients_x2;
  rom_4_data_net_x7 <= control_coefficients_x3;
  rom_5_data_net_x7 <= control_coefficients_x4;
  rom_6_data_net_x7 <= control_coefficients_x5;
  rom_7_data_net_x7 <= control_coefficients_x6;
  down_sample3_q_net_x2 <= xa;
  down_sample4_q_net_x2 <= xb;
  ya <= tdd_q0_net_x0;
  yb <= tdd_q1_net_x0;

  adders_ed83afaadd: entity work.adders_entity_d50b966b8b
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      in1 => mult2_p_net_x1,
      in2 => mult1_p_net_x1,
      in3 => mult3_p_net_x1,
      in4 => mult4_p_net_x1,
      in5 => mult5_p_net_x1,
      in6 => mult6_p_net_x1,
      in7 => mult7_p_net_x1,
      in8 => mult8_p_net_x1,
      out1 => addsub8_s_net_x0
    );

  mults_roms_81c1d6ae21: entity work.\mults___roms_entity_81c1d6ae21\
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      in1 => time_division_multiplexer16_q_net_x1,
      in2 => time_division_multiplexer1_q_net_x1,
      in3 => time_division_multiplexer3_q_net_x1,
      in4 => time_division_multiplexer2_q_net_x1,
      in5 => time_division_multiplexer5_q_net_x1,
      in6 => time_division_multiplexer4_q_net_x1,
      in7 => time_division_multiplexer7_q_net_x1,
      in8 => time_division_multiplexer6_q_net_x1,
      tx_rom_0 => rom_0_data_net_x7,
      tx_rom_1 => rom_1_data_net_x7,
      tx_rom_2 => rom_2_data_net_x7,
      tx_rom_3 => rom_3_data_net_x7,
      tx_rom_4 => rom_4_data_net_x7,
      tx_rom_5 => rom_5_data_net_x7,
      tx_rom_6 => rom_6_data_net_x7,
      tx_rom_7 => rom_7_data_net_x7,
      out1 => mult2_p_net_x1,
      out2 => mult1_p_net_x1,
      out3 => mult3_p_net_x1,
      out4 => mult4_p_net_x1,
      out5 => mult5_p_net_x1,
      out6 => mult6_p_net_x1,
      out7 => mult7_p_net_x1,
      out8 => mult8_p_net_x1
    );

  sample_rams_fc4cbc7f3e: entity work.sample_rams_entity_9a2f3e86c8
    port map (
      a => down_sample3_q_net_x2,
      b => down_sample4_q_net_x2,
      ce_1 => ce_1_sg_x23,
      ce_2 => ce_2_sg_x23,
      ce_8 => ce_8_sg_x20,
      clk_1 => clk_1_sg_x23,
      clk_2 => clk_2_sg_x23,
      clk_8 => clk_8_sg_x20,
      out1 => time_division_multiplexer16_q_net_x1,
      out2 => time_division_multiplexer1_q_net_x1,
      out3 => time_division_multiplexer3_q_net_x1,
      out4 => time_division_multiplexer2_q_net_x1,
      out5 => time_division_multiplexer5_q_net_x1,
      out6 => time_division_multiplexer4_q_net_x1,
      out7 => time_division_multiplexer7_q_net_x1,
      out8 => time_division_multiplexer6_q_net_x1
    );

  tdd: entity work.xltdd_multich
    generic map (
      data_width => 16,
      frame_length => 2
    )
    port map (
      d => addsub8_s_net_x0,
      dest_ce => ce_2_sg_x23,
      dest_clk => clk_2_sg_x23,
      dest_clr => '0',
      src_ce => ce_1_sg_x23,
      src_clk => clk_1_sg_x23,
      src_clr => '0',
      q0 => tdd_q0_net_x0,
      q1 => tdd_q1_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch/Tx Path"

entity tx_path_entity_ef8c91288c is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    control_coefficients: in std_logic_vector(17 downto 0); 
    control_coefficients_x0: in std_logic_vector(17 downto 0); 
    control_coefficients_x1: in std_logic_vector(17 downto 0); 
    control_coefficients_x2: in std_logic_vector(17 downto 0); 
    control_coefficients_x3: in std_logic_vector(17 downto 0); 
    control_coefficients_x4: in std_logic_vector(17 downto 0); 
    control_coefficients_x5: in std_logic_vector(17 downto 0); 
    control_coefficients_x6: in std_logic_vector(17 downto 0); 
    txa_i_10m: in std_logic_vector(15 downto 0); 
    txa_q_10m: in std_logic_vector(15 downto 0); 
    txb_i_10m: in std_logic_vector(15 downto 0); 
    txb_q_10m: in std_logic_vector(15 downto 0); 
    up_sample1_x0: out std_logic_vector(15 downto 0); 
    up_sample2_x0: out std_logic_vector(15 downto 0); 
    up_sample3_x0: out std_logic_vector(15 downto 0); 
    up_sample_x0: out std_logic_vector(15 downto 0)
  );
end tx_path_entity_ef8c91288c;

architecture structural of tx_path_entity_ef8c91288c is
  signal ce_1_sg_x24: std_logic;
  signal ce_2_sg_x24: std_logic;
  signal ce_8_sg_x21: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal clk_2_sg_x24: std_logic;
  signal clk_8_sg_x21: std_logic;
  signal down_sample1_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample4_q_net_x2: std_logic_vector(15 downto 0);
  signal rom_0_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x8: std_logic_vector(17 downto 0);
  signal tdd_q0_net_x0: std_logic_vector(15 downto 0);
  signal tdd_q0_net_x1: std_logic_vector(15 downto 0);
  signal tdd_q1_net_x0: std_logic_vector(15 downto 0);
  signal tdd_q1_net_x1: std_logic_vector(15 downto 0);
  signal txa_i_10m_net_x0: std_logic_vector(15 downto 0);
  signal txa_q_10m_net_x0: std_logic_vector(15 downto 0);
  signal txb_i_10m_net_x0: std_logic_vector(15 downto 0);
  signal txb_q_10m_net_x0: std_logic_vector(15 downto 0);
  signal up_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal up_sample_q_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x24 <= ce_1;
  ce_2_sg_x24 <= ce_2;
  ce_8_sg_x21 <= ce_8;
  clk_1_sg_x24 <= clk_1;
  clk_2_sg_x24 <= clk_2;
  clk_8_sg_x21 <= clk_8;
  rom_0_data_net_x8 <= control_coefficients;
  rom_1_data_net_x8 <= control_coefficients_x0;
  rom_2_data_net_x8 <= control_coefficients_x1;
  rom_3_data_net_x8 <= control_coefficients_x2;
  rom_4_data_net_x8 <= control_coefficients_x3;
  rom_5_data_net_x8 <= control_coefficients_x4;
  rom_6_data_net_x8 <= control_coefficients_x5;
  rom_7_data_net_x8 <= control_coefficients_x6;
  txa_i_10m_net_x0 <= txa_i_10m;
  txa_q_10m_net_x0 <= txa_q_10m;
  txb_i_10m_net_x0 <= txb_i_10m;
  txb_q_10m_net_x0 <= txb_q_10m;
  up_sample1_x0 <= up_sample1_q_net_x0;
  up_sample2_x0 <= up_sample2_q_net_x0;
  up_sample3_x0 <= up_sample3_q_net_x0;
  up_sample_x0 <= up_sample_q_net_x0;

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => txa_q_10m_net_x0,
      dest_ce => ce_8_sg_x21,
      dest_clk => clk_8_sg_x21,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x24,
      src_clk => clk_1_sg_x24,
      src_clr => '0',
      q => down_sample1_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => txa_i_10m_net_x0,
      dest_ce => ce_8_sg_x21,
      dest_clk => clk_8_sg_x21,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x24,
      src_clk => clk_1_sg_x24,
      src_clr => '0',
      q => down_sample2_q_net_x2
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => txb_i_10m_net_x0,
      dest_ce => ce_8_sg_x21,
      dest_clk => clk_8_sg_x21,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x24,
      src_clk => clk_1_sg_x24,
      src_clr => '0',
      q => down_sample3_q_net_x2
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => txb_q_10m_net_x0,
      dest_ce => ce_8_sg_x21,
      dest_clk => clk_8_sg_x21,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x24,
      src_clk => clk_1_sg_x24,
      src_clr => '0',
      q => down_sample4_q_net_x2
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => tdd_q0_net_x0,
      dest_ce => ce_1_sg_x24,
      dest_clk => clk_1_sg_x24,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x24,
      src_clk => clk_2_sg_x24,
      src_clr => '0',
      q => up_sample_q_net_x0
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => tdd_q1_net_x0,
      dest_ce => ce_1_sg_x24,
      dest_clk => clk_1_sg_x24,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x24,
      src_clk => clk_2_sg_x24,
      src_clr => '0',
      q => up_sample1_q_net_x0
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => tdd_q0_net_x1,
      dest_ce => ce_1_sg_x24,
      dest_clk => clk_1_sg_x24,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x24,
      src_clk => clk_2_sg_x24,
      src_clr => '0',
      q => up_sample2_q_net_x0
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16
    )
    port map (
      d => tdd_q1_net_x1,
      dest_ce => ce_1_sg_x24,
      dest_clk => clk_1_sg_x24,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x24,
      src_clk => clk_2_sg_x24,
      src_clr => '0',
      q => up_sample3_q_net_x0
    );

  x2_ch_interp_a_cb93480a34: entity work.x2_ch_interp_a_entity_cb93480a34
    port map (
      ce_1 => ce_1_sg_x24,
      ce_2 => ce_2_sg_x24,
      ce_8 => ce_8_sg_x21,
      clk_1 => clk_1_sg_x24,
      clk_2 => clk_2_sg_x24,
      clk_8 => clk_8_sg_x21,
      control_coefficients => rom_0_data_net_x8,
      control_coefficients_x0 => rom_1_data_net_x8,
      control_coefficients_x1 => rom_2_data_net_x8,
      control_coefficients_x2 => rom_3_data_net_x8,
      control_coefficients_x3 => rom_4_data_net_x8,
      control_coefficients_x4 => rom_5_data_net_x8,
      control_coefficients_x5 => rom_6_data_net_x8,
      control_coefficients_x6 => rom_7_data_net_x8,
      xa => down_sample2_q_net_x2,
      xb => down_sample1_q_net_x2,
      ya => tdd_q0_net_x0,
      yb => tdd_q1_net_x0
    );

  x2_ch_interp_b_95c48eacec: entity work.x2_ch_interp_b_entity_95c48eacec
    port map (
      ce_1 => ce_1_sg_x24,
      ce_2 => ce_2_sg_x24,
      ce_8 => ce_8_sg_x21,
      clk_1 => clk_1_sg_x24,
      clk_2 => clk_2_sg_x24,
      clk_8 => clk_8_sg_x21,
      control_coefficients => rom_0_data_net_x8,
      control_coefficients_x0 => rom_1_data_net_x8,
      control_coefficients_x1 => rom_2_data_net_x8,
      control_coefficients_x2 => rom_3_data_net_x8,
      control_coefficients_x3 => rom_4_data_net_x8,
      control_coefficients_x4 => rom_5_data_net_x8,
      control_coefficients_x5 => rom_6_data_net_x8,
      control_coefficients_x6 => rom_7_data_net_x8,
      xa => down_sample3_q_net_x2,
      xb => down_sample4_q_net_x2,
      ya => tdd_q0_net_x1,
      yb => tdd_q1_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rate_change_filters_txrx_2ch"

entity rate_change_filters_txrx_2ch is
  port (
    axi_aresetn: in std_logic; 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_8: in std_logic; 
    data_out: in std_logic_vector(31 downto 0); 
    data_out_x0: in std_logic_vector(31 downto 0); 
    dout_x0: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
    rxa_i_40m: in std_logic_vector(13 downto 0); 
    rxa_q_40m: in std_logic_vector(13 downto 0); 
    rxb_i_40m: in std_logic_vector(13 downto 0); 
    rxb_q_40m: in std_logic_vector(13 downto 0); 
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
    txa_i_10m: in std_logic_vector(15 downto 0); 
    txa_q_10m: in std_logic_vector(15 downto 0); 
    txb_i_10m: in std_logic_vector(15 downto 0); 
    txb_q_10m: in std_logic_vector(15 downto 0); 
    data_in: out std_logic_vector(31 downto 0); 
    data_in_x0: out std_logic_vector(31 downto 0); 
    en: out std_logic; 
    en_x0: out std_logic; 
    rxa_i_10m: out std_logic_vector(13 downto 0); 
    rxa_q_10m: out std_logic_vector(13 downto 0); 
    rxb_i_10m: out std_logic_vector(13 downto 0); 
    rxb_q_10m: out std_logic_vector(13 downto 0); 
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
    txa_i_40m: out std_logic_vector(15 downto 0); 
    txa_q_40m: out std_logic_vector(15 downto 0); 
    txb_i_40m: out std_logic_vector(15 downto 0); 
    txb_q_40m: out std_logic_vector(15 downto 0)
  );
end rate_change_filters_txrx_2ch;

architecture structural of rate_change_filters_txrx_2ch is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "rate_change_filters_txrx_2ch,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 2.00000000000 8.00000000000 1.00000000000,testbench=0,total_blocks=1202,xilinx_accumulator_block=4,xilinx_adder_subtracter_block=44,xilinx_addressable_shift_register_block=64,xilinx_arithmetic_relational_operator_block=2,xilinx_bit_slice_extractor_block=1,xilinx_constant_block_block=3,xilinx_counter_block=1,xilinx_delay_block=81,xilinx_down_sampler_block=15,xilinx_edk_core_block=1,xilinx_edk_processor_block=1,xilinx_gateway_in_block=33,xilinx_gateway_out_block=19,xilinx_input_scaler_block=4,xilinx_multiplier_block=48,xilinx_register_block=68,xilinx_resource_estimator_block=1,xilinx_shared_memory_based_from_register_block=2,xilinx_shared_memory_based_to_register_block=2,xilinx_single_port_read_only_memory_block=24,xilinx_system_generator_block=1,xilinx_time_division_demultiplexer_block=8,xilinx_time_division_multiplexer_block=48,xilinx_type_converter_block=5,xilinx_up_sampler_block=41,}";

  signal axi_aresetn_net: std_logic;
  signal ce_1_sg_x25: std_logic;
  signal ce_2_sg_x25: std_logic;
  signal ce_8_sg_x22: std_logic;
  signal clk_1_sg_x25: std_logic;
  signal clk_2_sg_x25: std_logic;
  signal clk_8_sg_x22: std_logic;
  signal data_in_net: std_logic_vector(31 downto 0);
  signal data_in_x0_net: std_logic_vector(31 downto 0);
  signal data_out_net: std_logic_vector(31 downto 0);
  signal data_out_x0_net: std_logic_vector(31 downto 0);
  signal dout_x0_net: std_logic_vector(31 downto 0);
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal plb_ce_1_sg_x1: std_logic;
  signal plb_clk_1_sg_x1: std_logic;
  signal rom_0_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_0_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_10_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_11_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_12_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_13_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_14_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_15_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_1_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_2_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_3_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_4_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_5_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_6_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x7: std_logic_vector(17 downto 0);
  signal rom_7_data_net_x8: std_logic_vector(17 downto 0);
  signal rom_8_data_net_x6: std_logic_vector(17 downto 0);
  signal rom_9_data_net_x6: std_logic_vector(17 downto 0);
  signal rxa_i_10m_net: std_logic_vector(13 downto 0);
  signal rxa_i_40m_net: std_logic_vector(13 downto 0);
  signal rxa_q_10m_net: std_logic_vector(13 downto 0);
  signal rxa_q_40m_net: std_logic_vector(13 downto 0);
  signal rxb_i_10m_net: std_logic_vector(13 downto 0);
  signal rxb_i_40m_net: std_logic_vector(13 downto 0);
  signal rxb_q_10m_net: std_logic_vector(13 downto 0);
  signal rxb_q_40m_net: std_logic_vector(13 downto 0);
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
  signal txa_i_10m_net: std_logic_vector(15 downto 0);
  signal txa_i_40m_net: std_logic_vector(15 downto 0);
  signal txa_q_10m_net: std_logic_vector(15 downto 0);
  signal txa_q_40m_net: std_logic_vector(15 downto 0);
  signal txb_i_10m_net: std_logic_vector(15 downto 0);
  signal txb_i_40m_net: std_logic_vector(15 downto 0);
  signal txb_q_10m_net: std_logic_vector(15 downto 0);
  signal txb_q_40m_net: std_logic_vector(15 downto 0);
  signal x2_bit_counter_op_net_x4: std_logic_vector(1 downto 0);

begin
  axi_aresetn_net <= axi_aresetn;
  ce_1_sg_x25 <= ce_1;
  ce_2_sg_x25 <= ce_2;
  ce_8_sg_x22 <= ce_8;
  clk_1_sg_x25 <= clk_1;
  clk_2_sg_x25 <= clk_2;
  clk_8_sg_x22 <= clk_8;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  dout_x0_net <= dout_x0;
  plb_ce_1_sg_x1 <= plb_ce_1;
  plb_clk_1_sg_x1 <= plb_clk_1;
  rxa_i_40m_net <= rxa_i_40m;
  rxa_q_40m_net <= rxa_q_40m;
  rxb_i_40m_net <= rxb_i_40m;
  rxb_q_40m_net <= rxb_q_40m;
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
  txa_i_10m_net <= txa_i_10m;
  txa_q_10m_net <= txa_q_10m;
  txb_i_10m_net <= txb_i_10m;
  txb_q_10m_net <= txb_q_10m;
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  en <= en_net;
  en_x0 <= en_x0_net;
  rxa_i_10m <= rxa_i_10m_net;
  rxa_q_10m <= rxa_q_10m_net;
  rxb_i_10m <= rxb_i_10m_net;
  rxb_q_10m <= rxb_q_10m_net;
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
  txa_i_40m <= txa_i_40m_net;
  txa_q_40m <= txa_q_40m_net;
  txb_i_40m <= txb_i_40m_net;
  txb_q_40m <= txb_q_40m_net;

  control_coefficients_921d0096f5: entity work.\control___coefficients_entity_921d0096f5\
    port map (
      ce_1 => ce_1_sg_x25,
      ce_2 => ce_2_sg_x25,
      clk_1 => clk_1_sg_x25,
      clk_2 => clk_2_sg_x25,
      from_register => data_out_net,
      coefaddr => x2_bit_counter_op_net_x4,
      constant_x1 => en_net,
      convert_x0 => data_in_net,
      rx_coefficients => rom_0_data_net_x7,
      rx_coefficients_x0 => rom_1_data_net_x7,
      rx_coefficients_x1 => rom_10_data_net_x6,
      rx_coefficients_x10 => rom_5_data_net_x7,
      rx_coefficients_x11 => rom_6_data_net_x7,
      rx_coefficients_x12 => rom_7_data_net_x7,
      rx_coefficients_x13 => rom_8_data_net_x6,
      rx_coefficients_x14 => rom_9_data_net_x6,
      rx_coefficients_x2 => rom_11_data_net_x6,
      rx_coefficients_x3 => rom_12_data_net_x6,
      rx_coefficients_x4 => rom_13_data_net_x6,
      rx_coefficients_x5 => rom_14_data_net_x6,
      rx_coefficients_x6 => rom_15_data_net_x6,
      rx_coefficients_x7 => rom_2_data_net_x7,
      rx_coefficients_x8 => rom_3_data_net_x7,
      rx_coefficients_x9 => rom_4_data_net_x7,
      tx_coefficients => rom_0_data_net_x8,
      tx_coefficients_x0 => rom_1_data_net_x8,
      tx_coefficients_x1 => rom_2_data_net_x8,
      tx_coefficients_x2 => rom_3_data_net_x8,
      tx_coefficients_x3 => rom_4_data_net_x8,
      tx_coefficients_x4 => rom_5_data_net_x8,
      tx_coefficients_x5 => rom_6_data_net_x8,
      tx_coefficients_x6 => rom_7_data_net_x8
    );

  edk_processor_c8fce31041: entity work.edk_processor_entity_c8fce31041
    port map (
      axi_aresetn => axi_aresetn_net,
      from_register => data_out_x0_net,
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
      to_register => dout_x0_net,
      memmap_x0 => s_axi_arready_net,
      memmap_x1 => s_axi_awready_net,
      memmap_x10 => s_axi_wready_net,
      memmap_x11 => data_in_x0_net,
      memmap_x12 => en_x0_net,
      memmap_x2 => s_axi_bid_net,
      memmap_x3 => s_axi_bresp_net,
      memmap_x4 => s_axi_bvalid_net,
      memmap_x5 => s_axi_rdata_net,
      memmap_x6 => s_axi_rid_net,
      memmap_x7 => s_axi_rlast_net,
      memmap_x8 => s_axi_rresp_net,
      memmap_x9 => s_axi_rvalid_net
    );

  rx_path_5ac61534c2: entity work.rx_path_entity_5ac61534c2
    port map (
      ce_1 => ce_1_sg_x25,
      ce_2 => ce_2_sg_x25,
      ce_8 => ce_8_sg_x22,
      clk_1 => clk_1_sg_x25,
      clk_2 => clk_2_sg_x25,
      clk_8 => clk_8_sg_x22,
      control_coefficients => x2_bit_counter_op_net_x4,
      control_coefficients_x0 => rom_0_data_net_x7,
      control_coefficients_x1 => rom_1_data_net_x7,
      control_coefficients_x10 => rom_4_data_net_x7,
      control_coefficients_x11 => rom_5_data_net_x7,
      control_coefficients_x12 => rom_6_data_net_x7,
      control_coefficients_x13 => rom_7_data_net_x7,
      control_coefficients_x14 => rom_8_data_net_x6,
      control_coefficients_x15 => rom_9_data_net_x6,
      control_coefficients_x2 => rom_10_data_net_x6,
      control_coefficients_x3 => rom_11_data_net_x6,
      control_coefficients_x4 => rom_12_data_net_x6,
      control_coefficients_x5 => rom_13_data_net_x6,
      control_coefficients_x6 => rom_14_data_net_x6,
      control_coefficients_x7 => rom_15_data_net_x6,
      control_coefficients_x8 => rom_2_data_net_x7,
      control_coefficients_x9 => rom_3_data_net_x7,
      rxa_i_40m => rxa_i_40m_net,
      rxa_q_40m => rxa_q_40m_net,
      rxb_i_40m => rxb_i_40m_net,
      rxb_q_40m => rxb_q_40m_net,
      up_sample1_x0 => rxa_q_10m_net,
      up_sample2_x0 => rxb_i_10m_net,
      up_sample3_x0 => rxb_q_10m_net,
      up_sample_x0 => rxa_i_10m_net
    );

  tx_path_ef8c91288c: entity work.tx_path_entity_ef8c91288c
    port map (
      ce_1 => ce_1_sg_x25,
      ce_2 => ce_2_sg_x25,
      ce_8 => ce_8_sg_x22,
      clk_1 => clk_1_sg_x25,
      clk_2 => clk_2_sg_x25,
      clk_8 => clk_8_sg_x22,
      control_coefficients => rom_0_data_net_x8,
      control_coefficients_x0 => rom_1_data_net_x8,
      control_coefficients_x1 => rom_2_data_net_x8,
      control_coefficients_x2 => rom_3_data_net_x8,
      control_coefficients_x3 => rom_4_data_net_x8,
      control_coefficients_x4 => rom_5_data_net_x8,
      control_coefficients_x5 => rom_6_data_net_x8,
      control_coefficients_x6 => rom_7_data_net_x8,
      txa_i_10m => txa_i_10m_net,
      txa_q_10m => txa_q_10m_net,
      txb_i_10m => txb_i_10m_net,
      txb_q_10m => txb_q_10m_net,
      up_sample1_x0 => txa_q_40m_net,
      up_sample2_x0 => txb_i_40m_net,
      up_sample3_x0 => txb_q_40m_net,
      up_sample_x0 => txa_i_40m_net
    );

end structural;
