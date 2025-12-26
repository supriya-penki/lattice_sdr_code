// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Sep 15 12:34:29 2025
//
// Verilog Description of module top_level
//

module top_level (clk, serial_clk, LED, serial_iq) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(6[8:17])
    input clk;   // c:/lscc/lattice_projects/src/top_module.v(7[9:12])
    output serial_clk;   // c:/lscc/lattice_projects/src/top_module.v(19[11:21])
    output LED /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(20[17:20])
    output serial_iq /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(21[11:20])
    
    wire VCC_net /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(25[8:11])
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(7[9:12])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(19[11:21])
    wire LED_c /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(20[17:20])
    
    wire GND_net, pll_lock;
    
    VHI i2 (.Z(VCC_net));
    pll_64M my_pll_instance (.GND_net(GND_net), .clk_c(clk_c), .VCC_net(VCC_net), 
            .serial_clk_c(serial_clk_c), .pll_lock(pll_lock)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(51[10] 58[2])
    clockDivider clockDivider_0 (.pll_lock(pll_lock), .serial_clk_c(serial_clk_c), 
            .GND_net(GND_net), .VCC_net(VCC_net), .LED_c(LED_c)) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(142[16] 147[5])
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    IB clk_pad (.I(clk), .O(clk_c));   // c:/lscc/lattice_projects/src/top_module.v(7[9:12])
    OB serial_iq_pad (.I(VCC_net), .O(serial_iq));   // c:/lscc/lattice_projects/src/top_module.v(21[11:20])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/lscc/lattice_projects/src/top_module.v(20[17:20])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/lscc/lattice_projects/src/top_module.v(19[11:21])
    
endmodule
//
// Verilog Description of module pll_64M
//

module pll_64M (GND_net, clk_c, VCC_net, serial_clk_c, pll_lock) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input GND_net;
    input clk_c;
    input VCC_net;
    output serial_clk_c;
    output pll_lock;
    
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(7[9:12])
    wire VCC_net /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(25[8:11])
    wire CLKIt /* synthesis is_clock=1 */ ;   // c:/lscc/lattice_projects/pll_64m/pll_64m.v(20[10:15])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(19[11:21])
    
    PLLREFCS PLLRefcs_0 (.CLK0(GND_net), .CLK1(clk_c), .SEL(VCC_net), 
            .PLLCSOUT(CLKIt)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=58 */ ;   // c:/lscc/lattice_projects/src/top_module.v(51[10] 58[2])
    EHXPLLL PLLInst_0 (.CLKI(CLKIt), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(VCC_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=51, LSE_RLINE=58 */ ;   // c:/lscc/lattice_projects/src/top_module.v(51[10] 58[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 9;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 8;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (pll_lock, serial_clk_c, GND_net, VCC_net, LED_c) /* synthesis syn_module_defined=1 */ ;
    input pll_lock;
    input serial_clk_c;
    input GND_net;
    input VCC_net;
    output LED_c;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(19[11:21])
    wire VCC_net /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(25[8:11])
    wire LED_c /* synthesis IO_TYPES=1 */ ;   // c:/lscc/lattice_projects/src/top_module.v(20[17:20])
    wire [7:0]lockCounter;   // c:/lscc/lattice_projects/src/clockdivider.v(15[11:22])
    
    wire n4, n376, n345, n346;
    wire [7:0]n37;
    
    wire n370, n12, n8, n271, n270, n269, n268, n373;
    
    LUT4 i1_2_lut (.A(pll_lock), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i130_4_lut_4_lut_3_lut (.A(pll_lock), .B(n376), .C(n345), .Z(n376)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam i130_4_lut_4_lut_3_lut.init = 16'ha8a8;
    FD1S3IX lockCounter_38__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i7.GSR = "ENABLED";
    LUT4 i122_4_lut_2_lut (.A(pll_lock), .B(n370), .Z(n370)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam i122_4_lut_2_lut.init = 16'h8888;
    LUT4 pll_lock_I_0_1_lut_rep_2 (.A(pll_lock), .Z(n346)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam pll_lock_I_0_1_lut_rep_2.init = 16'h5555;
    LUT4 i5_4_lut (.A(lockCounter[4]), .B(lockCounter[6]), .C(lockCounter[1]), 
         .D(lockCounter[3]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_rep_1 (.A(lockCounter[5]), .B(n4), .C(n12), .D(n8), 
         .Z(n345)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i2_4_lut_rep_1.init = 16'hccc8;
    FD1S3IX lockCounter_38__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i0.GSR = "ENABLED";
    CCU2C lockCounter_38_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n271), .S0(n37[7]));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_38_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_38_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_38_add_4_9.INJECT1_1 = "NO";
    CCU2C lockCounter_38_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n270), .COUT(n271), .S0(n37[5]), .S1(n37[6]));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_38_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_38_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_38_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_38_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n269), .COUT(n270), .S0(n37[3]), .S1(n37[4]));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_38_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_38_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_38_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_38_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n268), .S1(n37[0]));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_38_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_38_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_38_add_4_1.INJECT1_1 = "NO";
    FD1S3IX lockCounter_38__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i6.GSR = "ENABLED";
    FD1S3IX lockCounter_38__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_11 (.A(lockCounter[2]), .B(lockCounter[0]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    FD1S3IX lockCounter_38__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i4.GSR = "ENABLED";
    FD1S3IX lockCounter_38__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i3.GSR = "ENABLED";
    CCU2C lockCounter_38_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n268), .COUT(n269), .S0(n37[1]), .S1(n37[2]));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_38_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_38_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_38_add_4_3.INJECT1_1 = "NO";
    FD1S3IX lockCounter_38__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i1.GSR = "ENABLED";
    LUT4 i86_3_lut (.A(n370), .B(n373), .C(n376), .Z(LED_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i86_3_lut.init = 16'hcaca;
    LUT4 i126_4_lut_2_lut (.A(n345), .B(n373), .Z(n373)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i126_4_lut_2_lut.init = 16'heeee;
    FD1S3IX lockCounter_38__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n346), 
            .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_38__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

