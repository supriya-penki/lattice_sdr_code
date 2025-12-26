
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o mySDR_fpga_impl1_mapvho.vho -w -neg -gui -msgset C:/lscc/lattice_projects/promote.xml mySDR_fpga_impl1_map.ncd 
-- Netlist created on Wed Sep 10 17:14:20 2025
-- Netlist written on Wed Sep 10 17:14:26 2025
-- Design is for device LFE5UM5G-85F
-- Design is for package CABGA381
-- Design is for performance grade 8

-- entity sapiobuf
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity sapiobuf is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity clkLockB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity clkLockB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clkLockB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_clkLockS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; clkLockS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF clkLockB : ENTITY IS TRUE;

  end clkLockB;

  architecture Structure of clkLockB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal clkLockS_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    clkLock_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>clkLockS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, clkLockS_out)
    VARIABLE clkLockS_zd         	: std_logic := 'X';
    VARIABLE clkLockS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    clkLockS_zd 	:= clkLockS_out;

    VitalPathDelay01 (
      OutSignal => clkLockS, OutSignalName => "clkLockS", OutTemp => clkLockS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_clkLockS,
                           PathCondition => TRUE)),
      GlitchData => clkLockS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity clkOutB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity clkOutB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clkOutB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_clkOutS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; clkOutS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF clkOutB : ENTITY IS TRUE;

  end clkOutB;

  architecture Structure of clkOutB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal clkOutS_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    clkOut_pad: sapiobuf
      port map (I=>PADDO_ipd, PAD=>clkOutS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, clkOutS_out)
    VARIABLE clkOutS_zd         	: std_logic := 'X';
    VARIABLE clkOutS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    clkOutS_zd 	:= clkOutS_out;

    VitalPathDelay01 (
      OutSignal => clkOutS, OutSignalName => "clkOutS", OutTemp => clkOutS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_clkOutS,
                           PathCondition => TRUE)),
      GlitchData => clkOutS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity clkB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clkB";

      tipd_clkS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_clkS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_clkS 	: VitalDelayType := 0 ns;
      tpw_clkS_posedge	: VitalDelayType := 0 ns;
      tpw_clkS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; clkS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF clkB : ENTITY IS TRUE;

  end clkB;

  architecture Structure of clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal clkS_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    clk_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>clkS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(clkS_ipd, clkS, tipd_clkS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, clkS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_clkS_clkS          	: x01 := '0';
    VARIABLE periodcheckinfo_clkS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => clkS_ipd,
        TestSignalName => "clkS",
        Period => tperiod_clkS,
        PulseWidthHigh => tpw_clkS_posedge,
        PulseWidthLow => tpw_clkS_negedge,
        PeriodData => periodcheckinfo_clkS,
        Violation => tviol_clkS_clkS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => clkS_ipd'last_event,
                           PathDelay => tpd_clkS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity pll_lockB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity pll_lockB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "pll_lockB";

      tipd_plllock  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_plllock_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_plllock 	: VitalDelayType := 0 ns;
      tpw_plllock_posedge	: VitalDelayType := 0 ns;
      tpw_plllock_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; plllock: in Std_logic);

    ATTRIBUTE Vital_Level0 OF pll_lockB : ENTITY IS TRUE;

  end pll_lockB;

  architecture Structure of pll_lockB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal plllock_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    pll_lock_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>plllock_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(plllock_ipd, plllock, tipd_plllock);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, plllock_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_plllock_plllock          	: x01 := '0';
    VARIABLE periodcheckinfo_plllock	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => plllock_ipd,
        TestSignalName => "plllock",
        Period => tperiod_plllock,
        PulseWidthHigh => tpw_plllock_posedge,
        PulseWidthLow => tpw_plllock_negedge,
        PeriodData => periodcheckinfo_plllock,
        Violation => tviol_plllock_plllock,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => plllock_ipd'last_event,
                           PathDelay => tpd_plllock_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity clockDivider
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity clockDivider is
    port (clk: in Std_logic; pll_lock: in Std_logic; clkOut: out Std_logic; 
          clkLock: out Std_logic);



  end clockDivider;

  architecture Structure of clockDivider is
    signal counter_7: Std_logic;
    signal n38: Std_logic;
    signal n118: Std_logic;
    signal clk_c: Std_logic;
    signal n157: Std_logic;
    signal counter_6: Std_logic;
    signal counter_5: Std_logic;
    signal n39: Std_logic;
    signal n40: Std_logic;
    signal n156: Std_logic;
    signal counter_4: Std_logic;
    signal counter_3: Std_logic;
    signal n41: Std_logic;
    signal n42: Std_logic;
    signal n155: Std_logic;
    signal counter_2: Std_logic;
    signal counter_1: Std_logic;
    signal n43: Std_logic;
    signal n44: Std_logic;
    signal n154: Std_logic;
    signal counter_0: Std_logic;
    signal n45: Std_logic;
    signal lockCounter_7: Std_logic;
    signal n38_adj_1: Std_logic;
    signal pll_lock_c: Std_logic;
    signal n161: Std_logic;
    signal lockCounter_6: Std_logic;
    signal lockCounter_5: Std_logic;
    signal n39_adj_2: Std_logic;
    signal n40_adj_3: Std_logic;
    signal n160: Std_logic;
    signal lockCounter_4: Std_logic;
    signal lockCounter_3: Std_logic;
    signal n41_adj_4: Std_logic;
    signal n42_adj_5: Std_logic;
    signal n159: Std_logic;
    signal lockCounter_2: Std_logic;
    signal lockCounter_1: Std_logic;
    signal n43_adj_6: Std_logic;
    signal n44_adj_7: Std_logic;
    signal n158: Std_logic;
    signal lockCounter_0: Std_logic;
    signal n45_adj_8: Std_logic;
    signal n199: Std_logic;
    signal n209: Std_logic;
    signal n201: Std_logic;
    signal n138: Std_logic;
    signal clkOut_c: Std_logic;
    signal clkOut_N_36: Std_logic;
    signal n283: Std_logic;
    signal n280: Std_logic;
    signal n277: Std_logic;
    signal n254: Std_logic;
    signal clkLock_c: Std_logic;
    signal n8: Std_logic;
    signal n12: Std_logic;
    signal n4: Std_logic;
    signal VCCI: Std_logic;
    component clkLockB
      port (PADDO: in Std_logic; clkLockS: out Std_logic);
    end component;
    component clkOutB
      port (PADDO: in Std_logic; clkOutS: out Std_logic);
    end component;
    component clkB
      port (PADDI: out Std_logic; clkS: in Std_logic);
    end component;
    component pll_lockB
      port (PADDI: out Std_logic; plllock: in Std_logic);
    end component;
  begin
    SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n38, A0=>counter_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n157, 
                M0=>'X', CE=>'X', CLK=>clk_c, LSR=>n118, FCO=>open, F1=>open, 
                Q1=>open, F0=>n38, Q0=>counter_7);
    SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_6, B1=>'X', C1=>'X', D1=>'1', DI1=>n39, 
                DI0=>n40, A0=>counter_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n156, 
                M0=>'X', CE=>'X', CLK=>clk_c, LSR=>n118, FCO=>n157, F1=>n39, 
                Q1=>counter_6, F0=>n40, Q0=>counter_5);
    SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_4, B1=>'X', C1=>'X', D1=>'1', DI1=>n41, 
                DI0=>n42, A0=>counter_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n155, 
                M0=>'X', CE=>'X', CLK=>clk_c, LSR=>n118, FCO=>n156, F1=>n41, 
                Q1=>counter_4, F0=>n42, Q0=>counter_3);
    SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_2, B1=>'X', C1=>'X', D1=>'1', DI1=>n43, 
                DI0=>n44, A0=>counter_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n154, 
                M0=>'X', CE=>'X', CLK=>clk_c, LSR=>n118, FCO=>n155, F1=>n43, 
                Q1=>counter_2, F0=>n44, Q0=>counter_1);
    SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_0, B1=>'X', C1=>'X', D1=>'1', DI1=>n45, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>clk_c, LSR=>n118, FCO=>n154, F1=>n45, 
                Q1=>counter_0, F0=>open, Q0=>open);
    SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n38_adj_1, A0=>lockCounter_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n161, M0=>'X', CE=>'X', CLK=>clk_c, LSR=>pll_lock_c, 
                FCO=>open, F1=>open, Q1=>open, F0=>n38_adj_1, 
                Q0=>lockCounter_7);
    SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>lockCounter_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n39_adj_2, DI0=>n40_adj_3, A0=>lockCounter_5, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n160, M0=>'X', CE=>'X', CLK=>clk_c, 
                LSR=>pll_lock_c, FCO=>n161, F1=>n39_adj_2, Q1=>lockCounter_6, 
                F0=>n40_adj_3, Q0=>lockCounter_5);
    SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>lockCounter_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n41_adj_4, DI0=>n42_adj_5, A0=>lockCounter_3, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n159, M0=>'X', CE=>'X', CLK=>clk_c, 
                LSR=>pll_lock_c, FCO=>n160, F1=>n41_adj_4, Q1=>lockCounter_4, 
                F0=>n42_adj_5, Q0=>lockCounter_3);
    SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>lockCounter_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n43_adj_6, DI0=>n44_adj_7, A0=>lockCounter_1, B0=>'X', 
                C0=>'X', D0=>'1', FCI=>n158, M0=>'X', CE=>'X', CLK=>clk_c, 
                LSR=>pll_lock_c, FCO=>n159, F1=>n43_adj_6, Q1=>lockCounter_2, 
                F0=>n44_adj_7, Q0=>lockCounter_1);
    SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>lockCounter_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>n45_adj_8, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>clk_c, LSR=>pll_lock_c, 
                FCO=>n158, F1=>n45_adj_8, Q1=>lockCounter_0, F0=>open, 
                Q0=>open);
    SLICE_10I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"9999", LUT1_INITVAL=>X"FFBF", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n201, B1=>n209, C1=>counter_2, 
                D1=>n199, DI1=>'X', DI0=>clkOut_N_36, A0=>clkOut_c, B0=>n138, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>clk_c, 
                LSR=>pll_lock_c, OFX1=>open, F1=>n138, Q1=>open, OFX0=>open, 
                F0=>clkOut_N_36, Q0=>clkOut_c);
    SLICE_11I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n277, B1=>n280, C1=>n283, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n254, B0=>n280, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>clkLock_c, Q1=>open, OFX0=>open, F0=>n280, Q0=>open);
    SLICE_12I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"CCC8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>lockCounter_3, B1=>n4, 
                C1=>n12, D1=>n8, DI1=>'X', DI0=>'X', A0=>lockCounter_2, 
                B0=>lockCounter_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n254, Q1=>open, OFX0=>open, 
                F0=>n8, Q0=>open);
    SLICE_13I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n138, B1=>pll_lock_c, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>counter_5, B0=>counter_4, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n118, Q1=>open, OFX0=>open, F0=>n199, Q0=>open);
    SLICE_14I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"A8A8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pll_lock_c, B1=>n283, 
                C1=>n254, D1=>'X', DI1=>'X', DI0=>'X', A0=>lockCounter_1, 
                B0=>lockCounter_4, C0=>lockCounter_5, D0=>lockCounter_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n283, 
                Q1=>open, OFX0=>open, F0=>n12, Q0=>open);
    SLICE_15I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>counter_6, B1=>counter_7, 
                C1=>counter_3, D1=>'X', DI1=>'X', DI0=>'X', A0=>counter_1, 
                B0=>counter_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n201, Q1=>open, OFX0=>open, F0=>n209, 
                Q0=>open);
    SLICE_16I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>pll_lock_c, B1=>lockCounter_7, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>pll_lock_c, B0=>n277, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n4, Q1=>open, OFX0=>open, F0=>n277, Q0=>open);
    clkLockI: clkLockB
      port map (PADDO=>clkLock_c, clkLockS=>clkLock);
    clkOutI: clkOutB
      port map (PADDO=>clkOut_c, clkOutS=>clkOut);
    clkI: clkB
      port map (PADDI=>clk_c, clkS=>clk);
    pll_lockI: pll_lockB
      port map (PADDI=>pll_lock_c, plllock=>pll_lock);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5UM;
  configuration Structure_CON of clockDivider is
    for Structure
    end for;
  end Structure_CON;


