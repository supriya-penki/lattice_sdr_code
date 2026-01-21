
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o mySDR_fpga_impl1_mapvho.vho -w -neg -gui -msgset C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/promote.xml mySDR_fpga_impl1_map.ncd 
-- Netlist created on Sat Jan 10 01:16:40 2026
-- Netlist written on Sun Jan 11 02:50:13 2026
-- Design is for device LFE5UM5G-85F
-- Design is for package CABGA381
-- Design is for performance grade 8

-- entity sapiobuf
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity sapiobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity top_rstB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity top_rstB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_rstB";

      tipd_toprst  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_toprst_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_toprst 	: VitalDelayType := 0 ns;
      tpw_toprst_posedge	: VitalDelayType := 0 ns;
      tpw_toprst_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; toprst: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_rstB : ENTITY IS TRUE;

  end top_rstB;

  architecture Structure of top_rstB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal toprst_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    LED4_c_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>toprst_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(toprst_ipd, toprst, tipd_toprst);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, toprst_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_toprst_toprst          	: x01 := '0';
    VARIABLE periodcheckinfo_toprst	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => toprst_ipd,
        TestSignalName => "toprst",
        Period => tperiod_toprst,
        PulseWidthHigh => tpw_toprst_posedge,
        PulseWidthLow => tpw_toprst_negedge,
        PeriodData => periodcheckinfo_toprst,
        Violation => tviol_toprst_toprst,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => toprst_ipd'last_event,
                           PathDelay => tpd_toprst_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
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

-- entity top_clkB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity top_clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "top_clkB";

      tipd_topclk  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_topclk_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_topclk 	: VitalDelayType := 0 ns;
      tpw_topclk_posedge	: VitalDelayType := 0 ns;
      tpw_topclk_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; topclk: in Std_logic);

    ATTRIBUTE Vital_Level0 OF top_clkB : ENTITY IS TRUE;

  end top_clkB;

  architecture Structure of top_clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal topclk_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    top_clk_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>topclk_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(topclk_ipd, topclk, tipd_topclk);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, topclk_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_topclk_topclk          	: x01 := '0';
    VARIABLE periodcheckinfo_topclk	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => topclk_ipd,
        TestSignalName => "topclk",
        Period => tperiod_topclk,
        PulseWidthHigh => tpw_topclk_posedge,
        PulseWidthLow => tpw_topclk_negedge,
        PeriodData => periodcheckinfo_topclk,
        Violation => tviol_topclk_topclk,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => topclk_ipd'last_event,
                           PathDelay => tpd_topclk_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity LED7B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED7B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED7B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_LED7S	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; LED7S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED7B : ENTITY IS TRUE;

  end LED7B;

  architecture Structure of LED7B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal LED7S_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    LED7_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>LED7S_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, LED7S_out)
    VARIABLE LED7S_zd         	: std_logic := 'X';
    VARIABLE LED7S_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED7S_zd 	:= LED7S_out;

    VitalPathDelay01 (
      OutSignal => LED7S, OutSignalName => "LED7S", OutTemp => LED7S_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_LED7S,
                           PathCondition => TRUE)),
      GlitchData => LED7S_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vcc
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity LED6B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED6B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED6B");

    port (LED6S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED6B : ENTITY IS TRUE;

  end LED6B;

  architecture Structure of LED6B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal LED6S_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    LED6_pad: sapiobuf0002
      port map (I=>VCCI, PAD=>LED6S_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (LED6S_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED6S 	<= LED6S_out;


    END PROCESS;

  end Structure;

-- entity LED5B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED5B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED5B");

    port (LED5S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED5B : ENTITY IS TRUE;

  end LED5B;

  architecture Structure of LED5B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal LED5S_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    LED5_pad: sapiobuf0002
      port map (I=>VCCI, PAD=>LED5S_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (LED5S_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED5S 	<= LED5S_out;


    END PROCESS;

  end Structure;

-- entity LED4B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED4B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED4B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_LED4S	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; LED4S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED4B : ENTITY IS TRUE;

  end LED4B;

  architecture Structure of LED4B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal LED4S_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    LED4_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>LED4S_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, LED4S_out)
    VARIABLE LED4S_zd         	: std_logic := 'X';
    VARIABLE LED4S_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED4S_zd 	:= LED4S_out;

    VitalPathDelay01 (
      OutSignal => LED4S, OutSignalName => "LED4S", OutTemp => LED4S_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_LED4S,
                           PathCondition => TRUE)),
      GlitchData => LED4S_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LED3B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED3B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED3B");

    port (LED3S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED3B : ENTITY IS TRUE;

  end LED3B;

  architecture Structure of LED3B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal LED3S_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    LED3_pad: sapiobuf0002
      port map (I=>VCCI, PAD=>LED3S_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (LED3S_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED3S 	<= LED3S_out;


    END PROCESS;

  end Structure;

-- entity sapiobuf0003
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity sapiobuf0003 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0003 : ENTITY IS TRUE;

  end sapiobuf0003;

  architecture Structure of sapiobuf0003 is
  begin
    INST1: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity serial_clkB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity serial_clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "serial_clkB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_serialclk	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; serialclk: out Std_logic);

    ATTRIBUTE Vital_Level0 OF serial_clkB : ENTITY IS TRUE;

  end serial_clkB;

  architecture Structure of serial_clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal serialclk_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    serial_clk_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>serialclk_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, serialclk_out)
    VARIABLE serialclk_zd         	: std_logic := 'X';
    VARIABLE serialclk_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    serialclk_zd 	:= serialclk_out;

    VitalPathDelay01 (
      OutSignal => serialclk, OutSignalName => "serialclk", OutTemp => serialclk_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_serialclk,
                           PathCondition => TRUE)),
      GlitchData => serialclk_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LED2B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED2B");

    port (LED2S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED2B : ENTITY IS TRUE;

  end LED2B;

  architecture Structure of LED2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal LED2S_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    LED2_pad: sapiobuf0002
      port map (I=>VCCI, PAD=>LED2S_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (LED2S_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED2S 	<= LED2S_out;


    END PROCESS;

  end Structure;

-- entity LED1B
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LED1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LED1B");

    port (LED1S: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LED1B : ENTITY IS TRUE;

  end LED1B;

  architecture Structure of LED1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal LED1S_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    LED1_pad: sapiobuf0002
      port map (I=>VCCI, PAD=>LED1S_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (LED1S_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LED1S 	<= LED1S_out;


    END PROCESS;

  end Structure;

-- entity serial_iqB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity serial_iqB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "serial_iqB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_serialiq	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; serialiq: out Std_logic);

    ATTRIBUTE Vital_Level0 OF serial_iqB : ENTITY IS TRUE;

  end serial_iqB;

  architecture Structure of serial_iqB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal serialiq_out 	: std_logic := 'X';

    component sapiobuf0003
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    serial_iq_pad: sapiobuf0003
      port map (I=>PADDO_ipd, PAD=>serialiq_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, serialiq_out)
    VARIABLE serialiq_zd         	: std_logic := 'X';
    VARIABLE serialiq_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    serialiq_zd 	:= serialiq_out;

    VitalPathDelay01 (
      OutSignal => serialiq, OutSignalName => "serialiq", OutTemp => serialiq_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_serialiq,
                           PathCondition => TRUE)),
      GlitchData => serialiq_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LEDB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity LEDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "LEDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_LEDS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; LEDS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF LEDB : ENTITY IS TRUE;

  end LEDB;

  architecture Structure of LEDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal LEDS_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    LED_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>LEDS_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, LEDS_out)
    VARIABLE LEDS_zd         	: std_logic := 'X';
    VARIABLE LEDS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LEDS_zd 	:= LEDS_out;

    VitalPathDelay01 (
      OutSignal => LEDS, OutSignalName => "LEDS", OutTemp => LEDS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_LEDS,
                           PathCondition => TRUE)),
      GlitchData => LEDS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity EHXPLLLB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity EHXPLLLB is
    port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
          PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
          PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
          STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
          ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; ENCLKOS2: in Std_logic; 
          ENCLKOS3: in Std_logic; CLKOP: out Std_logic; CLKOS: out Std_logic; 
          CLKOS2: out Std_logic; CLKOS3: out Std_logic; LOCK: out Std_logic; 
          INTLOCK: out Std_logic; REFCLK: out Std_logic; 
          CLKINTFB: out Std_logic);



  end EHXPLLLB;

  architecture Structure of EHXPLLLB is
  begin
    INST10: EHXPLLL
      generic map (CLKFB_DIV => 2, CLKI_DIV => 1, CLKOP_CPHASE => 26, 
                   CLKOP_DIV => 27, CLKOP_ENABLE => "ENABLED", 
                   CLKOP_FPHASE => 0, CLKOP_TRIM_DELAY => 0, 
                   CLKOP_TRIM_POL => "FALLING", CLKOS2_CPHASE => 0, 
                   CLKOS2_DIV => 1, CLKOS2_ENABLE => "DISABLED", 
                   CLKOS2_FPHASE => 0, CLKOS3_CPHASE => 0, CLKOS3_DIV => 1, 
                   CLKOS3_ENABLE => "DISABLED", CLKOS3_FPHASE => 0, 
                   CLKOS_CPHASE => 0, CLKOS_DIV => 1, 
                   CLKOS_ENABLE => "DISABLED", CLKOS_FPHASE => 0, 
                   CLKOS_TRIM_DELAY => 0, CLKOS_TRIM_POL => "FALLING", 
                   DPHASE_SOURCE => "DISABLED", FEEDBK_PATH => "CLKOP", 
                   INTFB_WAKE => "DISABLED", INT_LOCK_STICKY => "ENABLED", 
                   OUTDIVIDER_MUXA => "DIVA", OUTDIVIDER_MUXB => "DIVB", 
                   OUTDIVIDER_MUXC => "DIVC", OUTDIVIDER_MUXD => "DIVD", 
                   PLLRST_ENA => "DISABLED", PLL_LOCK_DELAY => 200, 
                   PLL_LOCK_MODE => 0, REFIN_RESET => "DISABLED", 
                   STDBY_ENABLE => "DISABLED", SYNC_ENABLE => "DISABLED")
      port map (CLKI=>CLKI, CLKFB=>CLKFB, PHASESEL1=>PHASESEL1, 
                PHASESEL0=>PHASESEL0, PHASEDIR=>PHASEDIR, PHASESTEP=>PHASESTEP, 
                PHASELOADREG=>PHASELOADREG, STDBY=>STDBY, 
                PLLWAKESYNC=>PLLWAKESYNC, RST=>RST, ENCLKOP=>ENCLKOP, 
                ENCLKOS=>ENCLKOS, ENCLKOS2=>ENCLKOS2, ENCLKOS3=>ENCLKOS3, 
                CLKOP=>CLKOP, CLKOS=>CLKOS, CLKOS2=>CLKOS2, CLKOS3=>CLKOS3, 
                LOCK=>LOCK, INTLOCK=>INTLOCK, REFCLK=>REFCLK, 
                CLKINTFB=>CLKINTFB);
  end Structure;

-- entity gnd
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity my_instance_1_PLLInst_0
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity my_instance_1_PLLInst_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "my_instance_1_PLLInst_0";

      tipd_CLKI  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKFB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_STDBY  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
          CLKOP: out Std_logic);



  end my_instance_1_PLLInst_0;

  architecture Structure of my_instance_1_PLLInst_0 is
    signal CLKI_ipd 	: std_logic := 'X';
    signal CLKFB_ipd 	: std_logic := 'X';
    signal STDBY_ipd 	: std_logic := 'X';
    signal CLKOP_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EHXPLLLB
      port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
            PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
            PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
            STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
            ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; 
            ENCLKOS2: in Std_logic; ENCLKOS3: in Std_logic; 
            CLKOP: out Std_logic; CLKOS: out Std_logic; CLKOS2: out Std_logic; 
            CLKOS3: out Std_logic; LOCK: out Std_logic; INTLOCK: out Std_logic; 
            REFCLK: out Std_logic; CLKINTFB: out Std_logic);
    end component;
  begin
    my_instance_1_PLLInst_0_EHXPLLL: EHXPLLLB
      port map (CLKI=>CLKI_ipd, CLKFB=>CLKFB_ipd, PHASESEL1=>GNDI, 
                PHASESEL0=>GNDI, PHASEDIR=>GNDI, PHASESTEP=>GNDI, 
                PHASELOADREG=>GNDI, STDBY=>STDBY_ipd, PLLWAKESYNC=>GNDI, 
                RST=>GNDI, ENCLKOP=>GNDI, ENCLKOS=>GNDI, ENCLKOS2=>GNDI, 
                ENCLKOS3=>GNDI, CLKOP=>CLKOP_out, CLKOS=>open, CLKOS2=>open, 
                CLKOS3=>open, LOCK=>open, INTLOCK=>open, REFCLK=>open, 
                CLKINTFB=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKI_ipd, CLKI, tipd_CLKI);
      VitalWireDelay(CLKFB_ipd, CLKFB, tipd_CLKFB);
      VitalWireDelay(STDBY_ipd, STDBY, tipd_STDBY);
    END BLOCK;

    VitalBehavior : PROCESS (CLKI_ipd, CLKFB_ipd, STDBY_ipd, CLKOP_out)
    VARIABLE CLKOP_zd         	: std_logic := 'X';
    VARIABLE CLKOP_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    CLKOP_zd 	:= CLKOP_out;

    VitalPathDelay01 (
      OutSignal => CLKOP, OutSignalName => "CLKOP", OutTemp => CLKOP_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOP,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOP,
                           PathCondition => TRUE)),
      GlitchData => CLKOP_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity EHXPLLL0004
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity EHXPLLL0004 is
    port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
          PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
          PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
          STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
          ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; ENCLKOS2: in Std_logic; 
          ENCLKOS3: in Std_logic; CLKOP: out Std_logic; CLKOS: out Std_logic; 
          CLKOS2: out Std_logic; CLKOS3: out Std_logic; LOCK: out Std_logic; 
          INTLOCK: out Std_logic; REFCLK: out Std_logic; 
          CLKINTFB: out Std_logic);



  end EHXPLLL0004;

  architecture Structure of EHXPLLL0004 is
  begin
    INST10: EHXPLLL
      generic map (CLKFB_DIV => 8, CLKI_DIV => 3, CLKOP_CPHASE => 8, 
                   CLKOP_DIV => 9, CLKOP_ENABLE => "ENABLED", 
                   CLKOP_FPHASE => 0, CLKOP_TRIM_DELAY => 0, 
                   CLKOP_TRIM_POL => "FALLING", CLKOS2_CPHASE => 0, 
                   CLKOS2_DIV => 1, CLKOS2_ENABLE => "DISABLED", 
                   CLKOS2_FPHASE => 0, CLKOS3_CPHASE => 0, CLKOS3_DIV => 1, 
                   CLKOS3_ENABLE => "DISABLED", CLKOS3_FPHASE => 0, 
                   CLKOS_CPHASE => 0, CLKOS_DIV => 1, 
                   CLKOS_ENABLE => "DISABLED", CLKOS_FPHASE => 0, 
                   CLKOS_TRIM_DELAY => 0, CLKOS_TRIM_POL => "FALLING", 
                   DPHASE_SOURCE => "DISABLED", FEEDBK_PATH => "CLKOP", 
                   INTFB_WAKE => "DISABLED", INT_LOCK_STICKY => "ENABLED", 
                   OUTDIVIDER_MUXA => "DIVA", OUTDIVIDER_MUXB => "DIVB", 
                   OUTDIVIDER_MUXC => "DIVC", OUTDIVIDER_MUXD => "DIVD", 
                   PLLRST_ENA => "ENABLED", PLL_LOCK_DELAY => 200, 
                   PLL_LOCK_MODE => 0, REFIN_RESET => "DISABLED", 
                   STDBY_ENABLE => "DISABLED", SYNC_ENABLE => "DISABLED")
      port map (CLKI=>CLKI, CLKFB=>CLKFB, PHASESEL1=>PHASESEL1, 
                PHASESEL0=>PHASESEL0, PHASEDIR=>PHASEDIR, PHASESTEP=>PHASESTEP, 
                PHASELOADREG=>PHASELOADREG, STDBY=>STDBY, 
                PLLWAKESYNC=>PLLWAKESYNC, RST=>RST, ENCLKOP=>ENCLKOP, 
                ENCLKOS=>ENCLKOS, ENCLKOS2=>ENCLKOS2, ENCLKOS3=>ENCLKOS3, 
                CLKOP=>CLKOP, CLKOS=>CLKOS, CLKOS2=>CLKOS2, CLKOS3=>CLKOS3, 
                LOCK=>LOCK, INTLOCK=>INTLOCK, REFCLK=>REFCLK, 
                CLKINTFB=>CLKINTFB);
  end Structure;

-- entity my_instance_2_PLLInst_0
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity my_instance_2_PLLInst_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "my_instance_2_PLLInst_0";

      tipd_CLKI  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKFB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_STDBY  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_RST  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
          RST: in Std_logic; LOCK: out Std_logic; CLKOP: out Std_logic);



  end my_instance_2_PLLInst_0;

  architecture Structure of my_instance_2_PLLInst_0 is
    signal CLKI_ipd 	: std_logic := 'X';
    signal CLKFB_ipd 	: std_logic := 'X';
    signal STDBY_ipd 	: std_logic := 'X';
    signal RST_ipd 	: std_logic := 'X';
    signal LOCK_out 	: std_logic := 'X';
    signal CLKOP_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EHXPLLL0004
      port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
            PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
            PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
            STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
            ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; 
            ENCLKOS2: in Std_logic; ENCLKOS3: in Std_logic; 
            CLKOP: out Std_logic; CLKOS: out Std_logic; CLKOS2: out Std_logic; 
            CLKOS3: out Std_logic; LOCK: out Std_logic; INTLOCK: out Std_logic; 
            REFCLK: out Std_logic; CLKINTFB: out Std_logic);
    end component;
  begin
    my_instance_2_PLLInst_0_EHXPLLL: EHXPLLL0004
      port map (CLKI=>CLKI_ipd, CLKFB=>CLKFB_ipd, PHASESEL1=>GNDI, 
                PHASESEL0=>GNDI, PHASEDIR=>GNDI, PHASESTEP=>GNDI, 
                PHASELOADREG=>GNDI, STDBY=>STDBY_ipd, PLLWAKESYNC=>GNDI, 
                RST=>RST_ipd, ENCLKOP=>GNDI, ENCLKOS=>GNDI, ENCLKOS2=>GNDI, 
                ENCLKOS3=>GNDI, CLKOP=>CLKOP_out, CLKOS=>open, CLKOS2=>open, 
                CLKOS3=>open, LOCK=>LOCK_out, INTLOCK=>open, REFCLK=>open, 
                CLKINTFB=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKI_ipd, CLKI, tipd_CLKI);
      VitalWireDelay(CLKFB_ipd, CLKFB, tipd_CLKFB);
      VitalWireDelay(STDBY_ipd, STDBY, tipd_STDBY);
      VitalWireDelay(RST_ipd, RST, tipd_RST);
    END BLOCK;

    VitalBehavior : PROCESS (CLKI_ipd, CLKFB_ipd, STDBY_ipd, RST_ipd, LOCK_out, 
      CLKOP_out)
    VARIABLE CLKOP_zd         	: std_logic := 'X';
    VARIABLE CLKOP_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    LOCK 	<= LOCK_out;
    CLKOP_zd 	:= CLKOP_out;

    VitalPathDelay01 (
      OutSignal => CLKOP, OutSignalName => "CLKOP", OutTemp => CLKOP_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOP,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOP,
                           PathCondition => TRUE)),
      GlitchData => CLKOP_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top_module
  library IEEE, vital2000, ECP5UM;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5UM.COMPONENTS.ALL;

  entity top_module is
    port (top_clk: in Std_logic; top_rst: in Std_logic; 
          serial_iq: out Std_logic; serial_clk: out Std_logic; 
          LED: out Std_logic; LED1: out Std_logic; LED2: out Std_logic; 
          LED3: out Std_logic; LED4: out Std_logic; LED5: out Std_logic; 
          LED6: out Std_logic; LED7: out Std_logic);



  end top_module;

  architecture Structure of top_module is
    signal waitcount_14: Std_logic;
    signal waitcount_13: Std_logic;
    signal counter_0_n121: Std_logic;
    signal counter_0_n122: Std_logic;
    signal counter_0_n1787: Std_logic;
    signal clockDivider_clk_4M: Std_logic;
    signal counter_0_n2340: Std_logic;
    signal counter_0_n2341: Std_logic;
    signal waitcount_12: Std_logic;
    signal waitcount_11: Std_logic;
    signal counter_0_n123: Std_logic;
    signal counter_0_n124: Std_logic;
    signal counter_0_n2339: Std_logic;
    signal waitcount_10: Std_logic;
    signal waitcount_9: Std_logic;
    signal counter_0_n125: Std_logic;
    signal counter_0_n126: Std_logic;
    signal counter_0_n2338: Std_logic;
    signal waitcount_8: Std_logic;
    signal waitcount_7: Std_logic;
    signal counter_0_n127: Std_logic;
    signal counter_0_n128: Std_logic;
    signal counter_0_n2337: Std_logic;
    signal waitcount_6: Std_logic;
    signal waitcount_5: Std_logic;
    signal counter_0_n129: Std_logic;
    signal counter_0_n130: Std_logic;
    signal counter_0_n2336: Std_logic;
    signal waitcount_4: Std_logic;
    signal waitcount_3: Std_logic;
    signal counter_0_n131: Std_logic;
    signal counter_0_n132: Std_logic;
    signal counter_0_n2335: Std_logic;
    signal waitcount_2: Std_logic;
    signal waitcount_1: Std_logic;
    signal counter_0_n133: Std_logic;
    signal counter_0_n134: Std_logic;
    signal counter_0_n2334: Std_logic;
    signal waitcount_0: Std_logic;
    signal counter_0_n135: Std_logic;
    signal waitcount_25: Std_logic;
    signal counter_0_n110: Std_logic;
    signal counter_0_n2346: Std_logic;
    signal waitcount_24: Std_logic;
    signal waitcount_23: Std_logic;
    signal counter_0_n111: Std_logic;
    signal counter_0_n112: Std_logic;
    signal counter_0_n2345: Std_logic;
    signal waitcount_22: Std_logic;
    signal waitcount_21: Std_logic;
    signal counter_0_n113: Std_logic;
    signal counter_0_n114: Std_logic;
    signal counter_0_n2344: Std_logic;
    signal waitcount_20: Std_logic;
    signal waitcount_19: Std_logic;
    signal counter_0_n115: Std_logic;
    signal counter_0_n116: Std_logic;
    signal counter_0_n2343: Std_logic;
    signal waitcount_18: Std_logic;
    signal waitcount_17: Std_logic;
    signal counter_0_n117: Std_logic;
    signal counter_0_n118: Std_logic;
    signal counter_0_n2342: Std_logic;
    signal waitcount_16: Std_logic;
    signal waitcount_15: Std_logic;
    signal counter_0_n119: Std_logic;
    signal counter_0_n120: Std_logic;
    signal theta_6: Std_logic;
    signal theta_5: Std_logic;
    signal theta_9_N_236_20: Std_logic;
    signal theta_9_N_236_19: Std_logic;
    signal n2327: Std_logic;
    signal n2328: Std_logic;
    signal theta_4: Std_logic;
    signal theta_3: Std_logic;
    signal theta_9_N_236_18: Std_logic;
    signal theta_9_N_236_17: Std_logic;
    signal n2326: Std_logic;
    signal phase_acc_4: Std_logic;
    signal phase_acc_3: Std_logic;
    signal theta_9_N_236_4: Std_logic;
    signal theta_9_N_236_3: Std_logic;
    signal n2319: Std_logic;
    signal n2320: Std_logic;
    signal cnt1_25: Std_logic;
    signal n110: Std_logic;
    signal serial_clk_c: Std_logic;
    signal n2359: Std_logic;
    signal theta_2: Std_logic;
    signal theta_1: Std_logic;
    signal theta_9_N_236_16: Std_logic;
    signal theta_9_N_236_15: Std_logic;
    signal n2325: Std_logic;
    signal n2: Std_logic;
    signal n3: Std_logic;
    signal n111: Std_logic;
    signal n112: Std_logic;
    signal n2358: Std_logic;
    signal n2317: Std_logic;
    signal n2318: Std_logic;
    signal n4: Std_logic;
    signal n5: Std_logic;
    signal n113: Std_logic;
    signal n114: Std_logic;
    signal n2357: Std_logic;
    signal theta_0: Std_logic;
    signal phase_acc_13: Std_logic;
    signal theta_9_N_236_14: Std_logic;
    signal theta_9_N_236_13: Std_logic;
    signal n2324: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n: Std_logic;
    signal qpskModule_1_dds0_co0: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_2_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_1_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_1: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_2: Std_logic;
    signal qpskModule_1_dds0_co1: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_4_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_3_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_3: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_4: Std_logic;
    signal qpskModule_1_dds0_co2: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_6_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_5_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_5: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_6: Std_logic;
    signal qpskModule_1_dds0_co3: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_7_inv: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_n_7: Std_logic;
    signal qpskModule_1_dds0_rom_dout_2_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_1_inv: Std_logic;
    signal qpskModule_1_dds0_co0_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_2: Std_logic;
    signal qpskModule_1_dds0_co1_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_4_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_3_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_3: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_4: Std_logic;
    signal qpskModule_1_dds0_co2_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_6_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_5_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_5: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_6: Std_logic;
    signal qpskModule_1_dds0_co3_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_8_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_7_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_7: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_8: Std_logic;
    signal qpskModule_1_dds0_co4: Std_logic;
    signal qpskModule_1_dds0_rom_dout_10_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_9_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_9: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_10: Std_logic;
    signal qpskModule_1_dds0_co5: Std_logic;
    signal qpskModule_1_dds0_rom_dout_11_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n_11: Std_logic;
    signal qpskModule_1_dds0_rom_dout_12_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n: Std_logic;
    signal qpskModule_1_dds0_co0_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_14_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_13_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_2: Std_logic;
    signal qpskModule_1_dds0_co1_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_16_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_15_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_3: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_4: Std_logic;
    signal qpskModule_1_dds0_co2_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_18_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_17_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_5: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_6: Std_logic;
    signal qpskModule_1_dds0_co3_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_20_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_19_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_7: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_8: Std_logic;
    signal qpskModule_1_dds0_co4_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_22_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_21_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_9: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_10: Std_logic;
    signal qpskModule_1_dds0_co5_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_23_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_c_n_11: Std_logic;
    signal qpskModule_1_dds0_rom_dout_inv: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_n: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_cin_lr: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_13: Std_logic;
    signal clockDivider_clk_4M_enable_84: Std_logic;
    signal qpskModule_1_Q_inst_mfco: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_13: Std_logic;
    signal qpskModule_1_rega_a_0: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_2: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_1: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_2: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_1: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_1: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_2: Std_logic;
    signal qpskModule_1_Q_inst_mco: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_4: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_3: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_4: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_3: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_3: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_4: Std_logic;
    signal qpskModule_1_Q_inst_mco_1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_6: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_5: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_6: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_5: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_5: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_6: Std_logic;
    signal qpskModule_1_Q_inst_mco_2: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_8: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_7: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_8: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_7: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_7: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_8: Std_logic;
    signal qpskModule_1_Q_inst_mco_3: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_10: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_9: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_10: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_9: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_9: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_10: Std_logic;
    signal qpskModule_1_Q_inst_mco_4: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n3: Std_logic;
    signal qpskModule_1_Q_inst_rega_a_1: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_11: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n0: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_12: Std_logic;
    signal qpskModule_1_Q_inst_p_L1_11: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_11: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_12: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_cin_lr: Std_logic;
    signal qpskModule_1_I_inst_p_L1_13: Std_logic;
    signal qpskModule_1_I_inst_mfco: Std_logic;
    signal qpskModule_1_I_inst_rego_o_13: Std_logic;
    signal qpskModule_1_I_inst_regb_b_2: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_1: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_2: Std_logic;
    signal qpskModule_1_I_inst_p_L1_1: Std_logic;
    signal qpskModule_1_I_inst_rego_o_1: Std_logic;
    signal qpskModule_1_I_inst_rego_o_2: Std_logic;
    signal qpskModule_1_I_inst_mco: Std_logic;
    signal qpskModule_1_I_inst_regb_b_4: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_3: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_4: Std_logic;
    signal qpskModule_1_I_inst_p_L1_3: Std_logic;
    signal qpskModule_1_I_inst_rego_o_3: Std_logic;
    signal qpskModule_1_I_inst_rego_o_4: Std_logic;
    signal qpskModule_1_I_inst_mco_1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_6: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_5: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_6: Std_logic;
    signal qpskModule_1_I_inst_p_L1_5: Std_logic;
    signal qpskModule_1_I_inst_rego_o_5: Std_logic;
    signal qpskModule_1_I_inst_rego_o_6: Std_logic;
    signal qpskModule_1_I_inst_mco_2: Std_logic;
    signal qpskModule_1_I_inst_regb_b_8: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_7: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_8: Std_logic;
    signal qpskModule_1_I_inst_p_L1_7: Std_logic;
    signal qpskModule_1_I_inst_rego_o_7: Std_logic;
    signal qpskModule_1_I_inst_rego_o_8: Std_logic;
    signal qpskModule_1_I_inst_mco_3: Std_logic;
    signal qpskModule_1_I_inst_regb_b_10: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_9: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_10: Std_logic;
    signal qpskModule_1_I_inst_p_L1_9: Std_logic;
    signal qpskModule_1_I_inst_rego_o_9: Std_logic;
    signal qpskModule_1_I_inst_rego_o_10: Std_logic;
    signal qpskModule_1_I_inst_mco_4: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n3: Std_logic;
    signal qpskModule_1_I_inst_rega_a_1: Std_logic;
    signal qpskModule_1_I_inst_regb_b_11: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n0: Std_logic;
    signal qpskModule_1_I_inst_p_L1_12: Std_logic;
    signal qpskModule_1_I_inst_p_L1_11: Std_logic;
    signal qpskModule_1_I_inst_rego_o_11: Std_logic;
    signal qpskModule_1_I_inst_rego_o_12: Std_logic;
    signal n2309: Std_logic;
    signal n2310: Std_logic;
    signal phase_acc_10: Std_logic;
    signal phase_acc_9: Std_logic;
    signal theta_9_N_236_10: Std_logic;
    signal theta_9_N_236_9: Std_logic;
    signal n2322: Std_logic;
    signal n2323: Std_logic;
    signal n2316: Std_logic;
    signal n6: Std_logic;
    signal n7: Std_logic;
    signal n115: Std_logic;
    signal n116: Std_logic;
    signal n2356: Std_logic;
    signal phase_acc_12: Std_logic;
    signal phase_acc_11: Std_logic;
    signal theta_9_N_236_12: Std_logic;
    signal theta_9_N_236_11: Std_logic;
    signal n2308: Std_logic;
    signal n8: Std_logic;
    signal n9: Std_logic;
    signal n117: Std_logic;
    signal n118: Std_logic;
    signal n2355: Std_logic;
    signal n2373: Std_logic;
    signal cout: Std_logic;
    signal n2372: Std_logic;
    signal n10: Std_logic;
    signal n11: Std_logic;
    signal n119: Std_logic;
    signal n120: Std_logic;
    signal n2354: Std_logic;
    signal n2315: Std_logic;
    signal phase_acc_2: Std_logic;
    signal theta_9_N_236_2: Std_logic;
    signal n2307: Std_logic;
    signal n12: Std_logic;
    signal n13: Std_logic;
    signal n121: Std_logic;
    signal n122: Std_logic;
    signal n2353: Std_logic;
    signal n14: Std_logic;
    signal n15: Std_logic;
    signal n123: Std_logic;
    signal n124: Std_logic;
    signal n2352: Std_logic;
    signal n16: Std_logic;
    signal n17: Std_logic;
    signal n125: Std_logic;
    signal n126: Std_logic;
    signal n2351: Std_logic;
    signal n2314: Std_logic;
    signal n18: Std_logic;
    signal n19: Std_logic;
    signal n127: Std_logic;
    signal n128: Std_logic;
    signal n2350: Std_logic;
    signal n2306: Std_logic;
    signal cout_adj_368: Std_logic;
    signal n20: Std_logic;
    signal n21: Std_logic;
    signal n129: Std_logic;
    signal n130: Std_logic;
    signal n2349: Std_logic;
    signal n22: Std_logic;
    signal n23: Std_logic;
    signal n131: Std_logic;
    signal n132: Std_logic;
    signal n2348: Std_logic;
    signal n24: Std_logic;
    signal n25: Std_logic;
    signal n133: Std_logic;
    signal n134: Std_logic;
    signal n2347: Std_logic;
    signal n2371: Std_logic;
    signal n2370: Std_logic;
    signal n26: Std_logic;
    signal n135: Std_logic;
    signal n2369: Std_logic;
    signal n2368: Std_logic;
    signal n2367: Std_logic;
    signal n2366: Std_logic;
    signal n2365: Std_logic;
    signal n2313: Std_logic;
    signal n2312: Std_logic;
    signal n2364: Std_logic;
    signal phase_acc_6: Std_logic;
    signal phase_acc_5: Std_logic;
    signal theta_9_N_236_6: Std_logic;
    signal theta_9_N_236_5: Std_logic;
    signal n2321: Std_logic;
    signal n2311: Std_logic;
    signal theta_9: Std_logic;
    signal theta_9_N_236_23: Std_logic;
    signal n2329: Std_logic;
    signal phase_acc_8: Std_logic;
    signal phase_acc_7: Std_logic;
    signal theta_9_N_236_8: Std_logic;
    signal theta_9_N_236_7: Std_logic;
    signal theta_8: Std_logic;
    signal theta_7: Std_logic;
    signal theta_9_N_236_22: Std_logic;
    signal theta_9_N_236_21: Std_logic;
    signal clockDivider_0_n8: Std_logic;
    signal clockDivider_0_n45: Std_logic;
    signal LED7_c: Std_logic;
    signal clockDivider_0_n2360: Std_logic;
    signal clockDivider_0_counter_7: Std_logic;
    signal clockDivider_0_n38_adj_359: Std_logic;
    signal clockDivider_0_n378: Std_logic;
    signal clockDivider_0_n2333: Std_logic;
    signal clockDivider_0_counter_6: Std_logic;
    signal clockDivider_0_counter_5: Std_logic;
    signal clockDivider_0_n39_adj_361: Std_logic;
    signal clockDivider_0_n40_adj_360: Std_logic;
    signal clockDivider_0_n2332: Std_logic;
    signal clockDivider_0_counter_4: Std_logic;
    signal clockDivider_0_counter_3: Std_logic;
    signal clockDivider_0_n41_adj_363: Std_logic;
    signal clockDivider_0_n42_adj_362: Std_logic;
    signal clockDivider_0_n2331: Std_logic;
    signal clockDivider_0_counter_2: Std_logic;
    signal clockDivider_0_counter_1: Std_logic;
    signal clockDivider_0_n43_adj_364: Std_logic;
    signal clockDivider_0_n44_adj_365: Std_logic;
    signal clockDivider_0_n2330: Std_logic;
    signal clockDivider_0_counter_0: Std_logic;
    signal clockDivider_0_n45_adj_358: Std_logic;
    signal clockDivider_0_lockCounter_7: Std_logic;
    signal clockDivider_0_n38: Std_logic;
    signal clockDivider_0_n2363: Std_logic;
    signal clockDivider_0_n2: Std_logic;
    signal clockDivider_0_n3: Std_logic;
    signal clockDivider_0_n39: Std_logic;
    signal clockDivider_0_n40: Std_logic;
    signal clockDivider_0_n2362: Std_logic;
    signal clockDivider_0_n4: Std_logic;
    signal clockDivider_0_n5: Std_logic;
    signal clockDivider_0_n41: Std_logic;
    signal clockDivider_0_n42: Std_logic;
    signal clockDivider_0_n2361: Std_logic;
    signal clockDivider_0_n6: Std_logic;
    signal clockDivider_0_n7: Std_logic;
    signal clockDivider_0_n43: Std_logic;
    signal clockDivider_0_n44: Std_logic;
    signal ICounter_1: Std_logic;
    signal ICounter_2: Std_logic;
    signal n2398: Std_logic;
    signal IQSerializer_1_n5: Std_logic;
    signal IQSerializer_1_n1789: Std_logic;
    signal ICounter_3: Std_logic;
    signal IQSerializer_1_n2817: Std_logic;
    signal IQSerializer_1_n2822: Std_logic;
    signal IQSerializer_1_next_state_3_N_316: Std_logic;
    signal IQSerializer_1_n2744: Std_logic;
    signal IQSerializer_1_next_state_3_N_318: Std_logic;
    signal IQSerializer_1_DEDFF_0_pose_edge: Std_logic;
    signal IQSerializer_1_DEDFF_0_Q2: Std_logic;
    signal IQSerializer_start: Std_logic;
    signal IQSerializer_1_DEDFF_0_neg_edge: Std_logic;
    signal IQSerializer_1_next_state_3_N_319: Std_logic;
    signal DEDFF_D0_N_333: Std_logic;
    signal IQSerializer_1_n1: Std_logic;
    signal IQSerializer_1_n2: Std_logic;
    signal IQSerializer_1_DEDFF_0_Q1: Std_logic;
    signal QCounter_1: Std_logic;
    signal QCounter_2: Std_logic;
    signal IQSerializer_1_QCounter_3: Std_logic;
    signal IQSerializer_1_n2823: Std_logic;
    signal IQSerializer_1_n1788: Std_logic;
    signal n626: Std_logic;
    signal IQSerializer_1_n2564: Std_logic;
    signal IQSerializer_1_n1698: Std_logic;
    signal IQSerializer_1_n347: Std_logic;
    signal IQSerializer_1_n2562: Std_logic;
    signal IQSerializer_1_next_state_3_N_320: Std_logic;
    signal IQSerializer_1_next_state_3_N_321: Std_logic;
    signal IQSerializer_1_n1700: Std_logic;
    signal IQSerializer_1_n351: Std_logic;
    signal qpskModule_1_I_inst_rego_o_0: Std_logic;
    signal IQSerializer_I_0: Std_logic;
    signal IQSerializer_I_1: Std_logic;
    signal IQSerializer_I_2: Std_logic;
    signal IQSerializer_I_3: Std_logic;
    signal IQSerializer_I_4: Std_logic;
    signal IQSerializer_I_5: Std_logic;
    signal IQSerializer_I_6: Std_logic;
    signal IQSerializer_I_7: Std_logic;
    signal IQSerializer_I_8: Std_logic;
    signal IQSerializer_I_9: Std_logic;
    signal IQSerializer_I_10: Std_logic;
    signal IQSerializer_I_11: Std_logic;
    signal IQSerializer_I_12: Std_logic;
    signal IQSerializer_I_13: Std_logic;
    signal qpskModule_1_Q_inst_rego_o_0: Std_logic;
    signal IQSerializer_Q_0: Std_logic;
    signal IQSerializer_Q_1: Std_logic;
    signal IQSerializer_Q_2: Std_logic;
    signal IQSerializer_Q_3: Std_logic;
    signal IQSerializer_Q_4: Std_logic;
    signal IQSerializer_Q_5: Std_logic;
    signal IQSerializer_Q_6: Std_logic;
    signal IQSerializer_Q_7: Std_logic;
    signal IQSerializer_Q_8: Std_logic;
    signal IQSerializer_Q_9: Std_logic;
    signal IQSerializer_Q_10: Std_logic;
    signal IQSerializer_Q_11: Std_logic;
    signal IQSerializer_Q_12: Std_logic;
    signal IQSerializer_Q_13: Std_logic;
    signal VCC_net_002_BUF1: Std_logic;
    signal qpskModule_1_iq_div_inst_I_bit_temp: Std_logic;
    signal qpskModule_1_clk_N_175_enable_5: Std_logic;
    signal qpskModule_1_I_1_N_182: Std_logic;
    signal I_bit: Std_logic;
    signal LED_c: Std_logic;
    signal n2402: Std_logic;
    signal IQSerializer_1_n2821: Std_logic;
    signal qpskModule_1_iq_div_inst_Q_bit_temp: Std_logic;
    signal Q_bit: Std_logic;
    signal VCC_net_000_BUF1: Std_logic;
    signal clockDivider_clkLock: Std_logic;
    signal clockDivider_0_n1725: Std_logic;
    signal clockDivider_0_clkOut_N_64: Std_logic;
    signal clockDivider_0_n2550: Std_logic;
    signal VCC_net_003_BUF1: Std_logic;
    signal counter_0_countDone: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_3: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_0: Std_logic;
    signal qpskModule_1_iq_div_inst_n2814: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_1: Std_logic;
    signal qpskModule_1_iq_div_inst_n12: Std_logic;
    signal qpskModule_1_iq_div_inst_symDone_N_219: Std_logic;
    signal fskModule_symDone: Std_logic;
    signal packetGen_1_next_symVal: Std_logic;
    signal packetGen_1_next_symVal_N_172: Std_logic;
    signal fskModule_symVal: Std_logic;
    signal symCounter_3: Std_logic;
    signal symCounter_5: Std_logic;
    signal packetGen_1_n2528: Std_logic;
    signal next_state_3_N_153: Std_logic;
    signal next_state_3_N_154: Std_logic;
    signal packetGen_1_n1690: Std_logic;
    signal packetGen_1_next_state_3_N_155: Std_logic;
    signal packetGen_1_n13: Std_logic;
    signal next_state_3_N_156: Std_logic;
    signal symCounter_6: Std_logic;
    signal symCounter_0: Std_logic;
    signal packetGen_1_n2576: Std_logic;
    signal packetGen_1_n15: Std_logic;
    signal packetGen_1_n2497: Std_logic;
    signal I_1: Std_logic;
    signal qpskModule_1_carry_cos_s_1: Std_logic;
    signal qpskModule_1_carry_cos_s_0: Std_logic;
    signal qpskModule_1_I_inst_regb_b_0: Std_logic;
    signal qpskModule_1_carry_cos_s_3: Std_logic;
    signal qpskModule_1_carry_cos_s_2: Std_logic;
    signal qpskModule_1_carry_cos_s_5: Std_logic;
    signal qpskModule_1_carry_cos_s_4: Std_logic;
    signal qpskModule_1_carry_cos_s_7: Std_logic;
    signal qpskModule_1_carry_cos_s_6: Std_logic;
    signal qpskModule_1_carry_cos_s_9: Std_logic;
    signal qpskModule_1_carry_cos_s_8: Std_logic;
    signal qpskModule_1_carry_cos_s_11: Std_logic;
    signal qpskModule_1_carry_cos_s_10: Std_logic;
    signal qpskModule_1_I_inst_multiplier_12_2_m_0_pp_0_0: Std_logic;
    signal Q_1: Std_logic;
    signal qpskModule_1_carry_sin_s_1: Std_logic;
    signal qpskModule_1_carry_sin_s_0: Std_logic;
    signal qpskModule_1_Q_inst_regb_b_0: Std_logic;
    signal qpskModule_1_carry_sin_s_3: Std_logic;
    signal qpskModule_1_carry_sin_s_2: Std_logic;
    signal qpskModule_1_carry_sin_s_5: Std_logic;
    signal qpskModule_1_carry_sin_s_4: Std_logic;
    signal qpskModule_1_carry_sin_s_7: Std_logic;
    signal qpskModule_1_carry_sin_s_6: Std_logic;
    signal qpskModule_1_carry_sin_s_9: Std_logic;
    signal qpskModule_1_carry_sin_s_8: Std_logic;
    signal qpskModule_1_carry_sin_s_11: Std_logic;
    signal qpskModule_1_carry_sin_s_10: Std_logic;
    signal qpskModule_1_Q_inst_multiplier_12_2_m_0_pp_0_0: Std_logic;
    signal qpskModule_1_dds0_out_sel: Std_logic;
    signal qpskModule_1_dds0_cosromoutsel: Std_logic;
    signal qpskModule_1_dds0_rom_dout_13: Std_logic;
    signal qpskModule_1_dds0_rom_dout_12: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_1: Std_logic;
    signal qpskModule_1_dds0_cosout_pre: Std_logic;
    signal qpskModule_1_dds0_rom_dout_15: Std_logic;
    signal qpskModule_1_dds0_rom_dout_14: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_3: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_17: Std_logic;
    signal qpskModule_1_dds0_rom_dout_16: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_5: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_4: Std_logic;
    signal qpskModule_1_dds0_rom_dout_19: Std_logic;
    signal qpskModule_1_dds0_rom_dout_18: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_7: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_6: Std_logic;
    signal qpskModule_1_dds0_rom_dout_21: Std_logic;
    signal qpskModule_1_dds0_rom_dout_20: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_9: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_8: Std_logic;
    signal qpskModule_1_dds0_rom_dout_23: Std_logic;
    signal qpskModule_1_dds0_rom_dout_22: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_11: Std_logic;
    signal qpskModule_1_dds0_cosout_pre_10: Std_logic;
    signal qpskModule_1_dds0_sinromoutsel: Std_logic;
    signal qpskModule_1_dds0_rom_dout_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_1: Std_logic;
    signal qpskModule_1_dds0_sinout_pre: Std_logic;
    signal qpskModule_1_dds0_rom_dout_3: Std_logic;
    signal qpskModule_1_dds0_rom_dout_2: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_3: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_2: Std_logic;
    signal qpskModule_1_dds0_rom_dout_5: Std_logic;
    signal qpskModule_1_dds0_rom_dout_4: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_5: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_4: Std_logic;
    signal qpskModule_1_dds0_rom_dout_7: Std_logic;
    signal qpskModule_1_dds0_rom_dout_6: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_7: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_6: Std_logic;
    signal qpskModule_1_dds0_rom_dout_9: Std_logic;
    signal qpskModule_1_dds0_rom_dout_8: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_9: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_8: Std_logic;
    signal qpskModule_1_dds0_mx_ctrl_r_1: Std_logic;
    signal qpskModule_1_dds0_rom_dout_s_11: Std_logic;
    signal qpskModule_1_dds0_rom_dout_10: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_11: Std_logic;
    signal qpskModule_1_dds0_sinout_pre_10: Std_logic;
    signal qpskModule_1_dds0_mx_ctrl_r: Std_logic;
    signal qpskModule_1_dds0_cosromoutsel_i: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_12: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_13: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_14: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_15: Std_logic;
    signal qpskModule_1_dds0_func_or_inet: Std_logic;
    signal qpskModule_1_dds0_func_or_inet_1: Std_logic;
    signal qpskModule_1_dds0_out_sel_i: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_1: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_2: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_3: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_4: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_5: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_6: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_11: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_10: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_9: Std_logic;
    signal qpskModule_1_dds0_rom_dout_ffin: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_8: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_1_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_2_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_3_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_4_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_5_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_6_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_7_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_8_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_9_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_10_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_11_ffin: Std_logic;
    signal GND_net: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_23_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_11: Std_logic;
    signal qpskModule_1_dds0_rom_dout_12_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_13_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_14_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_15_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_16_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_17_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_18_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_19_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_20_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_21_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_22_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_10_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_10_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_10_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_rom_dout_23_ffin: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_11_0_f5a: Std_logic;
    signal qpskModule_1_iq_div_inst_I_bit_temp2: Std_logic;
    signal qpskModule_1_iq_div_inst_clk_N_175_enable_3: Std_logic;
    signal qpskModule_1_iq_div_inst_n2811: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_1: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_0: Std_logic;
    signal qpskModule_1_iq_div_inst_n2820: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_2: Std_logic;
    signal qpskModule_1_iq_div_inst_n6: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_3: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_2: Std_logic;
    signal qpskModule_1_iq_div_inst_n8: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_5: Std_logic;
    signal qpskModule_1_iq_div_inst_n2819: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_4: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_5: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_4: Std_logic;
    signal qpskModule_1_iq_div_inst_n12_adj_367: Std_logic;
    signal qpskModule_1_iq_div_inst_n11: Std_logic;
    signal qpskModule_1_iq_div_inst_n10: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_6: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_7: Std_logic;
    signal qpskModule_1_iq_div_inst_cnt_sample_7_N_199_6: Std_logic;
    signal VCC_net_001_BUF1: Std_logic;
    signal qpskModule_1_switch: Std_logic;
    signal qpskModule_1_iq_div_inst_iq_switch_N_216: Std_logic;
    signal symCounter_1: Std_logic;
    signal packetGen_1_n76: Std_logic;
    signal packetGen_1_n77: Std_logic;
    signal clockDivider_clk_4M_enable_92: Std_logic;
    signal packetGen_1_n2815: Std_logic;
    signal symCounter_2: Std_logic;
    signal packetGen_1_n74: Std_logic;
    signal packetGen_1_n75: Std_logic;
    signal packetGen_1_n2586: Std_logic;
    signal packetGen_1_n2812: Std_logic;
    signal packetGen_1_n2813: Std_logic;
    signal symCounter_4: Std_logic;
    signal packetGen_1_n72: Std_logic;
    signal packetGen_1_n73: Std_logic;
    signal packetGen_1_n2602: Std_logic;
    signal packetGen_1_n2604: Std_logic;
    signal symCounter_7: Std_logic;
    signal packetGen_1_n2594: Std_logic;
    signal packetGen_1_n70: Std_logic;
    signal packetGen_1_n71: Std_logic;
    signal n2841: Std_logic;
    signal n2838: Std_logic;
    signal IQSerializer_1_n2871: Std_logic;
    signal IQSerializer_1_n2868: Std_logic;
    signal IQSerializer_1_DEDFF_D0_N_338: Std_logic;
    signal IQSerializer_1_n10: Std_logic;
    signal IQSerializer_1_n2741: Std_logic;
    signal IQSerializer_1_n2738: Std_logic;
    signal IQSerializer_1_DEDFF_D1_N_349: Std_logic;
    signal IQSerializer_1_n2834: Std_logic;
    signal IQSerializer_1_n2831: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_22_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_21_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_20_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_19_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_18_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_17_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_16_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_15_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_14_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_13_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_12_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_10_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_10_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_9_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_8_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_7_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_6_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_5_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_4_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_3_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_2_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_1_1_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_0_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_1_f5b: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_1_0_f5a: Std_logic;
    signal qpskModule_1_dds0_triglut_1_0_0_1_1_1_f5b: Std_logic;
    signal addr_7_I_0_0_0_0_f5a: Std_logic;
    signal addr_7_I_0_0_0_1_f5b: Std_logic;
    signal addr_7_I_0_0_0_f5a: Std_logic;
    signal addr_7_I_0_0_1_f5b: Std_logic;
    signal addr_7_I_0_0_1_0_f5a: Std_logic;
    signal addr_7_I_0_0_f5a: Std_logic;
    signal addr_7_I_0_0_1_1_f5b: Std_logic;
    signal addr_7_I_0_1_f5b: Std_logic;
    signal addr_7_I_0_1_0_0_f5a: Std_logic;
    signal data: Std_logic;
    signal addr_7_I_0_1_0_1_f5b: Std_logic;
    signal addr_7_I_0_1_0_f5a: Std_logic;
    signal addr_7_I_0_1_1_f5b: Std_logic;
    signal addr_7_I_0_1_1_0_f5a: Std_logic;
    signal addr_7_I_0_1_1_1_f5b: Std_logic;
    signal n2692: Std_logic;
    signal IQSerializer_1_n3: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r: Std_logic;
    signal clockDivider_0_n2612: Std_logic;
    signal clockDivider_0_n2552: Std_logic;
    signal qpskModule_1_dds0_rom_addr0_r_7: Std_logic;
    signal serial_iq_c: Std_logic;
    signal LED4_c_c: Std_logic;
    signal top_rst_N_28: Std_logic;
    signal top_clk_c: Std_logic;
    signal pll_clko_1: Std_logic;
    signal VCCI: Std_logic;
    component top_rstB
      port (PADDI: out Std_logic; toprst: in Std_logic);
    end component;
    component top_clkB
      port (PADDI: out Std_logic; topclk: in Std_logic);
    end component;
    component LED7B
      port (PADDO: in Std_logic; LED7S: out Std_logic);
    end component;
    component LED6B
      port (LED6S: out Std_logic);
    end component;
    component LED5B
      port (LED5S: out Std_logic);
    end component;
    component LED4B
      port (PADDO: in Std_logic; LED4S: out Std_logic);
    end component;
    component LED3B
      port (LED3S: out Std_logic);
    end component;
    component serial_clkB
      port (PADDO: in Std_logic; serialclk: out Std_logic);
    end component;
    component LED2B
      port (LED2S: out Std_logic);
    end component;
    component LED1B
      port (LED1S: out Std_logic);
    end component;
    component serial_iqB
      port (PADDO: in Std_logic; serialiq: out Std_logic);
    end component;
    component LEDB
      port (PADDO: in Std_logic; LEDS: out Std_logic);
    end component;
    component my_instance_1_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            CLKOP: out Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
    component my_instance_2_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            RST: in Std_logic; LOCK: out Std_logic; CLKOP: out Std_logic);
    end component;
  begin
    counter_0_SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n121, DI0=>counter_0_n122, A0=>waitcount_13, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2340, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2341, F1=>counter_0_n121, Q1=>waitcount_14, 
                F0=>counter_0_n122, Q0=>waitcount_13);
    counter_0_SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n123, DI0=>counter_0_n124, A0=>waitcount_11, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2339, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2340, F1=>counter_0_n123, Q1=>waitcount_12, 
                F0=>counter_0_n124, Q0=>waitcount_11);
    counter_0_SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n125, DI0=>counter_0_n126, A0=>waitcount_9, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2338, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2339, F1=>counter_0_n125, Q1=>waitcount_10, 
                F0=>counter_0_n126, Q0=>waitcount_9);
    counter_0_SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n127, DI0=>counter_0_n128, A0=>waitcount_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2337, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2338, F1=>counter_0_n127, Q1=>waitcount_8, 
                F0=>counter_0_n128, Q0=>waitcount_7);
    counter_0_SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n129, DI0=>counter_0_n130, A0=>waitcount_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2336, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2337, F1=>counter_0_n129, Q1=>waitcount_6, 
                F0=>counter_0_n130, Q0=>waitcount_5);
    counter_0_SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n131, DI0=>counter_0_n132, A0=>waitcount_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2335, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2336, F1=>counter_0_n131, Q1=>waitcount_4, 
                F0=>counter_0_n132, Q0=>waitcount_3);
    counter_0_SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n133, DI0=>counter_0_n134, A0=>waitcount_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2334, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2335, F1=>counter_0_n133, Q1=>waitcount_2, 
                F0=>counter_0_n134, Q0=>waitcount_1);
    counter_0_SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n135, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_n1787, FCO=>counter_0_n2334, F1=>counter_0_n135, 
                Q1=>waitcount_0, F0=>open, Q0=>open);
    counter_0_SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>counter_0_n110, A0=>waitcount_25, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>counter_0_n2346, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, FCO=>open, 
                F1=>open, Q1=>open, F0=>counter_0_n110, Q0=>waitcount_25);
    counter_0_SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_24, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n111, DI0=>counter_0_n112, A0=>waitcount_23, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2345, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2346, F1=>counter_0_n111, Q1=>waitcount_24, 
                F0=>counter_0_n112, Q0=>waitcount_23);
    counter_0_SLICE_10I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_22, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n113, DI0=>counter_0_n114, A0=>waitcount_21, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2344, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2345, F1=>counter_0_n113, Q1=>waitcount_22, 
                F0=>counter_0_n114, Q0=>waitcount_21);
    counter_0_SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_20, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n115, DI0=>counter_0_n116, A0=>waitcount_19, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2343, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2344, F1=>counter_0_n115, Q1=>waitcount_20, 
                F0=>counter_0_n116, Q0=>waitcount_19);
    counter_0_SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_18, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n117, DI0=>counter_0_n118, A0=>waitcount_17, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2342, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2343, F1=>counter_0_n117, Q1=>waitcount_18, 
                F0=>counter_0_n118, Q0=>waitcount_17);
    counter_0_SLICE_13I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>waitcount_16, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_0_n119, DI0=>counter_0_n120, A0=>waitcount_15, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>counter_0_n2341, M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_n1787, 
                FCO=>counter_0_n2342, F1=>counter_0_n119, Q1=>waitcount_16, 
                F0=>counter_0_n120, Q0=>waitcount_15);
    SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>theta_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_20, DI0=>theta_9_N_236_19, A0=>theta_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2327, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2328, 
                F1=>theta_9_N_236_20, Q1=>theta_6, F0=>theta_9_N_236_19, 
                Q0=>theta_5);
    SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>theta_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_18, DI0=>theta_9_N_236_17, A0=>theta_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2326, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2327, 
                F1=>theta_9_N_236_18, Q1=>theta_4, F0=>theta_9_N_236_17, 
                Q0=>theta_3);
    SLICE_16I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>phase_acc_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_4, DI0=>theta_9_N_236_3, A0=>phase_acc_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2319, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2320, 
                F1=>theta_9_N_236_4, Q1=>phase_acc_4, F0=>theta_9_N_236_3, 
                Q0=>phase_acc_3);
    SLICE_17I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>n110, A0=>cnt1_25, B0=>'X', C0=>'X', D0=>'1', FCI=>n2359, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>open, 
                F1=>open, Q1=>open, F0=>n110, Q0=>cnt1_25);
    SLICE_18I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>theta_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_16, DI0=>theta_9_N_236_15, A0=>theta_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2325, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2326, 
                F1=>theta_9_N_236_16, Q1=>theta_2, F0=>theta_9_N_236_15, 
                Q0=>theta_1);
    SLICE_19I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n2, B1=>'X', C1=>'X', D1=>'1', DI1=>n111, 
                DI0=>n112, A0=>n3, B0=>'X', C0=>'X', D0=>'1', FCI=>n2358, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2359, 
                F1=>n111, Q1=>n2, F0=>n112, Q0=>n3);
    SLICE_20I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_24, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_23, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2317, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2318, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_21I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n4, B1=>'X', C1=>'X', D1=>'1', DI1=>n113, 
                DI0=>n114, A0=>n5, B0=>'X', C0=>'X', D0=>'1', FCI=>n2357, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2358, 
                F1=>n113, Q1=>n4, F0=>n114, Q0=>n5);
    SLICE_22I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>theta_0, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_14, DI0=>theta_9_N_236_13, A0=>phase_acc_13, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2324, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2325, 
                F1=>theta_9_N_236_14, Q1=>theta_0, F0=>theta_9_N_236_13, 
                Q0=>phase_acc_13);
    qpskModule_1_dds0_SLICE_23I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"66AA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_addr0_r_inv, B1=>'1', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'1', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>qpskModule_1_dds0_co0, 
                F1=>qpskModule_1_dds0_rom_addr0_r_n, Q1=>open, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_24I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_addr0_r_2_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_1_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co1, 
                F1=>qpskModule_1_dds0_rom_addr0_r_n_2, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_n_1, Q0=>open);
    qpskModule_1_dds0_SLICE_25I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_addr0_r_4_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_3_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co2, 
                F1=>qpskModule_1_dds0_rom_addr0_r_n_4, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_n_3, Q0=>open);
    qpskModule_1_dds0_SLICE_26I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_addr0_r_6_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_5_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co3, 
                F1=>qpskModule_1_dds0_rom_addr0_r_n_6, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_n_5, Q0=>open);
    qpskModule_1_dds0_SLICE_27I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_7_inv, B0=>'X', 
                C0=>'1', D0=>'1', FCI=>qpskModule_1_dds0_co3, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_n_7, Q0=>open);
    qpskModule_1_dds0_SLICE_28I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_2_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_1_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co0_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co1_1, 
                F1=>qpskModule_1_dds0_rom_dout_s_n_2, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_1, Q0=>open);
    qpskModule_1_dds0_SLICE_29I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_4_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_3_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co1_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co2_1, 
                F1=>qpskModule_1_dds0_rom_dout_s_n_4, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_3, Q0=>open);
    qpskModule_1_dds0_SLICE_30I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_6_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_5_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co2_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co3_1, 
                F1=>qpskModule_1_dds0_rom_dout_s_n_6, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_5, Q0=>open);
    qpskModule_1_dds0_SLICE_31I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_8_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_7_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co3_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co4, 
                F1=>qpskModule_1_dds0_rom_dout_s_n_8, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_7, Q0=>open);
    qpskModule_1_dds0_SLICE_32I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_10_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_9_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co5, 
                F1=>qpskModule_1_dds0_rom_dout_s_n_10, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_9, Q0=>open);
    qpskModule_1_dds0_SLICE_33I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_11_inv, B0=>'X', 
                C0=>'1', D0=>'1', FCI=>qpskModule_1_dds0_co5, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_n_11, Q0=>open);
    qpskModule_1_dds0_SLICE_34I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"66AA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_12_inv, B1=>'1', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'1', D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>qpskModule_1_dds0_co0_2, 
                F1=>qpskModule_1_dds0_rom_dout_c_n, Q1=>open, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_35I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_14_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_13_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co0_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co1_2, 
                F1=>qpskModule_1_dds0_rom_dout_c_n_2, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_1, Q0=>open);
    qpskModule_1_dds0_SLICE_36I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_16_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_15_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co1_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co2_2, 
                F1=>qpskModule_1_dds0_rom_dout_c_n_4, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_3, Q0=>open);
    qpskModule_1_dds0_SLICE_37I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_18_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_17_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co2_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co3_2, 
                F1=>qpskModule_1_dds0_rom_dout_c_n_6, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_5, Q0=>open);
    qpskModule_1_dds0_SLICE_38I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_20_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_19_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co3_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co4_1, 
                F1=>qpskModule_1_dds0_rom_dout_c_n_8, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_7, Q0=>open);
    qpskModule_1_dds0_SLICE_39I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"AAAA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_22_inv, B1=>'X', 
                C1=>'1', D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_dout_21_inv, B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_dds0_co4_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>qpskModule_1_dds0_co5_1, 
                F1=>qpskModule_1_dds0_rom_dout_c_n_10, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_9, Q0=>open);
    qpskModule_1_dds0_SLICE_40I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_23_inv, B0=>'X', 
                C0=>'1', D0=>'1', FCI=>qpskModule_1_dds0_co5_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>qpskModule_1_dds0_rom_dout_c_n_11, Q0=>open);
    qpskModule_1_dds0_SLICE_41I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"66AA")
      port map (M1=>'X', A1=>qpskModule_1_dds0_rom_dout_inv, B1=>'1', C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'1', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>qpskModule_1_dds0_co0_1, 
                F1=>qpskModule_1_dds0_rom_dout_s_n, Q1=>open, F0=>open, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_42I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"66AA", INIT1_INITVAL=>X"66AA")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_multiplier_12_2_m_0_cin_lr, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    qpskModule_1_Q_inst_SLICE_43I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>qpskModule_1_Q_inst_p_L1_13, A0=>'1', B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_Q_inst_mfco, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>qpskModule_1_Q_inst_p_L1_13, 
                Q0=>qpskModule_1_Q_inst_rego_o_13);
    qpskModule_1_Q_inst_SLICE_44I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n1, 
                B1=>'1', C1=>qpskModule_1_Q_inst_regb_b_2, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_Q_inst_p_L1_2, 
                DI0=>qpskModule_1_Q_inst_p_L1_1, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_1, 
                D0=>qpskModule_1_rega_a_0, 
                FCI=>qpskModule_1_Q_inst_multiplier_12_2_m_0_cin_lr, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>qpskModule_1_Q_inst_mco, 
                F1=>qpskModule_1_Q_inst_p_L1_2, 
                Q1=>qpskModule_1_Q_inst_rego_o_2, 
                F0=>qpskModule_1_Q_inst_p_L1_1, 
                Q0=>qpskModule_1_Q_inst_rego_o_1);
    qpskModule_1_Q_inst_SLICE_45I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n1, 
                B1=>'1', C1=>qpskModule_1_Q_inst_regb_b_4, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_Q_inst_p_L1_4, 
                DI0=>qpskModule_1_Q_inst_p_L1_3, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_3, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_Q_inst_mco, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_mco_1, F1=>qpskModule_1_Q_inst_p_L1_4, 
                Q1=>qpskModule_1_Q_inst_rego_o_4, 
                F0=>qpskModule_1_Q_inst_p_L1_3, 
                Q0=>qpskModule_1_Q_inst_rego_o_3);
    qpskModule_1_Q_inst_SLICE_46I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n1, 
                B1=>'1', C1=>qpskModule_1_Q_inst_regb_b_6, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_Q_inst_p_L1_6, 
                DI0=>qpskModule_1_Q_inst_p_L1_5, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_5, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_Q_inst_mco_1, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_mco_2, F1=>qpskModule_1_Q_inst_p_L1_6, 
                Q1=>qpskModule_1_Q_inst_rego_o_6, 
                F0=>qpskModule_1_Q_inst_p_L1_5, 
                Q0=>qpskModule_1_Q_inst_rego_o_5);
    qpskModule_1_Q_inst_SLICE_47I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n1, 
                B1=>'1', C1=>qpskModule_1_Q_inst_regb_b_8, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_Q_inst_p_L1_8, 
                DI0=>qpskModule_1_Q_inst_p_L1_7, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_7, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_Q_inst_mco_2, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_mco_3, F1=>qpskModule_1_Q_inst_p_L1_8, 
                Q1=>qpskModule_1_Q_inst_rego_o_8, 
                F0=>qpskModule_1_Q_inst_p_L1_7, 
                Q0=>qpskModule_1_Q_inst_rego_o_7);
    qpskModule_1_Q_inst_SLICE_48I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n1, 
                B1=>'1', C1=>qpskModule_1_Q_inst_regb_b_10, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_Q_inst_p_L1_10, 
                DI0=>qpskModule_1_Q_inst_p_L1_9, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_9, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_Q_inst_mco_3, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_mco_4, 
                F1=>qpskModule_1_Q_inst_p_L1_10, 
                Q1=>qpskModule_1_Q_inst_rego_o_10, 
                F0=>qpskModule_1_Q_inst_p_L1_9, 
                Q0=>qpskModule_1_Q_inst_rego_o_9);
    qpskModule_1_Q_inst_SLICE_49I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>qpskModule_1_Q_inst_regb_b_11, 
                B1=>qpskModule_1_Q_inst_rega_a_1, 
                C1=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n3, 
                D1=>'1', DI1=>qpskModule_1_Q_inst_p_L1_12, 
                DI0=>qpskModule_1_Q_inst_p_L1_11, 
                A0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n0, 
                B0=>'1', C0=>qpskModule_1_Q_inst_regb_b_11, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_Q_inst_mco_4, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_Q_inst_mfco, F1=>qpskModule_1_Q_inst_p_L1_12, 
                Q1=>qpskModule_1_Q_inst_rego_o_12, 
                F0=>qpskModule_1_Q_inst_p_L1_11, 
                Q0=>qpskModule_1_Q_inst_rego_o_11);
    qpskModule_1_I_inst_SLICE_50I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"66AA", INIT1_INITVAL=>X"66AA")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>qpskModule_1_I_inst_multiplier_12_2_m_0_cin_lr, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    qpskModule_1_I_inst_SLICE_51I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AAAA", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>qpskModule_1_I_inst_p_L1_13, A0=>'1', B0=>'X', C0=>'1', 
                D0=>'1', FCI=>qpskModule_1_I_inst_mfco, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>qpskModule_1_I_inst_p_L1_13, 
                Q0=>qpskModule_1_I_inst_rego_o_13);
    qpskModule_1_I_inst_SLICE_52I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n1, 
                B1=>'1', C1=>qpskModule_1_I_inst_regb_b_2, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_I_inst_p_L1_2, 
                DI0=>qpskModule_1_I_inst_p_L1_1, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_1, 
                D0=>qpskModule_1_rega_a_0, 
                FCI=>qpskModule_1_I_inst_multiplier_12_2_m_0_cin_lr, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>qpskModule_1_I_inst_mco, 
                F1=>qpskModule_1_I_inst_p_L1_2, 
                Q1=>qpskModule_1_I_inst_rego_o_2, 
                F0=>qpskModule_1_I_inst_p_L1_1, 
                Q0=>qpskModule_1_I_inst_rego_o_1);
    qpskModule_1_I_inst_SLICE_53I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n1, 
                B1=>'1', C1=>qpskModule_1_I_inst_regb_b_4, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_I_inst_p_L1_4, 
                DI0=>qpskModule_1_I_inst_p_L1_3, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_3, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_I_inst_mco, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_I_inst_mco_1, F1=>qpskModule_1_I_inst_p_L1_4, 
                Q1=>qpskModule_1_I_inst_rego_o_4, 
                F0=>qpskModule_1_I_inst_p_L1_3, 
                Q0=>qpskModule_1_I_inst_rego_o_3);
    qpskModule_1_I_inst_SLICE_54I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n1, 
                B1=>'1', C1=>qpskModule_1_I_inst_regb_b_6, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_I_inst_p_L1_6, 
                DI0=>qpskModule_1_I_inst_p_L1_5, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_5, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_I_inst_mco_1, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_I_inst_mco_2, F1=>qpskModule_1_I_inst_p_L1_6, 
                Q1=>qpskModule_1_I_inst_rego_o_6, 
                F0=>qpskModule_1_I_inst_p_L1_5, 
                Q0=>qpskModule_1_I_inst_rego_o_5);
    qpskModule_1_I_inst_SLICE_55I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n1, 
                B1=>'1', C1=>qpskModule_1_I_inst_regb_b_8, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_I_inst_p_L1_8, 
                DI0=>qpskModule_1_I_inst_p_L1_7, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_7, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_I_inst_mco_2, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_I_inst_mco_3, F1=>qpskModule_1_I_inst_p_L1_8, 
                Q1=>qpskModule_1_I_inst_rego_o_8, 
                F0=>qpskModule_1_I_inst_p_L1_7, 
                Q0=>qpskModule_1_I_inst_rego_o_7);
    qpskModule_1_I_inst_SLICE_56I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', 
                A1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n1, 
                B1=>'1', C1=>qpskModule_1_I_inst_regb_b_10, 
                D1=>qpskModule_1_rega_a_0, DI1=>qpskModule_1_I_inst_p_L1_10, 
                DI0=>qpskModule_1_I_inst_p_L1_9, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_9, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_I_inst_mco_3, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_I_inst_mco_4, 
                F1=>qpskModule_1_I_inst_p_L1_10, 
                Q1=>qpskModule_1_I_inst_rego_o_10, 
                F0=>qpskModule_1_I_inst_p_L1_9, 
                Q0=>qpskModule_1_I_inst_rego_o_9);
    qpskModule_1_I_inst_SLICE_57I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"7888", INIT1_INITVAL=>X"7888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', A1=>qpskModule_1_I_inst_regb_b_11, 
                B1=>qpskModule_1_I_inst_rega_a_1, 
                C1=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n3, 
                D1=>'1', DI1=>qpskModule_1_I_inst_p_L1_12, 
                DI0=>qpskModule_1_I_inst_p_L1_11, 
                A0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n0, 
                B0=>'1', C0=>qpskModule_1_I_inst_regb_b_11, 
                D0=>qpskModule_1_rega_a_0, FCI=>qpskModule_1_I_inst_mco_4, 
                M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                FCO=>qpskModule_1_I_inst_mfco, F1=>qpskModule_1_I_inst_p_L1_12, 
                Q1=>qpskModule_1_I_inst_rego_o_12, 
                F0=>qpskModule_1_I_inst_p_L1_11, 
                Q0=>qpskModule_1_I_inst_rego_o_11);
    SLICE_58I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2309, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2310, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_59I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>phase_acc_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_10, DI0=>theta_9_N_236_9, A0=>phase_acc_9, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2322, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2323, 
                F1=>theta_9_N_236_10, Q1=>phase_acc_10, F0=>theta_9_N_236_9, 
                Q0=>phase_acc_9);
    SLICE_60I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_22, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_21, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2316, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2317, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_61I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n6, B1=>'X', C1=>'X', D1=>'1', DI1=>n115, 
                DI0=>n116, A0=>n7, B0=>'X', C0=>'X', D0=>'1', FCI=>n2356, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2357, 
                F1=>n115, Q1=>n6, F0=>n116, Q0=>n7);
    SLICE_62I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>phase_acc_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_12, DI0=>theta_9_N_236_11, A0=>phase_acc_11, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2323, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2324, 
                F1=>theta_9_N_236_12, Q1=>phase_acc_12, F0=>theta_9_N_236_11, 
                Q0=>phase_acc_11);
    SLICE_63I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA55", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2308, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2309, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_64I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n8, B1=>'X', C1=>'X', D1=>'1', DI1=>n117, 
                DI0=>n118, A0=>n9, B0=>'X', C0=>'X', D0=>'1', FCI=>n2355, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2356, 
                F1=>n117, Q1=>n8, F0=>n118, Q0=>n9);
    SLICE_65I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>n2373, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, 
                Q1=>open, F0=>cout, Q0=>open);
    SLICE_66I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_25, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_24, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2372, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2373, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_67I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n10, B1=>'X', C1=>'X', D1=>'1', DI1=>n119, 
                DI0=>n120, A0=>n11, B0=>'X', C0=>'X', D0=>'1', FCI=>n2354, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2355, 
                F1=>n119, Q1=>n10, F0=>n120, Q0=>n11);
    SLICE_68I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_20, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_19, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2315, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2316, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_69I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>phase_acc_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_2, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>n2319, F1=>theta_9_N_236_2, Q1=>phase_acc_2, 
                F0=>open, Q0=>open);
    SLICE_70I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"AA55")
      port map (M1=>'X', A1=>waitcount_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2307, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2308, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_71I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n12, B1=>'X', C1=>'X', D1=>'1', DI1=>n121, 
                DI0=>n122, A0=>n13, B0=>'X', C0=>'X', D0=>'1', FCI=>n2353, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2354, 
                F1=>n121, Q1=>n12, F0=>n122, Q0=>n13);
    SLICE_72I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n14, B1=>'X', C1=>'X', D1=>'1', DI1=>n123, 
                DI0=>n124, A0=>n15, B0=>'X', C0=>'X', D0=>'1', FCI=>n2352, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2353, 
                F1=>n123, Q1=>n14, F0=>n124, Q0=>n15);
    SLICE_73I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n16, B1=>'X', C1=>'X', D1=>'1', DI1=>n125, 
                DI0=>n126, A0=>n17, B0=>'X', C0=>'X', D0=>'1', FCI=>n2351, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2352, 
                F1=>n125, Q1=>n16, F0=>n126, Q0=>n17);
    SLICE_74I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_18, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_17, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2314, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2315, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_75I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n18, B1=>'X', C1=>'X', D1=>'1', DI1=>n127, 
                DI0=>n128, A0=>n19, B0=>'X', C0=>'X', D0=>'1', FCI=>n2350, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2351, 
                F1=>n127, Q1=>n18, F0=>n128, Q0=>n19);
    SLICE_76I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA55", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_1, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2306, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2307, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_77I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>waitcount_25, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2318, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>cout_adj_368, Q1=>open, F0=>open, Q0=>open);
    SLICE_78I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n20, B1=>'X', C1=>'X', D1=>'1', DI1=>n129, 
                DI0=>n130, A0=>n21, B0=>'X', C0=>'X', D0=>'1', FCI=>n2349, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2350, 
                F1=>n129, Q1=>n20, F0=>n130, Q0=>n21);
    SLICE_79I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n22, B1=>'X', C1=>'X', D1=>'1', DI1=>n131, 
                DI0=>n132, A0=>n23, B0=>'X', C0=>'X', D0=>'1', FCI=>n2348, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2349, 
                F1=>n131, Q1=>n22, F0=>n132, Q0=>n23);
    SLICE_80I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>n24, B1=>'X', C1=>'X', D1=>'1', DI1=>n133, 
                DI0=>n134, A0=>n25, B0=>'X', C0=>'X', D0=>'1', FCI=>n2347, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2348, 
                F1=>n133, Q1=>n24, F0=>n134, Q0=>n25);
    SLICE_81I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_23, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_22, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2371, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2372, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_82I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_21, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_20, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2370, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2371, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_83I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>n26, B1=>'X', C1=>'X', D1=>'1', DI1=>n135, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>'X', FCO=>n2347, 
                F1=>n135, Q1=>n26, F0=>open, Q0=>open);
    SLICE_84I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_19, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_18, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2369, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2370, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_85I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_17, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_16, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2368, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2369, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_86I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>waitcount_15, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_14, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2367, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2368, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_87I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_13, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_12, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2366, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2367, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_88I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>waitcount_11, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_10, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2365, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2366, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_89I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_16, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_15, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2313, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2314, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_90I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_14, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_13, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2312, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2313, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_91I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>waitcount_9, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_8, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2364, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2365, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_92I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>phase_acc_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_6, DI0=>theta_9_N_236_5, A0=>phase_acc_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2320, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2321, 
                F1=>theta_9_N_236_6, Q1=>phase_acc_6, F0=>theta_9_N_236_5, 
                Q0=>phase_acc_5);
    SLICE_93I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"AAFF")
      port map (M1=>'X', A1=>waitcount_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2306, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_94I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_12, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_11, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2311, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2312, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_95I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"00ee", INIT1_INITVAL=>X"AA00")
      port map (M1=>'X', A1=>waitcount_7, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_5, B0=>waitcount_6, C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2364, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_96I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>waitcount_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>waitcount_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2310, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n2311, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_97I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>theta_9_N_236_23, A0=>theta_9, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n2329, M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>theta_9_N_236_23, 
                Q0=>theta_9);
    SLICE_98I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>phase_acc_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_8, DI0=>theta_9_N_236_7, A0=>phase_acc_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2321, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2322, 
                F1=>theta_9_N_236_8, Q1=>phase_acc_8, F0=>theta_9_N_236_7, 
                Q0=>phase_acc_7);
    SLICE_99I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>theta_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>theta_9_N_236_22, DI0=>theta_9_N_236_21, A0=>theta_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n2328, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', FCO=>n2329, 
                F1=>theta_9_N_236_22, Q1=>theta_8, F0=>theta_9_N_236_21, 
                Q0=>theta_7);
    clockDivider_0_SLICE_100I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n45, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>LED7_c, FCO=>clockDivider_0_n2360, F1=>clockDivider_0_n45, 
                Q1=>clockDivider_0_n8, F0=>open, Q0=>open);
    clockDivider_0_SLICE_101I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>clockDivider_0_n38_adj_359, A0=>clockDivider_0_counter_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>clockDivider_0_n2333, M0=>'X', 
                CE=>'X', CLK=>serial_clk_c, LSR=>clockDivider_0_n378, 
                FCO=>open, F1=>open, Q1=>open, F0=>clockDivider_0_n38_adj_359, 
                Q0=>clockDivider_0_counter_7);
    clockDivider_0_SLICE_102I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_6, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n39_adj_361, 
                DI0=>clockDivider_0_n40_adj_360, A0=>clockDivider_0_counter_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>clockDivider_0_n2332, M0=>'X', 
                CE=>'X', CLK=>serial_clk_c, LSR=>clockDivider_0_n378, 
                FCO=>clockDivider_0_n2333, F1=>clockDivider_0_n39_adj_361, 
                Q1=>clockDivider_0_counter_6, F0=>clockDivider_0_n40_adj_360, 
                Q0=>clockDivider_0_counter_5);
    clockDivider_0_SLICE_103I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_4, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n41_adj_363, 
                DI0=>clockDivider_0_n42_adj_362, A0=>clockDivider_0_counter_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>clockDivider_0_n2331, M0=>'X', 
                CE=>'X', CLK=>serial_clk_c, LSR=>clockDivider_0_n378, 
                FCO=>clockDivider_0_n2332, F1=>clockDivider_0_n41_adj_363, 
                Q1=>clockDivider_0_counter_4, F0=>clockDivider_0_n42_adj_362, 
                Q0=>clockDivider_0_counter_3);
    clockDivider_0_SLICE_104I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_2, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n43_adj_364, 
                DI0=>clockDivider_0_n44_adj_365, A0=>clockDivider_0_counter_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>clockDivider_0_n2330, M0=>'X', 
                CE=>'X', CLK=>serial_clk_c, LSR=>clockDivider_0_n378, 
                FCO=>clockDivider_0_n2331, F1=>clockDivider_0_n43_adj_364, 
                Q1=>clockDivider_0_counter_2, F0=>clockDivider_0_n44_adj_365, 
                Q0=>clockDivider_0_counter_1);
    clockDivider_0_SLICE_105I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_counter_0, B1=>'X', C1=>'X', 
                D1=>'1', DI1=>clockDivider_0_n45_adj_358, DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>clockDivider_0_n378, 
                FCO=>clockDivider_0_n2330, F1=>clockDivider_0_n45_adj_358, 
                Q1=>clockDivider_0_counter_0, F0=>open, Q0=>open);
    clockDivider_0_SLICE_106I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>clockDivider_0_n38, A0=>clockDivider_0_lockCounter_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>clockDivider_0_n2363, M0=>'X', 
                CE=>'X', CLK=>serial_clk_c, LSR=>LED7_c, FCO=>open, F1=>open, 
                Q1=>open, F0=>clockDivider_0_n38, 
                Q0=>clockDivider_0_lockCounter_7);
    clockDivider_0_SLICE_107I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n39, DI0=>clockDivider_0_n40, 
                A0=>clockDivider_0_n3, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n2362, M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>LED7_c, FCO=>clockDivider_0_n2363, F1=>clockDivider_0_n39, 
                Q1=>clockDivider_0_n2, F0=>clockDivider_0_n40, 
                Q0=>clockDivider_0_n3);
    clockDivider_0_SLICE_108I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n41, DI0=>clockDivider_0_n42, 
                A0=>clockDivider_0_n5, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n2361, M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>LED7_c, FCO=>clockDivider_0_n2362, F1=>clockDivider_0_n41, 
                Q1=>clockDivider_0_n4, F0=>clockDivider_0_n42, 
                Q0=>clockDivider_0_n5);
    clockDivider_0_SLICE_109I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>clockDivider_0_n6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>clockDivider_0_n43, DI0=>clockDivider_0_n44, 
                A0=>clockDivider_0_n7, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>clockDivider_0_n2360, M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>LED7_c, FCO=>clockDivider_0_n2361, F1=>clockDivider_0_n43, 
                Q1=>clockDivider_0_n6, F0=>clockDivider_0_n44, 
                Q0=>clockDivider_0_n7);
    SLICE_110I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ICounter_2, B1=>ICounter_1, 
                C1=>'X', D1=>'X', DI1=>n2398, DI0=>IQSerializer_1_n5, 
                A0=>ICounter_1, B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>IQSerializer_1_n1789, OFX1=>open, 
                F1=>n2398, Q1=>ICounter_2, OFX0=>open, F0=>IQSerializer_1_n5, 
                Q0=>ICounter_1);
    IQSerializer_1_SLICE_111I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6A6A", LUT1_INITVAL=>X"F7F7", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ICounter_3, B1=>ICounter_2, 
                C1=>ICounter_1, D1=>'X', DI1=>'X', DI0=>IQSerializer_1_n2817, 
                A0=>ICounter_3, B0=>ICounter_2, C0=>ICounter_1, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>IQSerializer_1_n1789, 
                OFX1=>open, F1=>IQSerializer_1_n2822, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_n2817, Q0=>ICounter_3);
    IQSerializer_1_DEDFF_0_SLICE_112I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"AA9A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>IQSerializer_1_DEDFF_0_Q2, 
                A0=>IQSerializer_1_DEDFF_0_pose_edge, 
                B0=>IQSerializer_1_next_state_3_N_318, 
                C0=>IQSerializer_1_n2744, 
                D0=>IQSerializer_1_next_state_3_N_316, M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>IQSerializer_start, OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>IQSerializer_1_DEDFF_0_Q2, 
                Q0=>IQSerializer_1_DEDFF_0_neg_edge);
    IQSerializer_1_SLICE_113I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5556", LUT1_INITVAL=>X"8888", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DEDFF_D0_N_333, 
                B1=>IQSerializer_1_next_state_3_N_319, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>IQSerializer_1_DEDFF_0_Q1, 
                A0=>IQSerializer_1_DEDFF_0_neg_edge, B0=>IQSerializer_1_n2, 
                C0=>IQSerializer_1_n1, D0=>IQSerializer_1_next_state_3_N_318, 
                M0=>'X', CE=>'X', CLK=>serial_clk_c, LSR=>IQSerializer_start, 
                OFX1=>open, F1=>IQSerializer_1_n2, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_DEDFF_0_Q1, 
                Q0=>IQSerializer_1_DEDFF_0_pose_edge);
    IQSerializer_1_SLICE_114I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"6A6A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>IQSerializer_1_n2823, 
                A0=>IQSerializer_1_QCounter_3, B0=>QCounter_2, C0=>QCounter_1, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>IQSerializer_1_n1788, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>IQSerializer_1_n2823, 
                Q0=>IQSerializer_1_QCounter_3);
    SLICE_115I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5555", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n626, A0=>IQSerializer_start, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n626, 
                Q0=>IQSerializer_1_next_state_3_N_316);
    IQSerializer_1_SLICE_116I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"F4F0", LUT1_INITVAL=>X"ECEC", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>IQSerializer_1_next_state_3_N_319, 
                B1=>IQSerializer_1_next_state_3_N_318, 
                C1=>IQSerializer_1_n2822, D1=>'X', DI1=>IQSerializer_1_n1698, 
                DI0=>IQSerializer_1_n347, A0=>QCounter_1, B0=>QCounter_2, 
                C0=>IQSerializer_1_next_state_3_N_316, 
                D0=>IQSerializer_1_n2564, M0=>'X', CE=>'X', CLK=>serial_clk_c, 
                LSR=>IQSerializer_start, OFX1=>open, F1=>IQSerializer_1_n1698, 
                Q1=>IQSerializer_1_next_state_3_N_319, OFX0=>open, 
                F0=>IQSerializer_1_n347, Q0=>IQSerializer_1_next_state_3_N_318);
    IQSerializer_1_SLICE_117I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0800", LUT1_INITVAL=>X"ECEE", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>IQSerializer_1_next_state_3_N_321, 
                B1=>IQSerializer_1_next_state_3_N_320, 
                C1=>IQSerializer_1_n2562, D1=>QCounter_2, 
                DI1=>IQSerializer_1_n1700, DI0=>IQSerializer_1_n351, 
                A0=>ICounter_3, B0=>ICounter_2, C0=>ICounter_1, 
                D0=>IQSerializer_1_next_state_3_N_319, M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>IQSerializer_start, OFX1=>open, 
                F1=>IQSerializer_1_n1700, 
                Q1=>IQSerializer_1_next_state_3_N_321, OFX0=>open, 
                F0=>IQSerializer_1_n351, Q0=>IQSerializer_1_next_state_3_N_320);
    qpskModule_1_I_inst_SLICE_118I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_0, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_1, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_0);
    qpskModule_1_I_inst_SLICE_119I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_2, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_3, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_2);
    qpskModule_1_I_inst_SLICE_120I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_4, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_5, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_4);
    qpskModule_1_I_inst_SLICE_121I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_6, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_7, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_6);
    qpskModule_1_I_inst_SLICE_122I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_8, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_9, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_8);
    qpskModule_1_I_inst_SLICE_123I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_10, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_11, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_10);
    qpskModule_1_I_inst_SLICE_124I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_I_inst_rego_o_13, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_I_inst_rego_o_12, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_I_13, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_I_12);
    qpskModule_1_Q_inst_SLICE_125I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_0, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_1, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_0);
    qpskModule_1_Q_inst_SLICE_126I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_2, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_3, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_2);
    qpskModule_1_Q_inst_SLICE_127I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_4, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_5, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_4);
    qpskModule_1_Q_inst_SLICE_128I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_6, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_7, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_6);
    qpskModule_1_Q_inst_SLICE_129I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_8, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_9, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_8);
    qpskModule_1_Q_inst_SLICE_130I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_10, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_11, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_10);
    qpskModule_1_Q_inst_SLICE_131I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_Q_inst_rego_o_13, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_Q_inst_rego_o_12, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>IQSerializer_Q_13, 
                OFX0=>open, F0=>open, Q0=>IQSerializer_Q_12);
    qpskModule_1_SLICE_132I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_002_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>VCC_net_002_BUF1, Q0=>IQSerializer_start);
    qpskModule_1_iq_div_inst_SLICE_133I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_iq_div_inst_I_bit_temp, 
                CE=>qpskModule_1_clk_N_175_enable_5, CLK=>clockDivider_clk_4M, 
                LSR=>qpskModule_1_I_1_N_182, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>I_bit);
    SLICE_134I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>cnt1_25, CE=>'X', CLK=>serial_clk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>LED_c);
    SLICE_135I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>QCounter_2, B1=>QCounter_1, 
                C1=>'X', D1=>'X', DI1=>n2402, DI0=>IQSerializer_1_n2821, 
                A0=>QCounter_1, B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>IQSerializer_1_n1788, OFX1=>open, 
                F1=>n2402, Q1=>QCounter_2, OFX0=>open, 
                F0=>IQSerializer_1_n2821, Q0=>QCounter_1);
    qpskModule_1_iq_div_inst_SLICE_136I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_iq_div_inst_Q_bit_temp, 
                CE=>qpskModule_1_clk_N_175_enable_5, CLK=>clockDivider_clk_4M, 
                LSR=>qpskModule_1_I_1_N_182, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>Q_bit);
    clockDivider_0_SLICE_137I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_000_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>clockDivider_0_lockCounter_7, 
                CLK=>serial_clk_c, LSR=>LED7_c, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>VCC_net_000_BUF1, Q0=>clockDivider_clkLock);
    clockDivider_0_SLICE_138I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"9999", LUT1_INITVAL=>X"EEEE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>clockDivider_0_counter_5, 
                B1=>clockDivider_0_counter_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>clockDivider_0_clkOut_N_64, A0=>clockDivider_clk_4M, 
                B0=>clockDivider_0_n1725, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>serial_clk_c, LSR=>LED7_c, OFX1=>open, 
                F1=>clockDivider_0_n2550, Q1=>open, OFX0=>open, 
                F0=>clockDivider_0_clkOut_N_64, Q0=>clockDivider_clk_4M);
    counter_0_SLICE_139I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_003_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>cout_adj_368, 
                CLK=>clockDivider_clk_4M, LSR=>clockDivider_clkLock, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>VCC_net_003_BUF1, Q0=>counter_0_countDone);
    qpskModule_1_iq_div_inst_SLICE_140I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"EEEE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                B1=>qpskModule_1_iq_div_inst_cnt_sample_7, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>qpskModule_1_iq_div_inst_symDone_N_219, 
                A0=>qpskModule_1_iq_div_inst_n12, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_1, 
                C0=>qpskModule_1_iq_div_inst_n2814, 
                D0=>qpskModule_1_iq_div_inst_cnt_sample_0, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>qpskModule_1_iq_div_inst_n2814, Q1=>open, 
                OFX0=>open, F0=>qpskModule_1_iq_div_inst_symDone_N_219, 
                Q0=>fskModule_symDone);
    packetGen_1_SLICE_141I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"5555", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>packetGen_1_next_symVal_N_172, 
                A0=>packetGen_1_next_symVal, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_countDone, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>packetGen_1_next_symVal_N_172, 
                Q0=>fskModule_symVal);
    packetGen_1_SLICE_143I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   GSR=>"DISABLED", LUT0_INITVAL=>X"CEEE", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_M1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>packetGen_1_next_state_3_N_155, FXA=>'X', FXB=>'X', 
                A1=>symCounter_5, B1=>symCounter_3, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>packetGen_1_n1690, A0=>next_state_3_N_154, 
                B0=>next_state_3_N_153, C0=>packetGen_1_n2528, 
                D0=>fskModule_symDone, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>counter_0_countDone, OFX1=>open, 
                F1=>packetGen_1_n13, Q1=>next_state_3_N_156, OFX0=>open, 
                F0=>packetGen_1_n1690, Q0=>next_state_3_N_154);
    packetGen_1_SLICE_144I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8080", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>next_state_3_N_154, 
                B1=>symCounter_0, C1=>symCounter_6, D1=>'X', DI1=>'X', 
                DI0=>packetGen_1_n2497, A0=>packetGen_1_n13, 
                B0=>fskModule_symDone, C0=>packetGen_1_n15, 
                D0=>packetGen_1_n2576, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>counter_0_countDone, OFX1=>open, 
                F1=>packetGen_1_n2576, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2497, Q0=>packetGen_1_next_state_3_N_155);
    SLICE_145I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"BFBF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>I_1, A0=>next_state_3_N_156, 
                B0=>counter_0_countDone, C0=>I_bit, D0=>'X', M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>I_1, 
                Q0=>qpskModule_1_I_inst_rega_a_1);
    qpskModule_1_I_inst_SLICE_146I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_0, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_1, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_0);
    qpskModule_1_I_inst_SLICE_147I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_2, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_3, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_2);
    qpskModule_1_I_inst_SLICE_148I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_4, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_5, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_4);
    qpskModule_1_I_inst_SLICE_149I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_6, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_7, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_6);
    qpskModule_1_I_inst_SLICE_150I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_8, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_9, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_8);
    qpskModule_1_I_inst_SLICE_151I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_cos_s_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_cos_s_10, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_I_inst_regb_b_11, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_I_inst_regb_b_10);
    qpskModule_1_I_inst_SLICE_152I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', 
                DI0=>qpskModule_1_I_inst_multiplier_12_2_m_0_pp_0_0, 
                A0=>qpskModule_1_I_inst_regb_b_0, B0=>qpskModule_1_rega_a_0, 
                C0=>'X', D0=>'X', M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_pp_0_0, 
                Q0=>qpskModule_1_I_inst_rego_o_0);
    SLICE_153I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"BFBF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>Q_1, A0=>next_state_3_N_156, 
                B0=>counter_0_countDone, C0=>Q_bit, D0=>'X', M0=>'X', 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>Q_1, 
                Q0=>qpskModule_1_Q_inst_rega_a_1);
    qpskModule_1_Q_inst_SLICE_154I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_1, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_0, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_1, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_0);
    qpskModule_1_Q_inst_SLICE_155I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_3, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_2, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_3, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_2);
    qpskModule_1_Q_inst_SLICE_156I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_5, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_4, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_5, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_4);
    qpskModule_1_Q_inst_SLICE_157I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_7, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_6, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_7, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_6);
    qpskModule_1_Q_inst_SLICE_158I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_9, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_8, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_9, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_8);
    qpskModule_1_Q_inst_SLICE_159I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>qpskModule_1_carry_sin_s_11, FXA=>'X', FXB=>'X', A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>qpskModule_1_carry_sin_s_10, 
                CE=>clockDivider_clk_4M_enable_84, CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_Q_inst_regb_b_11, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_Q_inst_regb_b_10);
    qpskModule_1_Q_inst_SLICE_160I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', 
                DI0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_pp_0_0, 
                A0=>qpskModule_1_Q_inst_regb_b_0, B0=>qpskModule_1_rega_a_0, 
                C0=>'X', D0=>'X', M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_pp_0_0, 
                Q0=>qpskModule_1_Q_inst_rego_o_0);
    qpskModule_1_dds0_SLICE_161I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_13, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_1, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_1, 
                DI0=>qpskModule_1_dds0_cosout_pre, 
                A0=>qpskModule_1_dds0_rom_dout_12, 
                B0=>qpskModule_1_dds0_rom_dout_c_n, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_1, 
                Q1=>qpskModule_1_carry_cos_s_1, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre, 
                Q0=>qpskModule_1_carry_cos_s_0);
    qpskModule_1_dds0_SLICE_162I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_15, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_3, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_3, 
                DI0=>qpskModule_1_dds0_cosout_pre_2, 
                A0=>qpskModule_1_dds0_rom_dout_14, 
                B0=>qpskModule_1_dds0_rom_dout_c_n_2, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_3, 
                Q1=>qpskModule_1_carry_cos_s_3, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre_2, 
                Q0=>qpskModule_1_carry_cos_s_2);
    qpskModule_1_dds0_SLICE_163I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_17, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_5, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_5, 
                DI0=>qpskModule_1_dds0_cosout_pre_4, 
                A0=>qpskModule_1_dds0_rom_dout_16, 
                B0=>qpskModule_1_dds0_rom_dout_c_n_4, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_5, 
                Q1=>qpskModule_1_carry_cos_s_5, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre_4, 
                Q0=>qpskModule_1_carry_cos_s_4);
    qpskModule_1_dds0_SLICE_164I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_19, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_7, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_7, 
                DI0=>qpskModule_1_dds0_cosout_pre_6, 
                A0=>qpskModule_1_dds0_rom_dout_18, 
                B0=>qpskModule_1_dds0_rom_dout_c_n_6, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_7, 
                Q1=>qpskModule_1_carry_cos_s_7, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre_6, 
                Q0=>qpskModule_1_carry_cos_s_6);
    qpskModule_1_dds0_SLICE_165I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_21, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_9, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_9, 
                DI0=>qpskModule_1_dds0_cosout_pre_8, 
                A0=>qpskModule_1_dds0_rom_dout_20, 
                B0=>qpskModule_1_dds0_rom_dout_c_n_8, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_9, 
                Q1=>qpskModule_1_carry_cos_s_9, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre_8, 
                Q0=>qpskModule_1_carry_cos_s_8);
    qpskModule_1_dds0_SLICE_166I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_23, 
                B1=>qpskModule_1_dds0_rom_dout_c_n_11, 
                C1=>qpskModule_1_dds0_cosromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_cosout_pre_11, 
                DI0=>qpskModule_1_dds0_cosout_pre_10, 
                A0=>qpskModule_1_dds0_rom_dout_22, 
                B0=>qpskModule_1_dds0_rom_dout_c_n_10, 
                C0=>qpskModule_1_dds0_cosromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_cosout_pre_11, 
                Q1=>qpskModule_1_carry_cos_s_11, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosout_pre_10, 
                Q0=>qpskModule_1_carry_cos_s_10);
    qpskModule_1_dds0_SLICE_167I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_1, 
                B1=>qpskModule_1_dds0_rom_dout_s_n_1, 
                C1=>qpskModule_1_dds0_sinromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_sinout_pre_1, 
                DI0=>qpskModule_1_dds0_sinout_pre, 
                A0=>qpskModule_1_dds0_rom_dout, 
                B0=>qpskModule_1_dds0_rom_dout_s_n, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_1, 
                Q1=>qpskModule_1_carry_sin_s_1, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre, 
                Q0=>qpskModule_1_carry_sin_s_0);
    qpskModule_1_dds0_SLICE_168I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_3, 
                B1=>qpskModule_1_dds0_rom_dout_s_n_3, 
                C1=>qpskModule_1_dds0_sinromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_sinout_pre_3, 
                DI0=>qpskModule_1_dds0_sinout_pre_2, 
                A0=>qpskModule_1_dds0_rom_dout_2, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_2, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_3, 
                Q1=>qpskModule_1_carry_sin_s_3, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre_2, 
                Q0=>qpskModule_1_carry_sin_s_2);
    qpskModule_1_dds0_SLICE_169I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_5, 
                B1=>qpskModule_1_dds0_rom_dout_s_n_5, 
                C1=>qpskModule_1_dds0_sinromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_sinout_pre_5, 
                DI0=>qpskModule_1_dds0_sinout_pre_4, 
                A0=>qpskModule_1_dds0_rom_dout_4, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_4, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_5, 
                Q1=>qpskModule_1_carry_sin_s_5, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre_4, 
                Q0=>qpskModule_1_carry_sin_s_4);
    qpskModule_1_dds0_SLICE_170I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_7, 
                B1=>qpskModule_1_dds0_rom_dout_s_n_7, 
                C1=>qpskModule_1_dds0_sinromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_sinout_pre_7, 
                DI0=>qpskModule_1_dds0_sinout_pre_6, 
                A0=>qpskModule_1_dds0_rom_dout_6, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_6, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_7, 
                Q1=>qpskModule_1_carry_sin_s_7, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre_6, 
                Q0=>qpskModule_1_carry_sin_s_6);
    qpskModule_1_dds0_SLICE_171I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"00CA", LUT1_INITVAL=>X"00CA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>qpskModule_1_dds0_rom_dout_9, 
                B1=>qpskModule_1_dds0_rom_dout_s_n_9, 
                C1=>qpskModule_1_dds0_sinromoutsel, 
                D1=>qpskModule_1_dds0_out_sel, 
                DI1=>qpskModule_1_dds0_sinout_pre_9, 
                DI0=>qpskModule_1_dds0_sinout_pre_8, 
                A0=>qpskModule_1_dds0_rom_dout_8, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_8, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_9, 
                Q1=>qpskModule_1_carry_sin_s_9, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre_8, 
                Q0=>qpskModule_1_carry_sin_s_8);
    qpskModule_1_dds0_SLICE_172I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FFCA", LUT1_INITVAL=>X"CACA", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_dout_s_11, 
                B1=>qpskModule_1_dds0_mx_ctrl_r_1, 
                C1=>qpskModule_1_dds0_out_sel, D1=>'X', 
                DI1=>qpskModule_1_dds0_sinout_pre_11, 
                DI0=>qpskModule_1_dds0_sinout_pre_10, 
                A0=>qpskModule_1_dds0_rom_dout_10, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_10, 
                C0=>qpskModule_1_dds0_sinromoutsel, 
                D0=>qpskModule_1_dds0_out_sel, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_sinout_pre_11, 
                Q1=>qpskModule_1_carry_sin_s_11, OFX0=>open, 
                F0=>qpskModule_1_dds0_sinout_pre_10, 
                Q0=>qpskModule_1_carry_sin_s_10);
    qpskModule_1_dds0_SLICE_173I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"6666", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>qpskModule_1_dds0_cosromoutsel_i, 
                A0=>qpskModule_1_dds0_mx_ctrl_r, 
                B0=>qpskModule_1_dds0_mx_ctrl_r_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_cosromoutsel_i, 
                Q0=>qpskModule_1_dds0_cosromoutsel);
    qpskModule_1_dds0_SLICE_176I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"1010", LUT1_INITVAL=>X"FFFE", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_15, 
                B1=>qpskModule_1_dds0_rom_addr0_r_14, 
                C1=>qpskModule_1_dds0_rom_addr0_r_13, 
                D1=>qpskModule_1_dds0_rom_addr0_r_12, DI1=>'X', 
                DI0=>qpskModule_1_dds0_out_sel_i, 
                A0=>qpskModule_1_dds0_func_or_inet_1, 
                B0=>qpskModule_1_dds0_func_or_inet, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_func_or_inet_1, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_out_sel_i, Q0=>qpskModule_1_dds0_out_sel);
    qpskModule_1_dds0_SLICE_178I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>theta_2, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>theta_1, CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_addr0_r_2, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_dds0_rom_addr0_r_1);
    qpskModule_1_dds0_SLICE_179I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>theta_4, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>theta_3, CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_addr0_r_4, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_dds0_rom_addr0_r_3);
    qpskModule_1_dds0_SLICE_180I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>theta_6, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>theta_5, CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_addr0_r_6, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_dds0_rom_addr0_r_5);
    qpskModule_1_dds0_SLICE_182I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8F3C", 
                   LUT1_INITVAL=>X"154D", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_183I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"7A17", 
                   LUT1_INITVAL=>X"BFF0", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_1_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_1_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_1, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_184I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC73", 
                   LUT1_INITVAL=>X"6222", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_2_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_2_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_2, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_185I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C35A", 
                   LUT1_INITVAL=>X"3939", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, D1=>'X', 
                DI1=>qpskModule_1_dds0_rom_dout_3_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_3_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_3, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_186I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"F39C", 
                   LUT1_INITVAL=>X"C16B", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_4_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_4_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_4, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_187I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"03E0", 
                   LUT1_INITVAL=>X"017E", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_5_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_5_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_5, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_188I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"E0E0", 
                   LUT1_INITVAL=>X"ABD5", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_6_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_9, 
                B0=>qpskModule_1_dds0_rom_addr0_r_10, 
                C0=>qpskModule_1_dds0_rom_addr0_r_11, D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_6_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_6, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_189I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AAAA", 
                   LUT1_INITVAL=>X"ABFF", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_7_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_7_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_7, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_190I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AAAA", 
                   LUT1_INITVAL=>X"FEAA", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_8_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_8_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_8, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_191I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT1_INITVAL=>X"8888", REG1_SD=>"VHI", 
                   CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_13, 
                B1=>qpskModule_1_dds0_rom_addr0_r_14, C1=>'X', D1=>'X', 
                DI1=>qpskModule_1_dds0_rom_dout_9_ffin, DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_9_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_9, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_192I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT1_INITVAL=>X"0000", REG1_SD=>"VHI", 
                   CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_22_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_22_1_f5b, A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>qpskModule_1_dds0_rom_dout_10_ffin, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_10_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_10, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_22_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_193I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_23_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', 
                DI1=>qpskModule_1_dds0_rom_dout_11_ffin, DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_11_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_11, OFX0=>open, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_194I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"1A48", 
                   LUT1_INITVAL=>X"ABA4", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_12_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_12_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_12, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_195I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8768", 
                   LUT1_INITVAL=>X"EFBE", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_13_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_13_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_13, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_196I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5D60", 
                   LUT1_INITVAL=>X"C8DC", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_14_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_14_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_14, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_197I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"D748", 
                   LUT1_INITVAL=>X"F1B0", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_15_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_15_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_15, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_198I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"7F42", 
                   LUT1_INITVAL=>X"32D9", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_16_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_16_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_16, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_199I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"55EA", 
                   LUT1_INITVAL=>X"A578", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_17_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_17_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_17, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_200I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"5540", 
                   LUT1_INITVAL=>X"0AAD", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_18_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_18_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_18, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_201I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFEA", 
                   LUT1_INITVAL=>X"5557", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, 
                DI1=>qpskModule_1_dds0_rom_dout_19_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_19_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_19, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_202I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFEA", 
                   LUT1_INITVAL=>X"AAAA", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>qpskModule_1_dds0_rom_dout_20_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_20_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_20, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_203I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFEA", 
                   LUT1_INITVAL=>X"5555", REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_8, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>qpskModule_1_dds0_rom_dout_21_ffin, DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_21_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_21, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_9_1_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_204I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", LUT1_INITVAL=>X"0000", REG1_SD=>"VHI", 
                   CHECK_DI1=>TRUE)
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_10_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_10_1_f5b, A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>qpskModule_1_dds0_rom_dout_22_ffin, 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_22_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_22, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_10_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_205I: SLOGICB
      generic map (M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_11_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', 
                DI1=>qpskModule_1_dds0_rom_dout_23_ffin, DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>qpskModule_1_dds0_rom_dout_23_ffin, F1=>open, 
                Q1=>qpskModule_1_dds0_rom_dout_23, OFX0=>open, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_206I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", 
                   SRMODE=>"ASYNC", CHECK_M1=>TRUE, CHECK_M0=>TRUE)
      port map (M1=>theta_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_mx_ctrl_r_1, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>qpskModule_1_dds0_mx_ctrl_r_1, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_dds0_sinromoutsel);
    qpskModule_1_iq_div_inst_SLICE_207I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_iq_div_inst_I_bit_temp2, 
                CE=>qpskModule_1_iq_div_inst_clk_N_175_enable_3, 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_iq_div_inst_I_bit_temp);
    qpskModule_1_iq_div_inst_SLICE_208I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>fskModule_symVal, 
                CE=>qpskModule_1_clk_N_175_enable_5, CLK=>clockDivider_clk_4M, 
                LSR=>qpskModule_1_I_1_N_182, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>qpskModule_1_iq_div_inst_I_bit_temp2);
    qpskModule_1_iq_div_inst_SLICE_209I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>fskModule_symVal, 
                CE=>qpskModule_1_iq_div_inst_clk_N_175_enable_3, 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>open, 
                Q0=>qpskModule_1_iq_div_inst_Q_bit_temp);
    qpskModule_1_iq_div_inst_SLICE_210I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"4848", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_1, 
                B1=>qpskModule_1_iq_div_inst_n2811, 
                C1=>qpskModule_1_iq_div_inst_cnt_sample_0, D1=>'X', 
                DI1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_1, 
                DI0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_0, 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_0, B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>qpskModule_1_I_1_N_182, OFX1=>open, 
                F1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_1, 
                Q1=>qpskModule_1_iq_div_inst_cnt_sample_1, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_0, 
                Q0=>qpskModule_1_iq_div_inst_cnt_sample_0);
    qpskModule_1_iq_div_inst_SLICE_211I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", 
                   LUT0_INITVAL=>X"55A8", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                B1=>qpskModule_1_iq_div_inst_n2811, 
                C1=>qpskModule_1_iq_div_inst_cnt_sample_0, 
                D1=>qpskModule_1_iq_div_inst_n2820, 
                DI1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_3, 
                DI0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_2, 
                A0=>qpskModule_1_iq_div_inst_n6, 
                B0=>qpskModule_1_iq_div_inst_n12, 
                C0=>qpskModule_1_iq_div_inst_n2814, 
                D0=>qpskModule_1_iq_div_inst_cnt_sample_2, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_3, 
                Q1=>qpskModule_1_iq_div_inst_cnt_sample_3, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_2, 
                Q0=>qpskModule_1_iq_div_inst_cnt_sample_2);
    qpskModule_1_iq_div_inst_SLICE_212I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", 
                   LUT0_INITVAL=>X"4888", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_5, 
                B1=>qpskModule_1_iq_div_inst_n2811, 
                C1=>qpskModule_1_iq_div_inst_n2820, 
                D1=>qpskModule_1_iq_div_inst_n8, 
                DI1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_5, 
                DI0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_4, 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_4, 
                B0=>qpskModule_1_iq_div_inst_n2811, 
                C0=>qpskModule_1_iq_div_inst_n2819, 
                D0=>qpskModule_1_iq_div_inst_n6, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_5, 
                Q1=>qpskModule_1_iq_div_inst_cnt_sample_5, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_4, 
                Q0=>qpskModule_1_iq_div_inst_cnt_sample_4);
    qpskModule_1_iq_div_inst_SLICE_213I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", REG1_REGSET=>"SET", 
                   LUT0_INITVAL=>X"4888", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_7, 
                B1=>qpskModule_1_iq_div_inst_n2811, 
                C1=>qpskModule_1_iq_div_inst_n11, 
                D1=>qpskModule_1_iq_div_inst_n12_adj_367, 
                DI1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_7, 
                DI0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_6, 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_6, 
                B0=>qpskModule_1_iq_div_inst_n2811, 
                C0=>qpskModule_1_iq_div_inst_n6, 
                D0=>qpskModule_1_iq_div_inst_n10, M0=>'X', CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>qpskModule_1_I_1_N_182, 
                OFX1=>open, F1=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_7, 
                Q1=>qpskModule_1_iq_div_inst_cnt_sample_7, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_cnt_sample_7_N_199_6, 
                Q0=>qpskModule_1_iq_div_inst_cnt_sample_6);
    qpskModule_1_Q_inst_SLICE_214I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net_001_BUF1, A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>clockDivider_clk_4M_enable_84, 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>VCC_net_001_BUF1, 
                Q0=>qpskModule_1_rega_a_0);
    qpskModule_1_iq_div_inst_SLICE_215I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", LUT0_INITVAL=>X"FD02", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_2, 
                B1=>qpskModule_1_iq_div_inst_cnt_sample_5, 
                C1=>qpskModule_1_iq_div_inst_cnt_sample_4, 
                D1=>qpskModule_1_iq_div_inst_cnt_sample_6, DI1=>'X', 
                DI0=>qpskModule_1_iq_div_inst_iq_switch_N_216, 
                A0=>qpskModule_1_iq_div_inst_n6, 
                B0=>qpskModule_1_iq_div_inst_n12, 
                C0=>qpskModule_1_iq_div_inst_n2814, D0=>qpskModule_1_switch, 
                M0=>'X', CE=>'X', CLK=>clockDivider_clk_4M, 
                LSR=>qpskModule_1_I_1_N_182, OFX1=>open, 
                F1=>qpskModule_1_iq_div_inst_n12, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_iq_switch_N_216, 
                Q0=>qpskModule_1_switch);
    packetGen_1_SLICE_216I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"4444", LUT1_INITVAL=>X"4848", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_1, 
                B1=>next_state_3_N_154, C1=>symCounter_0, D1=>'X', 
                DI1=>packetGen_1_n76, DI0=>packetGen_1_n77, A0=>symCounter_0, 
                B0=>next_state_3_N_154, C0=>'X', D0=>'X', M0=>'X', 
                CE=>clockDivider_clk_4M_enable_92, CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_countDone, OFX1=>open, F1=>packetGen_1_n76, 
                Q1=>symCounter_1, OFX0=>open, F0=>packetGen_1_n77, 
                Q0=>symCounter_0);
    packetGen_1_SLICE_217I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"7080", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_3, 
                B1=>next_state_3_N_154, C1=>symCounter_0, 
                D1=>packetGen_1_n2815, DI1=>packetGen_1_n74, 
                DI0=>packetGen_1_n75, A0=>symCounter_0, B0=>symCounter_1, 
                C0=>next_state_3_N_154, D0=>symCounter_2, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_92, CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_countDone, OFX1=>open, F1=>packetGen_1_n74, 
                Q1=>symCounter_3, OFX0=>open, F0=>packetGen_1_n75, 
                Q0=>symCounter_2);
    packetGen_1_SLICE_218I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"4888", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_5, 
                B1=>next_state_3_N_154, C1=>packetGen_1_n2586, 
                D1=>packetGen_1_n2815, DI1=>packetGen_1_n72, 
                DI0=>packetGen_1_n73, A0=>symCounter_4, B0=>next_state_3_N_154, 
                C0=>packetGen_1_n2813, D0=>packetGen_1_n2812, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_92, CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_countDone, OFX1=>open, F1=>packetGen_1_n72, 
                Q1=>symCounter_5, OFX0=>open, F0=>packetGen_1_n73, 
                Q0=>symCounter_4);
    packetGen_1_SLICE_219I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"INV", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"4888", LUT1_INITVAL=>X"4888", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_7, 
                B1=>next_state_3_N_154, C1=>packetGen_1_n2604, 
                D1=>packetGen_1_n2602, DI1=>packetGen_1_n70, 
                DI0=>packetGen_1_n71, A0=>symCounter_6, B0=>next_state_3_N_154, 
                C0=>packetGen_1_n2594, D0=>packetGen_1_n2812, M0=>'X', 
                CE=>clockDivider_clk_4M_enable_92, CLK=>clockDivider_clk_4M, 
                LSR=>counter_0_countDone, OFX1=>open, F1=>packetGen_1_n70, 
                Q1=>symCounter_7, OFX0=>open, F0=>packetGen_1_n71, 
                Q0=>symCounter_6);
    i1544_SLICE_220I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>ICounter_2, 
                B1=>IQSerializer_I_1, C1=>IQSerializer_I_5, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_I_9, B0=>IQSerializer_I_13, 
                C0=>ICounter_2, D0=>'X', M0=>ICounter_3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n2841, 
                F0=>open, Q0=>open);
    i1541_SLICE_221I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"4444")
      port map (M1=>ICounter_1, FXA=>n2841, FXB=>n2838, A1=>ICounter_2, 
                B1=>IQSerializer_I_3, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>IQSerializer_I_11, B0=>IQSerializer_I_7, C0=>ICounter_2, 
                D0=>'X', M0=>ICounter_3, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>DEDFF_D0_N_333, F1=>open, Q1=>open, OFX0=>n2838, 
                F0=>open, Q0=>open);
    IQSerializer_1_i1566_SLICE_222I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>QCounter_2, 
                B1=>IQSerializer_Q_1, C1=>IQSerializer_Q_5, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_Q_9, B0=>IQSerializer_Q_13, 
                C0=>QCounter_2, D0=>'X', M0=>IQSerializer_1_QCounter_3, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>IQSerializer_1_n2871, F0=>open, Q0=>open);
    IQSerializer_1_i1563_SLICE_223I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"4444")
      port map (M1=>QCounter_1, FXA=>IQSerializer_1_n2871, 
                FXB=>IQSerializer_1_n2868, A1=>QCounter_2, 
                B1=>IQSerializer_Q_3, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>IQSerializer_Q_11, B0=>IQSerializer_Q_7, C0=>QCounter_2, 
                D0=>'X', M0=>IQSerializer_1_QCounter_3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>IQSerializer_1_DEDFF_D0_N_338, F1=>open, 
                Q1=>open, OFX0=>IQSerializer_1_n2868, F0=>open, Q0=>open);
    IQSerializer_1_i1482_SLICE_224I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>IQSerializer_1_n10, 
                B1=>ICounter_2, C1=>IQSerializer_I_6, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_1_n10, B0=>IQSerializer_I_12, 
                C0=>ICounter_2, D0=>'X', M0=>ICounter_1, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>IQSerializer_1_n2741, F0=>open, Q0=>open);
    IQSerializer_1_i1484_SLICE_225I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>IQSerializer_1_n2741, 
                B1=>IQSerializer_1_n2738, C1=>ICounter_3, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_1_DEDFF_D1_N_349, 
                B0=>IQSerializer_1_next_state_3_N_320, C0=>'X', D0=>'X', 
                M0=>IQSerializer_1_next_state_3_N_319, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>IQSerializer_1_n2744, F0=>open, Q0=>open);
    IQSerializer_1_i1537_SLICE_226I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"ACAC", LUT1_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>QCounter_2, 
                B1=>IQSerializer_Q_0, C1=>IQSerializer_Q_4, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_Q_8, B0=>IQSerializer_Q_12, 
                C0=>QCounter_2, D0=>'X', M0=>IQSerializer_1_QCounter_3, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>IQSerializer_1_n2834, F0=>open, Q0=>open);
    IQSerializer_1_i1534_SLICE_227I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"4444")
      port map (M1=>QCounter_1, FXA=>IQSerializer_1_n2834, 
                FXB=>IQSerializer_1_n2831, A1=>QCounter_2, 
                B1=>IQSerializer_Q_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>IQSerializer_Q_10, B0=>IQSerializer_Q_6, C0=>QCounter_2, 
                D0=>'X', M0=>IQSerializer_1_QCounter_3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>IQSerializer_1_DEDFF_D1_N_349, F1=>open, 
                Q1=>open, OFX0=>IQSerializer_1_n2831, F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_228I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_23_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_229I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_22_0_0_0_f5a, F0=>open, 
                Q0=>open);
    SLICE_230I: SLOGICB
      generic map (M1MUX=>"SIG")
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_22_0_0_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_22_0_0_f5a, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>open);
    SLICE_231I: SLOGICB
      generic map (M1MUX=>"SIG")
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_22_0_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_22_0_f5a, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>open);
    SLICE_233I: SLOGICB
      generic map (M1MUX=>"SIG")
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_22_1_0_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_22_1_0_f5a, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_234I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"0000")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_22_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_22_1_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_22_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_22_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_235I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"0000", 
                   LUT1_INITVAL=>X"F800")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_22_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_22_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_8, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_14, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_22_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_22_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_236I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_13, 
                B1=>qpskModule_1_dds0_rom_addr0_r_14, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_21_0_0_0_f5a, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_237I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_0_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_21_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_238I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"AA80", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_21_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_239I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"7FAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_21_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_240I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_1_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_21_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_241I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"AA80", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_1_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_21_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_21_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_242I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"AAAA", 
                   LUT1_INITVAL=>X"57FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_21_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_21_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_21_1_1_f5b, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_21_1_1_1_f5b, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_243I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"EAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_244I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5400", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_0_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_20_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_245I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"002A", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_20_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_246I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"7F55")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_20_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_247I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5400", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_1_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_20_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_248I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"002A", 
                   LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_1_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_20_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_20_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_249I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5555", 
                   LUT1_INITVAL=>X"57FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_20_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_20_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_20_1_1_f5b, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_20_1_1_1_f5b, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_250I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"BFAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_251I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"8155", 
                   LUT1_INITVAL=>X"EAAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_252I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"556A", 
                   LUT1_INITVAL=>X"AAAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_253I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"7FAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_254I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"8155", 
                   LUT1_INITVAL=>X"EAAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_255I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"557A", 
                   LUT1_INITVAL=>X"AAAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_256I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"EAAA", 
                   LUT1_INITVAL=>X"57FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_19_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_19_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_19_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_19_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_257I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F800", LUT1_INITVAL=>X"AFD5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_258I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2BFD", 
                   LUT1_INITVAL=>X"BFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_259I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"0707", 
                   LUT1_INITVAL=>X"EAEA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_9, 
                B0=>qpskModule_1_dds0_rom_addr0_r_10, 
                C0=>qpskModule_1_dds0_rom_addr0_r_11, D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_260I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"2AD4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_261I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2BFD", 
                   LUT1_INITVAL=>X"BFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_262I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"402F", 
                   LUT1_INITVAL=>X"FEAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_263I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"B550", 
                   LUT1_INITVAL=>X"02AA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_18_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_18_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_18_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_18_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_264I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"07C0", LUT1_INITVAL=>X"057A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_265I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2B52", 
                   LUT1_INITVAL=>X"BFFA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_266I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"F43F", 
                   LUT1_INITVAL=>X"B4B4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_267I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5E85", 
                   LUT1_INITVAL=>X"5EAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_268I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"6B52", 
                   LUT1_INITVAL=>X"BFFA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_269I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"B42F", 
                   LUT1_INITVAL=>X"ABD4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_270I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"1EA5", 
                   LUT1_INITVAL=>X"57AA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_17_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_17_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_17_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_17_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_271I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C738", LUT1_INITVAL=>X"C52F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_272I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7186", 
                   LUT1_INITVAL=>X"BEA5")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_273I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"4934", 
                   LUT1_INITVAL=>X"1B1B")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_274I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5B2C", 
                   LUT1_INITVAL=>X"0BFA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_275I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"39E6", 
                   LUT1_INITVAL=>X"BFAD")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_276I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9B6C", 
                   LUT1_INITVAL=>X"416B")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_277I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9B4C", 
                   LUT1_INITVAL=>X"42FE")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_16_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_16_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_16_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_16_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_278I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F4B6", LUT1_INITVAL=>X"2C64")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_279I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"49E3", 
                   LUT1_INITVAL=>X"B14E")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_280I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"DA78", 
                   LUT1_INITVAL=>X"C4E5")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_281I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"C963", 
                   LUT1_INITVAL=>X"5BEE")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_282I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"258F", 
                   LUT1_INITVAL=>X"BC46")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_283I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2DA3", 
                   LUT1_INITVAL=>X"B139")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_284I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"0D8F", 
                   LUT1_INITVAL=>X"12EB")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_15_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_15_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_15_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_15_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_285I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"2664", LUT1_INITVAL=>X"375D")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_286I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"6C64", 
                   LUT1_INITVAL=>X"3232")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_287I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"B399", 
                   LUT1_INITVAL=>X"7DDE")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_288I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"44E4", 
                   LUT1_INITVAL=>X"4BAD")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_289I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9393", 
                   LUT1_INITVAL=>X"5297")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_290I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9B34", 
                   LUT1_INITVAL=>X"0823")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_291I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"3B13", 
                   LUT1_INITVAL=>X"06BA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_14_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_14_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_14_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_14_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_292I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"17E8", LUT1_INITVAL=>X"157A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_293I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2228", 
                   LUT1_INITVAL=>X"998D")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_294I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D74A", 
                   LUT1_INITVAL=>X"A5FC")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_295I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"A08A", 
                   LUT1_INITVAL=>X"0F93")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_296I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7777", 
                   LUT1_INITVAL=>X"9367")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, C0=>'X', D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_297I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"482D", 
                   LUT1_INITVAL=>X"8F56")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_298I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7DF7", 
                   LUT1_INITVAL=>X"16E1")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_13_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_13_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_13_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_13_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_299I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1C3C", LUT1_INITVAL=>X"152C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_300I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"554A", 
                   LUT1_INITVAL=>X"5EB9")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_301I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5C36", 
                   LUT1_INITVAL=>X"327C")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_302I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9D7D", 
                   LUT1_INITVAL=>X"4E37")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_303I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFE0", 
                   LUT1_INITVAL=>X"2041")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_304I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"3C8D", 
                   LUT1_INITVAL=>X"927C")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_305I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"25D5", 
                   LUT1_INITVAL=>X"1258")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_12_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_12_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_12_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_12_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_306I: SLOGICB
      generic map (M0MUX=>"VHI", LUT1_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_11_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_307I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0007", LUT1_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_9, 
                B0=>qpskModule_1_dds0_rom_addr0_r_10, 
                C0=>qpskModule_1_dds0_rom_addr0_r_11, 
                D0=>qpskModule_1_dds0_rom_addr0_r_12, 
                M0=>qpskModule_1_dds0_rom_addr0_r_14, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_10_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_308I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"0000")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_10_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_10_0_1_f5b, A1=>'X', 
                B1=>'X', C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_10_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_10_0_1_f5b, F0=>open, 
                Q0=>open);
    SLICE_309I: SLOGICB
      generic map (M1MUX=>"SIG")
      port map (M1=>GND_net, FXA=>qpskModule_1_dds0_triglut_1_0_10_1_0_f5a, 
                FXB=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_10_1_f5b, F1=>open, 
                Q1=>open, OFX0=>open, F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_310I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FFEA", LUT1_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_9_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_311I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"15FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_9_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_9_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_312I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_0_1_f5b, A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_9_0_f5a, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_9_0_1_0_f5a, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_313I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"1111")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_13, 
                B1=>qpskModule_1_dds0_rom_addr0_r_14, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_9_0_1_f5b, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_9_0_1_1_f5b, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_314I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFFF", 
                   LUT1_INITVAL=>X"0155")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_9_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_9_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_315I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"FFFF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_1_1_f5b, A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_9_1_f5b, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_9_1_1_0_f5a, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_316I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"1111")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_15, 
                FXA=>qpskModule_1_dds0_triglut_1_0_9_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_9_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_13, 
                B1=>qpskModule_1_dds0_rom_addr0_r_14, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_9_1_1_f5b, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_9_1_1_1_f5b, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_317I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FFEA", LUT1_INITVAL=>X"AAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_318I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"40FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_8_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_319I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"2F2F")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_11, 
                C1=>qpskModule_1_dds0_rom_addr0_r_15, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_8_0_f5a, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_8_0_1_0_f5a, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_320I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"557F", 
                   LUT1_INITVAL=>X"5555")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_8_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_321I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFFF", 
                   LUT1_INITVAL=>X"5400")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_8_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_322I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFFF", 
                   LUT1_INITVAL=>X"002A")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_8_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_323I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"557F", 
                   LUT1_INITVAL=>X"5555")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_8_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_8_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_8_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_8_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_324I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"FFEA", LUT1_INITVAL=>X"5557")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_325I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"6A55")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_7_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_326I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"A157")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_7_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_327I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFD5", 
                   LUT1_INITVAL=>X"5555")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_7_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_328I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5555", 
                   LUT1_INITVAL=>X"5EAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, B0=>'X', C0=>'X', 
                D0=>'X', M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', 
                CLK=>'X', LSR=>'X', 
                OFX1=>qpskModule_1_dds0_triglut_1_0_7_1_0_f5a, F1=>open, 
                Q1=>open, OFX0=>qpskModule_1_dds0_triglut_1_0_7_1_0_1_f5b, 
                F0=>open, Q0=>open);
    qpskModule_1_dds0_SLICE_329I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5557", 
                   LUT1_INITVAL=>X"AA81")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_7_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_330I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFD5", 
                   LUT1_INITVAL=>X"5555")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_7_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_7_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_7_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_7_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_331I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"5540", LUT1_INITVAL=>X"2ABD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_332I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"557F", 
                   LUT1_INITVAL=>X"F002")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_333I: SLOGICB
      generic map (M0MUX=>"VHI", M1MUX=>"SIG", LUT1_INITVAL=>X"F4FD")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, 
                D1=>qpskModule_1_dds0_rom_addr0_r_15, DI1=>'X', DI0=>'X', 
                A0=>'X', B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_334I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"AFD5", 
                   LUT1_INITVAL=>X"007F")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_335I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"557F", 
                   LUT1_INITVAL=>X"F402")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_336I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FFFD", 
                   LUT1_INITVAL=>X"BFD4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_337I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"ABD5", 
                   LUT1_INITVAL=>X"0707")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_6_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_6_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_9, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_6_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_6_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_338I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"55EA", LUT1_INITVAL=>X"85E8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_339I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2BD5", 
                   LUT1_INITVAL=>X"F0BD")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_340I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7FF5", 
                   LUT1_INITVAL=>X"2B52")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_341I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7A80", 
                   LUT1_INITVAL=>X"0F83")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_342I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2BD5", 
                   LUT1_INITVAL=>X"F42D")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_343I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"5FFD", 
                   LUT1_INITVAL=>X"4AD6")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_344I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7E80", 
                   LUT1_INITVAL=>X"07C0")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_5_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_5_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_5_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_5_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_345I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"7F42", LUT1_INITVAL=>X"D369")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_346I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D682", 
                   LUT1_INITVAL=>X"B249")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_347I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"95F5", 
                   LUT1_INITVAL=>X"8638")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_348I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D28F", 
                   LUT1_INITVAL=>X"738C")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_349I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D682", 
                   LUT1_INITVAL=>X"36D9")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_350I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"B5FD", 
                   LUT1_INITVAL=>X"679C")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_351I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D683", 
                   LUT1_INITVAL=>X"39CF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_4_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_4_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_4_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_4_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_352I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"DF68", LUT1_INITVAL=>X"1A4E")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_353I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9C8D", 
                   LUT1_INITVAL=>X"796F")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_354I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CA35", 
                   LUT1_INITVAL=>X"1E4B")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_355I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"98D2", 
                   LUT1_INITVAL=>X"B4BC")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_356I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9C8D", 
                   LUT1_INITVAL=>X"C5B4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_357I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"623D", 
                   LUT1_INITVAL=>X"F1A4")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_358I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"9C9C", 
                   LUT1_INITVAL=>X"5AC3")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_3_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_3_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, D0=>'X', 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_3_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_3_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_359I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"D748", LUT1_INITVAL=>X"9C89")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_360I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"EEF9", 
                   LUT1_INITVAL=>X"6734")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_361I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"43C2", 
                   LUT1_INITVAL=>X"98D8")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_362I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"EBB1", 
                   LUT1_INITVAL=>X"9992")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_363I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"C410", 
                   LUT1_INITVAL=>X"2CD9")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_364I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"E94A", 
                   LUT1_INITVAL=>X"C9C9")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_365I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"4446", 
                   LUT1_INITVAL=>X"CE33")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_2_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_2_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_2_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_2_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_366I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"27C2", LUT1_INITVAL=>X"4414")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_367I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"FE96", 
                   LUT1_INITVAL=>X"4BAC")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_368I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"C667", 
                   LUT1_INITVAL=>X"5111")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_369I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"7AA0", 
                   LUT1_INITVAL=>X"5FA1")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_370I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"6AF1", 
                   LUT1_INITVAL=>X"B412")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_371I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"E6C9", 
                   LUT1_INITVAL=>X"EEEE")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_372I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"0FFD", 
                   LUT1_INITVAL=>X"E85E")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_1_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_1_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_1_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_1_1_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_373I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"B1C8", LUT1_INITVAL=>X"FAE4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_0_0_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_374I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"F932", 
                   LUT1_INITVAL=>X"B0E9")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_0_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_375I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"75EB", 
                   LUT1_INITVAL=>X"4AAA")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_0_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_376I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D2A0", 
                   LUT1_INITVAL=>X"F0E1")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_0_1_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_377I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"3E49", 
                   LUT1_INITVAL=>X"B13C")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_1_0_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_1_0_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_1_0_f5a, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_1_0_1_f5b, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_378I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"8204", 
                   LUT1_INITVAL=>X"07FF")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_12, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_1_1_0_f5a, F0=>open, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_379I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"B2A8", 
                   LUT1_INITVAL=>X"3CF1")
      port map (M1=>qpskModule_1_dds0_rom_addr0_r_13, 
                FXA=>qpskModule_1_dds0_triglut_1_0_0_1_1_0_f5a, 
                FXB=>qpskModule_1_dds0_triglut_1_0_0_1_1_1_f5b, 
                A1=>qpskModule_1_dds0_rom_addr0_r_14, 
                B1=>qpskModule_1_dds0_rom_addr0_r_9, 
                C1=>qpskModule_1_dds0_rom_addr0_r_10, 
                D1=>qpskModule_1_dds0_rom_addr0_r_11, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_14, 
                B0=>qpskModule_1_dds0_rom_addr0_r_9, 
                C0=>qpskModule_1_dds0_rom_addr0_r_10, 
                D0=>qpskModule_1_dds0_rom_addr0_r_11, 
                M0=>qpskModule_1_dds0_rom_addr0_r_15, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>qpskModule_1_dds0_triglut_1_0_0_1_1_f5b, 
                F1=>open, Q1=>open, 
                OFX0=>qpskModule_1_dds0_triglut_1_0_0_1_1_1_f5b, F0=>open, 
                Q0=>open);
    SLICE_380I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"D4A8", LUT1_INITVAL=>X"6C47")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_6, 
                B1=>symCounter_1, C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', 
                DI0=>'X', A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_0_0_0_f5a, F0=>open, Q0=>open);
    SLICE_381I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"4E06", 
                   LUT1_INITVAL=>X"216E")
      port map (M1=>symCounter_5, FXA=>addr_7_I_0_0_0_0_f5a, 
                FXB=>addr_7_I_0_0_0_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_0_0_f5a, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_0_0_1_f5b, F0=>open, Q0=>open);
    SLICE_382I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2916", 
                   LUT1_INITVAL=>X"D141")
      port map (M1=>symCounter_4, FXA=>addr_7_I_0_0_0_f5a, 
                FXB=>addr_7_I_0_0_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_0_f5a, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_0_1_0_f5a, F0=>open, Q0=>open);
    SLICE_383I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"D296", 
                   LUT1_INITVAL=>X"6BD8")
      port map (M1=>symCounter_5, FXA=>addr_7_I_0_0_1_0_f5a, 
                FXB=>addr_7_I_0_0_1_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_0_1_f5b, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_0_1_1_f5b, F0=>open, Q0=>open);
    SLICE_384I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"E3DD", 
                   LUT1_INITVAL=>X"CD86")
      port map (M1=>symCounter_0, FXA=>addr_7_I_0_0_f5a, FXB=>addr_7_I_0_1_f5b, 
                A1=>symCounter_6, B1=>symCounter_1, C1=>symCounter_2, 
                D1=>symCounter_3, DI1=>'X', DI0=>'X', A0=>symCounter_6, 
                B0=>symCounter_1, C0=>symCounter_2, D0=>symCounter_3, 
                M0=>symCounter_7, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>data, 
                F1=>open, Q1=>open, OFX0=>addr_7_I_0_1_0_0_f5a, F0=>open, 
                Q0=>open);
    SLICE_385I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"A9E7", 
                   LUT1_INITVAL=>X"3FB8")
      port map (M1=>symCounter_5, FXA=>addr_7_I_0_1_0_0_f5a, 
                FXB=>addr_7_I_0_1_0_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_1_0_f5a, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_1_0_1_f5b, F0=>open, Q0=>open);
    SLICE_386I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"4EDF", 
                   LUT1_INITVAL=>X"F3B9")
      port map (M1=>symCounter_4, FXA=>addr_7_I_0_1_0_f5a, 
                FXB=>addr_7_I_0_1_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_1_f5b, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_1_1_0_f5a, F0=>open, Q0=>open);
    SLICE_387I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"2413", 
                   LUT1_INITVAL=>X"A456")
      port map (M1=>symCounter_5, FXA=>addr_7_I_0_1_1_0_f5a, 
                FXB=>addr_7_I_0_1_1_1_f5b, A1=>symCounter_6, B1=>symCounter_1, 
                C1=>symCounter_2, D1=>symCounter_3, DI1=>'X', DI0=>'X', 
                A0=>symCounter_6, B0=>symCounter_1, C0=>symCounter_2, 
                D0=>symCounter_3, M0=>symCounter_7, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>addr_7_I_0_1_1_f5b, F1=>open, Q1=>open, 
                OFX0=>addr_7_I_0_1_1_1_f5b, F0=>open, Q0=>open);
    SLICE_388I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FDFD", 
                   LUT1_INITVAL=>X"CA0A", CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>packetGen_1_next_symVal, 
                B1=>data, C1=>n2692, D1=>counter_0_countDone, DI1=>'X', 
                DI0=>'X', A0=>counter_0_countDone, B0=>next_state_3_N_154, 
                C0=>next_state_3_N_153, D0=>'X', M0=>next_state_3_N_156, 
                CE=>'X', CLK=>clockDivider_clk_4M, LSR=>counter_0_countDone, 
                OFX1=>open, F1=>packetGen_1_next_symVal, Q1=>open, OFX0=>open, 
                F0=>n2692, Q0=>next_state_3_N_153);
    IQSerializer_1_SLICE_389I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"22B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>IQSerializer_1_n3, 
                B1=>ICounter_1, C1=>IQSerializer_I_4, D1=>ICounter_2, DI1=>'X', 
                DI0=>'X', A0=>IQSerializer_I_0, B0=>IQSerializer_I_2, 
                C0=>ICounter_1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>IQSerializer_1_n2738, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_n3, Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_390I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFF", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_0, 
                B1=>qpskModule_1_iq_div_inst_cnt_sample_1, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_7, 
                C0=>qpskModule_1_iq_div_inst_n12, 
                D0=>qpskModule_1_iq_div_inst_n6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>qpskModule_1_iq_div_inst_n6, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_iq_div_inst_n2811, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_391I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_11, 
                B1=>qpskModule_1_dds0_rom_addr0_r_10, 
                C1=>qpskModule_1_dds0_rom_addr0_r_9, 
                D1=>qpskModule_1_dds0_rom_addr0_r_8, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r, 
                B0=>qpskModule_1_dds0_rom_addr0_r_n, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_func_or_inet, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_8, Q0=>open);
    packetGen_1_SLICE_392I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>packetGen_1_n13, 
                B1=>packetGen_1_n15, C1=>symCounter_0, D1=>symCounter_6, 
                DI1=>'X', DI0=>'X', A0=>symCounter_2, B0=>symCounter_1, 
                C0=>symCounter_7, D0=>symCounter_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>packetGen_1_n2528, Q1=>open, 
                OFX0=>open, F0=>packetGen_1_n15, Q0=>open);
    clockDivider_0_SLICE_393I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777", LUT1_INITVAL=>X"FFBF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>clockDivider_0_n2552, 
                B1=>clockDivider_0_n2612, C1=>clockDivider_0_counter_2, 
                D1=>clockDivider_0_n2550, DI1=>'X', DI0=>'X', 
                A0=>clockDivider_0_n1725, B0=>LED7_c, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>clockDivider_0_n1725, Q1=>open, OFX0=>open, 
                F0=>clockDivider_0_n378, Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_394I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_iq_div_inst_cnt_sample_4, 
                B1=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                C1=>qpskModule_1_iq_div_inst_cnt_sample_1, 
                D1=>qpskModule_1_iq_div_inst_cnt_sample_2, DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_2, 
                C0=>qpskModule_1_iq_div_inst_cnt_sample_4, 
                D0=>qpskModule_1_iq_div_inst_cnt_sample_5, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_iq_div_inst_n12_adj_367, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_n10, Q0=>open);
    qpskModule_1_SLICE_395I: SLOGICB
      generic map (LUT0_INITVAL=>X"DFDF", LUT1_INITVAL=>X"FDFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>counter_0_countDone, 
                B1=>qpskModule_1_switch, C1=>next_state_3_N_156, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>counter_0_countDone, 
                B0=>next_state_3_N_156, C0=>qpskModule_1_switch, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_clk_N_175_enable_5, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_iq_div_inst_clk_N_175_enable_3, Q0=>open);
    packetGen_1_SLICE_396I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>symCounter_2, 
                B1=>symCounter_3, C1=>symCounter_5, D1=>symCounter_4, DI1=>'X', 
                DI0=>'X', A0=>symCounter_2, B0=>symCounter_1, C0=>symCounter_4, 
                D0=>symCounter_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>packetGen_1_n2594, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2604, Q0=>open);
    clockDivider_0_SLICE_397I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>clockDivider_0_counter_4, 
                B1=>clockDivider_0_counter_7, C1=>clockDivider_0_counter_3, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>clockDivider_0_counter_1, 
                B0=>clockDivider_0_counter_0, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>clockDivider_0_n2552, Q1=>open, OFX0=>open, 
                F0=>clockDivider_0_n2612, Q0=>open);
    qpskModule_1_dds0_SLICE_398I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CACA", 
                   CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_7, 
                B1=>qpskModule_1_dds0_rom_addr0_r_n_7, 
                C1=>qpskModule_1_dds0_mx_ctrl_r, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_6, 
                B0=>qpskModule_1_dds0_rom_addr0_r_n_6, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>theta_8, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_rom_addr0_r_15, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_14, 
                Q0=>qpskModule_1_dds0_mx_ctrl_r);
    qpskModule_1_dds0_SLICE_399I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_2, 
                B1=>qpskModule_1_dds0_rom_addr0_r_n_2, 
                C1=>qpskModule_1_dds0_mx_ctrl_r, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_3, 
                B0=>qpskModule_1_dds0_rom_addr0_r_n_3, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_rom_addr0_r_10, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_11, Q0=>open);
    IQSerializer_1_SLICE_400I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"6666")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>IQSerializer_1_DEDFF_0_neg_edge, 
                B1=>IQSerializer_1_DEDFF_0_pose_edge, C1=>'X', D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>IQSerializer_1_DEDFF_D0_N_338, 
                B0=>IQSerializer_1_next_state_3_N_321, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>serial_iq_c, Q1=>open, OFX0=>open, F0=>IQSerializer_1_n1, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_401I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', 
                A1=>qpskModule_1_dds0_rom_addr0_r_4, 
                B1=>qpskModule_1_dds0_rom_addr0_r_n_4, 
                C1=>qpskModule_1_dds0_mx_ctrl_r, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_5, 
                B0=>qpskModule_1_dds0_rom_addr0_r_n_5, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>qpskModule_1_dds0_rom_addr0_r_12, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_13, Q0=>open);
    counter_0_SLICE_402I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cout, 
                B0=>clockDivider_clkLock, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>counter_0_n1787, Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_403I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_2, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_iq_div_inst_n2819, 
                Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_404I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_2, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_1, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_iq_div_inst_n2820, 
                Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_405I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_4, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_3, 
                C0=>qpskModule_1_iq_div_inst_cnt_sample_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>qpskModule_1_iq_div_inst_n8, Q0=>open);
    qpskModule_1_iq_div_inst_SLICE_406I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_iq_div_inst_cnt_sample_0, 
                B0=>qpskModule_1_iq_div_inst_cnt_sample_6, 
                C0=>qpskModule_1_iq_div_inst_cnt_sample_5, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>qpskModule_1_iq_div_inst_n11, Q0=>open);
    qpskModule_1_dds0_SLICE_407I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>counter_0_countDone, 
                B0=>next_state_3_N_156, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_I_1_N_182, Q0=>open);
    qpskModule_1_dds0_SLICE_408I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>counter_0_countDone, 
                B0=>fskModule_symDone, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>clockDivider_clk_4M_enable_92, Q0=>open);
    qpskModule_1_dds0_muxb_54_SLICE_409I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_1, 
                B0=>qpskModule_1_dds0_rom_addr0_r_n_1, 
                C0=>qpskModule_1_dds0_mx_ctrl_r, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_9, Q0=>open);
    qpskModule_1_dds0_muxb_36_SLICE_410I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_11, 
                B0=>qpskModule_1_dds0_rom_dout_s_n_11, 
                C0=>qpskModule_1_dds0_sinromoutsel, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_s_11, Q0=>open);
    qpskModule_1_dds0_SLICE_411I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_5, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_5_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_412I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_6, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_6_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_413I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"5555", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_7, B0=>'X', C0=>'X', D0=>'X', 
                M0=>theta_7, CE=>'X', CLK=>clockDivider_clk_4M, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_addr0_r_7_inv, 
                Q0=>qpskModule_1_dds0_rom_addr0_r_7);
    qpskModule_1_dds0_SLICE_414I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_4, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_4_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_415I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_3, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_3_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_416I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_2, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_2_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_417I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>qpskModule_1_dds0_rom_addr0_r_1, B0=>'X', C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_1_inv, 
                Q0=>open);
    qpskModule_1_dds0_SLICE_418I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"5555", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_addr0_r, 
                B0=>'X', C0=>'X', D0=>'X', M0=>theta_0, CE=>'X', 
                CLK=>clockDivider_clk_4M, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>qpskModule_1_dds0_rom_addr0_r_inv, 
                Q0=>qpskModule_1_dds0_rom_addr0_r);
    qpskModule_1_dds0_SLICE_419I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_11, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_11_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_420I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_10, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_10_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_421I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_9, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_9_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_422I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_8, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_8_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_423I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_7, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_7_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_424I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_6, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_6_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_425I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_5, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_5_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_426I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_4, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_4_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_427I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_3, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_3_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_428I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_2, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_2_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_429I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_1, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_1_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_430I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_431I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_23, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_23_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_432I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_22, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_22_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_433I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_21, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_21_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_434I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_20, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_20_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_435I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_19, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_19_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_436I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_18, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_18_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_437I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_17, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_17_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_438I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_16, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_16_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_439I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_15, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_15_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_440I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_14, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_14_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_441I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_13, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_13_inv, Q0=>open);
    qpskModule_1_dds0_SLICE_442I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_dds0_rom_dout_12, 
                B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_dds0_rom_dout_12_inv, Q0=>open);
    qpskModule_1_Q_inst_SLICE_443I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_0, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_444I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_3, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n1, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_445I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_2, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_1_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_446I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_5, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n1, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_447I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_4, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_2_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_448I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_7, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n1, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_449I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_6, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_3_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_450I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_9, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n1, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_451I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_8, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_4_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_452I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_11, 
                B0=>qpskModule_1_rega_a_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n3, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_453I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_10, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_5_n0, 
                Q0=>open);
    qpskModule_1_Q_inst_SLICE_454I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_Q_inst_regb_b_1, 
                B0=>qpskModule_1_Q_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_Q_inst_multiplier_12_2_m_0_mult_0_0_n1, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_455I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_0, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_456I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_3, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n1, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_457I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_2, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_1_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_458I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_5, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n1, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_459I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_4, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_2_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_460I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_7, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n1, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_461I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_6, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_3_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_462I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_9, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n1, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_463I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_8, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_4_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_464I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_11, 
                B0=>qpskModule_1_rega_a_0, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n3, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_465I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_10, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_5_n0, 
                Q0=>open);
    qpskModule_1_I_inst_SLICE_466I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>qpskModule_1_I_inst_regb_b_1, 
                B0=>qpskModule_1_I_inst_rega_a_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, 
                F0=>qpskModule_1_I_inst_multiplier_12_2_m_0_mult_0_0_n1, 
                Q0=>open);
    packetGen_1_SLICE_467I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>symCounter_6, 
                B0=>symCounter_0, C0=>symCounter_5, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2602, Q0=>open);
    packetGen_1_SLICE_468I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>symCounter_0, 
                B0=>symCounter_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2812, Q0=>open);
    packetGen_1_SLICE_469I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>symCounter_3, 
                B0=>symCounter_4, C0=>symCounter_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2586, Q0=>open);
    packetGen_1_SLICE_470I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>symCounter_2, 
                B0=>symCounter_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2813, Q0=>open);
    packetGen_1_SLICE_471I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>next_state_3_N_156, 
                B0=>counter_0_countDone, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>clockDivider_clk_4M_enable_84, Q0=>open);
    packetGen_1_SLICE_472I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>symCounter_2, 
                B0=>symCounter_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>packetGen_1_n2815, Q0=>open);
    SLICE_473I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>LED4_c_c, B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>top_rst_N_28, Q0=>open);
    IQSerializer_1_SLICE_474I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>IQSerializer_1_next_state_3_N_321, B0=>IQSerializer_start, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_n1788, Q0=>open);
    IQSerializer_1_SLICE_475I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>IQSerializer_1_QCounter_3, 
                B0=>QCounter_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_n2562, Q0=>open);
    IQSerializer_1_SLICE_476I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>IQSerializer_1_next_state_3_N_319, B0=>IQSerializer_start, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>IQSerializer_1_n1789, Q0=>open);
    IQSerializer_1_SLICE_477I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>IQSerializer_1_QCounter_3, 
                B0=>IQSerializer_1_next_state_3_N_321, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>IQSerializer_1_n2564, Q0=>open);
    IQSerializer_1_SLICE_478I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>IQSerializer_I_8, 
                B0=>IQSerializer_I_10, C0=>ICounter_1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>IQSerializer_1_n10, Q0=>open);
    SLICE_479I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    top_rstI: top_rstB
      port map (PADDI=>LED4_c_c, toprst=>top_rst);
    top_clkI: top_clkB
      port map (PADDI=>top_clk_c, topclk=>top_clk);
    LED7I: LED7B
      port map (PADDO=>LED7_c, LED7S=>LED7);
    LED6I: LED6B
      port map (LED6S=>LED6);
    LED5I: LED5B
      port map (LED5S=>LED5);
    LED4I: LED4B
      port map (PADDO=>LED4_c_c, LED4S=>LED4);
    LED3I: LED3B
      port map (LED3S=>LED3);
    serial_clkI: serial_clkB
      port map (PADDO=>serial_clk_c, serialclk=>serial_clk);
    LED2I: LED2B
      port map (LED2S=>LED2);
    LED1I: LED1B
      port map (LED1S=>LED1);
    serial_iqI: serial_iqB
      port map (PADDO=>serial_iq_c, serialiq=>serial_iq);
    LEDI: LEDB
      port map (PADDO=>LED_c, LEDS=>LED);
    my_instance_1_PLLInst_0I: my_instance_1_PLLInst_0
      port map (CLKI=>top_clk_c, CLKFB=>pll_clko_1, STDBY=>GND_net, 
                CLKOP=>pll_clko_1);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>counter_0_countDone);
    my_instance_2_PLLInst_0I: my_instance_2_PLLInst_0
      port map (CLKI=>pll_clko_1, CLKFB=>serial_clk_c, STDBY=>GND_net, 
                RST=>top_rst_N_28, LOCK=>LED7_c, CLKOP=>serial_clk_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5UM;
  configuration Structure_CON of top_module is
    for Structure
    end for;
  end Structure_CON;


