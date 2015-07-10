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
-- You must compile the wrapper file addsb_11_0_3e7b009c67354b1e.vhd when simulating
-- the core, addsb_11_0_3e7b009c67354b1e. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_3e7b009c67354b1e IS
  PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END addsb_11_0_3e7b009c67354b1e;

ARCHITECTURE addsb_11_0_3e7b009c67354b1e_a OF addsb_11_0_3e7b009c67354b1e IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_3e7b009c67354b1e
  PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_3e7b009c67354b1e USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 10,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000",
      c_b_width => 10,
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
      c_out_width => 10,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_3e7b009c67354b1e
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_3e7b009c67354b1e_a;
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
-- You must compile the wrapper file addsb_11_0_5107ece67e1a9b77.vhd when simulating
-- the core, addsb_11_0_5107ece67e1a9b77. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_5107ece67e1a9b77 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END addsb_11_0_5107ece67e1a9b77;

ARCHITECTURE addsb_11_0_5107ece67e1a9b77_a OF addsb_11_0_5107ece67e1a9b77 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_5107ece67e1a9b77
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_5107ece67e1a9b77 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 4,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "0000",
      c_b_width => 4,
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
      c_out_width => 4,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_5107ece67e1a9b77
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_5107ece67e1a9b77_a;
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
-- You must compile the wrapper file addsb_11_0_5c670787eb4ba225.vhd when simulating
-- the core, addsb_11_0_5c670787eb4ba225. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_5c670787eb4ba225 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END addsb_11_0_5c670787eb4ba225;

ARCHITECTURE addsb_11_0_5c670787eb4ba225_a OF addsb_11_0_5c670787eb4ba225 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_5c670787eb4ba225
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_5c670787eb4ba225 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 3,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "000",
      c_b_width => 3,
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
      c_out_width => 3,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_5c670787eb4ba225
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_5c670787eb4ba225_a;
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
-- You must compile the wrapper file addsb_11_0_6fff63a0f1e46165.vhd when simulating
-- the core, addsb_11_0_6fff63a0f1e46165. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_6fff63a0f1e46165 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END addsb_11_0_6fff63a0f1e46165;

ARCHITECTURE addsb_11_0_6fff63a0f1e46165_a OF addsb_11_0_6fff63a0f1e46165 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_6fff63a0f1e46165
  PORT (
    a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_6fff63a0f1e46165 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 13,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000",
      c_b_width => 13,
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
      c_out_width => 13,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_6fff63a0f1e46165
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_6fff63a0f1e46165_a;
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
-- You must compile the wrapper file addsb_11_0_76821d30ce8a19fb.vhd when simulating
-- the core, addsb_11_0_76821d30ce8a19fb. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_76821d30ce8a19fb IS
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END addsb_11_0_76821d30ce8a19fb;

ARCHITECTURE addsb_11_0_76821d30ce8a19fb_a OF addsb_11_0_76821d30ce8a19fb IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_76821d30ce8a19fb
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_76821d30ce8a19fb USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 11,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000",
      c_b_width => 11,
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
      c_out_width => 11,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_76821d30ce8a19fb
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_76821d30ce8a19fb_a;
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
-- You must compile the wrapper file addsb_11_0_a52ead9b8a3c1e76.vhd when simulating
-- the core, addsb_11_0_a52ead9b8a3c1e76. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_a52ead9b8a3c1e76 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END addsb_11_0_a52ead9b8a3c1e76;

ARCHITECTURE addsb_11_0_a52ead9b8a3c1e76_a OF addsb_11_0_a52ead9b8a3c1e76 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_a52ead9b8a3c1e76
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_a52ead9b8a3c1e76 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 9,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000",
      c_b_width => 9,
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
      c_out_width => 9,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_a52ead9b8a3c1e76
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_a52ead9b8a3c1e76_a;
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
-- You must compile the wrapper file addsb_11_0_e0943def5dec93a3.vhd when simulating
-- the core, addsb_11_0_e0943def5dec93a3. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_e0943def5dec93a3 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END addsb_11_0_e0943def5dec93a3;

ARCHITECTURE addsb_11_0_e0943def5dec93a3_a OF addsb_11_0_e0943def5dec93a3 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_e0943def5dec93a3
  PORT (
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_e0943def5dec93a3 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 12,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000",
      c_b_width => 12,
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
      c_out_width => 12,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_e0943def5dec93a3
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_e0943def5dec93a3_a;
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
-- You must compile the wrapper file addsb_11_0_f56c214a058e7593.vhd when simulating
-- the core, addsb_11_0_f56c214a058e7593. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_f56c214a058e7593 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END addsb_11_0_f56c214a058e7593;

ARCHITECTURE addsb_11_0_f56c214a058e7593_a OF addsb_11_0_f56c214a058e7593 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_f56c214a058e7593
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_f56c214a058e7593 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 11,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000",
      c_b_width => 11,
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
      c_out_width => 11,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_f56c214a058e7593
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_f56c214a058e7593_a;
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
-- You must compile the wrapper file asr_11_0_3b8473fcc684987b.vhd when simulating
-- the core, asr_11_0_3b8473fcc684987b. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_3b8473fcc684987b IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END asr_11_0_3b8473fcc684987b;

ARCHITECTURE asr_11_0_3b8473fcc684987b_a OF asr_11_0_3b8473fcc684987b IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_3b8473fcc684987b
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_3b8473fcc684987b USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 9,
      c_ainit_val => "0",
      c_default_data => "0",
      c_depth => 512,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_3b8473fcc684987b.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "0",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 1,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_3b8473fcc684987b
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_3b8473fcc684987b_a;
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
-- You must compile the wrapper file asr_11_0_52733b2e79f014b5.vhd when simulating
-- the core, asr_11_0_52733b2e79f014b5. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_52733b2e79f014b5 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END asr_11_0_52733b2e79f014b5;

ARCHITECTURE asr_11_0_52733b2e79f014b5_a OF asr_11_0_52733b2e79f014b5 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_52733b2e79f014b5
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_52733b2e79f014b5 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 5,
      c_ainit_val => "00000000000000000",
      c_default_data => "00000000000000000",
      c_depth => 32,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_52733b2e79f014b5.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "00000000000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 17,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_52733b2e79f014b5
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_52733b2e79f014b5_a;
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
-- You must compile the wrapper file asr_11_0_5c9c6a297ef30376.vhd when simulating
-- the core, asr_11_0_5c9c6a297ef30376. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_5c9c6a297ef30376 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END asr_11_0_5c9c6a297ef30376;

ARCHITECTURE asr_11_0_5c9c6a297ef30376_a OF asr_11_0_5c9c6a297ef30376 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_5c9c6a297ef30376
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_5c9c6a297ef30376 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 3,
      c_ainit_val => "0000000000",
      c_default_data => "0000000000",
      c_depth => 8,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_5c9c6a297ef30376.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "0000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 10,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_5c9c6a297ef30376
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_5c9c6a297ef30376_a;
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
-- You must compile the wrapper file bmg_72_7cebf291863e8154.vhd when simulating
-- the core, bmg_72_7cebf291863e8154. When compiling the wrapper file, be sure to
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
ENTITY bmg_72_7cebf291863e8154 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bmg_72_7cebf291863e8154;

ARCHITECTURE bmg_72_7cebf291863e8154_a OF bmg_72_7cebf291863e8154 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_7cebf291863e8154
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_7cebf291863e8154 USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_7cebf291863e8154.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 16,
      c_read_width_b => 16,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 16,
      c_write_width_b => 16,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_7cebf291863e8154
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_72_7cebf291863e8154_a;
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
-- You must compile the wrapper file bmg_72_9bcb726b56bae5fc.vhd when simulating
-- the core, bmg_72_9bcb726b56bae5fc. When compiling the wrapper file, be sure to
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
ENTITY bmg_72_9bcb726b56bae5fc IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END bmg_72_9bcb726b56bae5fc;

ARCHITECTURE bmg_72_9bcb726b56bae5fc_a OF bmg_72_9bcb726b56bae5fc IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_9bcb726b56bae5fc
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_9bcb726b56bae5fc USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 11,
      c_addrb_width => 11,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_9bcb726b56bae5fc.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 2048,
      c_read_depth_b => 2048,
      c_read_width_a => 9,
      c_read_width_b => 9,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 2048,
      c_write_depth_b => 2048,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 9,
      c_write_width_b => 9,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_9bcb726b56bae5fc
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_72_9bcb726b56bae5fc_a;
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
-- You must compile the wrapper file bmg_72_ac89af00cd36169a.vhd when simulating
-- the core, bmg_72_ac89af00cd36169a. When compiling the wrapper file, be sure to
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
ENTITY bmg_72_ac89af00cd36169a IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END bmg_72_ac89af00cd36169a;

ARCHITECTURE bmg_72_ac89af00cd36169a_a OF bmg_72_ac89af00cd36169a IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_ac89af00cd36169a
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_ac89af00cd36169a USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_ac89af00cd36169a.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 8,
      c_read_width_b => 8,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 8,
      c_write_width_b => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_ac89af00cd36169a
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_72_ac89af00cd36169a_a;
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
-- You must compile the wrapper file cntr_11_0_3cb0d3527735316e.vhd when simulating
-- the core, cntr_11_0_3cb0d3527735316e. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_3cb0d3527735316e IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END cntr_11_0_3cb0d3527735316e;

ARCHITECTURE cntr_11_0_3cb0d3527735316e_a OF cntr_11_0_3cb0d3527735316e IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_3cb0d3527735316e
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_3cb0d3527735316e USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 18,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_3cb0d3527735316e
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_3cb0d3527735316e_a;
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
-- You must compile the wrapper file cntr_11_0_511eb7a1af6f3f2a.vhd when simulating
-- the core, cntr_11_0_511eb7a1af6f3f2a. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_511eb7a1af6f3f2a IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END cntr_11_0_511eb7a1af6f3f2a;

ARCHITECTURE cntr_11_0_511eb7a1af6f3f2a_a OF cntr_11_0_511eb7a1af6f3f2a IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_511eb7a1af6f3f2a
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_511eb7a1af6f3f2a USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 10,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_511eb7a1af6f3f2a
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_511eb7a1af6f3f2a_a;
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
-- You must compile the wrapper file cntr_11_0_86806e294f737f4c.vhd when simulating
-- the core, cntr_11_0_86806e294f737f4c. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_86806e294f737f4c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_86806e294f737f4c;

ARCHITECTURE cntr_11_0_86806e294f737f4c_a OF cntr_11_0_86806e294f737f4c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_86806e294f737f4c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_86806e294f737f4c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_86806e294f737f4c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_86806e294f737f4c_a;
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
-- You must compile the wrapper file mult_11_2_1d47825e1d2a837c.vhd when simulating
-- the core, mult_11_2_1d47825e1d2a837c. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_1d47825e1d2a837c IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END mult_11_2_1d47825e1d2a837c;

ARCHITECTURE mult_11_2_1d47825e1d2a837c_a OF mult_11_2_1d47825e1d2a837c IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_1d47825e1d2a837c
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_1d47825e1d2a837c USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 10,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 27,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_1d47825e1d2a837c
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_1d47825e1d2a837c_a;
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
-- You must compile the wrapper file mult_11_2_63ed62afc589f3d0.vhd when simulating
-- the core, mult_11_2_63ed62afc589f3d0. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_63ed62afc589f3d0 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END mult_11_2_63ed62afc589f3d0;

ARCHITECTURE mult_11_2_63ed62afc589f3d0_a OF mult_11_2_63ed62afc589f3d0 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_63ed62afc589f3d0
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_63ed62afc589f3d0 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 17,
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
      c_out_high => 34,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_63ed62afc589f3d0
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_63ed62afc589f3d0_a;
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
-- You must compile the wrapper file mult_11_2_726e084f322acbb0.vhd when simulating
-- the core, mult_11_2_726e084f322acbb0. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_726e084f322acbb0 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END mult_11_2_726e084f322acbb0;

ARCHITECTURE mult_11_2_726e084f322acbb0_a OF mult_11_2_726e084f322acbb0 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_726e084f322acbb0
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_726e084f322acbb0 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 47,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_726e084f322acbb0
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_726e084f322acbb0_a;
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
-- You must compile the wrapper file mult_11_2_b8b9c734a34df937.vhd when simulating
-- the core, mult_11_2_b8b9c734a34df937. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_b8b9c734a34df937 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_b8b9c734a34df937;

ARCHITECTURE mult_11_2_b8b9c734a34df937_a OF mult_11_2_b8b9c734a34df937 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_b8b9c734a34df937
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_b8b9c734a34df937 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 24,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 8,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
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
U0 : wrapped_mult_11_2_b8b9c734a34df937
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_b8b9c734a34df937_a;
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
-- You must compile the wrapper file mult_11_2_d14ac9f6035baced.vhd when simulating
-- the core, mult_11_2_d14ac9f6035baced. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_d14ac9f6035baced IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END mult_11_2_d14ac9f6035baced;

ARCHITECTURE mult_11_2_d14ac9f6035baced_a OF mult_11_2_d14ac9f6035baced IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_d14ac9f6035baced
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_d14ac9f6035baced USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 1,
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
      c_out_high => 34,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_d14ac9f6035baced
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_d14ac9f6035baced_a;
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
-- You must compile the wrapper file mult_11_2_ded4662fa3a6dd0f.vhd when simulating
-- the core, mult_11_2_ded4662fa3a6dd0f. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_ded4662fa3a6dd0f IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
  );
END mult_11_2_ded4662fa3a6dd0f;

ARCHITECTURE mult_11_2_ded4662fa3a6dd0f_a OF mult_11_2_ded4662fa3a6dd0f IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_ded4662fa3a6dd0f
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_ded4662fa3a6dd0f USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 38,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 55,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_ded4662fa3a6dd0f
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_ded4662fa3a6dd0f_a;
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
-- You must compile the wrapper file mult_11_2_ff04630c460514f2.vhd when simulating
-- the core, mult_11_2_ff04630c460514f2. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_ff04630c460514f2 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END mult_11_2_ff04630c460514f2;

ARCHITECTURE mult_11_2_ff04630c460514f2_a OF mult_11_2_ff04630c460514f2 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_ff04630c460514f2
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_ff04630c460514f2 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 12,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 12,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 23,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_ff04630c460514f2
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_ff04630c460514f2_a;

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
entity xladdsub_w3_warplab_agc is
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
end xladdsub_w3_warplab_agc;
architecture behavior of xladdsub_w3_warplab_agc is
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
  component addsb_11_0_3e7b009c67354b1e
    port (
          a: in std_logic_vector(10 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(10 - 1 downto 0)
    );
  end component;
  component addsb_11_0_a52ead9b8a3c1e76
    port (
          a: in std_logic_vector(9 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(9 - 1 downto 0)
    );
  end component;
  component addsb_11_0_f56c214a058e7593
    port (
          a: in std_logic_vector(11 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(11 - 1 downto 0)
    );
  end component;
  component addsb_11_0_6fff63a0f1e46165
    port (
          a: in std_logic_vector(13 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(13 - 1 downto 0)
    );
  end component;
  component addsb_11_0_76821d30ce8a19fb
    port (
          a: in std_logic_vector(11 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(11 - 1 downto 0)
    );
  end component;
  component addsb_11_0_e0943def5dec93a3
    port (
          a: in std_logic_vector(12 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(12 - 1 downto 0)
    );
  end component;
  component addsb_11_0_5c670787eb4ba225
    port (
          a: in std_logic_vector(3 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(3 - 1 downto 0)
    );
  end component;
  component addsb_11_0_5107ece67e1a9b77
    port (
          a: in std_logic_vector(4 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(4 - 1 downto 0)
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

  comp0: if ((core_name0 = "addsb_11_0_3e7b009c67354b1e")) generate
    core_instance0: addsb_11_0_3e7b009c67354b1e
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_a52ead9b8a3c1e76")) generate
    core_instance1: addsb_11_0_a52ead9b8a3c1e76
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_f56c214a058e7593")) generate
    core_instance2: addsb_11_0_f56c214a058e7593
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp3: if ((core_name0 = "addsb_11_0_6fff63a0f1e46165")) generate
    core_instance3: addsb_11_0_6fff63a0f1e46165
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp4: if ((core_name0 = "addsb_11_0_76821d30ce8a19fb")) generate
    core_instance4: addsb_11_0_76821d30ce8a19fb
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp5: if ((core_name0 = "addsb_11_0_e0943def5dec93a3")) generate
    core_instance5: addsb_11_0_e0943def5dec93a3
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp6: if ((core_name0 = "addsb_11_0_5c670787eb4ba225")) generate
    core_instance6: addsb_11_0_5c670787eb4ba225
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp7: if ((core_name0 = "addsb_11_0_5107ece67e1a9b77")) generate
    core_instance7: addsb_11_0_5107ece67e1a9b77
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
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c11beaf011 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c11beaf011;


architecture behavior of constant_c11beaf011 is
begin
  op <= "001111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_961b61f8a1 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_961b61f8a1;


architecture behavior of constant_961b61f8a1 is
begin
  op <= "100000";
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_593ae85213 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((6 - 1) downto 0);
    d1 : in std_logic_vector((6 - 1) downto 0);
    d2 : in std_logic_vector((6 - 1) downto 0);
    d3 : in std_logic_vector((6 - 1) downto 0);
    y : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_593ae85213;


architecture behavior of mux_593ae85213 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((6 - 1) downto 0);
  signal d1_1_27: std_logic_vector((6 - 1) downto 0);
  signal d2_1_30: std_logic_vector((6 - 1) downto 0);
  signal d3_1_33: std_logic_vector((6 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((6 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_387191112d is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_387191112d;


architecture behavior of mux_387191112d is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
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

entity accum_6af79aab6a is
  port (
    b : in std_logic_vector((14 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_6af79aab6a;


architecture behavior of accum_6af79aab6a is
  signal b_17_24: signed((14 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((18 - 1) downto 0) := "000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_42: signed((18 - 1) downto 0);
  signal accum_reg_join_47_1: signed((19 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 11, 18, 11);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_46b4017463 is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((13 - 1) downto 0);
    s : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_46b4017463;


architecture behavior of addsub_46b4017463 is
  signal a_17_32: signed((12 - 1) downto 0);
  signal b_17_35: signed((13 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((14 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000");
  signal op_mem_91_20_front_din: signed((14 - 1) downto 0);
  signal op_mem_91_20_back: signed((14 - 1) downto 0);
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
  signal cast_69_18: signed((14 - 1) downto 0);
  signal cast_69_22: signed((14 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((14 - 1) downto 0);
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
  cast_69_18 <= s2s_cast(a_17_32, 11, 14, 11);
  cast_69_22 <= s2s_cast(b_17_35, 11, 14, 11);
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

entity negate_bd411a39c9 is
  port (
    ip : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_bd411a39c9;


architecture behavior of negate_bd411a39c9 is
  signal ip_18_25: signed((12 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((13 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000");
  signal op_mem_48_20_front_din: signed((13 - 1) downto 0);
  signal op_mem_48_20_back: signed((13 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_35_24: signed((13 - 1) downto 0);
  signal internal_ip_35_9_neg: signed((13 - 1) downto 0);
  signal internal_ip_join_30_1: signed((13 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_35_24 <= s2s_cast(ip_18_25, 11, 13, 11);
  internal_ip_35_9_neg <=  -cast_35_24;
  proc_if_30_1: process (internal_ip_35_9_neg)
  is
  begin
    if false then
      internal_ip_join_30_1 <= std_logic_vector_to_signed("0000000000000");
    else 
      internal_ip_join_30_1 <= internal_ip_35_9_neg;
    end if;
  end process proc_if_30_1;
  op_mem_48_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(internal_ip_join_30_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_1768584a8d is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_1768584a8d;


architecture behavior of scale_1768584a8d is
  signal ip_17_23: signed((18 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_840ce206fb is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_840ce206fb;


architecture behavior of constant_840ce206fb is
begin
  op <= "100000000011001110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_13bf986750 is
  port (
    a : in std_logic_vector((35 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_13bf986750;


architecture behavior of addsub_13bf986750 is
  signal a_17_32: signed((35 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
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
  signal cast_71_18: signed((37 - 1) downto 0);
  signal cast_71_22: signed((37 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((37 - 1) downto 0);
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
  cast_71_18 <= s2s_cast(a_17_32, 31, 37, 32);
  cast_71_22 <= s2s_cast(b_17_35, 32, 37, 32);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_71_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_6c7d0a7074 is
  port (
    a : in std_logic_vector((35 - 1) downto 0);
    b : in std_logic_vector((37 - 1) downto 0);
    s : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_6c7d0a7074;


architecture behavior of addsub_6c7d0a7074 is
  signal a_17_32: signed((35 - 1) downto 0);
  signal b_17_35: signed((37 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((38 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((38 - 1) downto 0);
  signal op_mem_91_20_back: signed((38 - 1) downto 0);
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
  signal cast_69_18: signed((38 - 1) downto 0);
  signal cast_69_22: signed((38 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((38 - 1) downto 0);
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
  cast_69_18 <= s2s_cast(a_17_32, 31, 38, 32);
  cast_69_22 <= s2s_cast(b_17_35, 32, 38, 32);
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

entity constant_97d37142dc is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_97d37142dc;


architecture behavior of constant_97d37142dc is
begin
  op <= "011111111100110010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_38fcd220d1 is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_38fcd220d1;


architecture behavior of constant_38fcd220d1 is
begin
  op <= "100000000110011011";
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
entity xlmult_w3_warplab_agc is
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
end xlmult_w3_warplab_agc;
architecture behavior of xlmult_w3_warplab_agc is
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
  component mult_11_2_d14ac9f6035baced
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_d14ac9f6035baced:
    component is true;
  attribute fpga_dont_touch of mult_11_2_d14ac9f6035baced:
    component is "true";
  attribute box_type of mult_11_2_d14ac9f6035baced:
    component  is "black_box";
  component mult_11_2_63ed62afc589f3d0
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_63ed62afc589f3d0:
    component is true;
  attribute fpga_dont_touch of mult_11_2_63ed62afc589f3d0:
    component is "true";
  attribute box_type of mult_11_2_63ed62afc589f3d0:
    component  is "black_box";
  component mult_11_2_ded4662fa3a6dd0f
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_ded4662fa3a6dd0f:
    component is true;
  attribute fpga_dont_touch of mult_11_2_ded4662fa3a6dd0f:
    component is "true";
  attribute box_type of mult_11_2_ded4662fa3a6dd0f:
    component  is "black_box";
  component mult_11_2_726e084f322acbb0
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_726e084f322acbb0:
    component is true;
  attribute fpga_dont_touch of mult_11_2_726e084f322acbb0:
    component is "true";
  attribute box_type of mult_11_2_726e084f322acbb0:
    component  is "black_box";
  component mult_11_2_1d47825e1d2a837c
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_1d47825e1d2a837c:
    component is true;
  attribute fpga_dont_touch of mult_11_2_1d47825e1d2a837c:
    component is "true";
  attribute box_type of mult_11_2_1d47825e1d2a837c:
    component  is "black_box";
  component mult_11_2_b8b9c734a34df937
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_b8b9c734a34df937:
    component is true;
  attribute fpga_dont_touch of mult_11_2_b8b9c734a34df937:
    component is "true";
  attribute box_type of mult_11_2_b8b9c734a34df937:
    component  is "black_box";
  component mult_11_2_ff04630c460514f2
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_ff04630c460514f2:
    component is true;
  attribute fpga_dont_touch of mult_11_2_ff04630c460514f2:
    component is "true";
  attribute box_type of mult_11_2_ff04630c460514f2:
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
  comp0: if ((core_name0 = "mult_11_2_d14ac9f6035baced")) generate
    core_instance0: mult_11_2_d14ac9f6035baced
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_63ed62afc589f3d0")) generate
    core_instance1: mult_11_2_63ed62afc589f3d0
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp2: if ((core_name0 = "mult_11_2_ded4662fa3a6dd0f")) generate
    core_instance2: mult_11_2_ded4662fa3a6dd0f
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp3: if ((core_name0 = "mult_11_2_726e084f322acbb0")) generate
    core_instance3: mult_11_2_726e084f322acbb0
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp4: if ((core_name0 = "mult_11_2_1d47825e1d2a837c")) generate
    core_instance4: mult_11_2_1d47825e1d2a837c
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp5: if ((core_name0 = "mult_11_2_b8b9c734a34df937")) generate
    core_instance5: mult_11_2_b8b9c734a34df937
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp6: if ((core_name0 = "mult_11_2_ff04630c460514f2")) generate
    core_instance6: mult_11_2_ff04630c460514f2
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
entity xlcounter_free_w3_warplab_agc is
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
end xlcounter_free_w3_warplab_agc ;
architecture behavior of xlcounter_free_w3_warplab_agc is
  component cntr_11_0_86806e294f737f4c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_86806e294f737f4c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_86806e294f737f4c:
    component is "true";
  attribute box_type of cntr_11_0_86806e294f737f4c:
    component  is "black_box";
  component cntr_11_0_511eb7a1af6f3f2a
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_511eb7a1af6f3f2a:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_511eb7a1af6f3f2a:
    component is "true";
  attribute box_type of cntr_11_0_511eb7a1af6f3f2a:
    component  is "black_box";
  component cntr_11_0_3cb0d3527735316e
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_3cb0d3527735316e:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_3cb0d3527735316e:
    component is "true";
  attribute box_type of cntr_11_0_3cb0d3527735316e:
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
  comp0: if ((core_name0 = "cntr_11_0_86806e294f737f4c")) generate
    core_instance0: cntr_11_0_86806e294f737f4c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_511eb7a1af6f3f2a")) generate
    core_instance1: cntr_11_0_511eb7a1af6f3f2a
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_3cb0d3527735316e")) generate
    core_instance2: cntr_11_0_3cb0d3527735316e
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

entity relational_54048c8b02 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_54048c8b02;


architecture behavior of relational_54048c8b02 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_f7c149eff3 is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    s : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_f7c149eff3;


architecture behavior of addsub_f7c149eff3 is
  signal a_17_32: signed((12 - 1) downto 0);
  signal b_17_35: signed((16 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((17 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000");
  signal op_mem_91_20_front_din: signed((17 - 1) downto 0);
  signal op_mem_91_20_back: signed((17 - 1) downto 0);
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
  signal cast_71_18: signed((17 - 1) downto 0);
  signal cast_71_22: signed((17 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((17 - 1) downto 0);
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
  cast_71_18 <= s2s_cast(a_17_32, 11, 17, 14);
  cast_71_22 <= s2s_cast(b_17_35, 14, 17, 14);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_71_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_4b12803c7d is
  port (
    b : in std_logic_vector((15 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_4b12803c7d;


architecture behavior of accum_4b12803c7d is
  signal b_17_24: signed((15 - 1) downto 0);
  signal rst_17_27: boolean;
  signal en_17_32: boolean;
  signal accum_reg_41_23: signed((16 - 1) downto 0) := "0000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_41_23_en: std_logic;
  signal cast_51_42: signed((16 - 1) downto 0);
  signal accum_reg_join_47_1: signed((17 - 1) downto 0);
  signal accum_reg_join_47_1_en: std_logic;
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  en_17_32 <= ((en) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "0000000000000000";
      elsif ((ce = '1') and (accum_reg_41_23_en = '1')) then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 14, 16, 14);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, en_17_32, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    elsif en_17_32 then
      accum_reg_join_47_1_rst <= '0';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
    if en_17_32 then
      accum_reg_join_47_1_en <= '1';
    else 
      accum_reg_join_47_1_en <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  accum_reg_41_23_en <= accum_reg_join_47_1_en;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
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

entity mux_2005a19eb8 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((12 - 1) downto 0);
    d1 : in std_logic_vector((38 - 1) downto 0);
    y : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2005a19eb8;


architecture behavior of mux_2005a19eb8 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((12 - 1) downto 0);
  signal d1_1_27: std_logic_vector((38 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((38 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 11, 38, 32, xlSigned);
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

entity mux_e7bf131720 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_e7bf131720;


architecture behavior of mux_e7bf131720 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
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
        unregy_join_6_1 <= cast(d0_1_24, 0, 16, 14, xlUnsigned);
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

entity mux_68a729e566 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((12 - 1) downto 0);
    d1 : in std_logic_vector((38 - 1) downto 0);
    y : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_68a729e566;


architecture behavior of mux_68a729e566 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((12 - 1) downto 0);
  signal d1_1_27: std_logic_vector((38 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((38 - 1) downto 0);
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
        unregy_join_6_1 <= cast(d0_1_24, 11, 38, 32, xlSigned);
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

entity mux_511c8efe77 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((13 - 1) downto 0);
    y : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_511c8efe77;


architecture behavior of mux_511c8efe77 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((13 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((13 - 1) downto 0);
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
        unregy_join_6_1 <= cast(d0_1_24, 0, 13, 2, xlSigned);
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

entity addsub_b4036865b8 is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b4036865b8;


architecture behavior of addsub_b4036865b8 is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((2 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00");
  signal op_mem_91_20_front_din: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((2 - 1) downto 0);
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
  signal cast_69_18: unsigned((2 - 1) downto 0);
  signal cast_69_22: unsigned((2 - 1) downto 0);
  signal internal_s_69_5_addsub: unsigned((2 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= u2u_cast(a_17_32, 0, 2, 0);
  cast_69_22 <= u2u_cast(b_17_35, 0, 2, 0);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_7aff091e92 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7aff091e92;


architecture behavior of relational_7aff091e92 is
  signal a_1_31: signed((18 - 1) downto 0);
  signal b_1_34: signed((8 - 1) downto 0);
  signal cast_16_16: signed((18 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  cast_16_16 <= s2s_cast(b_1_34, 0, 18, 0);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4d537a8f8d is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4d537a8f8d;


architecture behavior of constant_4d537a8f8d is
begin
  op <= "110000110101000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_2a1fef700b is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_2a1fef700b;


architecture behavior of relational_2a1fef700b is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal cast_12_17: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 10, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d96b17963a is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d96b17963a;


architecture behavior of relational_d96b17963a is
  signal a_1_31: unsigned((18 - 1) downto 0);
  signal b_1_34: unsigned((18 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
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

entity scale_d11c4b5145 is
  port (
    ip : in std_logic_vector((13 - 1) downto 0);
    op : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_d11c4b5145;


architecture behavior of scale_d11c4b5145 is
  signal ip_17_23: signed((13 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a6d07705dd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a6d07705dd;


architecture behavior of logical_a6d07705dd is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_744827771c is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_744827771c;


architecture behavior of constant_744827771c is
begin
  op <= "1100100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_ca73b964f8 is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_ca73b964f8;


architecture behavior of constant_ca73b964f8 is
begin
  op <= "1100011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_44a8c5bdee is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_44a8c5bdee;


architecture behavior of relational_44a8c5bdee is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal cast_20_17: unsigned((8 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_20_17 <= u2u_cast(b_1_34, 0, 8, 0);
  result_20_3_rel <= a_1_31 <= cast_20_17;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_4fbf217ac0 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_4fbf217ac0;


architecture behavior of relational_4fbf217ac0 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal cast_12_17: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 8, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
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
        -- 'GRF_D'
        sm_GRF_D_dout : in std_logic_vector(2-1 downto 0);
        -- 'GRF_C'
        sm_GRF_C_dout : in std_logic_vector(2-1 downto 0);
        -- 'GRF_B'
        sm_GRF_B_dout : in std_logic_vector(2-1 downto 0);
        -- 'GRF_A'
        sm_GRF_A_dout : in std_logic_vector(2-1 downto 0);
        -- 'GBB_D'
        sm_GBB_D_dout : in std_logic_vector(5-1 downto 0);
        -- 'GBB_C'
        sm_GBB_C_dout : in std_logic_vector(5-1 downto 0);
        -- 'GBB_B'
        sm_GBB_B_dout : in std_logic_vector(5-1 downto 0);
        -- 'GBB_A'
        sm_GBB_A_dout : in std_logic_vector(5-1 downto 0);
        -- 'To Register'
        -- 'Timing'
        sm_Timing_dout : in std_logic_vector(32-1 downto 0);
        sm_Timing_din  : out std_logic_vector(32-1 downto 0);
        sm_Timing_en   : out std_logic;
        -- 'Thresholds'
        sm_Thresholds_dout : in std_logic_vector(32-1 downto 0);
        sm_Thresholds_din  : out std_logic_vector(32-1 downto 0);
        sm_Thresholds_en   : out std_logic;
        -- 'T_dB'
        sm_T_dB_dout : in std_logic_vector(16-1 downto 0);
        sm_T_dB_din  : out std_logic_vector(16-1 downto 0);
        sm_T_dB_en   : out std_logic;
        -- 'SRESET_IN'
        sm_SRESET_IN_dout : in std_logic_vector(1-1 downto 0);
        sm_SRESET_IN_din  : out std_logic_vector(1-1 downto 0);
        sm_SRESET_IN_en   : out std_logic;
        -- 'AGC_EN'
        sm_AGC_EN_dout : in std_logic_vector(32-1 downto 0);
        sm_AGC_EN_din  : out std_logic_vector(32-1 downto 0);
        sm_AGC_EN_en   : out std_logic;
        -- 'PACKET_IN'
        sm_PACKET_IN_dout : in std_logic_vector(1-1 downto 0);
        sm_PACKET_IN_din  : out std_logic_vector(1-1 downto 0);
        sm_PACKET_IN_en   : out std_logic;
        -- 'MRESET_IN'
        sm_MRESET_IN_dout : in std_logic_vector(1-1 downto 0);
        sm_MRESET_IN_din  : out std_logic_vector(1-1 downto 0);
        sm_MRESET_IN_en   : out std_logic;
        -- 'GBB_Init'
        sm_GBB_Init_dout : in std_logic_vector(16-1 downto 0);
        sm_GBB_Init_din  : out std_logic_vector(16-1 downto 0);
        sm_GBB_Init_en   : out std_logic;
        -- 'DCO_Timing'
        sm_DCO_Timing_dout : in std_logic_vector(32-1 downto 0);
        sm_DCO_Timing_din  : out std_logic_vector(32-1 downto 0);
        sm_DCO_Timing_en   : out std_logic;
        -- 'Bits'
        sm_Bits_dout : in std_logic_vector(10-1 downto 0);
        sm_Bits_din  : out std_logic_vector(10-1 downto 0);
        sm_Bits_en   : out std_logic;
        -- 'AVG_LEN'
        sm_AVG_LEN_dout : in std_logic_vector(16-1 downto 0);
        sm_AVG_LEN_din  : out std_logic_vector(16-1 downto 0);
        sm_AVG_LEN_en   : out std_logic;
        -- 'AGC_TRIGGER_DELAY'
        sm_AGC_TRIGGER_DELAY_dout : in std_logic_vector(9-1 downto 0);
        sm_AGC_TRIGGER_DELAY_din  : out std_logic_vector(9-1 downto 0);
        sm_AGC_TRIGGER_DELAY_en   : out std_logic;
        -- 'AGC_EN_GLOBAL'
        sm_AGC_EN_GLOBAL_dout : in std_logic_vector(1-1 downto 0);
        sm_AGC_EN_GLOBAL_din  : out std_logic_vector(1-1 downto 0);
        sm_AGC_EN_GLOBAL_en   : out std_logic;
        -- 'ADJ'
        sm_ADJ_dout : in std_logic_vector(16-1 downto 0);
        sm_ADJ_din  : out std_logic_vector(16-1 downto 0);
        sm_ADJ_en   : out std_logic;
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
-- 'GRF_D'
signal sm_GRF_D_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GRF_C'
signal sm_GRF_C_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GRF_B'
signal sm_GRF_B_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GRF_A'
signal sm_GRF_A_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GBB_D'
signal sm_GBB_D_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GBB_C'
signal sm_GBB_C_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GBB_B'
signal sm_GBB_B_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GBB_A'
signal sm_GBB_A_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'To Register'
-- 'Timing'
signal sm_Timing_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_Timing_en_i    : std_logic;
signal sm_Timing_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'Thresholds'
signal sm_Thresholds_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_Thresholds_en_i    : std_logic;
signal sm_Thresholds_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'T_dB'
signal sm_T_dB_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_T_dB_en_i    : std_logic;
signal sm_T_dB_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'SRESET_IN'
signal sm_SRESET_IN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_SRESET_IN_en_i    : std_logic;
signal sm_SRESET_IN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'AGC_EN'
signal sm_AGC_EN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_AGC_EN_en_i    : std_logic;
signal sm_AGC_EN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'PACKET_IN'
signal sm_PACKET_IN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_PACKET_IN_en_i    : std_logic;
signal sm_PACKET_IN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'MRESET_IN'
signal sm_MRESET_IN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_MRESET_IN_en_i    : std_logic;
signal sm_MRESET_IN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'GBB_Init'
signal sm_GBB_Init_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_GBB_Init_en_i    : std_logic;
signal sm_GBB_Init_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'DCO_Timing'
signal sm_DCO_Timing_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_DCO_Timing_en_i    : std_logic;
signal sm_DCO_Timing_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'Bits'
signal sm_Bits_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_Bits_en_i    : std_logic;
signal sm_Bits_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'AVG_LEN'
signal sm_AVG_LEN_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_AVG_LEN_en_i    : std_logic;
signal sm_AVG_LEN_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'AGC_TRIGGER_DELAY'
signal sm_AGC_TRIGGER_DELAY_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_AGC_TRIGGER_DELAY_en_i    : std_logic;
signal sm_AGC_TRIGGER_DELAY_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'AGC_EN_GLOBAL'
signal sm_AGC_EN_GLOBAL_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_AGC_EN_GLOBAL_en_i    : std_logic;
signal sm_AGC_EN_GLOBAL_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
-- 'ADJ'
signal sm_ADJ_din_i   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal sm_ADJ_en_i    : std_logic;
signal sm_ADJ_dout_i  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
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
-- 'GRF_D'
gen_sm_GRF_D_dout_i: if (2 < C_S_AXI_DATA_WIDTH) generate
    sm_GRF_D_dout_i(C_S_AXI_DATA_WIDTH-1 downto 2) <= (others => '0');
end generate gen_sm_GRF_D_dout_i;
sm_GRF_D_dout_i(2-1 downto 0) <= sm_GRF_D_dout;
-- 'GRF_C'
gen_sm_GRF_C_dout_i: if (2 < C_S_AXI_DATA_WIDTH) generate
    sm_GRF_C_dout_i(C_S_AXI_DATA_WIDTH-1 downto 2) <= (others => '0');
end generate gen_sm_GRF_C_dout_i;
sm_GRF_C_dout_i(2-1 downto 0) <= sm_GRF_C_dout;
-- 'GRF_B'
gen_sm_GRF_B_dout_i: if (2 < C_S_AXI_DATA_WIDTH) generate
    sm_GRF_B_dout_i(C_S_AXI_DATA_WIDTH-1 downto 2) <= (others => '0');
end generate gen_sm_GRF_B_dout_i;
sm_GRF_B_dout_i(2-1 downto 0) <= sm_GRF_B_dout;
-- 'GRF_A'
gen_sm_GRF_A_dout_i: if (2 < C_S_AXI_DATA_WIDTH) generate
    sm_GRF_A_dout_i(C_S_AXI_DATA_WIDTH-1 downto 2) <= (others => '0');
end generate gen_sm_GRF_A_dout_i;
sm_GRF_A_dout_i(2-1 downto 0) <= sm_GRF_A_dout;
-- 'GBB_D'
gen_sm_GBB_D_dout_i: if (5 < C_S_AXI_DATA_WIDTH) generate
    sm_GBB_D_dout_i(C_S_AXI_DATA_WIDTH-1 downto 5) <= (others => '0');
end generate gen_sm_GBB_D_dout_i;
sm_GBB_D_dout_i(5-1 downto 0) <= sm_GBB_D_dout;
-- 'GBB_C'
gen_sm_GBB_C_dout_i: if (5 < C_S_AXI_DATA_WIDTH) generate
    sm_GBB_C_dout_i(C_S_AXI_DATA_WIDTH-1 downto 5) <= (others => '0');
end generate gen_sm_GBB_C_dout_i;
sm_GBB_C_dout_i(5-1 downto 0) <= sm_GBB_C_dout;
-- 'GBB_B'
gen_sm_GBB_B_dout_i: if (5 < C_S_AXI_DATA_WIDTH) generate
    sm_GBB_B_dout_i(C_S_AXI_DATA_WIDTH-1 downto 5) <= (others => '0');
end generate gen_sm_GBB_B_dout_i;
sm_GBB_B_dout_i(5-1 downto 0) <= sm_GBB_B_dout;
-- 'GBB_A'
gen_sm_GBB_A_dout_i: if (5 < C_S_AXI_DATA_WIDTH) generate
    sm_GBB_A_dout_i(C_S_AXI_DATA_WIDTH-1 downto 5) <= (others => '0');
end generate gen_sm_GBB_A_dout_i;
sm_GBB_A_dout_i(5-1 downto 0) <= sm_GBB_A_dout;
-- 'To Register'
-- 'Timing'
sm_Timing_din     <= sm_Timing_din_i(32-1 downto 0);
sm_Timing_en      <= sm_Timing_en_i;
gen_sm_Timing_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_Timing_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_Timing_dout_i;
sm_Timing_dout_i(32-1 downto 0) <= sm_Timing_dout;
-- 'Thresholds'
sm_Thresholds_din     <= sm_Thresholds_din_i(32-1 downto 0);
sm_Thresholds_en      <= sm_Thresholds_en_i;
gen_sm_Thresholds_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_Thresholds_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_Thresholds_dout_i;
sm_Thresholds_dout_i(32-1 downto 0) <= sm_Thresholds_dout;
-- 'T_dB'
sm_T_dB_din     <= sm_T_dB_din_i(16-1 downto 0);
sm_T_dB_en      <= sm_T_dB_en_i;
gen_sm_T_dB_dout_i: if (16 < C_S_AXI_DATA_WIDTH) generate
    sm_T_dB_dout_i(C_S_AXI_DATA_WIDTH-1 downto 16) <= (others => '0');
end generate gen_sm_T_dB_dout_i;
sm_T_dB_dout_i(16-1 downto 0) <= sm_T_dB_dout;
-- 'SRESET_IN'
sm_SRESET_IN_din     <= sm_SRESET_IN_din_i(1-1 downto 0);
sm_SRESET_IN_en      <= sm_SRESET_IN_en_i;
gen_sm_SRESET_IN_dout_i: if (1 < C_S_AXI_DATA_WIDTH) generate
    sm_SRESET_IN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 1) <= (others => '0');
end generate gen_sm_SRESET_IN_dout_i;
sm_SRESET_IN_dout_i(1-1 downto 0) <= sm_SRESET_IN_dout;
-- 'AGC_EN'
sm_AGC_EN_din     <= sm_AGC_EN_din_i(32-1 downto 0);
sm_AGC_EN_en      <= sm_AGC_EN_en_i;
gen_sm_AGC_EN_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_AGC_EN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_AGC_EN_dout_i;
sm_AGC_EN_dout_i(32-1 downto 0) <= sm_AGC_EN_dout;
-- 'PACKET_IN'
sm_PACKET_IN_din     <= sm_PACKET_IN_din_i(1-1 downto 0);
sm_PACKET_IN_en      <= sm_PACKET_IN_en_i;
gen_sm_PACKET_IN_dout_i: if (1 < C_S_AXI_DATA_WIDTH) generate
    sm_PACKET_IN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 1) <= (others => '0');
end generate gen_sm_PACKET_IN_dout_i;
sm_PACKET_IN_dout_i(1-1 downto 0) <= sm_PACKET_IN_dout;
-- 'MRESET_IN'
sm_MRESET_IN_din     <= sm_MRESET_IN_din_i(1-1 downto 0);
sm_MRESET_IN_en      <= sm_MRESET_IN_en_i;
gen_sm_MRESET_IN_dout_i: if (1 < C_S_AXI_DATA_WIDTH) generate
    sm_MRESET_IN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 1) <= (others => '0');
end generate gen_sm_MRESET_IN_dout_i;
sm_MRESET_IN_dout_i(1-1 downto 0) <= sm_MRESET_IN_dout;
-- 'GBB_Init'
sm_GBB_Init_din     <= sm_GBB_Init_din_i(16-1 downto 0);
sm_GBB_Init_en      <= sm_GBB_Init_en_i;
gen_sm_GBB_Init_dout_i: if (16 < C_S_AXI_DATA_WIDTH) generate
    sm_GBB_Init_dout_i(C_S_AXI_DATA_WIDTH-1 downto 16) <= (others => '0');
end generate gen_sm_GBB_Init_dout_i;
sm_GBB_Init_dout_i(16-1 downto 0) <= sm_GBB_Init_dout;
-- 'DCO_Timing'
sm_DCO_Timing_din     <= sm_DCO_Timing_din_i(32-1 downto 0);
sm_DCO_Timing_en      <= sm_DCO_Timing_en_i;
gen_sm_DCO_Timing_dout_i: if (32 < C_S_AXI_DATA_WIDTH) generate
    sm_DCO_Timing_dout_i(C_S_AXI_DATA_WIDTH-1 downto 32) <= (others => '0');
end generate gen_sm_DCO_Timing_dout_i;
sm_DCO_Timing_dout_i(32-1 downto 0) <= sm_DCO_Timing_dout;
-- 'Bits'
sm_Bits_din     <= sm_Bits_din_i(10-1 downto 0);
sm_Bits_en      <= sm_Bits_en_i;
gen_sm_Bits_dout_i: if (10 < C_S_AXI_DATA_WIDTH) generate
    sm_Bits_dout_i(C_S_AXI_DATA_WIDTH-1 downto 10) <= (others => '0');
end generate gen_sm_Bits_dout_i;
sm_Bits_dout_i(10-1 downto 0) <= sm_Bits_dout;
-- 'AVG_LEN'
sm_AVG_LEN_din     <= sm_AVG_LEN_din_i(16-1 downto 0);
sm_AVG_LEN_en      <= sm_AVG_LEN_en_i;
gen_sm_AVG_LEN_dout_i: if (16 < C_S_AXI_DATA_WIDTH) generate
    sm_AVG_LEN_dout_i(C_S_AXI_DATA_WIDTH-1 downto 16) <= (others => '0');
end generate gen_sm_AVG_LEN_dout_i;
sm_AVG_LEN_dout_i(16-1 downto 0) <= sm_AVG_LEN_dout;
-- 'AGC_TRIGGER_DELAY'
sm_AGC_TRIGGER_DELAY_din     <= sm_AGC_TRIGGER_DELAY_din_i(9-1 downto 0);
sm_AGC_TRIGGER_DELAY_en      <= sm_AGC_TRIGGER_DELAY_en_i;
gen_sm_AGC_TRIGGER_DELAY_dout_i: if (9 < C_S_AXI_DATA_WIDTH) generate
    sm_AGC_TRIGGER_DELAY_dout_i(C_S_AXI_DATA_WIDTH-1 downto 9) <= (others => '0');
end generate gen_sm_AGC_TRIGGER_DELAY_dout_i;
sm_AGC_TRIGGER_DELAY_dout_i(9-1 downto 0) <= sm_AGC_TRIGGER_DELAY_dout;
-- 'AGC_EN_GLOBAL'
sm_AGC_EN_GLOBAL_din     <= sm_AGC_EN_GLOBAL_din_i(1-1 downto 0);
sm_AGC_EN_GLOBAL_en      <= sm_AGC_EN_GLOBAL_en_i;
gen_sm_AGC_EN_GLOBAL_dout_i: if (1 < C_S_AXI_DATA_WIDTH) generate
    sm_AGC_EN_GLOBAL_dout_i(C_S_AXI_DATA_WIDTH-1 downto 1) <= (others => '0');
end generate gen_sm_AGC_EN_GLOBAL_dout_i;
sm_AGC_EN_GLOBAL_dout_i(1-1 downto 0) <= sm_AGC_EN_GLOBAL_dout;
-- 'ADJ'
sm_ADJ_din     <= sm_ADJ_din_i(16-1 downto 0);
sm_ADJ_en      <= sm_ADJ_en_i;
gen_sm_ADJ_dout_i: if (16 < C_S_AXI_DATA_WIDTH) generate
    sm_ADJ_dout_i(C_S_AXI_DATA_WIDTH-1 downto 16) <= (others => '0');
end generate gen_sm_ADJ_dout_i;
sm_ADJ_dout_i(16-1 downto 0) <= sm_ADJ_dout;
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
            -- Timing din/en
            sm_Timing_din_i <= (others => '0');
            sm_Timing_en_i <= '0';
            -- Thresholds din/en
            sm_Thresholds_din_i <= (others => '0');
            sm_Thresholds_en_i <= '0';
            -- T_dB din/en
            sm_T_dB_din_i <= (others => '0');
            sm_T_dB_en_i <= '0';
            -- SRESET_IN din/en
            sm_SRESET_IN_din_i <= (others => '0');
            sm_SRESET_IN_en_i <= '0';
            -- AGC_EN din/en
            sm_AGC_EN_din_i <= (others => '0');
            sm_AGC_EN_en_i <= '0';
            -- PACKET_IN din/en
            sm_PACKET_IN_din_i <= (others => '0');
            sm_PACKET_IN_en_i <= '0';
            -- MRESET_IN din/en
            sm_MRESET_IN_din_i <= (others => '0');
            sm_MRESET_IN_en_i <= '0';
            -- GBB_Init din/en
            sm_GBB_Init_din_i <= (others => '0');
            sm_GBB_Init_en_i <= '0';
            -- DCO_Timing din/en
            sm_DCO_Timing_din_i <= (others => '0');
            sm_DCO_Timing_en_i <= '0';
            -- Bits din/en
            sm_Bits_din_i <= (others => '0');
            sm_Bits_en_i <= '0';
            -- AVG_LEN din/en
            sm_AVG_LEN_din_i <= (others => '0');
            sm_AVG_LEN_en_i <= '0';
            -- AGC_TRIGGER_DELAY din/en
            sm_AGC_TRIGGER_DELAY_din_i <= (others => '0');
            sm_AGC_TRIGGER_DELAY_en_i <= '0';
            -- AGC_EN_GLOBAL din/en
            sm_AGC_EN_GLOBAL_din_i <= (others => '0');
            sm_AGC_EN_GLOBAL_en_i <= '0';
            -- ADJ din/en
            sm_ADJ_din_i <= (others => '0');
            sm_ADJ_en_i <= '0';
            -- 'To FIFO'
            -- 'Shared Memory'
        else
            -- default assignments

            -- 'To Register'
            if (unsigned(write_bank_addr_i) = 2) then
                if (unsigned(write_linear_addr_i) = 0) then
                    -- Timing din/en
                    sm_Timing_din_i <= S_AXI_WDATA;
                    sm_Timing_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 1) then
                    -- Thresholds din/en
                    sm_Thresholds_din_i <= S_AXI_WDATA;
                    sm_Thresholds_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 2) then
                    -- T_dB din/en
                    sm_T_dB_din_i <= S_AXI_WDATA;
                    sm_T_dB_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 3) then
                    -- SRESET_IN din/en
                    sm_SRESET_IN_din_i <= S_AXI_WDATA;
                    sm_SRESET_IN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 4) then
                    -- AGC_EN din/en
                    sm_AGC_EN_din_i <= S_AXI_WDATA;
                    sm_AGC_EN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 5) then
                    -- PACKET_IN din/en
                    sm_PACKET_IN_din_i <= S_AXI_WDATA;
                    sm_PACKET_IN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 6) then
                    -- MRESET_IN din/en
                    sm_MRESET_IN_din_i <= S_AXI_WDATA;
                    sm_MRESET_IN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 7) then
                    -- GBB_Init din/en
                    sm_GBB_Init_din_i <= S_AXI_WDATA;
                    sm_GBB_Init_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 8) then
                    -- DCO_Timing din/en
                    sm_DCO_Timing_din_i <= S_AXI_WDATA;
                    sm_DCO_Timing_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 9) then
                    -- Bits din/en
                    sm_Bits_din_i <= S_AXI_WDATA;
                    sm_Bits_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 10) then
                    -- AVG_LEN din/en
                    sm_AVG_LEN_din_i <= S_AXI_WDATA;
                    sm_AVG_LEN_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 11) then
                    -- AGC_TRIGGER_DELAY din/en
                    sm_AGC_TRIGGER_DELAY_din_i <= S_AXI_WDATA;
                    sm_AGC_TRIGGER_DELAY_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 12) then
                    -- AGC_EN_GLOBAL din/en
                    sm_AGC_EN_GLOBAL_din_i <= S_AXI_WDATA;
                    sm_AGC_EN_GLOBAL_en_i  <= write_addr_valid;
                elsif (unsigned(write_linear_addr_i) = 13) then
                    -- ADJ din/en
                    sm_ADJ_din_i <= S_AXI_WDATA;
                    sm_ADJ_en_i  <= write_addr_valid;
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
                if (unsigned(read_linear_addr_i) = 14) then
                    -- 'GRF_D' dout
                    reg_bank_out_i <= sm_GRF_D_dout_i;
                elsif (unsigned(read_linear_addr_i) = 15) then
                    -- 'GRF_C' dout
                    reg_bank_out_i <= sm_GRF_C_dout_i;
                elsif (unsigned(read_linear_addr_i) = 16) then
                    -- 'GRF_B' dout
                    reg_bank_out_i <= sm_GRF_B_dout_i;
                elsif (unsigned(read_linear_addr_i) = 17) then
                    -- 'GRF_A' dout
                    reg_bank_out_i <= sm_GRF_A_dout_i;
                elsif (unsigned(read_linear_addr_i) = 18) then
                    -- 'GBB_D' dout
                    reg_bank_out_i <= sm_GBB_D_dout_i;
                elsif (unsigned(read_linear_addr_i) = 19) then
                    -- 'GBB_C' dout
                    reg_bank_out_i <= sm_GBB_C_dout_i;
                elsif (unsigned(read_linear_addr_i) = 20) then
                    -- 'GBB_B' dout
                    reg_bank_out_i <= sm_GBB_B_dout_i;
                elsif (unsigned(read_linear_addr_i) = 21) then
                    -- 'GBB_A' dout
                    reg_bank_out_i <= sm_GBB_A_dout_i;
                end if;
                -- 'To Register' (with register readback)
                if (unsigned(read_linear_addr_i) = 0) then
                    -- 'Timing' dout
                    reg_bank_out_i <= sm_Timing_dout_i;
                elsif (unsigned(read_linear_addr_i) = 1) then
                    -- 'Thresholds' dout
                    reg_bank_out_i <= sm_Thresholds_dout_i;
                elsif (unsigned(read_linear_addr_i) = 2) then
                    -- 'T_dB' dout
                    reg_bank_out_i <= sm_T_dB_dout_i;
                elsif (unsigned(read_linear_addr_i) = 3) then
                    -- 'SRESET_IN' dout
                    reg_bank_out_i <= sm_SRESET_IN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 4) then
                    -- 'AGC_EN' dout
                    reg_bank_out_i <= sm_AGC_EN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 5) then
                    -- 'PACKET_IN' dout
                    reg_bank_out_i <= sm_PACKET_IN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 6) then
                    -- 'MRESET_IN' dout
                    reg_bank_out_i <= sm_MRESET_IN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 7) then
                    -- 'GBB_Init' dout
                    reg_bank_out_i <= sm_GBB_Init_dout_i;
                elsif (unsigned(read_linear_addr_i) = 8) then
                    -- 'DCO_Timing' dout
                    reg_bank_out_i <= sm_DCO_Timing_dout_i;
                elsif (unsigned(read_linear_addr_i) = 9) then
                    -- 'Bits' dout
                    reg_bank_out_i <= sm_Bits_dout_i;
                elsif (unsigned(read_linear_addr_i) = 10) then
                    -- 'AVG_LEN' dout
                    reg_bank_out_i <= sm_AVG_LEN_dout_i;
                elsif (unsigned(read_linear_addr_i) = 11) then
                    -- 'AGC_TRIGGER_DELAY' dout
                    reg_bank_out_i <= sm_AGC_TRIGGER_DELAY_dout_i;
                elsif (unsigned(read_linear_addr_i) = 12) then
                    -- 'AGC_EN_GLOBAL' dout
                    reg_bank_out_i <= sm_AGC_EN_GLOBAL_dout_i;
                elsif (unsigned(read_linear_addr_i) = 13) then
                    -- 'ADJ' dout
                    reg_bank_out_i <= sm_ADJ_dout_i;
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
entity xladdrsr_w3_warplab_agc is
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
end xladdrsr_w3_warplab_agc;
architecture behavior of xladdrsr_w3_warplab_agc is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_5c9c6a297ef30376
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;

  attribute syn_black_box of asr_11_0_5c9c6a297ef30376:
    component is true;
  attribute fpga_dont_touch of asr_11_0_5c9c6a297ef30376:
    component is "true";
  attribute box_type of asr_11_0_5c9c6a297ef30376:
    component  is "black_box";
  component asr_11_0_52733b2e79f014b5
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;

  attribute syn_black_box of asr_11_0_52733b2e79f014b5:
    component is true;
  attribute fpga_dont_touch of asr_11_0_52733b2e79f014b5:
    component is "true";
  attribute box_type of asr_11_0_52733b2e79f014b5:
    component  is "black_box";
  component asr_11_0_3b8473fcc684987b
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;

  attribute syn_black_box of asr_11_0_3b8473fcc684987b:
    component is true;
  attribute fpga_dont_touch of asr_11_0_3b8473fcc684987b:
    component is "true";
  attribute box_type of asr_11_0_3b8473fcc684987b:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_5c9c6a297ef30376")) generate
    core_instance0: asr_11_0_5c9c6a297ef30376
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
  comp1: if ((core_name0 = "asr_11_0_52733b2e79f014b5")) generate
    core_instance1: asr_11_0_52733b2e79f014b5
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
  comp2: if ((core_name0 = "asr_11_0_3b8473fcc684987b")) generate
    core_instance2: asr_11_0_3b8473fcc684987b
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_9a3e8dffc1 is
  port (
    b : in std_logic_vector((11 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_9a3e8dffc1;


architecture behavior of accum_9a3e8dffc1 is
  signal b_17_24: signed((11 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_42: signed((32 - 1) downto 0);
  signal accum_reg_join_47_1: signed((33 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "00000000000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 0, 32, 0);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c8b57b79d7 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    s : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c8b57b79d7;


architecture behavior of addsub_c8b57b79d7 is
  signal a_17_32: unsigned((10 - 1) downto 0);
  signal b_17_35: unsigned((10 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((11 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000");
  signal op_mem_91_20_front_din: signed((11 - 1) downto 0);
  signal op_mem_91_20_back: signed((11 - 1) downto 0);
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
  signal cast_71_18: signed((12 - 1) downto 0);
  signal cast_71_22: signed((12 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((12 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((11 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_71_18 <= u2s_cast(a_17_32, 0, 12, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 12, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 0, 11, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom_w3_warplab_agc is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
  );
  port (
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom_w3_warplab_agc ;
architecture behavior of xlsprom_w3_warplab_agc is
  component synth_reg
    generic (
      width: integer;
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
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce, sinit: std_logic;
  component bmg_72_7cebf291863e8154
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of bmg_72_7cebf291863e8154:
    component is true;
  attribute fpga_dont_touch of bmg_72_7cebf291863e8154:
    component is "true";
  attribute box_type of bmg_72_7cebf291863e8154:
    component  is "black_box";
  component bmg_72_ac89af00cd36169a
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of bmg_72_ac89af00cd36169a:
    component is true;
  attribute fpga_dont_touch of bmg_72_ac89af00cd36169a:
    component is "true";
  attribute box_type of bmg_72_ac89af00cd36169a:
    component  is "black_box";
  component bmg_72_9bcb726b56bae5fc
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of bmg_72_9bcb726b56bae5fc:
    component is true;
  attribute fpga_dont_touch of bmg_72_9bcb726b56bae5fc:
    component is "true";
  attribute box_type of bmg_72_9bcb726b56bae5fc:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_72_7cebf291863e8154")) generate
    core_instance0: bmg_72_7cebf291863e8154
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_72_ac89af00cd36169a")) generate
    core_instance1: bmg_72_ac89af00cd36169a
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_72_9bcb726b56bae5fc")) generate
    core_instance2: bmg_72_9bcb726b56bae5fc
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
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
  latency_1: if (latency <= 1) generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_63482f4701 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_63482f4701;


architecture behavior of addsub_63482f4701 is
  signal a_17_32: signed((16 - 1) downto 0);
  signal b_17_35: unsigned((8 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
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
  signal cast_71_18: signed((17 - 1) downto 0);
  signal cast_71_22: signed((17 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((17 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_71_18 <= s2s_cast(a_17_32, 2, 17, 2);
  cast_71_22 <= u2s_cast(b_17_35, 0, 17, 2);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 2, 18, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_d6fea9f88b is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_d6fea9f88b;


architecture behavior of constant_d6fea9f88b is
begin
  op <= "01100100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_810cef0700 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_810cef0700;


architecture behavior of constant_810cef0700 is
begin
  op <= "01000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7a558caa36 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7a558caa36;


architecture behavior of constant_7a558caa36 is
begin
  op <= "01010001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_998e20a1ca is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    d2 : in std_logic_vector((8 - 1) downto 0);
    d3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_998e20a1ca;


architecture behavior of mux_998e20a1ca is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal d2_1_30: std_logic_vector((8 - 1) downto 0);
  signal d3_1_33: std_logic_vector((8 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_1ea878a24a is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_1ea878a24a;


architecture behavior of constant_1ea878a24a is
begin
  op <= "0001000110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_8a5feb4e65 is
  port (
    b : in std_logic_vector((24 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_8a5feb4e65;


architecture behavior of accum_8a5feb4e65 is
  signal b_17_24: signed((24 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((24 - 1) downto 0) := "000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_join_47_1: signed((25 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + b_17_24;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  proc_if_47_1: process (accum_reg_41_23, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_8339ff5117 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    s : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_8339ff5117;


architecture behavior of addsub_8339ff5117 is
  signal a_17_32: unsigned((17 - 1) downto 0);
  signal b_17_35: signed((18 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000");
  signal op_mem_91_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_91_20_back: signed((19 - 1) downto 0);
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
  signal cast_69_18: signed((19 - 1) downto 0);
  signal cast_69_22: signed((19 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((19 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
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
  cast_69_18 <= u2s_cast(a_17_32, 13, 19, 13);
  cast_69_22 <= s2s_cast(b_17_35, 13, 19, 13);
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

entity negate_60193616cc is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_60193616cc;


architecture behavior of negate_60193616cc is
  signal ip_18_25: unsigned((17 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "000000000000000000");
  signal op_mem_48_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_48_20_back: signed((18 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_35_24: signed((18 - 1) downto 0);
  signal internal_ip_35_9_neg: signed((18 - 1) downto 0);
  signal internal_ip_join_30_1: signed((18 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_unsigned(ip);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_35_24 <= u2s_cast(ip_18_25, 13, 18, 13);
  internal_ip_35_9_neg <=  -cast_35_24;
  proc_if_30_1: process (internal_ip_35_9_neg)
  is
  begin
    if false then
      internal_ip_join_30_1 <= std_logic_vector_to_signed("000000000000000000");
    else 
      internal_ip_join_30_1 <= internal_ip_35_9_neg;
    end if;
  end process proc_if_30_1;
  op_mem_48_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(internal_ip_join_30_1);
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

entity constant_a7e2bb9e12 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7e2bb9e12;


architecture behavior of constant_a7e2bb9e12 is
begin
  op <= "01";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_8ec3f4ab23 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_8ec3f4ab23;


architecture behavior of counter_8ec3f4ab23 is
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_194eb61c1b is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_194eb61c1b;


architecture behavior of relational_194eb61c1b is
  signal a_1_31: unsigned((1 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal cast_12_12: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_12 <= u2u_cast(a_1_31, 0, 2, 0);
  result_12_3_rel <= cast_12_12 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
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

entity addsub_6f5ed08684 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    s : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_6f5ed08684;


architecture behavior of addsub_6f5ed08684 is
  signal a_17_32: unsigned((16 - 1) downto 0);
  signal b_17_35: unsigned((16 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((17 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000");
  signal op_mem_91_20_front_din: unsigned((17 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((17 - 1) downto 0);
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
  signal cast_69_18: unsigned((17 - 1) downto 0);
  signal cast_69_22: unsigned((17 - 1) downto 0);
  signal internal_s_69_5_addsub: unsigned((17 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= u2u_cast(a_17_32, 13, 17, 13);
  cast_69_22 <= u2u_cast(b_17_35, 13, 17, 13);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_6b1adb5d55 is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_6b1adb5d55;


architecture behavior of reinterpret_6b1adb5d55 is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_6cb8f0ce02 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_6cb8f0ce02;


architecture behavior of logical_6cb8f0ce02 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/BB_setting"

entity bb_setting_entity_1f7b659fea is
  port (
    adj: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    g_rf: in std_logic_vector(1 downto 0); 
    gbb_init: in std_logic_vector(7 downto 0); 
    rssi_est: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    g_bb_est: out std_logic_vector(7 downto 0)
  );
end bb_setting_entity_1f7b659fea;

architecture structural of bb_setting_entity_1f7b659fea is
  signal addsub1_s_net: std_logic_vector(9 downto 0);
  signal addsub2_s_net: std_logic_vector(8 downto 0);
  signal addsub3_s_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(5 downto 0);
  signal constant3_op_net: std_logic;
  signal constant4_op_net: std_logic_vector(5 downto 0);
  signal constant5_op_net: std_logic_vector(5 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x0: std_logic_vector(7 downto 0);
  signal logical2_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(5 downto 0);
  signal register2_q_net_x0: std_logic_vector(1 downto 0);
  signal register3_q_net_x0: std_logic_vector(17 downto 0);
  signal register_q_net: std_logic;
  signal relational1_op_net_x0: std_logic;

begin
  convert5_dout_net_x0 <= adj;
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  relational1_op_net_x0 <= en;
  register2_q_net_x0 <= g_rf;
  convert7_dout_net_x0 <= gbb_init;
  register3_q_net_x0 <= rssi_est;
  logical2_y_net_x0 <= rst;
  convert8_dout_net_x0 <= t_db;
  g_bb_est <= mux1_y_net_x0;

  addsub1: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 10,
      core_name0 => "addsb_11_0_3e7b009c67354b1e",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 10,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 10
    )
    port map (
      a => addsub2_s_net,
      b => convert2_dout_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 8,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 6,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 9,
      core_name0 => "addsb_11_0_a52ead9b8a3c1e76",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 9,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 9
    )
    port map (
      a => convert8_dout_net_x0,
      b => mux_y_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub2_s_net
    );

  addsub3: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 10,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 11,
      core_name0 => "addsb_11_0_f56c214a058e7593",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 11,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 8
    )
    port map (
      a => addsub1_s_net,
      b => convert5_dout_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub3_s_net
    );

  constant1: entity work.constant_c11beaf011
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_961b61f8a1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant4: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => register3_q_net_x0,
      en => "1",
      dout => convert2_dout_net
    );

  mux: entity work.mux_593ae85213
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => constant4_op_net,
      d1 => constant5_op_net,
      d2 => constant1_op_net,
      d3 => constant2_op_net,
      sel => register2_q_net_x0,
      y => mux_y_net
    );

  mux1: entity work.mux_387191112d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert7_dout_net_x0,
      d1 => addsub3_s_net,
      sel(0) => register_q_net,
      y => mux1_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => constant3_op_net,
      en(0) => relational1_op_net_x0,
      rst(0) => logical2_y_net_x0,
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/AVG_I"

entity avg_i_entity_956deedec6 is
  port (
    ce_2: in std_logic; 
    clk_2: in std_logic; 
    i_in_x0: in std_logic_vector(11 downto 0); 
    m_reset: in std_logic; 
    avg_i_out: out std_logic_vector(14 downto 0)
  );
end avg_i_entity_956deedec6;

architecture structural of avg_i_entity_956deedec6 is
  signal accumulator_q_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(13 downto 0);
  signal ce_2_sg_x0: std_logic;
  signal clk_2_sg_x0: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal delay_q_net: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x0: std_logic;
  signal i_in_x1: std_logic_vector(11 downto 0);
  signal negate_i_op_net: std_logic_vector(12 downto 0);
  signal register15_q_net: std_logic_vector(11 downto 0);
  signal scale_op_net: std_logic_vector(17 downto 0);

begin
  ce_2_sg_x0 <= ce_2;
  clk_2_sg_x0 <= clk_2;
  i_in_x1 <= i_in_x0;
  down_sample4_q_net_x0 <= m_reset;
  avg_i_out <= convert1_dout_net_x0;

  accumulator: entity work.accum_6af79aab6a
    port map (
      b => addsub_s_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      rst(0) => down_sample4_q_net_x0,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_46b4017463
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      s => addsub_s_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 14,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      d => register15_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  negate_i: entity work.negate_bd411a39c9
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      ip => delay_q_net,
      op => negate_i_op_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      d => i_in_x1,
      en => "1",
      rst(0) => down_sample4_q_net_x0,
      q => register15_q_net
    );

  scale: entity work.scale_1768584a8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/AVG_Q"

entity avg_q_entity_c7091d74bd is
  port (
    ce_2: in std_logic; 
    clk_2: in std_logic; 
    i_in: in std_logic_vector(11 downto 0); 
    m_reset: in std_logic; 
    avg_i_out: out std_logic_vector(14 downto 0)
  );
end avg_q_entity_c7091d74bd;

architecture structural of avg_q_entity_c7091d74bd is
  signal accumulator_q_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(13 downto 0);
  signal ce_2_sg_x1: std_logic;
  signal clk_2_sg_x1: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal delay_q_net: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x1: std_logic;
  signal negate_i_op_net: std_logic_vector(12 downto 0);
  signal q_in_x0: std_logic_vector(11 downto 0);
  signal register15_q_net: std_logic_vector(11 downto 0);
  signal scale_op_net: std_logic_vector(17 downto 0);

begin
  ce_2_sg_x1 <= ce_2;
  clk_2_sg_x1 <= clk_2;
  q_in_x0 <= i_in;
  down_sample4_q_net_x1 <= m_reset;
  avg_i_out <= convert1_dout_net_x0;

  accumulator: entity work.accum_6af79aab6a
    port map (
      b => addsub_s_net,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      clr => '0',
      rst(0) => down_sample4_q_net_x1,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_46b4017463
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      clr => '0',
      s => addsub_s_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 14,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      d => register15_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  negate_i: entity work.negate_bd411a39c9
    port map (
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      clr => '0',
      ip => delay_q_net,
      op => negate_i_op_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_2_sg_x1,
      clk => clk_2_sg_x1,
      d => q_in_x0,
      en => "1",
      rst(0) => down_sample4_q_net_x1,
      q => register15_q_net
    );

  scale: entity work.scale_1768584a8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/Butterworth_IIR_HP"

entity butterworth_iir_hp_entity_cd393a8ef5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    i_in: in std_logic_vector(16 downto 0); 
    q_in: in std_logic_vector(16 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end butterworth_iir_hp_entity_cd393a8ef5;

architecture structural of butterworth_iir_hp_entity_cd393a8ef5 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(37 downto 0);
  signal addsub4_s_net: std_logic_vector(36 downto 0);
  signal addsub5_s_net_x0: std_logic_vector(37 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal delay1_q_net: std_logic_vector(34 downto 0);
  signal delay_q_net: std_logic_vector(34 downto 0);
  signal k1_op_net: std_logic_vector(17 downto 0);
  signal k1_op_net_x0: std_logic_vector(17 downto 0);
  signal k2_op_net: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(34 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(34 downto 0);
  signal mult4_p_net: std_logic_vector(34 downto 0);
  signal mult5_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(34 downto 0);
  signal register1_q_net_x0: std_logic_vector(16 downto 0);
  signal register_q_net_x0: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  register_q_net_x0 <= i_in;
  register1_q_net_x0 <= q_in;
  i_out <= addsub5_s_net_x0;
  q_out <= addsub2_s_net_x0;

  addsub1: entity work.addsub_13bf986750
    port map (
      a => delay1_q_net,
      b => mult5_p_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub1_s_net
    );

  addsub2: entity work.addsub_6c7d0a7074
    port map (
      a => mult3_p_net,
      b => addsub1_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub2_s_net_x0
    );

  addsub4: entity work.addsub_13bf986750
    port map (
      a => delay_q_net,
      b => mult2_p_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.addsub_6c7d0a7074
    port map (
      a => mult_p_net,
      b => addsub4_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub5_s_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 35
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => mult1_p_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 35
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => mult4_p_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  k1: entity work.constant_840ce206fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => k1_op_net
    );

  k1_x0: entity work.constant_97d37142dc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => k1_op_net_x0
    );

  k2: entity work.constant_38fcd220d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => k2_op_net
    );

  mult: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 17,
      b_arith => xlUnsigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 1,
      c_b_width => 18,
      c_baat => 17,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mult_11_2_d14ac9f6035baced",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 31,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => register_q_net_x0,
      b => k1_op_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mult1: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 17,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 17,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mult_11_2_63ed62afc589f3d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 31,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => register_q_net_x0,
      b => k1_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net
    );

  mult2: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 32,
      b_width => 38,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 0,
      c_b_width => 38,
      c_baat => 18,
      c_output_width => 56,
      c_type => 0,
      core_name0 => "mult_11_2_ded4662fa3a6dd0f",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 32,
      p_width => 36,
      quantization => 1
    )
    port map (
      a => k2_op_net,
      b => addsub5_s_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  mult3: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 17,
      b_arith => xlUnsigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 1,
      c_b_width => 18,
      c_baat => 17,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mult_11_2_d14ac9f6035baced",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 31,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => register1_q_net_x0,
      b => k1_op_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net
    );

  mult4: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 17,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 17,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mult_11_2_63ed62afc589f3d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 31,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => register1_q_net_x0,
      b => k1_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult4_p_net
    );

  mult5: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 32,
      b_width => 38,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 0,
      c_b_width => 38,
      c_baat => 18,
      c_output_width => 56,
      c_type => 0,
      core_name0 => "mult_11_2_ded4662fa3a6dd0f",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 32,
      p_width => 36,
      quantization => 1
    )
    port map (
      a => k2_op_net,
      b => addsub2_s_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult5_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/Subsystem"

entity subsystem_entity_a914814e7c is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    us_in: in std_logic; 
    ds_out: out std_logic
  );
end subsystem_entity_a914814e7c;

architecture structural of subsystem_entity_a914814e7c is
  signal ce_1_sg_x2: std_logic;
  signal ce_2_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal clk_2_sg_x2: std_logic;
  signal constant_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal down_sample_q_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal register_q_net: std_logic;
  signal up_sample_q_net: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  ce_2_sg_x2 <= ce_2;
  clk_1_sg_x2 <= clk_1;
  clk_2_sg_x2 <= clk_2;
  logical2_y_net_x1 <= us_in;
  ds_out <= down_sample_q_net_x0;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_2_sg_x2,
      clk => clk_2_sg_x2,
      d(0) => down_sample_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
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
      d(0) => register_q_net,
      dest_ce => ce_2_sg_x2,
      dest_clk => clk_2_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x2,
      src_clk => clk_1_sg_x2,
      src_clr => '0',
      q(0) => down_sample_q_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_2_sg_x2,
      clk => clk_2_sg_x2,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => down_sample_q_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => constant_op_net,
      en(0) => logical2_y_net_x1,
      rst(0) => up_sample_q_net,
      q(0) => register_q_net
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => logical_y_net,
      dest_ce => ce_1_sg_x2,
      dest_clk => clk_1_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x2,
      src_clk => clk_2_sg_x2,
      src_clr => '0',
      q(0) => up_sample_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/Timing/Demux"

entity demux_entity_78df2c1ac8 is
  port (
    ce_2: in std_logic; 
    clk_2: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    hi: out std_logic_vector(7 downto 0); 
    ml: out std_logic_vector(7 downto 0)
  );
end demux_entity_78df2c1ac8;

architecture structural of demux_entity_78df2c1ac8 is
  signal ce_2_sg_x3: std_logic;
  signal clk_2_sg_x3: std_logic;
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(31 downto 0);
  signal slice24_32_y_net: std_logic_vector(7 downto 0);
  signal slice8_15_y_net: std_logic_vector(7 downto 0);

begin
  ce_2_sg_x3 <= ce_2;
  clk_2_sg_x3 <= clk_2;
  down_sample_q_net_x0 <= in1;
  hi <= convert4_dout_net_x0;
  ml <= convert2_dout_net_x0;

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x3,
      clk => clk_2_sg_x3,
      clr => '0',
      din => slice8_15_y_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x3,
      clk => clk_2_sg_x3,
      clr => '0',
      din => slice24_32_y_net,
      en => "1",
      dout => convert4_dout_net_x0
    );

  slice24_32: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => down_sample_q_net_x0,
      y => slice24_32_y_net
    );

  slice8_15: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => down_sample_q_net_x0,
      y => slice8_15_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction/Timing"

entity timing_entity_705988255f is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    timing: in std_logic_vector(31 downto 0); 
    x16: out std_logic; 
    x18: out std_logic
  );
end timing_entity_705988255f;

architecture structural of timing_entity_705988255f is
  signal ce_1_sg_x3: std_logic;
  signal ce_2_sg_x4: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal clk_2_sg_x4: std_logic;
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal dco_timing_data_out_net_x0: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal relational1_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  ce_2_sg_x4 <= ce_2;
  clk_1_sg_x3 <= clk_1;
  clk_2_sg_x4 <= clk_2;
  down_sample_q_net_x2 <= en;
  down_sample_q_net_x3 <= rst;
  dco_timing_data_out_net_x0 <= timing;
  x16 <= relational1_op_net_x0;
  x18 <= relational3_op_net_x0;

  counter: entity work.xlcounter_free_w3_warplab_agc
    generic map (
      core_name0 => "cntr_11_0_86806e294f737f4c",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_2_sg_x4,
      clk => clk_2_sg_x4,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => down_sample_q_net_x3,
      op => counter_op_net
    );

  demux_78df2c1ac8: entity work.demux_entity_78df2c1ac8
    port map (
      ce_2 => ce_2_sg_x4,
      clk_2 => clk_2_sg_x4,
      in1 => down_sample_q_net_x1,
      hi => convert4_dout_net_x0,
      ml => convert2_dout_net_x0
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32
    )
    port map (
      d => dco_timing_data_out_net_x0,
      dest_ce => ce_2_sg_x4,
      dest_clk => clk_2_sg_x4,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x3,
      src_clk => clk_1_sg_x3,
      src_clr => '0',
      q => down_sample_q_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_2_sg_x4,
      clk => clk_2_sg_x4,
      clr => '0',
      ip(0) => relational3_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => down_sample_q_net_x2,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  relational1: entity work.relational_54048c8b02
    port map (
      a => counter_op_net,
      b => convert2_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

  relational3: entity work.relational_54048c8b02
    port map (
      a => counter_op_net,
      b => convert4_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/DCO_correction"

entity dco_correction_entity_e39f5c6ad0 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dcotiming: in std_logic_vector(31 downto 0); 
    en_dco: in std_logic; 
    en_sub: in std_logic; 
    i_in_20mhz: in std_logic_vector(11 downto 0); 
    i_in_40mhz: in std_logic_vector(11 downto 0); 
    locked: in std_logic; 
    m_reset: in std_logic; 
    q_in_20mhz: in std_logic_vector(11 downto 0); 
    q_in_40mhz: in std_logic_vector(11 downto 0); 
    reset: in std_logic; 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end dco_correction_entity_e39f5c6ad0;

architecture structural of dco_correction_entity_e39f5c6ad0 is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(37 downto 0);
  signal addsub5_s_net_x0: std_logic_vector(37 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal avg2_q_net: std_logic_vector(15 downto 0);
  signal avg_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal ce_2_sg_x5: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal clk_2_sg_x5: std_logic;
  signal constant1_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal convert14_dout_net_x0: std_logic;
  signal convert15_dout_net_x0: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(14 downto 0);
  signal convert_dout_net: std_logic;
  signal dco_timing_data_out_net_x1: std_logic_vector(31 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic_vector(11 downto 0);
  signal delay_q_net: std_logic_vector(11 downto 0);
  signal down_sample2_q_net: std_logic;
  signal down_sample3_q_net: std_logic;
  signal down_sample4_q_net_x1: std_logic;
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal i_in_x2: std_logic_vector(11 downto 0);
  signal logical2_y_net_x2: std_logic;
  signal mux1_y_net: std_logic_vector(37 downto 0);
  signal mux2_y_net: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic_vector(37 downto 0);
  signal mux4_y_net: std_logic_vector(15 downto 0);
  signal mux5_y_net_x0: std_logic_vector(37 downto 0);
  signal mux_y_net: std_logic_vector(37 downto 0);
  signal q_in_x1: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic_vector(16 downto 0);
  signal register2_q_net: std_logic;
  signal register2_q_net_x1: std_logic_vector(11 downto 0);
  signal register3_q_net_x0: std_logic_vector(11 downto 0);
  signal register_q_net_x0: std_logic_vector(16 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  ce_2_sg_x5 <= ce_2;
  clk_1_sg_x4 <= clk_1;
  clk_2_sg_x5 <= clk_2;
  dco_timing_data_out_net_x1 <= dcotiming;
  convert14_dout_net_x0 <= en_dco;
  convert15_dout_net_x0 <= en_sub;
  i_in_x2 <= i_in_20mhz;
  register2_q_net_x1 <= i_in_40mhz;
  relational3_op_net_x1 <= locked;
  relational_op_net_x0 <= m_reset;
  q_in_x1 <= q_in_20mhz;
  register3_q_net_x0 <= q_in_40mhz;
  logical2_y_net_x2 <= reset;
  i_out <= mux3_y_net_x0;
  q_out <= mux5_y_net_x0;

  addsub: entity work.addsub_f7c149eff3
    port map (
      a => register2_q_net_x1,
      b => mux2_y_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_f7c149eff3
    port map (
      a => register3_q_net_x0,
      b => mux4_y_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      s => addsub1_s_net
    );

  avg: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x0,
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      clr => '0',
      en(0) => relational1_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg_q_net
    );

  avg2: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x1,
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      clr => '0',
      en(0) => relational1_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg2_q_net
    );

  avg_i_956deedec6: entity work.avg_i_entity_956deedec6
    port map (
      ce_2 => ce_2_sg_x5,
      clk_2 => clk_2_sg_x5,
      i_in_x0 => i_in_x2,
      m_reset => down_sample4_q_net_x1,
      avg_i_out => convert1_dout_net_x0
    );

  avg_q_c7091d74bd: entity work.avg_q_entity_c7091d74bd
    port map (
      ce_2 => ce_2_sg_x5,
      clk_2 => clk_2_sg_x5,
      i_in => q_in_x1,
      m_reset => down_sample4_q_net_x1,
      avg_i_out => convert1_dout_net_x1
    );

  butterworth_iir_hp_cd393a8ef5: entity work.butterworth_iir_hp_entity_cd393a8ef5
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      i_in => register_q_net_x0,
      q_in => register1_q_net_x0,
      i_out => addsub5_s_net_x0,
      q_out => addsub2_s_net_x0
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      clr => '0',
      din(0) => relational3_op_net_x0,
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
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      clr => '0',
      din(0) => register2_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register3_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      d(0) => convert_dout_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => register2_q_net_x1,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational3_op_net_x1,
      dest_ce => ce_2_sg_x5,
      dest_clk => clk_2_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x4,
      src_clk => clk_1_sg_x4,
      src_clr => '0',
      q(0) => down_sample_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert15_dout_net_x0,
      dest_ce => ce_2_sg_x5,
      dest_clk => clk_2_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x4,
      src_clk => clk_1_sg_x4,
      src_clr => '0',
      q(0) => down_sample2_q_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert14_dout_net_x0,
      dest_ce => ce_2_sg_x5,
      dest_clk => clk_2_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x4,
      src_clk => clk_1_sg_x4,
      src_clr => '0',
      q(0) => down_sample3_q_net
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x0,
      dest_ce => ce_2_sg_x5,
      dest_clk => clk_2_sg_x5,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x4,
      src_clk => clk_1_sg_x4,
      src_clr => '0',
      q(0) => down_sample4_q_net_x1
    );

  mux: entity work.mux_2005a19eb8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay2_q_net,
      d1 => addsub5_s_net_x0,
      sel(0) => delay1_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_2005a19eb8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay_q_net,
      d1 => addsub2_s_net_x0,
      sel(0) => delay1_q_net,
      y => mux1_y_net
    );

  mux2: entity work.mux_e7bf131720
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => avg_q_net,
      sel(0) => down_sample2_q_net,
      y => mux2_y_net
    );

  mux3: entity work.mux_68a729e566
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register2_q_net_x1,
      d1 => mux_y_net,
      sel(0) => down_sample3_q_net,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_e7bf131720
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => avg2_q_net,
      sel(0) => down_sample2_q_net,
      y => mux4_y_net
    );

  mux5: entity work.mux_68a729e566
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register3_q_net_x0,
      d1 => mux1_y_net,
      sel(0) => down_sample3_q_net,
      y => mux5_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => addsub1_s_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_2_sg_x5,
      clk => clk_2_sg_x5,
      d(0) => constant_op_net,
      en(0) => relational3_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q(0) => register2_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => addsub_s_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => register_q_net_x0
    );

  subsystem_a914814e7c: entity work.subsystem_entity_a914814e7c
    port map (
      ce_1 => ce_1_sg_x4,
      ce_2 => ce_2_sg_x5,
      clk_1 => clk_1_sg_x4,
      clk_2 => clk_2_sg_x5,
      us_in => logical2_y_net_x2,
      ds_out => down_sample_q_net_x3
    );

  timing_705988255f: entity work.timing_entity_705988255f
    port map (
      ce_1 => ce_1_sg_x4,
      ce_2 => ce_2_sg_x5,
      clk_1 => clk_1_sg_x4,
      clk_2 => clk_2_sg_x5,
      en => down_sample_q_net_x2,
      rst => down_sample_q_net_x3,
      timing => dco_timing_data_out_net_x1,
      x16 => relational1_op_net_x0,
      x18 => relational3_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/Finalize_gBB"

entity finalize_gbb_entity_8a876b9ae5 is
  port (
    adj: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    g_bb: in std_logic_vector(7 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    viq: in std_logic_vector(8 downto 0); 
    g_bb_out: out std_logic_vector(12 downto 0)
  );
end finalize_gbb_entity_8a876b9ae5;

architecture structural of finalize_gbb_entity_8a876b9ae5 is
  signal addsub1_s_net: std_logic_vector(11 downto 0);
  signal addsub_s_net: std_logic_vector(10 downto 0);
  signal adja_s_net: std_logic_vector(12 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant3_op_net: std_logic;
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x1: std_logic_vector(7 downto 0);
  signal logical2_y_net_x3: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal register1_q_net: std_logic;
  signal register1_q_net_x1: std_logic_vector(8 downto 0);
  signal register2_q_net: std_logic_vector(12 downto 0);
  signal relational2_op_net_x0: std_logic;

begin
  convert6_dout_net_x0 <= adj;
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  relational2_op_net_x0 <= en;
  mux1_y_net_x1 <= g_bb;
  logical2_y_net_x3 <= rst;
  convert8_dout_net_x1 <= t_db;
  register1_q_net_x1 <= viq;
  g_bb_out <= mux1_y_net_x2;

  addsub: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 2,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 11,
      core_name0 => "addsb_11_0_76821d30ce8a19fb",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 11,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 11
    )
    port map (
      a => register1_q_net_x1,
      b => convert8_dout_net_x1,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 2,
      b_width => 11,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 12,
      core_name0 => "addsb_11_0_e0943def5dec93a3",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 12,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 12
    )
    port map (
      a => mux1_y_net_x1,
      b => addsub_s_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  adja: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 2,
      a_width => 12,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 13,
      core_name0 => "addsb_11_0_6fff63a0f1e46165",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 13,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 13
    )
    port map (
      a => addsub1_s_net,
      b => convert6_dout_net_x0,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => adja_s_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  mux1: entity work.mux_511c8efe77
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => mux1_y_net_x1,
      d1 => register2_q_net,
      sel(0) => register1_q_net,
      y => mux1_y_net_x2
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => constant3_op_net,
      en(0) => relational2_op_net_x0,
      rst(0) => logical2_y_net_x3,
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 13,
      init_value => b"0000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => adja_s_net,
      en(0) => relational2_op_net_x0,
      rst => "0",
      q => register2_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/RF_setting/8bit_slicer1"

entity x8bit_slicer1_entity_5e6d8962d3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0)
  );
end x8bit_slicer1_entity_5e6d8962d3;

architecture structural of x8bit_slicer1_entity_5e6d8962d3 is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal thresholds_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  thresholds_data_out_net_x0 <= in1;
  out1 <= convert4_dout_net_x0;
  out2 <= convert5_dout_net_x0;
  out3 <= convert6_dout_net_x0;

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert4_dout_net_x0
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert5_dout_net_x0
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert6_dout_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => thresholds_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => thresholds_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => thresholds_data_out_net_x0,
      y => slice3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/RF_setting"

entity rf_setting_entity_3bb81b9e06 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rssi_in: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    thresholds: in std_logic_vector(31 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    rssi_lock: out std_logic_vector(17 downto 0); 
    toolow: out std_logic
  );
end rf_setting_entity_3bb81b9e06;

architecture structural of rf_setting_entity_3bb81b9e06 is
  signal addsub4_s_net: std_logic_vector(1 downto 0);
  signal addsub5_s_net: std_logic_vector(2 downto 0);
  signal addsub6_s_net: std_logic_vector(1 downto 0);
  signal addsub_s_net_x0: std_logic_vector(17 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal constant1_op_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert5_dout_net: std_logic;
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert6_dout_net: std_logic;
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal logical2_y_net_x4: std_logic;
  signal register1_q_net_x0: std_logic;
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational6_op_net: std_logic;
  signal relational_op_net_x0: std_logic;
  signal thresholds_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  relational_op_net_x0 <= en;
  addsub_s_net_x0 <= rssi_in;
  logical2_y_net_x4 <= rst;
  thresholds_data_out_net_x1 <= thresholds;
  g_rf <= register2_q_net_x1;
  rssi_lock <= register3_q_net_x1;
  toolow <= register1_q_net_x0;

  addsub4: entity work.addsub_b4036865b8
    port map (
      a(0) => convert4_dout_net,
      b(0) => convert5_dout_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_5c670787eb4ba225",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => addsub4_s_net,
      b(0) => convert6_dout_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en => "1",
      s => addsub5_s_net
    );

  addsub6: entity work.xladdsub_w3_warplab_agc
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 3,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 4,
      core_name0 => "addsb_11_0_5107ece67e1a9b77",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 4,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 2
    )
    port map (
      a => addsub5_s_net,
      b(0) => constant1_op_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en => "1",
      s => addsub6_s_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => relational4_op_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => relational5_op_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => relational6_op_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => relational4_op_net,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q(0) => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"11"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => addsub6_s_net,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q => register2_q_net_x1
    );

  register3: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => addsub_s_net_x0,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q => register3_q_net_x1
    );

  relational4: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert4_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert5_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  relational6: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert6_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational6_op_net
    );

  x8bit_slicer1_5e6d8962d3: entity work.x8bit_slicer1_entity_5e6d8962d3
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in1 => thresholds_data_out_net_x1,
      out1 => convert4_dout_net_x0,
      out2 => convert5_dout_net_x0,
      out3 => convert6_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/Stage_UD/RisingEdge"

entity risingedge_entity_c787c4adff is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    edge_x0: out std_logic
  );
end risingedge_entity_c787c4adff;

architecture structural of risingedge_entity_c787c4adff is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational4_op_net_x0: std_logic;

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  relational4_op_net_x0 <= in_x0;
  edge_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip(0) => relational4_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational4_op_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A/Stage_UD"

entity stage_ud_entity_50c4011a49 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    reset: in std_logic; 
    timing: in std_logic_vector(31 downto 0); 
    stage0: out std_logic; 
    stage1: out std_logic; 
    stage2: out std_logic; 
    stage3: out std_logic; 
    toreset: out std_logic
  );
end stage_ud_entity_50c4011a49;

architecture structural of stage_ud_entity_50c4011a49 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal constant_op_net: std_logic_vector(17 downto 0);
  signal convert1_dout_net: std_logic_vector(7 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert3_dout_net: std_logic_vector(7 downto 0);
  signal convert4_dout_net: std_logic_vector(7 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x5: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x2: std_logic;
  signal relational4_op_net_x0: std_logic;
  signal relational_op_net_x1: std_logic;
  signal sample_count_op_net: std_logic_vector(9 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal slice4_y_net: std_logic_vector(7 downto 0);
  signal timing_data_out_net_x0: std_logic_vector(31 downto 0);
  signal timout_count_op_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  logical_y_net_x2 <= en;
  logical2_y_net_x5 <= reset;
  timing_data_out_net_x0 <= timing;
  stage0 <= relational_op_net_x1;
  stage1 <= relational1_op_net_x1;
  stage2 <= relational2_op_net_x1;
  stage3 <= relational3_op_net_x2;
  toreset <= logical_y_net_x3;

  constant_x0: entity work.constant_4d537a8f8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => slice4_y_net,
      en => "1",
      dout => convert4_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => relational3_op_net_x2,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => relational4_op_net_x0,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x2,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter1_op_net,
      d1(0) => logical_y_net_x2,
      y(0) => logical1_y_net
    );

  relational: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert1_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x1
    );

  relational1: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert2_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x1
    );

  relational2: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert3_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x1
    );

  relational3: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert4_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x2
    );

  relational4: entity work.relational_d96b17963a
    port map (
      a => timout_count_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net_x0
    );

  risingedge_c787c4adff: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in_x0 => relational4_op_net_x0,
      edge_x0 => logical_y_net_x3
    );

  sample_count: entity work.xlcounter_free_w3_warplab_agc
    generic map (
      core_name0 => "cntr_11_0_511eb7a1af6f3f2a",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical2_y_net_x5,
      op => sample_count_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => timing_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => timing_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => timing_data_out_net_x0,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => timing_data_out_net_x0,
      y => slice4_y_net
    );

  timout_count: entity work.xlcounter_free_w3_warplab_agc
    generic map (
      core_name0 => "cntr_11_0_3cb0d3527735316e",
      op_arith => xlUnsigned,
      op_width => 18
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      en(0) => logical1_y_net,
      rst(0) => logical2_y_net_x5,
      op => timout_count_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_A"

entity agc_a_entity_2d31434455 is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco: in std_logic; 
    en_dco_sub: in std_logic; 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in_a_20mhz: in std_logic_vector(11 downto 0); 
    i_in_a_40mhz: in std_logic_vector(11 downto 0); 
    m_rst: in std_logic; 
    q_in_a_20mhz: in std_logic_vector(11 downto 0); 
    q_in_a_40mhz: in std_logic_vector(11 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_a_entity_2d31434455;

architecture structural of agc_a_entity_2d31434455 is
  signal addsub_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal ce_2_sg_x6: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal clk_2_sg_x6: std_logic;
  signal convert14_dout_net_x1: std_logic;
  signal convert15_dout_net_x1: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x2: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal dco_timing_data_out_net_x2: std_logic_vector(31 downto 0);
  signal i_in_x3: std_logic_vector(11 downto 0);
  signal logical2_y_net_x6: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal q_in_x2: std_logic_vector(11 downto 0);
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x2: std_logic_vector(8 downto 0);
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register2_q_net_x3: std_logic_vector(11 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register3_q_net_x2: std_logic_vector(11 downto 0);
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x3: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x2: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal thresholds_data_out_net_x2: std_logic_vector(31 downto 0);
  signal timing_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  convert5_dout_net_x1 <= adj_1;
  convert6_dout_net_x1 <= adj_2;
  ce_1_sg_x10 <= ce_1;
  ce_2_sg_x6 <= ce_2;
  clk_1_sg_x10 <= clk_1;
  clk_2_sg_x6 <= clk_2;
  dco_timing_data_out_net_x2 <= dco_timing;
  logical_y_net_x4 <= en;
  convert14_dout_net_x1 <= en_dco;
  convert15_dout_net_x1 <= en_dco_sub;
  convert7_dout_net_x1 <= gbb_init;
  i_in_x3 <= i_in_a_20mhz;
  register2_q_net_x3 <= i_in_a_40mhz;
  relational_op_net_x2 <= m_rst;
  q_in_x2 <= q_in_a_20mhz;
  register3_q_net_x2 <= q_in_a_40mhz;
  addsub_s_net_x1 <= rssi_db;
  logical2_y_net_x6 <= rst;
  convert8_dout_net_x2 <= t_db;
  thresholds_data_out_net_x2 <= thresholds;
  timing_data_out_net_x1 <= timing;
  register1_q_net_x2 <= viq_in;
  done <= relational3_op_net_x3;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;
  reset <= logical_y_net_x0;

  bb_setting_1f7b659fea: entity work.bb_setting_entity_1f7b659fea
    port map (
      adj => convert5_dout_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x1,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x6,
      t_db => convert8_dout_net_x2,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_e39f5c6ad0: entity work.dco_correction_entity_e39f5c6ad0
    port map (
      ce_1 => ce_1_sg_x10,
      ce_2 => ce_2_sg_x6,
      clk_1 => clk_1_sg_x10,
      clk_2 => clk_2_sg_x6,
      dcotiming => dco_timing_data_out_net_x2,
      en_dco => convert14_dout_net_x1,
      en_sub => convert15_dout_net_x1,
      i_in_20mhz => i_in_x3,
      i_in_40mhz => register2_q_net_x3,
      locked => relational3_op_net_x3,
      m_reset => relational_op_net_x2,
      q_in_20mhz => q_in_x2,
      q_in_40mhz => register3_q_net_x2,
      reset => logical2_y_net_x6,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_8a876b9ae5: entity work.finalize_gbb_entity_8a876b9ae5
    port map (
      adj => convert6_dout_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x6,
      t_db => convert8_dout_net_x2,
      viq => register1_q_net_x2,
      g_bb_out => mux1_y_net_x2
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x3,
      d1(0) => register1_q_net_x0,
      y(0) => logical_y_net_x0
    );

  rf_setting_3bb81b9e06: entity work.rf_setting_entity_3bb81b9e06
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      en => relational_op_net_x1,
      rssi_in => addsub_s_net_x1,
      rst => logical2_y_net_x6,
      thresholds => thresholds_data_out_net_x2,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1,
      toolow => register1_q_net_x0
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_50c4011a49: entity work.stage_ud_entity_50c4011a49
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      en => logical_y_net_x4,
      reset => logical2_y_net_x6,
      timing => timing_data_out_net_x1,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x3,
      toreset => logical_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_B/DCO_correction"

entity dco_correction_entity_64aab3edd5 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dcotiming: in std_logic_vector(31 downto 0); 
    en_dco: in std_logic; 
    en_sub: in std_logic; 
    i_in_20mhz: in std_logic_vector(11 downto 0); 
    i_in_40mhz: in std_logic_vector(11 downto 0); 
    locked: in std_logic; 
    m_reset: in std_logic; 
    q_in_20mhz: in std_logic_vector(11 downto 0); 
    q_in_40mhz: in std_logic_vector(11 downto 0); 
    reset: in std_logic; 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end dco_correction_entity_64aab3edd5;

architecture structural of dco_correction_entity_64aab3edd5 is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(37 downto 0);
  signal addsub5_s_net_x0: std_logic_vector(37 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal avg2_q_net: std_logic_vector(15 downto 0);
  signal avg_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x15: std_logic;
  signal ce_2_sg_x12: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal clk_2_sg_x12: std_logic;
  signal constant1_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal convert14_dout_net_x2: std_logic;
  signal convert15_dout_net_x2: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(14 downto 0);
  signal convert_dout_net: std_logic;
  signal dco_timing_data_out_net_x4: std_logic_vector(31 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic_vector(11 downto 0);
  signal delay_q_net: std_logic_vector(11 downto 0);
  signal down_sample1_q_net_x1: std_logic_vector(11 downto 0);
  signal down_sample2_q_net: std_logic;
  signal down_sample3_q_net: std_logic;
  signal down_sample4_q_net_x2: std_logic;
  signal down_sample4_q_net_x4: std_logic_vector(11 downto 0);
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal logical2_y_net_x9: std_logic;
  signal mux1_y_net: std_logic_vector(37 downto 0);
  signal mux2_y_net: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic_vector(37 downto 0);
  signal mux4_y_net: std_logic_vector(15 downto 0);
  signal mux5_y_net_x0: std_logic_vector(37 downto 0);
  signal mux_y_net: std_logic_vector(37 downto 0);
  signal register1_q_net_x0: std_logic_vector(16 downto 0);
  signal register2_q_net: std_logic;
  signal register4_q_net_x0: std_logic_vector(11 downto 0);
  signal register5_q_net_x0: std_logic_vector(11 downto 0);
  signal register_q_net_x0: std_logic_vector(16 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational_op_net_x3: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  ce_2_sg_x12 <= ce_2;
  clk_1_sg_x15 <= clk_1;
  clk_2_sg_x12 <= clk_2;
  dco_timing_data_out_net_x4 <= dcotiming;
  convert14_dout_net_x2 <= en_dco;
  convert15_dout_net_x2 <= en_sub;
  down_sample4_q_net_x4 <= i_in_20mhz;
  register4_q_net_x0 <= i_in_40mhz;
  relational3_op_net_x1 <= locked;
  relational_op_net_x3 <= m_reset;
  down_sample1_q_net_x1 <= q_in_20mhz;
  register5_q_net_x0 <= q_in_40mhz;
  logical2_y_net_x9 <= reset;
  i_out <= mux3_y_net_x0;
  q_out <= mux5_y_net_x0;

  addsub: entity work.addsub_f7c149eff3
    port map (
      a => register4_q_net_x0,
      b => mux2_y_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_f7c149eff3
    port map (
      a => register5_q_net_x0,
      b => mux4_y_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      s => addsub1_s_net
    );

  avg: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x0,
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      clr => '0',
      en(0) => relational1_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg_q_net
    );

  avg2: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x1,
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      clr => '0',
      en(0) => relational1_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg2_q_net
    );

  avg_i_99c9fca710: entity work.avg_q_entity_c7091d74bd
    port map (
      ce_2 => ce_2_sg_x12,
      clk_2 => clk_2_sg_x12,
      i_in => down_sample4_q_net_x4,
      m_reset => down_sample4_q_net_x2,
      avg_i_out => convert1_dout_net_x0
    );

  avg_q_6ae71e4515: entity work.avg_q_entity_c7091d74bd
    port map (
      ce_2 => ce_2_sg_x12,
      clk_2 => clk_2_sg_x12,
      i_in => down_sample1_q_net_x1,
      m_reset => down_sample4_q_net_x2,
      avg_i_out => convert1_dout_net_x1
    );

  butterworth_iir_hp_73648d6985: entity work.butterworth_iir_hp_entity_cd393a8ef5
    port map (
      ce_1 => ce_1_sg_x15,
      clk_1 => clk_1_sg_x15,
      i_in => register_q_net_x0,
      q_in => register1_q_net_x0,
      i_out => addsub5_s_net_x0,
      q_out => addsub2_s_net_x0
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      clr => '0',
      din(0) => relational3_op_net_x0,
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
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      clr => '0',
      din(0) => register2_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => register5_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      d(0) => convert_dout_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => register4_q_net_x0,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational3_op_net_x1,
      dest_ce => ce_2_sg_x12,
      dest_clk => clk_2_sg_x12,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q(0) => down_sample_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert15_dout_net_x2,
      dest_ce => ce_2_sg_x12,
      dest_clk => clk_2_sg_x12,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q(0) => down_sample2_q_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert14_dout_net_x2,
      dest_ce => ce_2_sg_x12,
      dest_clk => clk_2_sg_x12,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q(0) => down_sample3_q_net
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 2,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x3,
      dest_ce => ce_2_sg_x12,
      dest_clk => clk_2_sg_x12,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x15,
      src_clk => clk_1_sg_x15,
      src_clr => '0',
      q(0) => down_sample4_q_net_x2
    );

  mux: entity work.mux_2005a19eb8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay2_q_net,
      d1 => addsub5_s_net_x0,
      sel(0) => delay1_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_2005a19eb8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay_q_net,
      d1 => addsub2_s_net_x0,
      sel(0) => delay1_q_net,
      y => mux1_y_net
    );

  mux2: entity work.mux_e7bf131720
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => avg_q_net,
      sel(0) => down_sample2_q_net,
      y => mux2_y_net
    );

  mux3: entity work.mux_68a729e566
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register4_q_net_x0,
      d1 => mux_y_net,
      sel(0) => down_sample3_q_net,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_e7bf131720
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => avg2_q_net,
      sel(0) => down_sample2_q_net,
      y => mux4_y_net
    );

  mux5: entity work.mux_68a729e566
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register5_q_net_x0,
      d1 => mux1_y_net,
      sel(0) => down_sample3_q_net,
      y => mux5_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => addsub1_s_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_2_sg_x12,
      clk => clk_2_sg_x12,
      d(0) => constant_op_net,
      en(0) => relational3_op_net_x0,
      rst(0) => down_sample_q_net_x3,
      q(0) => register2_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => addsub_s_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => register_q_net_x0
    );

  subsystem_f90d07e0dd: entity work.subsystem_entity_a914814e7c
    port map (
      ce_1 => ce_1_sg_x15,
      ce_2 => ce_2_sg_x12,
      clk_1 => clk_1_sg_x15,
      clk_2 => clk_2_sg_x12,
      us_in => logical2_y_net_x9,
      ds_out => down_sample_q_net_x3
    );

  timing_9125c29ed3: entity work.timing_entity_705988255f
    port map (
      ce_1 => ce_1_sg_x15,
      ce_2 => ce_2_sg_x12,
      clk_1 => clk_1_sg_x15,
      clk_2 => clk_2_sg_x12,
      en => down_sample_q_net_x2,
      rst => down_sample_q_net_x3,
      timing => dco_timing_data_out_net_x4,
      x16 => relational1_op_net_x0,
      x18 => relational3_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_B"

entity agc_b_entity_105abfcea6 is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco: in std_logic; 
    en_dco_sub: in std_logic; 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in_b_20mhz: in std_logic_vector(11 downto 0); 
    i_in_b_40mhz: in std_logic_vector(11 downto 0); 
    m_rst: in std_logic; 
    q_in_b_20mhz: in std_logic_vector(11 downto 0); 
    q_in_b_40mhz: in std_logic_vector(11 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_b_entity_105abfcea6;

architecture structural of agc_b_entity_105abfcea6 is
  signal addsub_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x21: std_logic;
  signal ce_2_sg_x13: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal clk_2_sg_x13: std_logic;
  signal convert14_dout_net_x3: std_logic;
  signal convert15_dout_net_x3: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x5: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal dco_timing_data_out_net_x5: std_logic_vector(31 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x5: std_logic_vector(11 downto 0);
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net_x13: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x2: std_logic_vector(8 downto 0);
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register4_q_net_x1: std_logic_vector(11 downto 0);
  signal register5_q_net_x1: std_logic_vector(11 downto 0);
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x3: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x4: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal thresholds_data_out_net_x5: std_logic_vector(31 downto 0);
  signal timing_data_out_net_x3: std_logic_vector(31 downto 0);

begin
  convert5_dout_net_x3 <= adj_1;
  convert6_dout_net_x3 <= adj_2;
  ce_1_sg_x21 <= ce_1;
  ce_2_sg_x13 <= ce_2;
  clk_1_sg_x21 <= clk_1;
  clk_2_sg_x13 <= clk_2;
  dco_timing_data_out_net_x5 <= dco_timing;
  logical1_y_net_x2 <= en;
  convert14_dout_net_x3 <= en_dco;
  convert15_dout_net_x3 <= en_dco_sub;
  convert7_dout_net_x3 <= gbb_init;
  down_sample4_q_net_x5 <= i_in_b_20mhz;
  register4_q_net_x1 <= i_in_b_40mhz;
  relational_op_net_x4 <= m_rst;
  down_sample1_q_net_x2 <= q_in_b_20mhz;
  register5_q_net_x1 <= q_in_b_40mhz;
  addsub_s_net_x1 <= rssi_db;
  logical2_y_net_x13 <= rst;
  convert8_dout_net_x5 <= t_db;
  thresholds_data_out_net_x5 <= thresholds;
  timing_data_out_net_x3 <= timing;
  register1_q_net_x2 <= viq_in;
  done <= relational3_op_net_x3;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;
  reset <= logical_y_net_x0;

  bb_setting_0227ce3715: entity work.bb_setting_entity_1f7b659fea
    port map (
      adj => convert5_dout_net_x3,
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x3,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x13,
      t_db => convert8_dout_net_x5,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_64aab3edd5: entity work.dco_correction_entity_64aab3edd5
    port map (
      ce_1 => ce_1_sg_x21,
      ce_2 => ce_2_sg_x13,
      clk_1 => clk_1_sg_x21,
      clk_2 => clk_2_sg_x13,
      dcotiming => dco_timing_data_out_net_x5,
      en_dco => convert14_dout_net_x3,
      en_sub => convert15_dout_net_x3,
      i_in_20mhz => down_sample4_q_net_x5,
      i_in_40mhz => register4_q_net_x1,
      locked => relational3_op_net_x3,
      m_reset => relational_op_net_x4,
      q_in_20mhz => down_sample1_q_net_x2,
      q_in_40mhz => register5_q_net_x1,
      reset => logical2_y_net_x13,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_deb211115d: entity work.finalize_gbb_entity_8a876b9ae5
    port map (
      adj => convert6_dout_net_x3,
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x13,
      t_db => convert8_dout_net_x5,
      viq => register1_q_net_x2,
      g_bb_out => mux1_y_net_x2
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => register1_q_net_x0,
      y(0) => logical_y_net_x0
    );

  rf_setting_168956dba8: entity work.rf_setting_entity_3bb81b9e06
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      en => relational_op_net_x1,
      rssi_in => addsub_s_net_x1,
      rst => logical2_y_net_x13,
      thresholds => thresholds_data_out_net_x5,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1,
      toolow => register1_q_net_x0
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_8e760c3d8c: entity work.stage_ud_entity_50c4011a49
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      en => logical1_y_net_x2,
      reset => logical2_y_net_x13,
      timing => timing_data_out_net_x3,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x3,
      toreset => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_C"

entity agc_c_entity_01fb3b638c is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco: in std_logic; 
    en_dco_sub: in std_logic; 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in_c_20mhz: in std_logic_vector(11 downto 0); 
    i_in_c_40mhz: in std_logic_vector(11 downto 0); 
    m_rst: in std_logic; 
    q_in_c_20mhz: in std_logic_vector(11 downto 0); 
    q_in_c_40mhz: in std_logic_vector(11 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_c_entity_01fb3b638c;

architecture structural of agc_c_entity_01fb3b638c is
  signal addsub_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x32: std_logic;
  signal ce_2_sg_x20: std_logic;
  signal clk_1_sg_x32: std_logic;
  signal clk_2_sg_x20: std_logic;
  signal convert14_dout_net_x5: std_logic;
  signal convert15_dout_net_x5: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x5: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x5: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x5: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x8: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal dco_timing_data_out_net_x8: std_logic_vector(31 downto 0);
  signal down_sample5_q_net_x2: std_logic_vector(11 downto 0);
  signal down_sample6_q_net_x2: std_logic_vector(11 downto 0);
  signal logical2_y_net_x1: std_logic;
  signal logical2_y_net_x20: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x2: std_logic_vector(8 downto 0);
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register6_q_net_x1: std_logic_vector(11 downto 0);
  signal register7_q_net_x1: std_logic_vector(11 downto 0);
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x3: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x6: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal thresholds_data_out_net_x8: std_logic_vector(31 downto 0);
  signal timing_data_out_net_x5: std_logic_vector(31 downto 0);

begin
  convert5_dout_net_x5 <= adj_1;
  convert6_dout_net_x5 <= adj_2;
  ce_1_sg_x32 <= ce_1;
  ce_2_sg_x20 <= ce_2;
  clk_1_sg_x32 <= clk_1;
  clk_2_sg_x20 <= clk_2;
  dco_timing_data_out_net_x8 <= dco_timing;
  logical2_y_net_x1 <= en;
  convert14_dout_net_x5 <= en_dco;
  convert15_dout_net_x5 <= en_dco_sub;
  convert7_dout_net_x5 <= gbb_init;
  down_sample6_q_net_x2 <= i_in_c_20mhz;
  register6_q_net_x1 <= i_in_c_40mhz;
  relational_op_net_x6 <= m_rst;
  down_sample5_q_net_x2 <= q_in_c_20mhz;
  register7_q_net_x1 <= q_in_c_40mhz;
  addsub_s_net_x1 <= rssi_db;
  logical2_y_net_x20 <= rst;
  convert8_dout_net_x8 <= t_db;
  thresholds_data_out_net_x8 <= thresholds;
  timing_data_out_net_x5 <= timing;
  register1_q_net_x2 <= viq_in;
  done <= relational3_op_net_x3;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;
  reset <= logical_y_net_x0;

  bb_setting_082fc070d3: entity work.bb_setting_entity_1f7b659fea
    port map (
      adj => convert5_dout_net_x5,
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x5,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x20,
      t_db => convert8_dout_net_x8,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_4bb7276b73: entity work.dco_correction_entity_64aab3edd5
    port map (
      ce_1 => ce_1_sg_x32,
      ce_2 => ce_2_sg_x20,
      clk_1 => clk_1_sg_x32,
      clk_2 => clk_2_sg_x20,
      dcotiming => dco_timing_data_out_net_x8,
      en_dco => convert14_dout_net_x5,
      en_sub => convert15_dout_net_x5,
      i_in_20mhz => down_sample6_q_net_x2,
      i_in_40mhz => register6_q_net_x1,
      locked => relational3_op_net_x3,
      m_reset => relational_op_net_x6,
      q_in_20mhz => down_sample5_q_net_x2,
      q_in_40mhz => register7_q_net_x1,
      reset => logical2_y_net_x20,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_ced50e081f: entity work.finalize_gbb_entity_8a876b9ae5
    port map (
      adj => convert6_dout_net_x5,
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x20,
      t_db => convert8_dout_net_x8,
      viq => register1_q_net_x2,
      g_bb_out => mux1_y_net_x2
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => register1_q_net_x0,
      y(0) => logical_y_net_x0
    );

  rf_setting_5a638a1655: entity work.rf_setting_entity_3bb81b9e06
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      en => relational_op_net_x1,
      rssi_in => addsub_s_net_x1,
      rst => logical2_y_net_x20,
      thresholds => thresholds_data_out_net_x8,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1,
      toolow => register1_q_net_x0
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_51bae682cc: entity work.stage_ud_entity_50c4011a49
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      en => logical2_y_net_x1,
      reset => logical2_y_net_x20,
      timing => timing_data_out_net_x5,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x3,
      toreset => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD/AGC_D"

entity agc_d_entity_51b56a8764 is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco: in std_logic; 
    en_dco_sub: in std_logic; 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in_d_20mhz: in std_logic_vector(11 downto 0); 
    i_in_d_40mhz: in std_logic_vector(11 downto 0); 
    m_rst: in std_logic; 
    q_in_d_20mhz: in std_logic_vector(11 downto 0); 
    q_in_d_40mhz: in std_logic_vector(11 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_d_entity_51b56a8764;

architecture structural of agc_d_entity_51b56a8764 is
  signal addsub_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x43: std_logic;
  signal ce_2_sg_x27: std_logic;
  signal clk_1_sg_x43: std_logic;
  signal clk_2_sg_x27: std_logic;
  signal convert14_dout_net_x7: std_logic;
  signal convert15_dout_net_x7: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x7: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x7: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x7: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x11: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal dco_timing_data_out_net_x11: std_logic_vector(31 downto 0);
  signal down_sample7_q_net_x2: std_logic_vector(11 downto 0);
  signal down_sample8_q_net_x2: std_logic_vector(11 downto 0);
  signal logical2_y_net_x27: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x2: std_logic_vector(8 downto 0);
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register8_q_net_x1: std_logic_vector(11 downto 0);
  signal register9_q_net_x1: std_logic_vector(11 downto 0);
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x3: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x8: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal thresholds_data_out_net_x11: std_logic_vector(31 downto 0);
  signal timing_data_out_net_x7: std_logic_vector(31 downto 0);

begin
  convert5_dout_net_x7 <= adj_1;
  convert6_dout_net_x7 <= adj_2;
  ce_1_sg_x43 <= ce_1;
  ce_2_sg_x27 <= ce_2;
  clk_1_sg_x43 <= clk_1;
  clk_2_sg_x27 <= clk_2;
  dco_timing_data_out_net_x11 <= dco_timing;
  logical3_y_net_x1 <= en;
  convert14_dout_net_x7 <= en_dco;
  convert15_dout_net_x7 <= en_dco_sub;
  convert7_dout_net_x7 <= gbb_init;
  down_sample8_q_net_x2 <= i_in_d_20mhz;
  register8_q_net_x1 <= i_in_d_40mhz;
  relational_op_net_x8 <= m_rst;
  down_sample7_q_net_x2 <= q_in_d_20mhz;
  register9_q_net_x1 <= q_in_d_40mhz;
  addsub_s_net_x1 <= rssi_db;
  logical2_y_net_x27 <= rst;
  convert8_dout_net_x11 <= t_db;
  thresholds_data_out_net_x11 <= thresholds;
  timing_data_out_net_x7 <= timing;
  register1_q_net_x2 <= viq_in;
  done <= relational3_op_net_x3;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;
  reset <= logical_y_net_x0;

  bb_setting_3eb7e10265: entity work.bb_setting_entity_1f7b659fea
    port map (
      adj => convert5_dout_net_x7,
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x7,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x27,
      t_db => convert8_dout_net_x11,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_37797a9da1: entity work.dco_correction_entity_64aab3edd5
    port map (
      ce_1 => ce_1_sg_x43,
      ce_2 => ce_2_sg_x27,
      clk_1 => clk_1_sg_x43,
      clk_2 => clk_2_sg_x27,
      dcotiming => dco_timing_data_out_net_x11,
      en_dco => convert14_dout_net_x7,
      en_sub => convert15_dout_net_x7,
      i_in_20mhz => down_sample8_q_net_x2,
      i_in_40mhz => register8_q_net_x1,
      locked => relational3_op_net_x3,
      m_reset => relational_op_net_x8,
      q_in_20mhz => down_sample7_q_net_x2,
      q_in_40mhz => register9_q_net_x1,
      reset => logical2_y_net_x27,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_5112b95134: entity work.finalize_gbb_entity_8a876b9ae5
    port map (
      adj => convert6_dout_net_x7,
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x27,
      t_db => convert8_dout_net_x11,
      viq => register1_q_net_x2,
      g_bb_out => mux1_y_net_x2
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => register1_q_net_x0,
      y(0) => logical_y_net_x0
    );

  rf_setting_32f4480d1b: entity work.rf_setting_entity_3bb81b9e06
    port map (
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      en => relational_op_net_x1,
      rssi_in => addsub_s_net_x1,
      rst => logical2_y_net_x27,
      thresholds => thresholds_data_out_net_x11,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1,
      toolow => register1_q_net_x0
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_b8b88caedd: entity work.stage_ud_entity_50c4011a49
    port map (
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      en => logical3_y_net_x1,
      reset => logical2_y_net_x27,
      timing => timing_data_out_net_x7,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x3,
      toreset => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/AGC_ABCD"

entity agc_abcd_entity_77e14f11cd is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    convert14: in std_logic; 
    convert15: in std_logic; 
    convert5: in std_logic_vector(7 downto 0); 
    convert6: in std_logic_vector(7 downto 0); 
    convert7: in std_logic_vector(7 downto 0); 
    convert8: in std_logic_vector(7 downto 0); 
    dco_timing: in std_logic_vector(31 downto 0); 
    down_sample1: in std_logic_vector(11 downto 0); 
    down_sample2: in std_logic_vector(11 downto 0); 
    down_sample3: in std_logic_vector(11 downto 0); 
    down_sample4: in std_logic_vector(11 downto 0); 
    down_sample5: in std_logic_vector(11 downto 0); 
    down_sample6: in std_logic_vector(11 downto 0); 
    down_sample7: in std_logic_vector(11 downto 0); 
    down_sample8: in std_logic_vector(11 downto 0); 
    en: in std_logic; 
    en_agc_a: in std_logic; 
    en_agc_b: in std_logic; 
    en_agc_c: in std_logic; 
    en_agc_d: in std_logic; 
    m_rst: in std_logic; 
    register2: in std_logic_vector(11 downto 0); 
    register3: in std_logic_vector(11 downto 0); 
    register4: in std_logic_vector(11 downto 0); 
    register5: in std_logic_vector(11 downto 0); 
    register6: in std_logic_vector(11 downto 0); 
    register7: in std_logic_vector(11 downto 0); 
    register8: in std_logic_vector(11 downto 0); 
    register9: in std_logic_vector(11 downto 0); 
    rssi_db_a: in std_logic_vector(17 downto 0); 
    rssi_db_b: in std_logic_vector(17 downto 0); 
    rssi_db_c: in std_logic_vector(17 downto 0); 
    rssi_db_d: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in_a: in std_logic_vector(8 downto 0); 
    viq_in_b: in std_logic_vector(8 downto 0); 
    viq_in_c: in std_logic_vector(8 downto 0); 
    viq_in_d: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
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
    i_out_a: out std_logic_vector(37 downto 0); 
    i_out_b: out std_logic_vector(37 downto 0); 
    i_out_c: out std_logic_vector(37 downto 0); 
    i_out_d: out std_logic_vector(37 downto 0); 
    q_out_a: out std_logic_vector(37 downto 0); 
    q_out_b: out std_logic_vector(37 downto 0); 
    q_out_c: out std_logic_vector(37 downto 0); 
    q_out_d: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_abcd_entity_77e14f11cd;

architecture structural of agc_abcd_entity_77e14f11cd is
  signal addsub_s_net_x5: std_logic_vector(17 downto 0);
  signal addsub_s_net_x6: std_logic_vector(17 downto 0);
  signal addsub_s_net_x7: std_logic_vector(17 downto 0);
  signal addsub_s_net_x8: std_logic_vector(17 downto 0);
  signal b0_y_net_x0: std_logic;
  signal b1_y_net_x0: std_logic;
  signal b2_y_net_x0: std_logic;
  signal b3_y_net_x0: std_logic;
  signal ce_1_sg_x44: std_logic;
  signal ce_2_sg_x28: std_logic;
  signal clk_1_sg_x44: std_logic;
  signal clk_2_sg_x28: std_logic;
  signal convert14_dout_net_x8: std_logic;
  signal convert15_dout_net_x8: std_logic;
  signal convert1_dout_net_x4: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x5: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x6: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x7: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x8: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x8: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x8: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x12: std_logic_vector(7 downto 0);
  signal convert_dout_net_x4: std_logic_vector(4 downto 0);
  signal convert_dout_net_x5: std_logic_vector(4 downto 0);
  signal convert_dout_net_x6: std_logic_vector(4 downto 0);
  signal convert_dout_net_x7: std_logic_vector(4 downto 0);
  signal dco_timing_data_out_net_x12: std_logic_vector(31 downto 0);
  signal down_sample1_q_net_x3: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample5_q_net_x3: std_logic_vector(11 downto 0);
  signal down_sample6_q_net_x3: std_logic_vector(11 downto 0);
  signal down_sample7_q_net_x3: std_logic_vector(11 downto 0);
  signal down_sample8_q_net_x3: std_logic_vector(11 downto 0);
  signal i_in_x4: std_logic_vector(11 downto 0);
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical2_y_net_x28: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical5_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal mux3_y_net_x5: std_logic_vector(37 downto 0);
  signal mux3_y_net_x6: std_logic_vector(37 downto 0);
  signal mux3_y_net_x7: std_logic_vector(37 downto 0);
  signal mux3_y_net_x8: std_logic_vector(37 downto 0);
  signal mux5_y_net_x5: std_logic_vector(37 downto 0);
  signal mux5_y_net_x6: std_logic_vector(37 downto 0);
  signal mux5_y_net_x7: std_logic_vector(37 downto 0);
  signal mux5_y_net_x8: std_logic_vector(37 downto 0);
  signal q_in_x3: std_logic_vector(11 downto 0);
  signal register1_q_net_x6: std_logic_vector(8 downto 0);
  signal register1_q_net_x7: std_logic_vector(8 downto 0);
  signal register1_q_net_x8: std_logic_vector(8 downto 0);
  signal register1_q_net_x9: std_logic_vector(8 downto 0);
  signal register2_q_net_x4: std_logic_vector(11 downto 0);
  signal register3_q_net_x3: std_logic_vector(11 downto 0);
  signal register4_q_net_x2: std_logic_vector(11 downto 0);
  signal register5_q_net_x2: std_logic_vector(11 downto 0);
  signal register6_q_net_x2: std_logic_vector(11 downto 0);
  signal register7_q_net_x2: std_logic_vector(11 downto 0);
  signal register8_q_net_x2: std_logic_vector(11 downto 0);
  signal register9_q_net_x2: std_logic_vector(11 downto 0);
  signal register_q_net_x0: std_logic;
  signal relational3_op_net_x10: std_logic;
  signal relational3_op_net_x7: std_logic;
  signal relational3_op_net_x8: std_logic;
  signal relational3_op_net_x9: std_logic;
  signal relational_op_net_x9: std_logic;
  signal thresholds_data_out_net_x12: std_logic_vector(31 downto 0);
  signal timing_data_out_net_x8: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x44 <= ce_1;
  ce_2_sg_x28 <= ce_2;
  clk_1_sg_x44 <= clk_1;
  clk_2_sg_x28 <= clk_2;
  convert14_dout_net_x8 <= convert14;
  convert15_dout_net_x8 <= convert15;
  convert5_dout_net_x8 <= convert5;
  convert6_dout_net_x8 <= convert6;
  convert7_dout_net_x8 <= convert7;
  convert8_dout_net_x12 <= convert8;
  dco_timing_data_out_net_x12 <= dco_timing;
  down_sample1_q_net_x3 <= down_sample1;
  q_in_x3 <= down_sample2;
  i_in_x4 <= down_sample3;
  down_sample4_q_net_x6 <= down_sample4;
  down_sample5_q_net_x3 <= down_sample5;
  down_sample6_q_net_x3 <= down_sample6;
  down_sample7_q_net_x3 <= down_sample7;
  down_sample8_q_net_x3 <= down_sample8;
  register_q_net_x0 <= en;
  b0_y_net_x0 <= en_agc_a;
  b1_y_net_x0 <= en_agc_b;
  b2_y_net_x0 <= en_agc_c;
  b3_y_net_x0 <= en_agc_d;
  relational_op_net_x9 <= m_rst;
  register2_q_net_x4 <= register2;
  register3_q_net_x3 <= register3;
  register4_q_net_x2 <= register4;
  register5_q_net_x2 <= register5;
  register6_q_net_x2 <= register6;
  register7_q_net_x2 <= register7;
  register8_q_net_x2 <= register8;
  register9_q_net_x2 <= register9;
  addsub_s_net_x5 <= rssi_db_a;
  addsub_s_net_x6 <= rssi_db_b;
  addsub_s_net_x7 <= rssi_db_c;
  addsub_s_net_x8 <= rssi_db_d;
  logical2_y_net_x28 <= rst;
  thresholds_data_out_net_x12 <= thresholds;
  timing_data_out_net_x8 <= timing;
  register1_q_net_x6 <= viq_in_a;
  register1_q_net_x7 <= viq_in_b;
  register1_q_net_x8 <= viq_in_c;
  register1_q_net_x9 <= viq_in_d;
  done <= logical5_y_net_x0;
  done_a <= relational3_op_net_x7;
  done_b <= relational3_op_net_x8;
  done_c <= relational3_op_net_x9;
  done_d <= relational3_op_net_x10;
  g_bb_a <= convert_dout_net_x4;
  g_bb_b <= convert_dout_net_x5;
  g_bb_c <= convert_dout_net_x6;
  g_bb_d <= convert_dout_net_x7;
  g_rf_a <= convert1_dout_net_x4;
  g_rf_b <= convert1_dout_net_x5;
  g_rf_c <= convert1_dout_net_x6;
  g_rf_d <= convert1_dout_net_x7;
  i_out_a <= mux3_y_net_x5;
  i_out_b <= mux3_y_net_x6;
  i_out_c <= mux3_y_net_x7;
  i_out_d <= mux3_y_net_x8;
  q_out_a <= mux5_y_net_x5;
  q_out_b <= mux5_y_net_x6;
  q_out_c <= mux5_y_net_x7;
  q_out_d <= mux5_y_net_x8;
  reset <= logical4_y_net_x0;

  agc_a_2d31434455: entity work.agc_a_entity_2d31434455
    port map (
      adj_1 => convert5_dout_net_x8,
      adj_2 => convert6_dout_net_x8,
      ce_1 => ce_1_sg_x44,
      ce_2 => ce_2_sg_x28,
      clk_1 => clk_1_sg_x44,
      clk_2 => clk_2_sg_x28,
      dco_timing => dco_timing_data_out_net_x12,
      en => logical_y_net_x4,
      en_dco => convert14_dout_net_x8,
      en_dco_sub => convert15_dout_net_x8,
      gbb_init => convert7_dout_net_x8,
      i_in_a_20mhz => i_in_x4,
      i_in_a_40mhz => register2_q_net_x4,
      m_rst => relational_op_net_x9,
      q_in_a_20mhz => q_in_x3,
      q_in_a_40mhz => register3_q_net_x3,
      rssi_db => addsub_s_net_x5,
      rst => logical2_y_net_x28,
      t_db => convert8_dout_net_x12,
      thresholds => thresholds_data_out_net_x12,
      timing => timing_data_out_net_x8,
      viq_in => register1_q_net_x6,
      done => relational3_op_net_x7,
      g_bb => convert_dout_net_x4,
      g_rf => convert1_dout_net_x4,
      i_out => mux3_y_net_x5,
      q_out => mux5_y_net_x5,
      reset => logical_y_net_x0
    );

  agc_b_105abfcea6: entity work.agc_b_entity_105abfcea6
    port map (
      adj_1 => convert5_dout_net_x8,
      adj_2 => convert6_dout_net_x8,
      ce_1 => ce_1_sg_x44,
      ce_2 => ce_2_sg_x28,
      clk_1 => clk_1_sg_x44,
      clk_2 => clk_2_sg_x28,
      dco_timing => dco_timing_data_out_net_x12,
      en => logical1_y_net_x2,
      en_dco => convert14_dout_net_x8,
      en_dco_sub => convert15_dout_net_x8,
      gbb_init => convert7_dout_net_x8,
      i_in_b_20mhz => down_sample4_q_net_x6,
      i_in_b_40mhz => register4_q_net_x2,
      m_rst => relational_op_net_x9,
      q_in_b_20mhz => down_sample1_q_net_x3,
      q_in_b_40mhz => register5_q_net_x2,
      rssi_db => addsub_s_net_x6,
      rst => logical2_y_net_x28,
      t_db => convert8_dout_net_x12,
      thresholds => thresholds_data_out_net_x12,
      timing => timing_data_out_net_x8,
      viq_in => register1_q_net_x7,
      done => relational3_op_net_x8,
      g_bb => convert_dout_net_x5,
      g_rf => convert1_dout_net_x5,
      i_out => mux3_y_net_x6,
      q_out => mux5_y_net_x6,
      reset => logical_y_net_x1
    );

  agc_c_01fb3b638c: entity work.agc_c_entity_01fb3b638c
    port map (
      adj_1 => convert5_dout_net_x8,
      adj_2 => convert6_dout_net_x8,
      ce_1 => ce_1_sg_x44,
      ce_2 => ce_2_sg_x28,
      clk_1 => clk_1_sg_x44,
      clk_2 => clk_2_sg_x28,
      dco_timing => dco_timing_data_out_net_x12,
      en => logical2_y_net_x1,
      en_dco => convert14_dout_net_x8,
      en_dco_sub => convert15_dout_net_x8,
      gbb_init => convert7_dout_net_x8,
      i_in_c_20mhz => down_sample6_q_net_x3,
      i_in_c_40mhz => register6_q_net_x2,
      m_rst => relational_op_net_x9,
      q_in_c_20mhz => down_sample5_q_net_x3,
      q_in_c_40mhz => register7_q_net_x2,
      rssi_db => addsub_s_net_x7,
      rst => logical2_y_net_x28,
      t_db => convert8_dout_net_x12,
      thresholds => thresholds_data_out_net_x12,
      timing => timing_data_out_net_x8,
      viq_in => register1_q_net_x8,
      done => relational3_op_net_x9,
      g_bb => convert_dout_net_x6,
      g_rf => convert1_dout_net_x6,
      i_out => mux3_y_net_x7,
      q_out => mux5_y_net_x7,
      reset => logical_y_net_x2
    );

  agc_d_51b56a8764: entity work.agc_d_entity_51b56a8764
    port map (
      adj_1 => convert5_dout_net_x8,
      adj_2 => convert6_dout_net_x8,
      ce_1 => ce_1_sg_x44,
      ce_2 => ce_2_sg_x28,
      clk_1 => clk_1_sg_x44,
      clk_2 => clk_2_sg_x28,
      dco_timing => dco_timing_data_out_net_x12,
      en => logical3_y_net_x1,
      en_dco => convert14_dout_net_x8,
      en_dco_sub => convert15_dout_net_x8,
      gbb_init => convert7_dout_net_x8,
      i_in_d_20mhz => down_sample8_q_net_x3,
      i_in_d_40mhz => register8_q_net_x2,
      m_rst => relational_op_net_x9,
      q_in_d_20mhz => down_sample7_q_net_x3,
      q_in_d_40mhz => register9_q_net_x2,
      rssi_db => addsub_s_net_x8,
      rst => logical2_y_net_x28,
      t_db => convert8_dout_net_x12,
      thresholds => thresholds_data_out_net_x12,
      timing => timing_data_out_net_x8,
      viq_in => register1_q_net_x9,
      done => relational3_op_net_x10,
      g_bb => convert_dout_net_x7,
      g_rf => convert1_dout_net_x7,
      i_out => mux3_y_net_x8,
      q_out => mux5_y_net_x8,
      reset => logical_y_net_x3
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => b0_y_net_x0,
      y(0) => logical_y_net_x4
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => b1_y_net_x0,
      y(0) => logical1_y_net_x2
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => b2_y_net_x0,
      y(0) => logical2_y_net_x1
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => b3_y_net_x0,
      y(0) => logical3_y_net_x1
    );

  logical4: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical_y_net_x1,
      d2(0) => logical_y_net_x2,
      d3(0) => logical_y_net_x3,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational3_op_net_x7,
      d1(0) => relational3_op_net_x8,
      d2(0) => relational3_op_net_x9,
      d3(0) => relational3_op_net_x10,
      y(0) => logical5_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/Control_System/EN_blocking"

entity en_blocking_entity_b5bd8e9fde is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en_in: in std_logic; 
    reset: in std_logic; 
    en_blocked: out std_logic
  );
end en_blocking_entity_b5bd8e9fde;

architecture structural of en_blocking_entity_b5bd8e9fde is
  signal ce_1_sg_x45: std_logic;
  signal clk_1_sg_x45: std_logic;
  signal constant_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x1: std_logic;

begin
  ce_1_sg_x45 <= ce_1;
  clk_1_sg_x45 <= clk_1;
  logical1_y_net_x0 <= en_in;
  logical_y_net_x1 <= reset;
  en_blocked <= register_q_net_x1;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      ip(0) => register_q_net_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      d(0) => constant_op_net,
      en(0) => logical_y_net,
      rst(0) => logical_y_net_x1,
      q(0) => register_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/Control_System/M_RESET_CTRL"

entity m_reset_ctrl_entity_0d23df5f07 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    m_reset: in std_logic; 
    m_reset_out: out std_logic; 
    unblock_en: out std_logic
  );
end m_reset_ctrl_entity_0d23df5f07;

architecture structural of m_reset_ctrl_entity_0d23df5f07 is
  signal ce_1_sg_x46: std_logic;
  signal clk_1_sg_x46: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic_vector(6 downto 0);
  signal constant_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net_x10: std_logic;

begin
  ce_1_sg_x46 <= ce_1;
  clk_1_sg_x46 <= clk_1;
  logical_y_net_x1 <= m_reset;
  m_reset_out <= relational_op_net_x10;
  unblock_en <= delay_q_net_x0;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_ca73b964f8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant_x0: entity work.constant_744827771c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free_w3_warplab_agc
    generic map (
      core_name0 => "cntr_11_0_86806e294f737f4c",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical_y_net_x1,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      d(0) => relational1_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      d(0) => logical_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net,
      d1(0) => relational_op_net_x10,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      d(0) => constant1_op_net,
      en(0) => delay1_q_net,
      rst(0) => logical_y_net_x1,
      q(0) => register_q_net
    );

  relational: entity work.relational_44a8c5bdee
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x10
    );

  relational1: entity work.relational_4fbf217ac0
    port map (
      a => counter_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/Control_System"

entity control_system_entity_2e62cc1c4b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    m_reset: in std_logic; 
    pakdet_in: in std_logic; 
    reset_in: in std_logic; 
    en_hi: out std_logic; 
    m_reset_out: out std_logic; 
    reset: out std_logic
  );
end control_system_entity_2e62cc1c4b;

architecture structural of control_system_entity_2e62cc1c4b is
  signal ce_1_sg_x50: std_logic;
  signal clk_1_sg_x50: std_logic;
  signal delay2_q_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net_x29: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal register_q_net_x2: std_logic;
  signal relational_op_net_x11: std_logic;
  signal reset_in_x1: std_logic;
  signal simulationdebugor_y_net_x1: std_logic;

begin
  ce_1_sg_x50 <= ce_1;
  clk_1_sg_x50 <= clk_1;
  simulationdebugor_y_net_x1 <= m_reset;
  logical1_y_net_x2 <= pakdet_in;
  reset_in_x1 <= reset_in;
  en_hi <= register_q_net_x2;
  m_reset_out <= relational_op_net_x11;
  reset <= logical2_y_net_x29;

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  en_blocking_b5bd8e9fde: entity work.en_blocking_entity_b5bd8e9fde
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      en_in => logical1_y_net_x0,
      reset => logical_y_net_x1,
      en_blocked => register_q_net_x2
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      ip(0) => reset_in_x1,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      ip(0) => relational_op_net_x11,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => delay_q_net_x0,
      y(0) => logical_y_net_x1
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical_y_net_x2,
      d2(0) => inverter1_op_net,
      y(0) => logical1_y_net_x0
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay2_q_net,
      d1(0) => relational_op_net_x11,
      y(0) => logical2_y_net_x29
    );

  m_reset_ctrl_0d23df5f07: entity work.m_reset_ctrl_entity_0d23df5f07
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      m_reset => logical_y_net_x3,
      m_reset_out => relational_op_net_x11,
      unblock_en => delay_q_net_x0
    );

  risingedge1_5d2b7d1680: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => logical1_y_net_x2,
      edge_x0 => logical_y_net_x2
    );

  risingedge2_3b94082611: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => simulationdebugor_y_net_x1,
      edge_x0 => logical_y_net_x3
    );

  risingedge_9aa721b152: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => reset_in_x1,
      edge_x0 => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/EDK Processor"

entity edk_processor_entity_40f9ad16fa is
  port (
    axi_aresetn: in std_logic; 
    from_register: in std_logic_vector(1 downto 0); 
    from_register1: in std_logic_vector(1 downto 0); 
    from_register2: in std_logic_vector(1 downto 0); 
    from_register3: in std_logic_vector(1 downto 0); 
    from_register4: in std_logic_vector(4 downto 0); 
    from_register5: in std_logic_vector(4 downto 0); 
    from_register6: in std_logic_vector(4 downto 0); 
    from_register7: in std_logic_vector(4 downto 0); 
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
    to_register1: in std_logic_vector(31 downto 0); 
    to_register10: in std_logic_vector(15 downto 0); 
    to_register11: in std_logic_vector(8 downto 0); 
    to_register12: in std_logic; 
    to_register13: in std_logic_vector(15 downto 0); 
    to_register2: in std_logic_vector(15 downto 0); 
    to_register3: in std_logic; 
    to_register4: in std_logic_vector(31 downto 0); 
    to_register5: in std_logic; 
    to_register6: in std_logic; 
    to_register7: in std_logic_vector(15 downto 0); 
    to_register8: in std_logic_vector(31 downto 0); 
    to_register9: in std_logic_vector(9 downto 0); 
    memmap_x0: out std_logic; 
    memmap_x1: out std_logic; 
    memmap_x10: out std_logic; 
    memmap_x11: out std_logic_vector(31 downto 0); 
    memmap_x12: out std_logic; 
    memmap_x13: out std_logic_vector(31 downto 0); 
    memmap_x14: out std_logic; 
    memmap_x15: out std_logic_vector(15 downto 0); 
    memmap_x16: out std_logic; 
    memmap_x17: out std_logic; 
    memmap_x18: out std_logic; 
    memmap_x19: out std_logic_vector(31 downto 0); 
    memmap_x2: out std_logic_vector(7 downto 0); 
    memmap_x20: out std_logic; 
    memmap_x21: out std_logic; 
    memmap_x22: out std_logic; 
    memmap_x23: out std_logic; 
    memmap_x24: out std_logic; 
    memmap_x25: out std_logic_vector(15 downto 0); 
    memmap_x26: out std_logic; 
    memmap_x27: out std_logic_vector(31 downto 0); 
    memmap_x28: out std_logic; 
    memmap_x29: out std_logic_vector(9 downto 0); 
    memmap_x3: out std_logic_vector(1 downto 0); 
    memmap_x30: out std_logic; 
    memmap_x31: out std_logic_vector(15 downto 0); 
    memmap_x32: out std_logic; 
    memmap_x33: out std_logic_vector(8 downto 0); 
    memmap_x34: out std_logic; 
    memmap_x35: out std_logic; 
    memmap_x36: out std_logic; 
    memmap_x37: out std_logic_vector(15 downto 0); 
    memmap_x38: out std_logic; 
    memmap_x4: out std_logic; 
    memmap_x5: out std_logic_vector(31 downto 0); 
    memmap_x6: out std_logic_vector(7 downto 0); 
    memmap_x7: out std_logic; 
    memmap_x8: out std_logic_vector(1 downto 0); 
    memmap_x9: out std_logic
  );
end edk_processor_entity_40f9ad16fa;

architecture structural of edk_processor_entity_40f9ad16fa is
  signal axi_aresetn_net_x0: std_logic;
  signal from_register1_data_out_net_x0: std_logic_vector(1 downto 0);
  signal from_register2_data_out_net_x0: std_logic_vector(1 downto 0);
  signal from_register3_data_out_net_x0: std_logic_vector(1 downto 0);
  signal from_register4_data_out_net_x0: std_logic_vector(4 downto 0);
  signal from_register5_data_out_net_x0: std_logic_vector(4 downto 0);
  signal from_register6_data_out_net_x0: std_logic_vector(4 downto 0);
  signal from_register7_data_out_net_x0: std_logic_vector(4 downto 0);
  signal from_register_data_out_net_x0: std_logic_vector(1 downto 0);
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
  signal memmap_sm_adj_din_net_x0: std_logic_vector(15 downto 0);
  signal memmap_sm_adj_en_net_x0: std_logic;
  signal memmap_sm_agc_en_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_agc_en_en_net_x0: std_logic;
  signal memmap_sm_agc_en_global_din_net_x0: std_logic;
  signal memmap_sm_agc_en_global_en_net_x0: std_logic;
  signal memmap_sm_agc_trigger_delay_din_net_x0: std_logic_vector(8 downto 0);
  signal memmap_sm_agc_trigger_delay_en_net_x0: std_logic;
  signal memmap_sm_avg_len_din_net_x0: std_logic_vector(15 downto 0);
  signal memmap_sm_avg_len_en_net_x0: std_logic;
  signal memmap_sm_bits_din_net_x0: std_logic_vector(9 downto 0);
  signal memmap_sm_bits_en_net_x0: std_logic;
  signal memmap_sm_dco_timing_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_dco_timing_en_net_x0: std_logic;
  signal memmap_sm_gbb_init_din_net_x0: std_logic_vector(15 downto 0);
  signal memmap_sm_gbb_init_en_net_x0: std_logic;
  signal memmap_sm_mreset_in_din_net_x0: std_logic;
  signal memmap_sm_mreset_in_en_net_x0: std_logic;
  signal memmap_sm_packet_in_din_net_x0: std_logic;
  signal memmap_sm_packet_in_en_net_x0: std_logic;
  signal memmap_sm_sreset_in_din_net_x0: std_logic;
  signal memmap_sm_sreset_in_en_net_x0: std_logic;
  signal memmap_sm_t_db_din_net_x0: std_logic_vector(15 downto 0);
  signal memmap_sm_t_db_en_net_x0: std_logic;
  signal memmap_sm_thresholds_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_thresholds_en_net_x0: std_logic;
  signal memmap_sm_timing_din_net_x0: std_logic_vector(31 downto 0);
  signal memmap_sm_timing_en_net_x0: std_logic;
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
  signal to_register10_dout_net_x0: std_logic_vector(15 downto 0);
  signal to_register11_dout_net_x0: std_logic_vector(8 downto 0);
  signal to_register12_dout_net_x0: std_logic;
  signal to_register13_dout_net_x0: std_logic_vector(15 downto 0);
  signal to_register1_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register2_dout_net_x0: std_logic_vector(15 downto 0);
  signal to_register3_dout_net_x0: std_logic;
  signal to_register4_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register5_dout_net_x0: std_logic;
  signal to_register6_dout_net_x0: std_logic;
  signal to_register7_dout_net_x0: std_logic_vector(15 downto 0);
  signal to_register8_dout_net_x0: std_logic_vector(31 downto 0);
  signal to_register9_dout_net_x0: std_logic_vector(9 downto 0);
  signal to_register_dout_net_x0: std_logic_vector(31 downto 0);

begin
  axi_aresetn_net_x0 <= axi_aresetn;
  from_register_data_out_net_x0 <= from_register;
  from_register1_data_out_net_x0 <= from_register1;
  from_register2_data_out_net_x0 <= from_register2;
  from_register3_data_out_net_x0 <= from_register3;
  from_register4_data_out_net_x0 <= from_register4;
  from_register5_data_out_net_x0 <= from_register5;
  from_register6_data_out_net_x0 <= from_register6;
  from_register7_data_out_net_x0 <= from_register7;
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
  to_register1_dout_net_x0 <= to_register1;
  to_register10_dout_net_x0 <= to_register10;
  to_register11_dout_net_x0 <= to_register11;
  to_register12_dout_net_x0 <= to_register12;
  to_register13_dout_net_x0 <= to_register13;
  to_register2_dout_net_x0 <= to_register2;
  to_register3_dout_net_x0 <= to_register3;
  to_register4_dout_net_x0 <= to_register4;
  to_register5_dout_net_x0 <= to_register5;
  to_register6_dout_net_x0 <= to_register6;
  to_register7_dout_net_x0 <= to_register7;
  to_register8_dout_net_x0 <= to_register8;
  to_register9_dout_net_x0 <= to_register9;
  memmap_x0 <= memmap_s_axi_arready_net_x0;
  memmap_x1 <= memmap_s_axi_awready_net_x0;
  memmap_x10 <= memmap_s_axi_wready_net_x0;
  memmap_x11 <= memmap_sm_timing_din_net_x0;
  memmap_x12 <= memmap_sm_timing_en_net_x0;
  memmap_x13 <= memmap_sm_thresholds_din_net_x0;
  memmap_x14 <= memmap_sm_thresholds_en_net_x0;
  memmap_x15 <= memmap_sm_t_db_din_net_x0;
  memmap_x16 <= memmap_sm_t_db_en_net_x0;
  memmap_x17 <= memmap_sm_sreset_in_din_net_x0;
  memmap_x18 <= memmap_sm_sreset_in_en_net_x0;
  memmap_x19 <= memmap_sm_agc_en_din_net_x0;
  memmap_x2 <= memmap_s_axi_bid_net_x0;
  memmap_x20 <= memmap_sm_agc_en_en_net_x0;
  memmap_x21 <= memmap_sm_packet_in_din_net_x0;
  memmap_x22 <= memmap_sm_packet_in_en_net_x0;
  memmap_x23 <= memmap_sm_mreset_in_din_net_x0;
  memmap_x24 <= memmap_sm_mreset_in_en_net_x0;
  memmap_x25 <= memmap_sm_gbb_init_din_net_x0;
  memmap_x26 <= memmap_sm_gbb_init_en_net_x0;
  memmap_x27 <= memmap_sm_dco_timing_din_net_x0;
  memmap_x28 <= memmap_sm_dco_timing_en_net_x0;
  memmap_x29 <= memmap_sm_bits_din_net_x0;
  memmap_x3 <= memmap_s_axi_bresp_net_x0;
  memmap_x30 <= memmap_sm_bits_en_net_x0;
  memmap_x31 <= memmap_sm_avg_len_din_net_x0;
  memmap_x32 <= memmap_sm_avg_len_en_net_x0;
  memmap_x33 <= memmap_sm_agc_trigger_delay_din_net_x0;
  memmap_x34 <= memmap_sm_agc_trigger_delay_en_net_x0;
  memmap_x35 <= memmap_sm_agc_en_global_din_net_x0;
  memmap_x36 <= memmap_sm_agc_en_global_en_net_x0;
  memmap_x37 <= memmap_sm_adj_din_net_x0;
  memmap_x38 <= memmap_sm_adj_en_net_x0;
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
      sm_adj_dout => to_register13_dout_net_x0,
      sm_agc_en_dout => to_register4_dout_net_x0,
      sm_agc_en_global_dout(0) => to_register12_dout_net_x0,
      sm_agc_trigger_delay_dout => to_register11_dout_net_x0,
      sm_avg_len_dout => to_register10_dout_net_x0,
      sm_bits_dout => to_register9_dout_net_x0,
      sm_dco_timing_dout => to_register8_dout_net_x0,
      sm_gbb_a_dout => from_register7_data_out_net_x0,
      sm_gbb_b_dout => from_register6_data_out_net_x0,
      sm_gbb_c_dout => from_register5_data_out_net_x0,
      sm_gbb_d_dout => from_register4_data_out_net_x0,
      sm_gbb_init_dout => to_register7_dout_net_x0,
      sm_grf_a_dout => from_register3_data_out_net_x0,
      sm_grf_b_dout => from_register2_data_out_net_x0,
      sm_grf_c_dout => from_register1_data_out_net_x0,
      sm_grf_d_dout => from_register_data_out_net_x0,
      sm_mreset_in_dout(0) => to_register6_dout_net_x0,
      sm_packet_in_dout(0) => to_register5_dout_net_x0,
      sm_sreset_in_dout(0) => to_register3_dout_net_x0,
      sm_t_db_dout => to_register2_dout_net_x0,
      sm_thresholds_dout => to_register1_dout_net_x0,
      sm_timing_dout => to_register_dout_net_x0,
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
      sm_adj_din => memmap_sm_adj_din_net_x0,
      sm_adj_en => memmap_sm_adj_en_net_x0,
      sm_agc_en_din => memmap_sm_agc_en_din_net_x0,
      sm_agc_en_en => memmap_sm_agc_en_en_net_x0,
      sm_agc_en_global_din(0) => memmap_sm_agc_en_global_din_net_x0,
      sm_agc_en_global_en => memmap_sm_agc_en_global_en_net_x0,
      sm_agc_trigger_delay_din => memmap_sm_agc_trigger_delay_din_net_x0,
      sm_agc_trigger_delay_en => memmap_sm_agc_trigger_delay_en_net_x0,
      sm_avg_len_din => memmap_sm_avg_len_din_net_x0,
      sm_avg_len_en => memmap_sm_avg_len_en_net_x0,
      sm_bits_din => memmap_sm_bits_din_net_x0,
      sm_bits_en => memmap_sm_bits_en_net_x0,
      sm_dco_timing_din => memmap_sm_dco_timing_din_net_x0,
      sm_dco_timing_en => memmap_sm_dco_timing_en_net_x0,
      sm_gbb_init_din => memmap_sm_gbb_init_din_net_x0,
      sm_gbb_init_en => memmap_sm_gbb_init_en_net_x0,
      sm_mreset_in_din(0) => memmap_sm_mreset_in_din_net_x0,
      sm_mreset_in_en => memmap_sm_mreset_in_en_net_x0,
      sm_packet_in_din(0) => memmap_sm_packet_in_din_net_x0,
      sm_packet_in_en => memmap_sm_packet_in_en_net_x0,
      sm_sreset_in_din(0) => memmap_sm_sreset_in_din_net_x0,
      sm_sreset_in_en => memmap_sm_sreset_in_en_net_x0,
      sm_t_db_din => memmap_sm_t_db_din_net_x0,
      sm_t_db_en => memmap_sm_t_db_en_net_x0,
      sm_thresholds_din => memmap_sm_thresholds_din_net_x0,
      sm_thresholds_en => memmap_sm_thresholds_en_net_x0,
      sm_timing_din => memmap_sm_timing_din_net_x0,
      sm_timing_en => memmap_sm_timing_en_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/RSSI_preprocessor/avg_RSSI_dB/MA"

entity ma_entity_f002462908 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    m_reset: in std_logic; 
    rssi_in: in std_logic_vector(9 downto 0); 
    rssiavg_len: in std_logic_vector(2 downto 0); 
    x4_pt_ma: out std_logic_vector(17 downto 0)
  );
end ma_entity_f002462908;

architecture structural of ma_entity_f002462908 is
  signal accumulator_q_net: std_logic_vector(31 downto 0);
  signal addsub_s_net: std_logic_vector(10 downto 0);
  signal asr_q_net: std_logic_vector(9 downto 0);
  signal ce_1_sg_x51: std_logic;
  signal ce_4_sg_x0: std_logic;
  signal clk_1_sg_x51: std_logic;
  signal clk_4_sg_x0: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(2 downto 0);
  signal convert_dout_net: std_logic_vector(5 downto 0);
  signal down_sample1_q_net: std_logic;
  signal down_sample_q_net_x0: std_logic_vector(2 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(9 downto 0);
  signal mult_p_net_x0: std_logic_vector(17 downto 0);
  signal register15_q_net: std_logic_vector(9 downto 0);
  signal relational_op_net_x12: std_logic;
  signal rom_data_net: std_logic_vector(15 downto 0);
  signal up_sample1_q_net: std_logic_vector(31 downto 0);
  signal up_sample2_q_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x51 <= ce_1;
  ce_4_sg_x0 <= ce_4;
  clk_1_sg_x51 <= clk_1;
  clk_4_sg_x0 <= clk_4;
  relational_op_net_x12 <= m_reset;
  down_sample_q_net_x1 <= rssi_in;
  convert4_dout_net_x0 <= rssiavg_len;
  x4_pt_ma <= mult_p_net_x0;

  accumulator: entity work.accum_9a3e8dffc1
    port map (
      b => addsub_s_net,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      rst(0) => down_sample1_q_net,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_c8b57b79d7
    port map (
      a => register15_q_net,
      b => asr_q_net,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      s => addsub_s_net
    );

  asr: entity work.xladdrsr_w3_warplab_agc
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 3,
      core_addr_width => 3,
      core_name0 => "asr_11_0_5c9c6a297ef30376",
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      addr => down_sample_q_net_x0,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      d => register15_q_net,
      en => "1",
      q => asr_q_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 3,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 6,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      din => down_sample_q_net_x0,
      en => "1",
      dout => convert_dout_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 3,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 3
    )
    port map (
      d => convert4_dout_net_x0,
      dest_ce => ce_4_sg_x0,
      dest_clk => clk_4_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x51,
      src_clk => clk_1_sg_x51,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x12,
      dest_ce => ce_4_sg_x0,
      dest_clk => clk_4_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x51,
      src_clk => clk_1_sg_x51,
      src_clr => '0',
      q(0) => down_sample1_q_net
    );

  mult: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 32,
      c_output_width => 48,
      c_type => 0,
      core_name0 => "mult_11_2_726e084f322acbb0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => up_sample1_q_net,
      b => up_sample2_q_net,
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      core_ce => ce_1_sg_x51,
      core_clk => clk_1_sg_x51,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net_x0
    );

  register15: entity work.xlregister
    generic map (
      d_width => 10,
      init_value => b"0000000000"
    )
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      d => down_sample_q_net_x1,
      en => "1",
      rst(0) => down_sample1_q_net,
      q => register15_q_net
    );

  rom: entity work.xlsprom_w3_warplab_agc
    generic map (
      c_address_width => 6,
      c_width => 16,
      core_name0 => "bmg_72_7cebf291863e8154",
      latency => 1
    )
    port map (
      addr => convert_dout_net,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      en => "1",
      rst => "0",
      data => rom_data_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 0,
      q_width => 32
    )
    port map (
      d => accumulator_q_net,
      dest_ce => ce_1_sg_x51,
      dest_clk => clk_1_sg_x51,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x0,
      src_clk => clk_4_sg_x0,
      src_clr => '0',
      q => up_sample1_q_net
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 14,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 14,
      q_width => 16
    )
    port map (
      d => rom_data_net,
      dest_ce => ce_1_sg_x51,
      dest_clk => clk_1_sg_x51,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x0,
      src_clk => clk_4_sg_x0,
      src_clr => '0',
      q => up_sample2_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/RSSI_preprocessor/avg_RSSI_dB"

entity avg_rssi_db_entity_13afcbb2ed is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    g_rf: in std_logic_vector(1 downto 0); 
    m_reset: in std_logic; 
    rssi_in: in std_logic_vector(9 downto 0); 
    rssiavg_len: in std_logic_vector(2 downto 0); 
    avg_rssi_db: out std_logic_vector(17 downto 0)
  );
end avg_rssi_db_entity_13afcbb2ed;

architecture structural of avg_rssi_db_entity_13afcbb2ed is
  signal addsub_s_net_x6: std_logic_vector(17 downto 0);
  signal ce_1_sg_x52: std_logic;
  signal ce_4_sg_x1: std_logic;
  signal clk_1_sg_x52: std_logic;
  signal clk_4_sg_x1: std_logic;
  signal convert1_dout_net_x5: std_logic_vector(1 downto 0);
  signal convert4_dout_net_x1: std_logic_vector(2 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(9 downto 0);
  signal hi_gain_op_net: std_logic_vector(7 downto 0);
  signal low_gain_op_net: std_logic_vector(7 downto 0);
  signal med_gain_op_net: std_logic_vector(7 downto 0);
  signal mult_p_net: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(17 downto 0);
  signal relational_op_net_x13: std_logic;
  signal rf_gain_y_net: std_logic_vector(7 downto 0);
  signal scale_param_op_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x52 <= ce_1;
  ce_4_sg_x1 <= ce_4;
  clk_1_sg_x52 <= clk_1;
  clk_4_sg_x1 <= clk_4;
  convert1_dout_net_x5 <= g_rf;
  relational_op_net_x13 <= m_reset;
  down_sample_q_net_x2 <= rssi_in;
  convert4_dout_net_x1 <= rssiavg_len;
  avg_rssi_db <= addsub_s_net_x6;

  addsub: entity work.addsub_63482f4701
    port map (
      a => mult_p_net,
      b => rf_gain_y_net,
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      clr => '0',
      s => addsub_s_net_x6
    );

  hi_gain: entity work.constant_d6fea9f88b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hi_gain_op_net
    );

  low_gain: entity work.constant_810cef0700
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => low_gain_op_net
    );

  ma_f002462908: entity work.ma_entity_f002462908
    port map (
      ce_1 => ce_1_sg_x52,
      ce_4 => ce_4_sg_x1,
      clk_1 => clk_1_sg_x52,
      clk_4 => clk_4_sg_x1,
      m_reset => relational_op_net_x13,
      rssi_in => down_sample_q_net_x2,
      rssiavg_len => convert4_dout_net_x1,
      x4_pt_ma => mult_p_net_x0
    );

  med_gain: entity work.constant_7a558caa36
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => med_gain_op_net
    );

  mult: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 18,
      b_arith => xlUnsigned,
      b_bin_pt => 10,
      b_width => 10,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_width => 10,
      c_baat => 18,
      c_output_width => 28,
      c_type => 0,
      core_name0 => "mult_11_2_1d47825e1d2a837c",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 2,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => mult_p_net_x0,
      b => scale_param_op_net,
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      clr => '0',
      core_ce => ce_1_sg_x52,
      core_clk => clk_1_sg_x52,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  rf_gain: entity work.mux_998e20a1ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => low_gain_op_net,
      d1 => low_gain_op_net,
      d2 => med_gain_op_net,
      d3 => hi_gain_op_net,
      sel => convert1_dout_net_x5,
      y => rf_gain_y_net
    );

  scale_param: entity work.constant_1ea878a24a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => scale_param_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/RSSI_preprocessor"

entity rssi_preprocessor_entity_cffd14e658 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    g_rf_a: in std_logic_vector(1 downto 0); 
    g_rf_b: in std_logic_vector(1 downto 0); 
    g_rf_c: in std_logic_vector(1 downto 0); 
    g_rf_d: in std_logic_vector(1 downto 0); 
    m_reset: in std_logic; 
    rssiavg_len: in std_logic_vector(2 downto 0); 
    x10bits_in_a: in std_logic_vector(9 downto 0); 
    x10bits_in_b: in std_logic_vector(9 downto 0); 
    x10bits_in_c: in std_logic_vector(9 downto 0); 
    x10bits_in_d: in std_logic_vector(9 downto 0); 
    avg_db_out_a: out std_logic_vector(17 downto 0); 
    avg_db_out_b: out std_logic_vector(17 downto 0); 
    avg_db_out_c: out std_logic_vector(17 downto 0); 
    avg_db_out_d: out std_logic_vector(17 downto 0)
  );
end rssi_preprocessor_entity_cffd14e658;

architecture structural of rssi_preprocessor_entity_cffd14e658 is
  signal addsub_s_net_x10: std_logic_vector(17 downto 0);
  signal addsub_s_net_x11: std_logic_vector(17 downto 0);
  signal addsub_s_net_x12: std_logic_vector(17 downto 0);
  signal addsub_s_net_x13: std_logic_vector(17 downto 0);
  signal ce_1_sg_x59: std_logic;
  signal ce_4_sg_x8: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal clk_4_sg_x8: std_logic;
  signal convert1_dout_net_x10: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x11: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x12: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x9: std_logic_vector(1 downto 0);
  signal convert4_dout_net_x8: std_logic_vector(2 downto 0);
  signal down_sample10_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample11_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample9_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(9 downto 0);
  signal relational_op_net_x20: std_logic;

begin
  ce_1_sg_x59 <= ce_1;
  ce_4_sg_x8 <= ce_4;
  clk_1_sg_x59 <= clk_1;
  clk_4_sg_x8 <= clk_4;
  convert1_dout_net_x9 <= g_rf_a;
  convert1_dout_net_x10 <= g_rf_b;
  convert1_dout_net_x11 <= g_rf_c;
  convert1_dout_net_x12 <= g_rf_d;
  relational_op_net_x20 <= m_reset;
  convert4_dout_net_x8 <= rssiavg_len;
  down_sample_q_net_x3 <= x10bits_in_a;
  down_sample9_q_net_x2 <= x10bits_in_b;
  down_sample10_q_net_x2 <= x10bits_in_c;
  down_sample11_q_net_x2 <= x10bits_in_d;
  avg_db_out_a <= addsub_s_net_x10;
  avg_db_out_b <= addsub_s_net_x11;
  avg_db_out_c <= addsub_s_net_x12;
  avg_db_out_d <= addsub_s_net_x13;

  avg_rssi_db1_b08ca6c549: entity work.avg_rssi_db_entity_13afcbb2ed
    port map (
      ce_1 => ce_1_sg_x59,
      ce_4 => ce_4_sg_x8,
      clk_1 => clk_1_sg_x59,
      clk_4 => clk_4_sg_x8,
      g_rf => convert1_dout_net_x10,
      m_reset => relational_op_net_x20,
      rssi_in => down_sample9_q_net_x2,
      rssiavg_len => convert4_dout_net_x8,
      avg_rssi_db => addsub_s_net_x11
    );

  avg_rssi_db2_774241b4cd: entity work.avg_rssi_db_entity_13afcbb2ed
    port map (
      ce_1 => ce_1_sg_x59,
      ce_4 => ce_4_sg_x8,
      clk_1 => clk_1_sg_x59,
      clk_4 => clk_4_sg_x8,
      g_rf => convert1_dout_net_x11,
      m_reset => relational_op_net_x20,
      rssi_in => down_sample10_q_net_x2,
      rssiavg_len => convert4_dout_net_x8,
      avg_rssi_db => addsub_s_net_x12
    );

  avg_rssi_db3_4c7805ae4d: entity work.avg_rssi_db_entity_13afcbb2ed
    port map (
      ce_1 => ce_1_sg_x59,
      ce_4 => ce_4_sg_x8,
      clk_1 => clk_1_sg_x59,
      clk_4 => clk_4_sg_x8,
      g_rf => convert1_dout_net_x12,
      m_reset => relational_op_net_x20,
      rssi_in => down_sample11_q_net_x2,
      rssiavg_len => convert4_dout_net_x8,
      avg_rssi_db => addsub_s_net_x13
    );

  avg_rssi_db_13afcbb2ed: entity work.avg_rssi_db_entity_13afcbb2ed
    port map (
      ce_1 => ce_1_sg_x59,
      ce_4 => ce_4_sg_x8,
      clk_1 => clk_1_sg_x59,
      clk_4 => clk_4_sg_x8,
      g_rf => convert1_dout_net_x9,
      m_reset => relational_op_net_x20,
      rssi_in => down_sample_q_net_x3,
      rssiavg_len => convert4_dout_net_x8,
      avg_rssi_db => addsub_s_net_x10
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/Registers/RFx Sel1"

entity rfx_sel1_entity_dc20458ee0 is
  port (
    x32b: in std_logic_vector(31 downto 0); 
    a: out std_logic; 
    b: out std_logic; 
    c: out std_logic; 
    d: out std_logic
  );
end rfx_sel1_entity_dc20458ee0;

architecture structural of rfx_sel1_entity_dc20458ee0 is
  signal b0_y_net_x1: std_logic;
  signal b1_y_net_x1: std_logic;
  signal b2_y_net_x1: std_logic;
  signal b3_y_net_x1: std_logic;
  signal radio1_agc_en1_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  radio1_agc_en1_data_out_net_x0 <= x32b;
  a <= b0_y_net_x1;
  b <= b1_y_net_x1;
  c <= b2_y_net_x1;
  d <= b3_y_net_x1;

  b0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => radio1_agc_en1_data_out_net_x0,
      y(0) => b0_y_net_x1
    );

  b1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => radio1_agc_en1_data_out_net_x0,
      y(0) => b1_y_net_x1
    );

  b2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => radio1_agc_en1_data_out_net_x0,
      y(0) => b2_y_net_x1
    );

  b3: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => radio1_agc_en1_data_out_net_x0,
      y(0) => b3_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/Registers"

entity registers_entity_19d43a63df is
  port (
    adj: in std_logic_vector(15 downto 0); 
    agc_en: in std_logic; 
    avg_len: in std_logic_vector(15 downto 0); 
    bits: in std_logic_vector(9 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbb_init: in std_logic_vector(15 downto 0); 
    mreset_in: in std_logic; 
    packet_in: in std_logic; 
    radio1_agc_en1: in std_logic_vector(31 downto 0); 
    sreset_in: in std_logic; 
    t_db: in std_logic_vector(15 downto 0); 
    adj_1: out std_logic_vector(7 downto 0); 
    adj_2: out std_logic_vector(7 downto 0); 
    agc_en_x0: out std_logic; 
    constant1_x0: out std_logic; 
    constant2_x0: out std_logic; 
    constant3_x0: out std_logic; 
    constant_x1: out std_logic; 
    en_agc_a: out std_logic; 
    en_agc_b: out std_logic; 
    en_agc_c: out std_logic; 
    en_agc_d: out std_logic; 
    en_dco: out std_logic; 
    en_dco_sub: out std_logic; 
    gbb_init_x0: out std_logic_vector(7 downto 0); 
    mreset_in_x0: out std_logic; 
    packet_in_x0: out std_logic; 
    rssi_avg_len: out std_logic_vector(2 downto 0); 
    sreset_in_x0: out std_logic; 
    t_db_x0: out std_logic_vector(7 downto 0); 
    viq_avg_len: out std_logic_vector(4 downto 0)
  );
end registers_entity_19d43a63df;

architecture structural of registers_entity_19d43a63df is
  signal adj_data_out_net_x0: std_logic_vector(15 downto 0);
  signal agc_en_data_out_net_x0: std_logic;
  signal avg_len_data_out_net_x0: std_logic_vector(15 downto 0);
  signal b0_y_net_x2: std_logic;
  signal b1_y_net_x2: std_logic;
  signal b2_y_net_x2: std_logic;
  signal b3_y_net_x2: std_logic;
  signal bits_data_out_net_x0: std_logic_vector(9 downto 0);
  signal ce_1_sg_x60: std_logic;
  signal clk_1_sg_x60: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal constant3_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert14_dout_net_x9: std_logic;
  signal convert15_dout_net_x9: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(4 downto 0);
  signal convert4_dout_net_x9: std_logic_vector(2 downto 0);
  signal convert5_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x13: std_logic_vector(7 downto 0);
  signal convert9_dout_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal gbb_init_data_out_net_x0: std_logic_vector(15 downto 0);
  signal mreset_in_data_out_net_x0: std_logic;
  signal packet_in_data_out_net_x0: std_logic;
  signal radio1_agc_en1_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal slice5_y_net: std_logic;
  signal slice6_y_net: std_logic;
  signal slice_y_net: std_logic_vector(7 downto 0);
  signal sreset_in_data_out_net_x0: std_logic;
  signal t_db_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  adj_data_out_net_x0 <= adj;
  agc_en_data_out_net_x0 <= agc_en;
  avg_len_data_out_net_x0 <= avg_len;
  bits_data_out_net_x0 <= bits;
  ce_1_sg_x60 <= ce_1;
  clk_1_sg_x60 <= clk_1;
  gbb_init_data_out_net_x0 <= gbb_init;
  mreset_in_data_out_net_x0 <= mreset_in;
  packet_in_data_out_net_x0 <= packet_in;
  radio1_agc_en1_data_out_net_x1 <= radio1_agc_en1;
  sreset_in_data_out_net_x0 <= sreset_in;
  t_db_data_out_net_x0 <= t_db;
  adj_1 <= convert5_dout_net_x9;
  adj_2 <= convert6_dout_net_x9;
  agc_en_x0 <= convert2_dout_net_x0;
  constant1_x0 <= constant1_op_net_x0;
  constant2_x0 <= constant2_op_net_x0;
  constant3_x0 <= constant3_op_net_x0;
  constant_x1 <= constant_op_net_x0;
  en_agc_a <= b0_y_net_x2;
  en_agc_b <= b1_y_net_x2;
  en_agc_c <= b2_y_net_x2;
  en_agc_d <= b3_y_net_x2;
  en_dco <= convert14_dout_net_x9;
  en_dco_sub <= convert15_dout_net_x9;
  gbb_init_x0 <= convert7_dout_net_x9;
  mreset_in_x0 <= convert1_dout_net_x0;
  packet_in_x0 <= convert9_dout_net_x0;
  rssi_avg_len <= convert4_dout_net_x9;
  sreset_in_x0 <= convert_dout_net_x0;
  t_db_x0 <= convert8_dout_net_x13;
  viq_avg_len <= convert3_dout_net_x0;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => sreset_in_data_out_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => mreset_in_data_out_net_x0,
      en => "1",
      dout(0) => convert1_dout_net_x0
    );

  convert14: entity work.xlconvert
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => slice5_y_net,
      en => "1",
      dout(0) => convert14_dout_net_x9
    );

  convert15: entity work.xlconvert
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => slice6_y_net,
      en => "1",
      dout(0) => convert15_dout_net_x9
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => agc_en_data_out_net_x0,
      en => "1",
      dout(0) => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => slice_y_net,
      en => "1",
      dout => convert3_dout_net_x0
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 3,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert4_dout_net_x9
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert5_dout_net_x9
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert6_dout_net_x9
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => gbb_init_data_out_net_x0,
      en => "1",
      dout => convert7_dout_net_x9
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din => t_db_data_out_net_x0,
      en => "1",
      dout => convert8_dout_net_x13
    );

  convert9: entity work.xlconvert
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
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      din(0) => packet_in_data_out_net_x0,
      en => "1",
      dout(0) => convert9_dout_net_x0
    );

  rfx_sel1_dc20458ee0: entity work.rfx_sel1_entity_dc20458ee0
    port map (
      x32b => radio1_agc_en1_data_out_net_x1,
      a => b0_y_net_x2,
      b => b1_y_net_x2,
      c => b2_y_net_x2,
      d => b3_y_net_x2
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => avg_len_data_out_net_x0,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => avg_len_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => adj_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => adj_data_out_net_x0,
      y => slice3_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => bits_data_out_net_x0,
      y(0) => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => bits_data_out_net_x0,
      y(0) => slice6_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/VIQ/Dual_channel_VIQ/AVG_I_Q2"

entity avg_i_q2_entity_d61d26ee30 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    cplx_in: in std_logic_vector(16 downto 0); 
    iqavg_len: in std_logic_vector(4 downto 0); 
    reset: in std_logic; 
    avg_cplx_out: out std_logic_vector(15 downto 0)
  );
end avg_i_q2_entity_d61d26ee30;

architecture structural of avg_i_q2_entity_d61d26ee30 is
  signal accumulator_q_net: std_logic_vector(23 downto 0);
  signal addsub1_s_net_x0: std_logic_vector(16 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal asr_i_q_net: std_logic_vector(16 downto 0);
  signal ce_1_sg_x65: std_logic;
  signal ce_2_sg_x29: std_logic;
  signal clk_1_sg_x65: std_logic;
  signal clk_2_sg_x29: std_logic;
  signal convert1_dout_net: std_logic_vector(5 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(4 downto 0);
  signal convert_dout_net: std_logic_vector(23 downto 0);
  signal down_sample1_q_net_x0: std_logic;
  signal down_sample3_q_net: std_logic_vector(4 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal negate_i_op_net: std_logic_vector(17 downto 0);
  signal one_over_delay_data_net: std_logic_vector(7 downto 0);
  signal register15_q_net: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x65 <= ce_1;
  ce_2_sg_x29 <= ce_2;
  clk_1_sg_x65 <= clk_1;
  clk_2_sg_x29 <= clk_2;
  addsub1_s_net_x0 <= cplx_in;
  convert3_dout_net_x1 <= iqavg_len;
  down_sample1_q_net_x0 <= reset;
  avg_cplx_out <= mult_p_net_x0;

  accumulator: entity work.accum_8a5feb4e65
    port map (
      b => convert_dout_net,
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      rst(0) => down_sample1_q_net_x0,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_8339ff5117
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      s => addsub_s_net
    );

  asr_i: entity work.xladdrsr_w3_warplab_agc
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 5,
      core_addr_width => 5,
      core_name0 => "asr_11_0_52733b2e79f014b5",
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 17,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 17
    )
    port map (
      addr => down_sample3_q_net,
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      d => register15_q_net,
      en => "1",
      q => asr_i_q_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 13,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 16,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 5,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 6,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      din => down_sample3_q_net,
      en => "1",
      dout => convert1_dout_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 5,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 5
    )
    port map (
      d => convert3_dout_net_x1,
      dest_ce => ce_2_sg_x29,
      dest_clk => clk_2_sg_x29,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x65,
      src_clk => clk_1_sg_x65,
      src_clr => '0',
      q => down_sample3_q_net
    );

  mult: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 16,
      a_width => 24,
      b_arith => xlUnsigned,
      b_bin_pt => 8,
      b_width => 8,
      c_a_type => 0,
      c_a_width => 24,
      c_b_type => 1,
      c_b_width => 8,
      c_baat => 24,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_b8b9c734a34df937",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 13,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => accumulator_q_net,
      b => one_over_delay_data_net,
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      core_ce => ce_2_sg_x29,
      core_clk => clk_2_sg_x29,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net_x0
    );

  negate_i: entity work.negate_60193616cc
    port map (
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      clr => '0',
      ip => asr_i_q_net,
      op => negate_i_op_net
    );

  one_over_delay: entity work.xlsprom_w3_warplab_agc
    generic map (
      c_address_width => 6,
      c_width => 8,
      core_name0 => "bmg_72_ac89af00cd36169a",
      latency => 1
    )
    port map (
      addr => convert1_dout_net,
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      en => "1",
      rst => "0",
      data => one_over_delay_data_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_2_sg_x29,
      clk => clk_2_sg_x29,
      d => addsub1_s_net_x0,
      en => "1",
      rst(0) => down_sample1_q_net_x0,
      q => register15_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/VIQ/Dual_channel_VIQ/Timeshared_squarer/Subsystem"

entity subsystem_entity_32c78b7286 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    counter: out std_logic; 
    x0: out std_logic; 
    x1: out std_logic
  );
end subsystem_entity_32c78b7286;

architecture structural of subsystem_entity_32c78b7286 is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter1_op_net_x0: std_logic;
  signal relational1_op_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
  counter <= counter1_op_net_x0;
  x0 <= relational_op_net_x0;
  x1 <= relational1_op_net_x0;

  constant1: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant_x0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter1: entity work.counter_8ec3f4ab23
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      op(0) => counter1_op_net_x0
    );

  relational: entity work.relational_194eb61c1b
    port map (
      a(0) => counter1_op_net_x0,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x0
    );

  relational1: entity work.relational_194eb61c1b
    port map (
      a(0) => counter1_op_net_x0,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/VIQ/Dual_channel_VIQ/Timeshared_squarer"

entity timeshared_squarer_entity_67a67e4aac is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    i: in std_logic_vector(11 downto 0); 
    q: in std_logic_vector(11 downto 0); 
    i_2: out std_logic_vector(15 downto 0); 
    q_2: out std_logic_vector(15 downto 0)
  );
end timeshared_squarer_entity_67a67e4aac;

architecture structural of timeshared_squarer_entity_67a67e4aac is
  signal ce_1_sg_x67: std_logic;
  signal ce_2_sg_x30: std_logic;
  signal clk_1_sg_x67: std_logic;
  signal clk_2_sg_x30: std_logic;
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal counter1_op_net_x0: std_logic;
  signal delay_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample_q_net: std_logic_vector(15 downto 0);
  signal i_in_x5: std_logic_vector(11 downto 0);
  signal mult_p_net: std_logic_vector(23 downto 0);
  signal mux_y_net: std_logic_vector(11 downto 0);
  signal q_in_x4: std_logic_vector(11 downto 0);
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;
  signal up_sample1_q_net: std_logic_vector(11 downto 0);
  signal up_sample_q_net: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x67 <= ce_1;
  ce_2_sg_x30 <= ce_2;
  clk_1_sg_x67 <= clk_1;
  clk_2_sg_x30 <= clk_2;
  i_in_x5 <= i;
  q_in_x4 <= q;
  i_2 <= delay_q_net_x0;
  q_2 <= down_sample1_q_net_x0;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 1,
      dout_bin_pt => 13,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      din => mult_p_net,
      en => "1",
      dout => convert1_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_2_sg_x30,
      clk => clk_2_sg_x30,
      d => down_sample_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register_q_net,
      dest_ce => ce_2_sg_x30,
      dest_clk => clk_2_sg_x30,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x67,
      src_clk => clk_1_sg_x67,
      src_clr => '0',
      q => down_sample_q_net
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register1_q_net,
      dest_ce => ce_2_sg_x30,
      dest_clk => clk_2_sg_x30,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x67,
      src_clk => clk_1_sg_x67,
      src_clr => '0',
      q => down_sample1_q_net_x0
    );

  mult: entity work.xlmult_w3_warplab_agc
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 11,
      a_width => 12,
      b_arith => xlSigned,
      b_bin_pt => 11,
      b_width => 12,
      c_a_type => 0,
      c_a_width => 12,
      c_b_type => 0,
      c_b_width => 12,
      c_baat => 12,
      c_output_width => 24,
      c_type => 0,
      core_name0 => "mult_11_2_ff04630c460514f2",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 22,
      p_width => 24,
      quantization => 1
    )
    port map (
      a => mux_y_net,
      b => mux_y_net,
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      core_ce => ce_1_sg_x67,
      core_clk => clk_1_sg_x67,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_c3e1ddb86e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => up_sample_q_net,
      d1 => up_sample1_q_net,
      sel(0) => counter1_op_net_x0,
      y => mux_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d => convert1_dout_net,
      en(0) => relational1_op_net_x0,
      rst => "0",
      q => register1_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d => convert1_dout_net,
      en(0) => relational_op_net_x0,
      rst => "0",
      q => register_q_net
    );

  subsystem_32c78b7286: entity work.subsystem_entity_32c78b7286
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      counter => counter1_op_net_x0,
      x0 => relational_op_net_x0,
      x1 => relational1_op_net_x0
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => i_in_x5,
      dest_ce => ce_1_sg_x67,
      dest_clk => clk_1_sg_x67,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x30,
      src_clk => clk_2_sg_x30,
      src_clr => '0',
      q => up_sample_q_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => q_in_x4,
      dest_ce => ce_1_sg_x67,
      dest_clk => clk_1_sg_x67,
      dest_clr => '0',
      en => "1",
      src_ce => ce_2_sg_x30,
      src_clk => clk_2_sg_x30,
      src_clr => '0',
      q => up_sample1_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/VIQ/Dual_channel_VIQ"

entity dual_channel_viq_entity_e9029488d4 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    i_in: in std_logic_vector(11 downto 0); 
    iqavg: in std_logic_vector(4 downto 0); 
    m_reset: in std_logic; 
    q_in: in std_logic_vector(11 downto 0); 
    viq: out std_logic_vector(8 downto 0)
  );
end dual_channel_viq_entity_e9029488d4;

architecture structural of dual_channel_viq_entity_e9029488d4 is
  signal addsub1_s_net_x0: std_logic_vector(16 downto 0);
  signal ce_1_sg_x68: std_logic;
  signal ce_2_sg_x31: std_logic;
  signal clk_1_sg_x68: std_logic;
  signal clk_2_sg_x31: std_logic;
  signal convert3_dout_net: std_logic_vector(10 downto 0);
  signal convert3_dout_net_x2: std_logic_vector(4 downto 0);
  signal delay_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic;
  signal down_sample1_q_net_x1: std_logic_vector(15 downto 0);
  signal i_in_x6: std_logic_vector(11 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal q_in_x5: std_logic_vector(11 downto 0);
  signal register1_q_net_x7: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(10 downto 0);
  signal relational_op_net_x21: std_logic;
  signal viqlut1_data_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x68 <= ce_1;
  ce_2_sg_x31 <= ce_2;
  clk_1_sg_x68 <= clk_1;
  clk_2_sg_x31 <= clk_2;
  i_in_x6 <= i_in;
  convert3_dout_net_x2 <= iqavg;
  relational_op_net_x21 <= m_reset;
  q_in_x5 <= q_in;
  viq <= register1_q_net_x7;

  addsub1: entity work.addsub_6f5ed08684
    port map (
      a => delay_q_net_x0,
      b => down_sample1_q_net_x1,
      ce => ce_2_sg_x31,
      clk => clk_2_sg_x31,
      clr => '0',
      s => addsub1_s_net_x0
    );

  avg_i_q2_d61d26ee30: entity work.avg_i_q2_entity_d61d26ee30
    port map (
      ce_1 => ce_1_sg_x68,
      ce_2 => ce_2_sg_x31,
      clk_1 => clk_1_sg_x68,
      clk_2 => clk_2_sg_x31,
      cplx_in => addsub1_s_net_x0,
      iqavg_len => convert3_dout_net_x2,
      reset => down_sample1_q_net_x0,
      avg_cplx_out => mult_p_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 13,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 10,
      dout_width => 11,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x31,
      clk => clk_2_sg_x31,
      clr => '0',
      din => mult_p_net_x0,
      en => "1",
      dout => convert3_dout_net
    );

  down_sample1: entity work.xldsamp
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
      d(0) => relational_op_net_x21,
      dest_ce => ce_2_sg_x31,
      dest_clk => clk_2_sg_x31,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x68,
      src_clk => clk_1_sg_x68,
      src_clr => '0',
      q(0) => down_sample1_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 9,
      init_value => b"000000000"
    )
    port map (
      ce => ce_2_sg_x31,
      clk => clk_2_sg_x31,
      d => viqlut1_data_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x7
    );

  reinterpret1: entity work.reinterpret_6b1adb5d55
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert3_dout_net,
      output_port => reinterpret1_output_port_net
    );

  timeshared_squarer_67a67e4aac: entity work.timeshared_squarer_entity_67a67e4aac
    port map (
      ce_1 => ce_1_sg_x68,
      ce_2 => ce_2_sg_x31,
      clk_1 => clk_1_sg_x68,
      clk_2 => clk_2_sg_x31,
      i => i_in_x6,
      q => q_in_x5,
      i_2 => delay_q_net_x0,
      q_2 => down_sample1_q_net_x1
    );

  viqlut1: entity work.xlsprom_w3_warplab_agc
    generic map (
      c_address_width => 11,
      c_width => 9,
      core_name0 => "bmg_72_9bcb726b56bae5fc",
      latency => 1
    )
    port map (
      addr => reinterpret1_output_port_net,
      ce => ce_2_sg_x31,
      clk => clk_2_sg_x31,
      en => "1",
      rst => "0",
      data => viqlut1_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc/VIQ"

entity viq_entity_e33589de47 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    i_in_a: in std_logic_vector(11 downto 0); 
    i_in_b: in std_logic_vector(11 downto 0); 
    i_in_c: in std_logic_vector(11 downto 0); 
    i_in_d: in std_logic_vector(11 downto 0); 
    iqavg: in std_logic_vector(4 downto 0); 
    m_reset: in std_logic; 
    q_in_a: in std_logic_vector(11 downto 0); 
    q_in_b: in std_logic_vector(11 downto 0); 
    q_in_c: in std_logic_vector(11 downto 0); 
    q_in_d: in std_logic_vector(11 downto 0); 
    viq_a: out std_logic_vector(8 downto 0); 
    viq_b: out std_logic_vector(8 downto 0); 
    viq_c: out std_logic_vector(8 downto 0); 
    viq_d: out std_logic_vector(8 downto 0)
  );
end viq_entity_e33589de47;

architecture structural of viq_entity_e33589de47 is
  signal ce_1_sg_x81: std_logic;
  signal ce_2_sg_x41: std_logic;
  signal clk_1_sg_x81: std_logic;
  signal clk_2_sg_x41: std_logic;
  signal convert3_dout_net_x9: std_logic_vector(4 downto 0);
  signal down_sample1_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x9: std_logic_vector(11 downto 0);
  signal down_sample5_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample6_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample7_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample8_q_net_x6: std_logic_vector(11 downto 0);
  signal i_in_x7: std_logic_vector(11 downto 0);
  signal q_in_x6: std_logic_vector(11 downto 0);
  signal register1_q_net_x11: std_logic_vector(8 downto 0);
  signal register1_q_net_x12: std_logic_vector(8 downto 0);
  signal register1_q_net_x13: std_logic_vector(8 downto 0);
  signal register1_q_net_x14: std_logic_vector(8 downto 0);
  signal relational_op_net_x25: std_logic;

begin
  ce_1_sg_x81 <= ce_1;
  ce_2_sg_x41 <= ce_2;
  clk_1_sg_x81 <= clk_1;
  clk_2_sg_x41 <= clk_2;
  i_in_x7 <= i_in_a;
  down_sample4_q_net_x9 <= i_in_b;
  down_sample6_q_net_x6 <= i_in_c;
  down_sample8_q_net_x6 <= i_in_d;
  convert3_dout_net_x9 <= iqavg;
  relational_op_net_x25 <= m_reset;
  q_in_x6 <= q_in_a;
  down_sample1_q_net_x6 <= q_in_b;
  down_sample5_q_net_x6 <= q_in_c;
  down_sample7_q_net_x6 <= q_in_d;
  viq_a <= register1_q_net_x11;
  viq_b <= register1_q_net_x12;
  viq_c <= register1_q_net_x13;
  viq_d <= register1_q_net_x14;

  dual_channel_viq1_ea6df8612f: entity work.dual_channel_viq_entity_e9029488d4
    port map (
      ce_1 => ce_1_sg_x81,
      ce_2 => ce_2_sg_x41,
      clk_1 => clk_1_sg_x81,
      clk_2 => clk_2_sg_x41,
      i_in => down_sample4_q_net_x9,
      iqavg => convert3_dout_net_x9,
      m_reset => relational_op_net_x25,
      q_in => down_sample1_q_net_x6,
      viq => register1_q_net_x12
    );

  dual_channel_viq2_3e5bea2926: entity work.dual_channel_viq_entity_e9029488d4
    port map (
      ce_1 => ce_1_sg_x81,
      ce_2 => ce_2_sg_x41,
      clk_1 => clk_1_sg_x81,
      clk_2 => clk_2_sg_x41,
      i_in => down_sample6_q_net_x6,
      iqavg => convert3_dout_net_x9,
      m_reset => relational_op_net_x25,
      q_in => down_sample5_q_net_x6,
      viq => register1_q_net_x13
    );

  dual_channel_viq3_a06b0d1703: entity work.dual_channel_viq_entity_e9029488d4
    port map (
      ce_1 => ce_1_sg_x81,
      ce_2 => ce_2_sg_x41,
      clk_1 => clk_1_sg_x81,
      clk_2 => clk_2_sg_x41,
      i_in => down_sample8_q_net_x6,
      iqavg => convert3_dout_net_x9,
      m_reset => relational_op_net_x25,
      q_in => down_sample7_q_net_x6,
      viq => register1_q_net_x14
    );

  dual_channel_viq_e9029488d4: entity work.dual_channel_viq_entity_e9029488d4
    port map (
      ce_1 => ce_1_sg_x81,
      ce_2 => ce_2_sg_x41,
      clk_1 => clk_1_sg_x81,
      clk_2 => clk_2_sg_x41,
      i_in => i_in_x7,
      iqavg => convert3_dout_net_x9,
      m_reset => relational_op_net_x25,
      q_in => q_in_x6,
      viq => register1_q_net_x11
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "w3_warplab_agc"

entity w3_warplab_agc is
  port (
    axi_aresetn: in std_logic; 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_4: in std_logic; 
    data_out: in std_logic_vector(1 downto 0); 
    data_out_x0: in std_logic_vector(1 downto 0); 
    data_out_x1: in std_logic_vector(1 downto 0); 
    data_out_x10: in std_logic_vector(15 downto 0); 
    data_out_x11: in std_logic_vector(9 downto 0); 
    data_out_x12: in std_logic_vector(31 downto 0); 
    data_out_x13: in std_logic_vector(15 downto 0); 
    data_out_x14: in std_logic; 
    data_out_x15: in std_logic; 
    data_out_x16: in std_logic_vector(31 downto 0); 
    data_out_x17: in std_logic; 
    data_out_x18: in std_logic_vector(15 downto 0); 
    data_out_x19: in std_logic_vector(31 downto 0); 
    data_out_x2: in std_logic_vector(1 downto 0); 
    data_out_x20: in std_logic_vector(31 downto 0); 
    data_out_x3: in std_logic_vector(4 downto 0); 
    data_out_x4: in std_logic_vector(4 downto 0); 
    data_out_x5: in std_logic_vector(4 downto 0); 
    data_out_x6: in std_logic_vector(4 downto 0); 
    data_out_x7: in std_logic_vector(15 downto 0); 
    data_out_x8: in std_logic; 
    data_out_x9: in std_logic_vector(8 downto 0); 
    dout: in std_logic_vector(31 downto 0); 
    dout_x0: in std_logic_vector(31 downto 0); 
    dout_x1: in std_logic_vector(15 downto 0); 
    dout_x10: in std_logic_vector(8 downto 0); 
    dout_x11: in std_logic; 
    dout_x12: in std_logic_vector(15 downto 0); 
    dout_x2: in std_logic; 
    dout_x3: in std_logic_vector(31 downto 0); 
    dout_x4: in std_logic; 
    dout_x5: in std_logic; 
    dout_x6: in std_logic_vector(15 downto 0); 
    dout_x7: in std_logic_vector(31 downto 0); 
    dout_x8: in std_logic_vector(9 downto 0); 
    dout_x9: in std_logic_vector(15 downto 0); 
    i_in_a: in std_logic_vector(11 downto 0); 
    i_in_b: in std_logic_vector(11 downto 0); 
    i_in_c: in std_logic_vector(11 downto 0); 
    i_in_d: in std_logic_vector(11 downto 0); 
    mreset_in: in std_logic; 
    packet_in: in std_logic; 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
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
    agc_done: out std_logic; 
    data_in: out std_logic_vector(31 downto 0); 
    data_in_x0: out std_logic_vector(31 downto 0); 
    data_in_x1: out std_logic_vector(15 downto 0); 
    data_in_x10: out std_logic_vector(8 downto 0); 
    data_in_x11: out std_logic; 
    data_in_x12: out std_logic_vector(15 downto 0); 
    data_in_x13: out std_logic_vector(4 downto 0); 
    data_in_x14: out std_logic_vector(4 downto 0); 
    data_in_x15: out std_logic_vector(4 downto 0); 
    data_in_x16: out std_logic_vector(4 downto 0); 
    data_in_x17: out std_logic_vector(1 downto 0); 
    data_in_x18: out std_logic_vector(1 downto 0); 
    data_in_x19: out std_logic_vector(1 downto 0); 
    data_in_x2: out std_logic; 
    data_in_x20: out std_logic_vector(1 downto 0); 
    data_in_x3: out std_logic_vector(31 downto 0); 
    data_in_x4: out std_logic; 
    data_in_x5: out std_logic; 
    data_in_x6: out std_logic_vector(15 downto 0); 
    data_in_x7: out std_logic_vector(31 downto 0); 
    data_in_x8: out std_logic_vector(9 downto 0); 
    data_in_x9: out std_logic_vector(15 downto 0); 
    debug_agc: out std_logic; 
    debug_agc_rst: out std_logic; 
    debug_agc_rstfbk: out std_logic; 
    debug_pktin: out std_logic; 
    done_a: out std_logic; 
    done_b: out std_logic; 
    done_c: out std_logic; 
    done_d: out std_logic; 
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
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
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
end w3_warplab_agc;

architecture structural of w3_warplab_agc is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "w3_warplab_agc,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 2.00000000000 4.00000000000 1.00000000000,testbench=0,total_blocks=1851,xilinx_accumulator_block=24,xilinx_adder_subtracter_block=84,xilinx_addressable_shift_register_block=9,xilinx_arithmetic_relational_operator_block=58,xilinx_bit_slice_extractor_block=58,xilinx_bus_multiplexer_block=44,xilinx_constant_block_block=88,xilinx_counter_block=17,xilinx_delay_block=50,xilinx_down_sampler_block=60,xilinx_edk_core_block=1,xilinx_edk_processor_block=1,xilinx_gateway_in_block=40,xilinx_gateway_out_block=40,xilinx_input_scaler_block=12,xilinx_inverter_block=34,xilinx_logical_block_block=46,xilinx_multiplier_block=40,xilinx_negate_block_block=12,xilinx_register_block=86,xilinx_shared_memory_based_from_register_block=22,xilinx_shared_memory_based_to_register_block=22,xilinx_single_port_read_only_memory_block=12,xilinx_system_generator_block=1,xilinx_type_converter_block=128,xilinx_type_reinterpreter_block=4,xilinx_up_sampler_block=20,}";

  signal addressable_shift_register_q_net: std_logic;
  signal addsub_s_net_x10: std_logic_vector(17 downto 0);
  signal addsub_s_net_x11: std_logic_vector(17 downto 0);
  signal addsub_s_net_x12: std_logic_vector(17 downto 0);
  signal addsub_s_net_x13: std_logic_vector(17 downto 0);
  signal agc_done_net: std_logic;
  signal axi_aresetn_net: std_logic;
  signal b0_y_net_x2: std_logic;
  signal b1_y_net_x2: std_logic;
  signal b2_y_net_x2: std_logic;
  signal b3_y_net_x2: std_logic;
  signal ce_1_sg_x82: std_logic;
  signal ce_2_sg_x42: std_logic;
  signal ce_4_sg_x9: std_logic;
  signal clk_1_sg_x82: std_logic;
  signal clk_2_sg_x42: std_logic;
  signal clk_4_sg_x9: std_logic;
  signal constant1_op_net_x1: std_logic;
  signal constant2_op_net_x1: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal constant_op_net_x1: std_logic;
  signal convert14_dout_net_x9: std_logic;
  signal convert15_dout_net_x9: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net_x9: std_logic_vector(4 downto 0);
  signal convert4_dout_net_x9: std_logic_vector(2 downto 0);
  signal convert5_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x9: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x13: std_logic_vector(7 downto 0);
  signal convert9_dout_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic;
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
  signal dout_net: std_logic_vector(31 downto 0);
  signal dout_x0_net: std_logic_vector(31 downto 0);
  signal dout_x10_net: std_logic_vector(8 downto 0);
  signal dout_x11_net: std_logic;
  signal dout_x12_net: std_logic_vector(15 downto 0);
  signal dout_x1_net: std_logic_vector(15 downto 0);
  signal dout_x2_net: std_logic;
  signal dout_x3_net: std_logic_vector(31 downto 0);
  signal dout_x4_net: std_logic;
  signal dout_x5_net: std_logic;
  signal dout_x6_net: std_logic_vector(15 downto 0);
  signal dout_x7_net: std_logic_vector(31 downto 0);
  signal dout_x8_net: std_logic_vector(9 downto 0);
  signal dout_x9_net: std_logic_vector(15 downto 0);
  signal down_sample10_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample11_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample1_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample4_q_net_x9: std_logic_vector(11 downto 0);
  signal down_sample5_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample6_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample7_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample8_q_net_x6: std_logic_vector(11 downto 0);
  signal down_sample9_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(9 downto 0);
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
  signal i_in_x7: std_logic_vector(11 downto 0);
  signal i_out_a_net: std_logic_vector(11 downto 0);
  signal i_out_b_net: std_logic_vector(11 downto 0);
  signal i_out_c_net: std_logic_vector(11 downto 0);
  signal i_out_d_net: std_logic_vector(11 downto 0);
  signal logical2_y_net_x29: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal mreset_in_net: std_logic;
  signal mux3_y_net_x5: std_logic_vector(37 downto 0);
  signal mux3_y_net_x6: std_logic_vector(37 downto 0);
  signal mux3_y_net_x7: std_logic_vector(37 downto 0);
  signal mux3_y_net_x8: std_logic_vector(37 downto 0);
  signal mux5_y_net_x5: std_logic_vector(37 downto 0);
  signal mux5_y_net_x6: std_logic_vector(37 downto 0);
  signal mux5_y_net_x7: std_logic_vector(37 downto 0);
  signal mux5_y_net_x8: std_logic_vector(37 downto 0);
  signal packet_in_net: std_logic;
  signal plb_ce_1_sg_x1: std_logic;
  signal plb_clk_1_sg_x1: std_logic;
  signal q_in_a_net: std_logic_vector(11 downto 0);
  signal q_in_b_net: std_logic_vector(11 downto 0);
  signal q_in_c_net: std_logic_vector(11 downto 0);
  signal q_in_d_net: std_logic_vector(11 downto 0);
  signal q_in_x6: std_logic_vector(11 downto 0);
  signal q_out_a_net: std_logic_vector(11 downto 0);
  signal q_out_b_net: std_logic_vector(11 downto 0);
  signal q_out_c_net: std_logic_vector(11 downto 0);
  signal q_out_d_net: std_logic_vector(11 downto 0);
  signal register1_q_net_x11: std_logic_vector(8 downto 0);
  signal register1_q_net_x12: std_logic_vector(8 downto 0);
  signal register1_q_net_x13: std_logic_vector(8 downto 0);
  signal register1_q_net_x14: std_logic_vector(8 downto 0);
  signal register2_q_net_x4: std_logic_vector(11 downto 0);
  signal register3_q_net_x3: std_logic_vector(11 downto 0);
  signal register4_q_net_x2: std_logic_vector(11 downto 0);
  signal register5_q_net_x2: std_logic_vector(11 downto 0);
  signal register6_q_net_x2: std_logic_vector(11 downto 0);
  signal register7_q_net_x2: std_logic_vector(11 downto 0);
  signal register8_q_net_x2: std_logic_vector(11 downto 0);
  signal register9_q_net_x2: std_logic_vector(11 downto 0);
  signal relational_op_net_x25: std_logic;
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
  signal simulationdebugor1_y_net: std_logic;
  signal simulationdebugor_y_net_x1: std_logic;

begin
  axi_aresetn_net <= axi_aresetn;
  ce_1_sg_x82 <= ce_1;
  ce_2_sg_x42 <= ce_2;
  ce_4_sg_x9 <= ce_4;
  clk_1_sg_x82 <= clk_1;
  clk_2_sg_x42 <= clk_2;
  clk_4_sg_x9 <= clk_4;
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
  data_out_x3_net <= data_out_x3;
  data_out_x4_net <= data_out_x4;
  data_out_x5_net <= data_out_x5;
  data_out_x6_net <= data_out_x6;
  data_out_x7_net <= data_out_x7;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  dout_net <= dout;
  dout_x0_net <= dout_x0;
  dout_x1_net <= dout_x1;
  dout_x10_net <= dout_x10;
  dout_x11_net <= dout_x11;
  dout_x12_net <= dout_x12;
  dout_x2_net <= dout_x2;
  dout_x3_net <= dout_x3;
  dout_x4_net <= dout_x4;
  dout_x5_net <= dout_x5;
  dout_x6_net <= dout_x6;
  dout_x7_net <= dout_x7;
  dout_x8_net <= dout_x8;
  dout_x9_net <= dout_x9;
  i_in_a_net <= i_in_a;
  i_in_b_net <= i_in_b;
  i_in_c_net <= i_in_c;
  i_in_d_net <= i_in_d;
  mreset_in_net <= mreset_in;
  packet_in_net <= packet_in;
  plb_ce_1_sg_x1 <= plb_ce_1;
  plb_clk_1_sg_x1 <= plb_clk_1;
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
  agc_done <= agc_done_net;
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
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  debug_agc <= debug_agc_net;
  debug_agc_rst <= debug_agc_rst_net;
  debug_agc_rstfbk <= debug_agc_rstfbk_net;
  debug_pktin <= debug_pktin_net;
  done_a <= done_a_net;
  done_b <= done_b_net;
  done_c <= done_c_net;
  done_d <= done_d_net;
  en <= en_net;
  en_x0 <= en_x0_net;
  en_x1 <= en_x1_net;
  en_x10 <= en_x10_net;
  en_x11 <= en_x11_net;
  en_x12 <= en_x12_net;
  en_x13 <= constant_op_net_x1;
  en_x14 <= constant1_op_net_x1;
  en_x15 <= constant2_op_net_x1;
  en_x16 <= constant3_op_net_x1;
  en_x17 <= constant_op_net_x1;
  en_x18 <= constant1_op_net_x1;
  en_x19 <= constant2_op_net_x1;
  en_x2 <= en_x2_net;
  en_x20 <= constant3_op_net_x1;
  en_x3 <= en_x3_net;
  en_x4 <= en_x4_net;
  en_x5 <= en_x5_net;
  en_x6 <= en_x6_net;
  en_x7 <= en_x7_net;
  en_x8 <= en_x8_net;
  en_x9 <= en_x9_net;
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

  addressable_shift_register: entity work.xladdrsr_w3_warplab_agc
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 9,
      core_addr_width => 9,
      core_name0 => "asr_11_0_3b8473fcc684987b",
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      addr => data_out_x9_net,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      d(0) => simulationdebugor1_y_net,
      en => "1",
      q(0) => addressable_shift_register_q_net
    );

  agc_abcd_77e14f11cd: entity work.agc_abcd_entity_77e14f11cd
    port map (
      ce_1 => ce_1_sg_x82,
      ce_2 => ce_2_sg_x42,
      clk_1 => clk_1_sg_x82,
      clk_2 => clk_2_sg_x42,
      convert14 => convert14_dout_net_x9,
      convert15 => convert15_dout_net_x9,
      convert5 => convert5_dout_net_x9,
      convert6 => convert6_dout_net_x9,
      convert7 => convert7_dout_net_x9,
      convert8 => convert8_dout_net_x13,
      dco_timing => data_out_x12_net,
      down_sample1 => down_sample1_q_net_x6,
      down_sample2 => q_in_x6,
      down_sample3 => i_in_x7,
      down_sample4 => down_sample4_q_net_x9,
      down_sample5 => down_sample5_q_net_x6,
      down_sample6 => down_sample6_q_net_x6,
      down_sample7 => down_sample7_q_net_x6,
      down_sample8 => down_sample8_q_net_x6,
      en => debug_agc_net,
      en_agc_a => b0_y_net_x2,
      en_agc_b => b1_y_net_x2,
      en_agc_c => b2_y_net_x2,
      en_agc_d => b3_y_net_x2,
      m_rst => relational_op_net_x25,
      register2 => register2_q_net_x4,
      register3 => register3_q_net_x3,
      register4 => register4_q_net_x2,
      register5 => register5_q_net_x2,
      register6 => register6_q_net_x2,
      register7 => register7_q_net_x2,
      register8 => register8_q_net_x2,
      register9 => register9_q_net_x2,
      rssi_db_a => addsub_s_net_x10,
      rssi_db_b => addsub_s_net_x11,
      rssi_db_c => addsub_s_net_x12,
      rssi_db_d => addsub_s_net_x13,
      rst => logical2_y_net_x29,
      thresholds => data_out_x19_net,
      timing => data_out_x20_net,
      viq_in_a => register1_q_net_x11,
      viq_in_b => register1_q_net_x12,
      viq_in_c => register1_q_net_x13,
      viq_in_d => register1_q_net_x14,
      done => agc_done_net,
      done_a => done_a_net,
      done_b => done_b_net,
      done_c => done_c_net,
      done_d => done_d_net,
      g_bb_a => g_bb_a_net,
      g_bb_b => g_bb_b_net,
      g_bb_c => g_bb_c_net,
      g_bb_d => g_bb_d_net,
      g_rf_a => g_rf_a_net,
      g_rf_b => g_rf_b_net,
      g_rf_c => g_rf_c_net,
      g_rf_d => g_rf_d_net,
      i_out_a => mux3_y_net_x5,
      i_out_b => mux3_y_net_x6,
      i_out_c => mux3_y_net_x7,
      i_out_d => mux3_y_net_x8,
      q_out_a => mux5_y_net_x5,
      q_out_b => mux5_y_net_x6,
      q_out_c => mux5_y_net_x7,
      q_out_d => mux5_y_net_x8,
      reset => debug_agc_rstfbk_net
    );

  control_system_2e62cc1c4b: entity work.control_system_entity_2e62cc1c4b
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      m_reset => simulationdebugor_y_net_x1,
      pakdet_in => debug_pktin_net,
      reset_in => debug_agc_rst_net,
      en_hi => debug_agc_net,
      m_reset_out => relational_op_net_x25,
      reset => logical2_y_net_x29
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux3_y_net_x5,
      en => "1",
      dout => i_out_a_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux5_y_net_x5,
      en => "1",
      dout => q_out_a_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux3_y_net_x6,
      en => "1",
      dout => i_out_b_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux5_y_net_x6,
      en => "1",
      dout => q_out_b_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux3_y_net_x7,
      en => "1",
      dout => i_out_c_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux5_y_net_x7,
      en => "1",
      dout => q_out_c_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux3_y_net_x8,
      en => "1",
      dout => i_out_d_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 11,
      dout_width => 12,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      din => mux5_y_net_x8,
      en => "1",
      dout => q_out_d_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_a_net,
      dest_ce => ce_4_sg_x9,
      dest_clk => clk_4_sg_x9,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample_q_net_x3
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register5_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample1_q_net_x6
    );

  down_sample10: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_c_net,
      dest_ce => ce_4_sg_x9,
      dest_clk => clk_4_sg_x9,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample10_q_net_x2
    );

  down_sample11: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_d_net,
      dest_ce => ce_4_sg_x9,
      dest_clk => clk_4_sg_x9,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample11_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register3_q_net_x3,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => q_in_x6
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register2_q_net_x4,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => i_in_x7
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register4_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample4_q_net_x9
    );

  down_sample5: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register7_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample5_q_net_x6
    );

  down_sample6: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register6_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample6_q_net_x6
    );

  down_sample7: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register9_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample7_q_net_x6
    );

  down_sample8: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 11,
      d_width => 12,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 11,
      q_width => 12
    )
    port map (
      d => register8_q_net_x2,
      dest_ce => ce_2_sg_x42,
      dest_clk => clk_2_sg_x42,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample8_q_net_x6
    );

  down_sample9: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_b_net,
      dest_ce => ce_4_sg_x9,
      dest_clk => clk_4_sg_x9,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x82,
      src_clk => clk_1_sg_x82,
      src_clr => '0',
      q => down_sample9_q_net_x2
    );

  edk_processor_40f9ad16fa: entity work.edk_processor_entity_40f9ad16fa
    port map (
      axi_aresetn => axi_aresetn_net,
      from_register => data_out_net,
      from_register1 => data_out_x0_net,
      from_register2 => data_out_x1_net,
      from_register3 => data_out_x2_net,
      from_register4 => data_out_x3_net,
      from_register5 => data_out_x4_net,
      from_register6 => data_out_x5_net,
      from_register7 => data_out_x6_net,
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
      to_register => dout_net,
      to_register1 => dout_x0_net,
      to_register10 => dout_x9_net,
      to_register11 => dout_x10_net,
      to_register12 => dout_x11_net,
      to_register13 => dout_x12_net,
      to_register2 => dout_x1_net,
      to_register3 => dout_x2_net,
      to_register4 => dout_x3_net,
      to_register5 => dout_x4_net,
      to_register6 => dout_x5_net,
      to_register7 => dout_x6_net,
      to_register8 => dout_x7_net,
      to_register9 => dout_x8_net,
      memmap_x0 => s_axi_arready_net,
      memmap_x1 => s_axi_awready_net,
      memmap_x10 => s_axi_wready_net,
      memmap_x11 => data_in_net,
      memmap_x12 => en_net,
      memmap_x13 => data_in_x0_net,
      memmap_x14 => en_x0_net,
      memmap_x15 => data_in_x1_net,
      memmap_x16 => en_x1_net,
      memmap_x17 => data_in_x2_net,
      memmap_x18 => en_x2_net,
      memmap_x19 => data_in_x3_net,
      memmap_x2 => s_axi_bid_net,
      memmap_x20 => en_x3_net,
      memmap_x21 => data_in_x4_net,
      memmap_x22 => en_x4_net,
      memmap_x23 => data_in_x5_net,
      memmap_x24 => en_x5_net,
      memmap_x25 => data_in_x6_net,
      memmap_x26 => en_x6_net,
      memmap_x27 => data_in_x7_net,
      memmap_x28 => en_x7_net,
      memmap_x29 => data_in_x8_net,
      memmap_x3 => s_axi_bresp_net,
      memmap_x30 => en_x8_net,
      memmap_x31 => data_in_x9_net,
      memmap_x32 => en_x9_net,
      memmap_x33 => data_in_x10_net,
      memmap_x34 => en_x10_net,
      memmap_x35 => data_in_x11_net,
      memmap_x36 => en_x11_net,
      memmap_x37 => data_in_x12_net,
      memmap_x38 => en_x12_net,
      memmap_x4 => s_axi_bvalid_net,
      memmap_x5 => s_axi_rdata_net,
      memmap_x6 => s_axi_rid_net,
      memmap_x7 => s_axi_rlast_net,
      memmap_x8 => s_axi_rresp_net,
      memmap_x9 => s_axi_rvalid_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      ip(0) => done_a_net,
      op(0) => rxhp_a_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      ip(0) => done_b_net,
      op(0) => rxhp_b_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      ip(0) => done_c_net,
      op(0) => rxhp_c_net
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      ip(0) => done_d_net,
      op(0) => rxhp_d_net
    );

  logical: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => debug_agc_rstfbk_net,
      d1(0) => convert_dout_net_x0,
      d2(0) => reset_in_net,
      y(0) => debug_agc_rst_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => addressable_shift_register_q_net,
      d1(0) => convert2_dout_net_x0,
      y(0) => debug_pktin_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_rf_a_net,
      en(0) => logical_y_net_x0,
      rst => "0",
      q => data_in_x17_net
    );

  register10: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_bb_a_net,
      en(0) => logical_y_net_x0,
      rst => "0",
      q => data_in_x13_net
    );

  register11: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_rf_b_net,
      en(0) => logical_y_net_x1,
      rst => "0",
      q => data_in_x18_net
    );

  register12: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_bb_b_net,
      en(0) => logical_y_net_x1,
      rst => "0",
      q => data_in_x14_net
    );

  register13: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_rf_c_net,
      en(0) => logical_y_net_x2,
      rst => "0",
      q => data_in_x19_net
    );

  register14: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_bb_c_net,
      en(0) => logical_y_net_x2,
      rst => "0",
      q => data_in_x15_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_rf_d_net,
      en(0) => logical_y_net_x3,
      rst => "0",
      q => data_in_x20_net
    );

  register16: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => g_bb_d_net,
      en(0) => logical_y_net_x3,
      rst => "0",
      q => data_in_x16_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => i_in_a_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x4
    );

  register3: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => q_in_a_net,
      en => "1",
      rst => "0",
      q => register3_q_net_x3
    );

  register4: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => i_in_b_net,
      en => "1",
      rst => "0",
      q => register4_q_net_x2
    );

  register5: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => q_in_b_net,
      en => "1",
      rst => "0",
      q => register5_q_net_x2
    );

  register6: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => i_in_c_net,
      en => "1",
      rst => "0",
      q => register6_q_net_x2
    );

  register7: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => q_in_c_net,
      en => "1",
      rst => "0",
      q => register7_q_net_x2
    );

  register8: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => i_in_d_net,
      en => "1",
      rst => "0",
      q => register8_q_net_x2
    );

  register9: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => q_in_d_net,
      en => "1",
      rst => "0",
      q => register9_q_net_x2
    );

  registers_19d43a63df: entity work.registers_entity_19d43a63df
    port map (
      adj => data_out_x7_net,
      agc_en => data_out_x8_net,
      avg_len => data_out_x10_net,
      bits => data_out_x11_net,
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      gbb_init => data_out_x13_net,
      mreset_in => data_out_x14_net,
      packet_in => data_out_x15_net,
      radio1_agc_en1 => data_out_x16_net,
      sreset_in => data_out_x17_net,
      t_db => data_out_x18_net,
      adj_1 => convert5_dout_net_x9,
      adj_2 => convert6_dout_net_x9,
      agc_en_x0 => convert2_dout_net_x0,
      constant1_x0 => constant1_op_net_x1,
      constant2_x0 => constant2_op_net_x1,
      constant3_x0 => constant3_op_net_x1,
      constant_x1 => constant_op_net_x1,
      en_agc_a => b0_y_net_x2,
      en_agc_b => b1_y_net_x2,
      en_agc_c => b2_y_net_x2,
      en_agc_d => b3_y_net_x2,
      en_dco => convert14_dout_net_x9,
      en_dco_sub => convert15_dout_net_x9,
      gbb_init_x0 => convert7_dout_net_x9,
      mreset_in_x0 => convert1_dout_net_x0,
      packet_in_x0 => convert9_dout_net_x0,
      rssi_avg_len => convert4_dout_net_x9,
      sreset_in_x0 => convert_dout_net_x0,
      t_db_x0 => convert8_dout_net_x13,
      viq_avg_len => convert3_dout_net_x9
    );

  risingedge1_f6c93fde05: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      in_x0 => done_a_net,
      edge_x0 => logical_y_net_x0
    );

  risingedge2_088335666d: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      in_x0 => done_b_net,
      edge_x0 => logical_y_net_x1
    );

  risingedge3_52f1606fd1: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      in_x0 => done_c_net,
      edge_x0 => logical_y_net_x2
    );

  risingedge4_ee98afeb78: entity work.risingedge_entity_c787c4adff
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      in_x0 => done_d_net,
      edge_x0 => logical_y_net_x3
    );

  rssi_preprocessor_cffd14e658: entity work.rssi_preprocessor_entity_cffd14e658
    port map (
      ce_1 => ce_1_sg_x82,
      ce_4 => ce_4_sg_x9,
      clk_1 => clk_1_sg_x82,
      clk_4 => clk_4_sg_x9,
      g_rf_a => g_rf_a_net,
      g_rf_b => g_rf_b_net,
      g_rf_c => g_rf_c_net,
      g_rf_d => g_rf_d_net,
      m_reset => relational_op_net_x25,
      rssiavg_len => convert4_dout_net_x9,
      x10bits_in_a => down_sample_q_net_x3,
      x10bits_in_b => down_sample9_q_net_x2,
      x10bits_in_c => down_sample10_q_net_x2,
      x10bits_in_d => down_sample11_q_net_x2,
      avg_db_out_a => addsub_s_net_x10,
      avg_db_out_b => addsub_s_net_x11,
      avg_db_out_c => addsub_s_net_x12,
      avg_db_out_d => addsub_s_net_x13
    );

  simulationdebugor: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert1_dout_net_x0,
      d1(0) => mreset_in_net,
      y(0) => simulationdebugor_y_net_x1
    );

  simulationdebugor1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => packet_in_net,
      d1(0) => convert9_dout_net_x0,
      y(0) => simulationdebugor1_y_net
    );

  viq_e33589de47: entity work.viq_entity_e33589de47
    port map (
      ce_1 => ce_1_sg_x82,
      ce_2 => ce_2_sg_x42,
      clk_1 => clk_1_sg_x82,
      clk_2 => clk_2_sg_x42,
      i_in_a => i_in_x7,
      i_in_b => down_sample4_q_net_x9,
      i_in_c => down_sample6_q_net_x6,
      i_in_d => down_sample8_q_net_x6,
      iqavg => convert3_dout_net_x9,
      m_reset => relational_op_net_x25,
      q_in_a => q_in_x6,
      q_in_b => down_sample1_q_net_x6,
      q_in_c => down_sample5_q_net_x6,
      q_in_d => down_sample7_q_net_x6,
      viq_a => register1_q_net_x11,
      viq_b => register1_q_net_x12,
      viq_c => register1_q_net_x13,
      viq_d => register1_q_net_x14
    );

end structural;
