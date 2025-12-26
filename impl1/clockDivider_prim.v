// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Sep 10 17:16:04 2025
//
// Verilog Description of module clockDivider
//

module clockDivider (clk, pll_lock, clkOut, clkLock) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(1[8:20])
    input clk;   // c:/lscc/lattice_projects/src/clockdivider.v(2[13:16])
    input pll_lock;   // c:/lscc/lattice_projects/src/clockdivider.v(3[11:19])
    output clkOut;   // c:/lscc/lattice_projects/src/clockdivider.v(4[13:19])
    output clkLock;   // c:/lscc/lattice_projects/src/clockdivider.v(5[13:20])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(2[13:16])
    
    wire GND_net, VCC_net, pll_lock_c, clkOut_c, clkLock_c;
    wire [7:0]lockCounter;   // c:/lscc/lattice_projects/src/clockdivider.v(15[11:22])
    wire [7:0]counter;   // c:/lscc/lattice_projects/src/clockdivider.v(16[11:18])
    
    wire n138, n201, n118, n38, n39, n40, n41, n42, n43, n158, 
        clkOut_N_36, n199, n157, n156, n155, n12, n277, n154, 
        n280, n8, n45, n44, n4, n209, n38_adj_1, n39_adj_2, 
        n40_adj_3, n41_adj_4, n42_adj_5, n43_adj_6, n44_adj_7, n45_adj_8, 
        n283, n255, n161, n160, n159, n254;
    
    VHI i2 (.Z(VCC_net));
    OB clkLock_pad (.I(clkLock_c), .O(clkLock));   // c:/lscc/lattice_projects/src/clockdivider.v(5[13:20])
    CCU2C counter_45_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n157), .S0(n38));   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45_add_4_9.INIT0 = 16'haaa0;
    defparam counter_45_add_4_9.INIT1 = 16'h0000;
    defparam counter_45_add_4_9.INJECT1_0 = "NO";
    defparam counter_45_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_45_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n156), .COUT(n157), .S0(n40), .S1(n39));   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45_add_4_7.INIT0 = 16'haaa0;
    defparam counter_45_add_4_7.INIT1 = 16'haaa0;
    defparam counter_45_add_4_7.INJECT1_0 = "NO";
    defparam counter_45_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_45_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n155), .COUT(n156), .S0(n42), .S1(n41));   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45_add_4_5.INIT0 = 16'haaa0;
    defparam counter_45_add_4_5.INIT1 = 16'haaa0;
    defparam counter_45_add_4_5.INJECT1_0 = "NO";
    defparam counter_45_add_4_5.INJECT1_1 = "NO";
    LUT4 i141_4_lut_2_lut (.A(n254), .B(n280), .Z(n280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i141_4_lut_2_lut.init = 16'heeee;
    CCU2C counter_45_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n154), .COUT(n155), .S0(n44), .S1(n43));   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45_add_4_3.INIT0 = 16'haaa0;
    defparam counter_45_add_4_3.INIT1 = 16'haaa0;
    defparam counter_45_add_4_3.INJECT1_0 = "NO";
    defparam counter_45_add_4_3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i137_4_lut_2_lut (.A(pll_lock_c), .B(n277), .Z(n277)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam i137_4_lut_2_lut.init = 16'h8888;
    LUT4 i72_3_lut (.A(n277), .B(n280), .C(n283), .Z(clkLock_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i72_3_lut.init = 16'hcaca;
    FD1S3IX clkOut_28 (.D(clkOut_N_36), .CK(clk_c), .CD(n255), .Q(clkOut_c));   // c:/lscc/lattice_projects/src/clockdivider.v(18[8] 34[4])
    defparam clkOut_28.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(lockCounter[2]), .B(lockCounter[0]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n201), .B(n209), .C(counter[2]), .D(n199), .Z(n138)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    OB clkOut_pad (.I(clkOut_c), .O(clkOut));   // c:/lscc/lattice_projects/src/clockdivider.v(4[13:19])
    LUT4 i1_2_lut_adj_1 (.A(clkOut_c), .B(n138), .Z(clkOut_N_36)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'h9999;
    FD1S3IX counter_45__i7 (.D(n38), .CK(clk_c), .CD(n118), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i7.GSR = "ENABLED";
    LUT4 pll_lock_I_0_1_lut_rep_3 (.A(pll_lock_c), .Z(n255)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam pll_lock_I_0_1_lut_rep_3.init = 16'h5555;
    IB clk_pad (.I(clk), .O(clk_c));   // c:/lscc/lattice_projects/src/clockdivider.v(2[13:16])
    LUT4 i1_3_lut (.A(counter[6]), .B(counter[7]), .C(counter[3]), .Z(n201)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C counter_45_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n154), .S1(n45));   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45_add_4_1.INIT0 = 16'h0000;
    defparam counter_45_add_4_1.INIT1 = 16'h555f;
    defparam counter_45_add_4_1.INJECT1_0 = "NO";
    defparam counter_45_add_4_1.INJECT1_1 = "NO";
    LUT4 i126_2_lut (.A(counter[1]), .B(counter[0]), .Z(n209)) /* synthesis lut_function=(A (B)) */ ;
    defparam i126_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_2 (.A(pll_lock_c), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i1_2_lut_adj_2.init = 16'h8888;
    LUT4 i5_4_lut (.A(lockCounter[1]), .B(lockCounter[4]), .C(lockCounter[5]), 
         .D(lockCounter[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i133_4_lut_4_lut_3_lut (.A(pll_lock_c), .B(n283), .C(n254), .Z(n283)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(19[9:25])
    defparam i133_4_lut_4_lut_3_lut.init = 16'ha8a8;
    VLO i1 (.Z(GND_net));
    LUT4 i130_2_lut (.A(n138), .B(pll_lock_c), .Z(n118)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i130_2_lut.init = 16'h7777;
    FD1S3IX counter_45__i0 (.D(n45), .CK(clk_c), .CD(n118), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i0.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C lockCounter_46_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n161), .S0(n38_adj_1));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_46_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_46_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_46_add_4_9.INJECT1_1 = "NO";
    FD1S3IX counter_45__i6 (.D(n39), .CK(clk_c), .CD(n118), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i6.GSR = "ENABLED";
    FD1S3IX counter_45__i5 (.D(n40), .CK(clk_c), .CD(n118), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i5.GSR = "ENABLED";
    FD1S3IX counter_45__i4 (.D(n41), .CK(clk_c), .CD(n118), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i4.GSR = "ENABLED";
    FD1S3IX counter_45__i3 (.D(n42), .CK(clk_c), .CD(n118), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i3.GSR = "ENABLED";
    FD1S3IX counter_45__i2 (.D(n43), .CK(clk_c), .CD(n118), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i2.GSR = "ENABLED";
    FD1S3IX counter_45__i1 (.D(n44), .CK(clk_c), .CD(n118), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(24[24:38])
    defparam counter_45__i1.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i7 (.D(n38_adj_1), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i7.GSR = "ENABLED";
    CCU2C lockCounter_46_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n160), .COUT(n161), .S0(n40_adj_3), .S1(n39_adj_2));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_46_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_46_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_46_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_46_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n159), .COUT(n160), .S0(n42_adj_5), .S1(n41_adj_4));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_46_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_46_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_46_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_46_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n158), .COUT(n159), .S0(n44_adj_7), .S1(n43_adj_6));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_46_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_46_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_46_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_46_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n158), .S1(n45_adj_8));   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_46_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_46_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_46_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_2 (.A(lockCounter[3]), .B(n4), .C(n12), .D(n8), 
         .Z(n254)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(36[1] 46[4])
    defparam i2_4_lut_rep_2.init = 16'hccc8;
    FD1S3IX lockCounter_46__i6 (.D(n39_adj_2), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i6.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i5 (.D(n40_adj_3), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i5.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i4 (.D(n41_adj_4), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i4.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i3 (.D(n42_adj_5), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i3.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i2 (.D(n43_adj_6), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i2.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i1 (.D(n44_adj_7), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i1.GSR = "ENABLED";
    FD1S3IX lockCounter_46__i0 (.D(n45_adj_8), .CK(clk_c), .CD(n255), 
            .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lscc/lattice_projects/src/clockdivider.v(32[24:42])
    defparam lockCounter_46__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_3 (.A(counter[5]), .B(counter[4]), .Z(n199)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    IB pll_lock_pad (.I(pll_lock), .O(pll_lock_c));   // c:/lscc/lattice_projects/src/clockdivider.v(3[11:19])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

