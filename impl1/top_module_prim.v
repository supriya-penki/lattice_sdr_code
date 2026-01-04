// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jan 04 20:46:05 2026
//
// Verilog Description of module top_module
//

module top_module (top_clk, top_rst, serial_iq, serial_clk, LED, LED1, 
            LED2, LED3, LED4, LED5, LED6, LED7) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(4[8:18])
    input top_clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    input top_rst;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    output serial_iq /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    output serial_clk /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    output LED;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    output LED1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    output LED2;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    output LED3;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    output LED4;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    output LED5;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    output LED6;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    output LED7;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, n6, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal;
    wire [12:0]fskModule_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(56[21:32])
    
    wire n2900;
    wire [12:0]fskModule_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(57[21:32])
    
    wire n2853, n2189, fskModule_symDone, IQSerializer_start;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[13:17])
    
    wire n2899, n2898, n2897, n2896, top_rst_N_28, n5, n135, n134, 
        n4, n3, n2895, n2852, n2894;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2893, n2892, n2891, n2890, n2889, n2, n2888;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n26, next_state_3__N_152, next_state_3__N_153, next_state_3__N_155, 
        n3491, n3490, n939, n9;
    wire [11:0]sampleCount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(41[23:34])
    
    wire n3487, n25, n937, n124, n125, n126, n127;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n10, n2860, n2859, n2858, n2857, n2854, clockDivider_clk_4M_enable_9, 
        n23, n2851, n22, n2856, n2850, n2855, n2849, n7, n2848, 
        n16, n17, n18, n19, n2901, n20, n21, n2902, n2903, 
        n2904, n2905, n2906, n2907, n2908, n2909, n2910, n121, 
        n3350, n2946, n2944, n2821, n8, n11, n12, n13, n14, 
        n15, n2826, n24, n2825, cout, n2824, n2823, n61, n58, 
        n55, n52, n49, n46, n43, n40, n37, n34, n31, n28, 
        cout_adj_428, n110, n111, n112, n117, n116, n118, n115, 
        n119, n114, n120, n113, n122, n123, n128, n129, n130, 
        n131, n132, n133, n2822;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[7] 108[4])
    defparam LED_9.GSR = "DISABLED";
    FD1S3AX cnt1_405__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i17.GSR = "DISABLED";
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[9:61])
    FD1S3AX cnt1_405__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i16.GSR = "DISABLED";
    FSKModulator fskModule_1 (.fskModule_symDone(fskModule_symDone), .clk_N_174(clk_N_174), 
            .n939(n939), .clockDivider_clk_4M(clockDivider_clk_4M), .n3487(n3487), 
            .sampleCount({sampleCount}), .n67({n28, n31, n34, n37, 
            n40, n43, n46, n49, n52, n55, n58, n61}), .IQSerializer_start(IQSerializer_start), 
            .counter_0_countDone(counter_0_countDone), .n3490(n3490), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_Q[0] (fskModule_Q[0]), .fskModule_symVal(fskModule_symVal), 
            .next_state_3__N_153(next_state_3__N_153), .next_state_3__N_152(next_state_3__N_152), 
            .n3350(n3350), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .\fskModule_Q[12] (fskModule_Q[12]), .\fskModule_Q[11] (fskModule_Q[11]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\fskModule_I[12] (fskModule_I[12]), 
            .\fskModule_I[11] (fskModule_I[11]), .\fskModule_I[7] (fskModule_I[7]), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[2] (fskModule_I[2]), 
            .next_state_3__N_155(next_state_3__N_155), .n937(n937)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(145[14] 154[2])
    FD1S3AX cnt1_405__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i15.GSR = "DISABLED";
    FD1S3AX cnt1_405__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i14.GSR = "DISABLED";
    FD1S3AX cnt1_405__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i13.GSR = "DISABLED";
    FD1S3AX cnt1_405__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i12.GSR = "DISABLED";
    FD1S3AX cnt1_405__i11 (.D(n124), .CK(serial_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i11.GSR = "DISABLED";
    FD1S3AX cnt1_405__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i10.GSR = "DISABLED";
    FD1S3AX cnt1_405__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i9.GSR = "DISABLED";
    FD1S3AX cnt1_405__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i8.GSR = "DISABLED";
    FD1S3AX cnt1_405__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i7.GSR = "DISABLED";
    FD1S3AX cnt1_405__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i6.GSR = "DISABLED";
    FD1S3AX cnt1_405__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i5.GSR = "DISABLED";
    FD1S3AX cnt1_405__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i4.GSR = "DISABLED";
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    CCU2C _add_1_679_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2821), .S1(n61));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_679_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_679_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_1.INJECT1_1 = "NO";
    FD1S3AX cnt1_405__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i3.GSR = "DISABLED";
    FD1S3AX cnt1_405__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i2.GSR = "DISABLED";
    FD1S3AX cnt1_405__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i1.GSR = "DISABLED";
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    LUT4 i1_2_lut_rep_13 (.A(ICounter[2]), .B(ICounter[1]), .Z(n3491)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_13.init = 16'h6666;
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    LUT4 i1_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2944)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    CCU2C add_1402_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2910), 
          .S0(cout_adj_428));
    defparam add_1402_cout.INIT0 = 16'h0000;
    defparam add_1402_cout.INIT1 = 16'h0000;
    defparam add_1402_cout.INJECT1_0 = "NO";
    defparam add_1402_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(QCounter[2]), .B(QCounter[1]), .Z(n2946)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2C add_1402_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2909), .COUT(n2910));
    defparam add_1402_20.INIT0 = 16'h555f;
    defparam add_1402_20.INIT1 = 16'h555f;
    defparam add_1402_20.INJECT1_0 = "NO";
    defparam add_1402_20.INJECT1_1 = "NO";
    CCU2C add_1402_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2908), .COUT(n2909));
    defparam add_1402_18.INIT0 = 16'h555f;
    defparam add_1402_18.INIT1 = 16'h555f;
    defparam add_1402_18.INJECT1_0 = "NO";
    defparam add_1402_18.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C add_1402_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2907), .COUT(n2908));
    defparam add_1402_16.INIT0 = 16'h555f;
    defparam add_1402_16.INIT1 = 16'h555f;
    defparam add_1402_16.INJECT1_0 = "NO";
    defparam add_1402_16.INJECT1_1 = "NO";
    CCU2C add_1402_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2906), .COUT(n2907));
    defparam add_1402_14.INIT0 = 16'h555f;
    defparam add_1402_14.INIT1 = 16'h555f;
    defparam add_1402_14.INJECT1_0 = "NO";
    defparam add_1402_14.INJECT1_1 = "NO";
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    CCU2C add_1402_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2905), .COUT(n2906));
    defparam add_1402_12.INIT0 = 16'haaa0;
    defparam add_1402_12.INIT1 = 16'h555f;
    defparam add_1402_12.INJECT1_0 = "NO";
    defparam add_1402_12.INJECT1_1 = "NO";
    CCU2C add_1402_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2904), .COUT(n2905));
    defparam add_1402_10.INIT0 = 16'h555f;
    defparam add_1402_10.INIT1 = 16'haaa0;
    defparam add_1402_10.INJECT1_0 = "NO";
    defparam add_1402_10.INJECT1_1 = "NO";
    CCU2C add_1402_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2903), .COUT(n2904));
    defparam add_1402_8.INIT0 = 16'h555f;
    defparam add_1402_8.INIT1 = 16'h555f;
    defparam add_1402_8.INJECT1_0 = "NO";
    defparam add_1402_8.INJECT1_1 = "NO";
    FD1S3AX cnt1_405__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i18.GSR = "DISABLED";
    CCU2C add_1402_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2902), .COUT(n2903));
    defparam add_1402_6.INIT0 = 16'haaa0;
    defparam add_1402_6.INIT1 = 16'h555f;
    defparam add_1402_6.INJECT1_0 = "NO";
    defparam add_1402_6.INJECT1_1 = "NO";
    CCU2C add_1402_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2901), .COUT(n2902));
    defparam add_1402_4.INIT0 = 16'h555f;
    defparam add_1402_4.INIT1 = 16'haaa0;
    defparam add_1402_4.INJECT1_0 = "NO";
    defparam add_1402_4.INJECT1_1 = "NO";
    CCU2C add_1402_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2901));
    defparam add_1402_2.INIT0 = 16'h000e;
    defparam add_1402_2.INIT1 = 16'haaa0;
    defparam add_1402_2.INJECT1_0 = "NO";
    defparam add_1402_2.INJECT1_1 = "NO";
    CCU2C add_1403_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2900), .S1(cout));
    defparam add_1403_27.INIT0 = 16'h5555;
    defparam add_1403_27.INIT1 = 16'h0000;
    defparam add_1403_27.INJECT1_0 = "NO";
    defparam add_1403_27.INJECT1_1 = "NO";
    CCU2C add_1403_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2899), .COUT(n2900));
    defparam add_1403_25.INIT0 = 16'h5555;
    defparam add_1403_25.INIT1 = 16'h5555;
    defparam add_1403_25.INJECT1_0 = "NO";
    defparam add_1403_25.INJECT1_1 = "NO";
    CCU2C add_1403_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2898), .COUT(n2899));
    defparam add_1403_23.INIT0 = 16'h5555;
    defparam add_1403_23.INIT1 = 16'h5555;
    defparam add_1403_23.INJECT1_0 = "NO";
    defparam add_1403_23.INJECT1_1 = "NO";
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    CCU2C add_1403_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2897), .COUT(n2898));
    defparam add_1403_21.INIT0 = 16'h5555;
    defparam add_1403_21.INIT1 = 16'h5555;
    defparam add_1403_21.INJECT1_0 = "NO";
    defparam add_1403_21.INJECT1_1 = "NO";
    CCU2C add_1403_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2896), .COUT(n2897));
    defparam add_1403_19.INIT0 = 16'h5555;
    defparam add_1403_19.INIT1 = 16'h5555;
    defparam add_1403_19.INJECT1_0 = "NO";
    defparam add_1403_19.INJECT1_1 = "NO";
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    packetGenerator packetGen_1 (.symCounter({symCounter}), .next_state_3__N_153(next_state_3__N_153), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .n3487(n3487), .fskModule_symVal(fskModule_symVal), .clk_N_174(clk_N_174), 
            .next_state_3__N_155(next_state_3__N_155), .VCC_net(VCC_net), 
            .data(data), .n3350(n3350), .counter_0_countDone(counter_0_countDone), 
            .n3490(n3490), .n939(n939), .next_state_3__N_152(next_state_3__N_152), 
            .fskModule_symDone(fskModule_symDone)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(137[17] 143[2])
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    FD1S3AX cnt1_405__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i0.GSR = "DISABLED";
    CCU2C add_1403_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2895), .COUT(n2896));
    defparam add_1403_17.INIT0 = 16'h5555;
    defparam add_1403_17.INIT1 = 16'h5555;
    defparam add_1403_17.INJECT1_0 = "NO";
    defparam add_1403_17.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(counter_0_countDone));
    CCU2C add_1403_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2894), .COUT(n2895));
    defparam add_1403_15.INIT0 = 16'h5555;
    defparam add_1403_15.INIT1 = 16'h5555;
    defparam add_1403_15.INJECT1_0 = "NO";
    defparam add_1403_15.INJECT1_1 = "NO";
    CCU2C add_1403_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2893), .COUT(n2894));
    defparam add_1403_13.INIT0 = 16'h5555;
    defparam add_1403_13.INIT1 = 16'h5555;
    defparam add_1403_13.INJECT1_0 = "NO";
    defparam add_1403_13.INJECT1_1 = "NO";
    CCU2C add_1403_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2892), .COUT(n2893));
    defparam add_1403_11.INIT0 = 16'h5555;
    defparam add_1403_11.INIT1 = 16'h5555;
    defparam add_1403_11.INJECT1_0 = "NO";
    defparam add_1403_11.INJECT1_1 = "NO";
    CCU2C add_1403_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2891), .COUT(n2892));
    defparam add_1403_9.INIT0 = 16'h5555;
    defparam add_1403_9.INIT1 = 16'h5555;
    defparam add_1403_9.INJECT1_0 = "NO";
    defparam add_1403_9.INJECT1_1 = "NO";
    CCU2C add_1403_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2890), .COUT(n2891));
    defparam add_1403_7.INIT0 = 16'haaa5;
    defparam add_1403_7.INIT1 = 16'h5555;
    defparam add_1403_7.INJECT1_0 = "NO";
    defparam add_1403_7.INJECT1_1 = "NO";
    CCU2C add_1403_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2889), .COUT(n2890));
    defparam add_1403_5.INIT0 = 16'h5555;
    defparam add_1403_5.INIT1 = 16'haaa5;
    defparam add_1403_5.INJECT1_0 = "NO";
    defparam add_1403_5.INJECT1_1 = "NO";
    CCU2C add_1403_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2888), .COUT(n2889));
    defparam add_1403_3.INIT0 = 16'haaa5;
    defparam add_1403_3.INIT1 = 16'h5555;
    defparam add_1403_3.INJECT1_0 = "NO";
    defparam add_1403_3.INJECT1_1 = "NO";
    CCU2C add_1403_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2888));
    defparam add_1403_1.INIT0 = 16'h0000;
    defparam add_1403_1.INIT1 = 16'haaaf;
    defparam add_1403_1.INJECT1_0 = "NO";
    defparam add_1403_1.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2860), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_405_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2859), 
          .COUT(n2860), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_25.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2858), 
          .COUT(n2859), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2857), 
          .COUT(n2858), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2856), 
          .COUT(n2857), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_19.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2855), 
          .COUT(n2856), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_17.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2854), 
          .COUT(n2855), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_15.INJECT1_1 = "NO";
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .cout(cout_adj_428), .clockDivider_clkLock(clockDivider_clkLock), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .cout_adj_1(cout), 
            .counter_0_countDone(counter_0_countDone), .n2189(n2189)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(130[15] 135[2])
    CCU2C cnt1_405_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2853), 
          .COUT(n2854), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_13.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2852), 
          .COUT(n2853), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2851), 
          .COUT(n2852), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_9.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2850), 
          .COUT(n2851), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_7.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2849), 
          .COUT(n2850), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_5.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2848), 
          .COUT(n2849), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_405_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_405_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_3.INJECT1_1 = "NO";
    CCU2C cnt1_405_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2848), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_405_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_405_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_405_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_679_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2826), .S0(n28));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_679_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_679_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2825), .COUT(n2826), .S0(n34), .S1(n31));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_679_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_679_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2824), .COUT(n2825), .S0(n40), .S1(n37));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_679_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_9.INJECT1_1 = "NO";
    pll_24_64m my_instance_2 (.clk_N_319(clk_N_319), .serial_clk_c(serial_clk_c), 
            .pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), .LED7_c(LED7_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[12:100])
    CCU2C _add_1_679_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2823), .COUT(n2824), .S0(n46), .S1(n43));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_679_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_679_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2822), .COUT(n2823), .S0(n52), .S1(n49));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_679_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_405__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i19.GSR = "DISABLED";
    CCU2C _add_1_679_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2821), .COUT(n2822), .S0(n58), .S1(n55));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_679_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_679_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_679_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_679_add_4_3.INJECT1_1 = "NO";
    IQSerializer IQSerializer_1 (.clk_N_319(clk_N_319), .n937(n937), .\ICounter[2] (ICounter[2]), 
            .\QCounter[2] (QCounter[2]), .\QCounter[1] (QCounter[1]), .\fskModule_Q[11] (fskModule_Q[11]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_Q[12] (fskModule_Q[12]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\ICounter[3] (ICounter[3]), 
            .\fskModule_I[11] (fskModule_I[11]), .\fskModule_I[2] (fskModule_I[2]), 
            .\fskModule_I[7] (fskModule_I[7]), .\ICounter[1] (ICounter[1]), 
            .n3491(n3491), .IQSerializer_start(IQSerializer_start), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_I[4] (fskModule_I[4]), .\fskModule_I[12] (fskModule_I[12]), 
            .n2944(n2944), .\fskModule_Q[0] (fskModule_Q[0]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .n2946(n2946), .serial_clk_c(serial_clk_c), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(157[14] 165[2])
    FD1S3AX cnt1_405__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i20.GSR = "DISABLED";
    FD1S3AX cnt1_405__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i21.GSR = "DISABLED";
    FD1S3AX cnt1_405__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i22.GSR = "DISABLED";
    FD1S3AX cnt1_405__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i23.GSR = "DISABLED";
    FD1S3AX cnt1_405__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i24.GSR = "DISABLED";
    FD1S3AX cnt1_405__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_405__i25.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    clockDivider clockDivider_0 (.LED7_c(LED7_c), .serial_clk_c(serial_clk_c), 
            .clockDivider_clkLock(clockDivider_clkLock), .VCC_net(VCC_net), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2189(n2189), .clk_N_174(clk_N_174), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(123[14] 128[2])
    
endmodule
//
// Verilog Description of module pll_24m
//

module pll_24m (top_clk_c, pll_clko_1, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input top_clk_c;
    output pll_clko_1;
    input GND_net;
    
    wire top_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    
    EHXPLLL PLLInst_0 (.CLKI(top_clk_c), .CLKFB(pll_clko_1), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(pll_clko_1)) /* synthesis FREQUENCY_PIN_CLKOP="24.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="6", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=61, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[9:61])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 27;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 26;
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
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (fskModule_symDone, clk_N_174, n939, clockDivider_clk_4M, 
            n3487, sampleCount, n67, IQSerializer_start, counter_0_countDone, 
            n3490, \fskModule_I[0] , \fskModule_Q[0] , fskModule_symVal, 
            next_state_3__N_153, next_state_3__N_152, n3350, clockDivider_clk_4M_enable_9, 
            \fskModule_Q[12] , \fskModule_Q[11] , \fskModule_Q[7] , \fskModule_Q[4] , 
            \fskModule_Q[2] , \fskModule_I[12] , \fskModule_I[11] , \fskModule_I[7] , 
            \fskModule_I[4] , \fskModule_I[2] , next_state_3__N_155, n937) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_174;
    input n939;
    input clockDivider_clk_4M;
    output n3487;
    output [11:0]sampleCount;
    input [11:0]n67;
    output IQSerializer_start;
    input counter_0_countDone;
    input n3490;
    output \fskModule_I[0] ;
    output \fskModule_Q[0] ;
    input fskModule_symVal;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n3350;
    output clockDivider_clk_4M_enable_9;
    output \fskModule_Q[12] ;
    output \fskModule_Q[11] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[2] ;
    output \fskModule_I[12] ;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[4] ;
    output \fskModule_I[2] ;
    input next_state_3__N_155;
    output n937;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n3109;
    wire [12:0]cosine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(44[23:29])
    
    wire n527;
    wire [7:0]n243;
    
    wire firstFlag, n3489, n3046;
    wire [11:0]sampleCount_11__N_233;
    wire [12:0]sine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(43[23:27])
    wire [2:0]sin_phase;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(35[23:32])
    wire [2:0]n1;
    
    wire n3099, n3311, lastSym, clockDivider_clk_4M_enable_2, n3141, 
        n3155, n3488, n3137, n3312, n3012, n17, n3135, n3087, 
        n3104, n3189, n3496, n2006, n3157, cosOut_12__N_317;
    
    FD1S3IX symDone_60 (.D(n939), .CK(clk_N_174), .CD(n3109), .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam symDone_60.GSR = "ENABLED";
    FD1S3JX cos_phase_FSM_i1 (.D(n243[7]), .CK(clockDivider_clk_4M), .PD(n527), 
            .Q(cosine[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "DISABLED";
    FD1S3AX firstFlag_56 (.D(n3487), .CK(clockDivider_clk_4M), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_56.GSR = "DISABLED";
    LUT4 i5_2_lut_rep_11 (.A(sampleCount[9]), .B(sampleCount[10]), .Z(n3489)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut_rep_11.init = 16'heeee;
    LUT4 i1229_2_lut_4_lut (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[11]), .Z(sampleCount_11__N_233[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1229_2_lut_4_lut.init = 16'hdf00;
    FD1S3AX start_57 (.D(counter_0_countDone), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam start_57.GSR = "DISABLED";
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_233[0]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[5]), .Z(sampleCount_11__N_233[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_16 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[6]), .Z(sampleCount_11__N_233[6])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_16.init = 16'hdf00;
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_17 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[4]), .Z(sampleCount_11__N_233[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_17.init = 16'hdf00;
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "DISABLED";
    FD1S3IX sin_phase_414__i0 (.D(n1[0]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(sin_phase[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_414__i0.GSR = "DISABLED";
    LUT4 i1935_1_lut_4_lut (.A(sin_phase[1]), .B(n3099), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n3311)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1935_1_lut_4_lut.init = 16'h69c3;
    LUT4 i1_2_lut_4_lut_adj_18 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[3]), .Z(sampleCount_11__N_233[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_18.init = 16'hdf00;
    FD1P3IX lastSym_55 (.D(fskModule_symVal), .SP(clockDivider_clk_4M_enable_2), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(lastSym)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam lastSym_55.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(sampleCount[9]), .B(sampleCount[10]), .C(fskModule_symVal), 
         .D(lastSym), .Z(n3141)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeef;
    LUT4 i1973_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .C(next_state_3__N_152), .Z(n3350)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1973_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_4_lut (.A(sampleCount[5]), .B(sampleCount[8]), .C(sampleCount[1]), 
         .D(sampleCount[4]), .Z(n3155)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_4_lut_adj_19 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[0]), .Z(sampleCount_11__N_233[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_19.init = 16'hdf00;
    LUT4 i1_2_lut_rep_10 (.A(sampleCount[3]), .B(sampleCount[8]), .Z(n3488)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_10.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_20 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[2]), .Z(sampleCount_11__N_233[2])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_20.init = 16'hdf00;
    LUT4 rst_I_0_1_lut_rep_9 (.A(counter_0_countDone), .Z(n3487)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_9.init = 16'h5555;
    LUT4 i1_3_lut (.A(sampleCount[1]), .B(n3046), .C(sampleCount[0]), 
         .Z(n3109)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_4_lut_adj_21 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[1]), .Z(sampleCount_11__N_233[1])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_21.init = 16'hdf00;
    LUT4 i1230_2_lut_4_lut (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[10]), .Z(sampleCount_11__N_233[10])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1230_2_lut_4_lut.init = 16'hdf00;
    LUT4 i422_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i422_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_adj_22 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[9]), .Z(sampleCount_11__N_233[9])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_22.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_23 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[8]), .Z(sampleCount_11__N_233[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_23.init = 16'hdf00;
    LUT4 i1_3_lut_4_lut_adj_24 (.A(sampleCount[3]), .B(sampleCount[8]), 
         .C(sampleCount[5]), .D(sampleCount[0]), .Z(n3137)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_24.init = 16'hfffe;
    PFUMX sin_phase_414_mux_6_i3 (.BLUT(n3311), .ALUT(n3312), .C0(n527), 
          .Z(n3012));
    LUT4 i1_4_lut_adj_25 (.A(n3137), .B(n3141), .C(n17), .D(n3135), 
         .Z(n3099)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(55[9:25])
    defparam i1_4_lut_adj_25.init = 16'hfffe;
    FD1S3AX sin_phase_414__i2 (.D(n3012), .CK(clockDivider_clk_4M), .Q(sin_phase[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_414__i2.GSR = "DISABLED";
    FD1S3IX sin_phase_414__i1 (.D(n1[1]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(sin_phase[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_414__i1.GSR = "DISABLED";
    FD1S3IX FSK_Q__i12 (.D(n3104), .CK(clk_N_174), .CD(n3087), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "DISABLED";
    FD1S3IX FSK_Q__i11 (.D(cosine[6]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_Q[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i11.GSR = "DISABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "DISABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "DISABLED";
    FD1S3IX FSK_Q__i2 (.D(cosine[1]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "DISABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "DISABLED";
    LUT4 i249_2_lut (.A(firstFlag), .B(counter_0_countDone), .Z(n527)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam i249_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_26 (.A(n3489), .B(n17), .C(n3488), .D(n3189), 
         .Z(n3046)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hfffe;
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "DISABLED";
    FD1S3IX FSK_I__i7 (.D(sine[10]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "DISABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "DISABLED";
    FD1S3IX FSK_I__i2 (.D(n3496), .CK(clk_N_174), .CD(n3490), .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_27 (.A(sampleCount[0]), .B(n3046), .C(sampleCount[1]), 
         .D(n67[7]), .Z(sampleCount_11__N_233[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_27.init = 16'hdf00;
    LUT4 i1_2_lut (.A(sampleCount[4]), .B(sampleCount[5]), .Z(n3189)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_28 (.A(sampleCount[4]), .B(sampleCount[1]), .Z(n3135)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(55[9:25])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i1502_1_lut (.A(sin_phase[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam i1502_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .C(cosine[1]), .D(n2006), .Z(n3087)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1936_1_lut_3_lut_3_lut (.A(counter_0_countDone), .B(fskModule_symVal), 
         .C(firstFlag), .Z(n3312)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1936_1_lut_3_lut_3_lut.init = 16'h2a2a;
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_233[11]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i11.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_29 (.A(n3155), .B(sampleCount[0]), .C(sampleCount[3]), 
         .Z(n3157)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_adj_29.init = 16'h0202;
    LUT4 i434_1_lut (.A(IQSerializer_start), .Z(n937)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam i434_1_lut.init = 16'h5555;
    LUT4 i424_4_lut_4_lut (.A(counter_0_countDone), .B(n3489), .C(n3157), 
         .D(n17), .Z(clockDivider_clk_4M_enable_2)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i424_4_lut_4_lut.init = 16'h5575;
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_233[10]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i10.GSR = "ENABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_233[9]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i9.GSR = "ENABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_233[8]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i8.GSR = "ENABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_233[7]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i7.GSR = "ENABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_233[6]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i6.GSR = "ENABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_233[5]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i5.GSR = "ENABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_233[4]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i4.GSR = "ENABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_233[3]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i3.GSR = "ENABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_233[2]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_233[1]), .CK(clk_N_174), 
            .PD(n3490), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i1.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i8 (.D(n243[6]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(n243[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i7 (.D(n243[5]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(n243[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n243[4]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(n243[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n243[3]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(n243[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n243[2]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(n243[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_317), .CK(clockDivider_clk_4M), 
            .CD(n527), .Q(n243[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[1]), .CK(clockDivider_clk_4M), .CD(n527), 
            .Q(cosOut_12__N_317));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "DISABLED";
    LUT4 i1504_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam i1504_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_30 (.A(sampleCount[7]), .B(sampleCount[11]), .C(sampleCount[6]), 
         .D(sampleCount[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hfffe;
    sinModule sin_instance (.sin_phase({sin_phase}), .\sine[10] (sine[10]), 
            .\sine[12] (sine[12]), .n3496(n3496), .\sine[11] (sine[11]), 
            .\sine[4] (sine[4]), .\sine[0] (sine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.\cosine[6] (cosine[6]), .n249(n243[2]), .n246(n243[5]), 
            .n247(n243[4]), .n248(n243[3]), .\cosine[1] (cosine[1]), .cosOut_12__N_317(cosOut_12__N_317), 
            .n2006(n2006), .\cosine[7] (cosine[7]), .\cosine[4] (cosine[4]), 
            .n245(n243[6]), .n244(n243[7]), .n3104(n3104), .\cosine[0] (cosine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(163[11] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, \sine[10] , \sine[12] , n3496, \sine[11] , 
            \sine[4] , \sine[0] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output \sine[10] ;
    output \sine[12] ;
    output n3496;
    output \sine[11] ;
    output \sine[4] ;
    output \sine[0] ;
    
    
    LUT4 i1948_3_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[10] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/sinmodule.v(16[11:32])
    defparam i1948_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i1647_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1647_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1965_3_lut_rep_18 (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(n3496)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/sinmodule.v(16[11:32])
    defparam i1965_3_lut_rep_18.init = 16'h0404;
    LUT4 i1957_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1957_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1959_3_lut (.A(sin_phase[0]), .B(sin_phase[2]), .C(sin_phase[1]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1959_3_lut.init = 16'hbaba;
    LUT4 i1953_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(\sine[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1953_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (\cosine[6] , n249, n246, n247, n248, \cosine[1] , 
            cosOut_12__N_317, n2006, \cosine[7] , \cosine[4] , n245, 
            n244, n3104, \cosine[0] ) /* synthesis syn_module_defined=1 */ ;
    output \cosine[6] ;
    input n249;
    input n246;
    input n247;
    input n248;
    input \cosine[1] ;
    input cosOut_12__N_317;
    output n2006;
    output \cosine[7] ;
    output \cosine[4] ;
    input n245;
    input n244;
    output n3104;
    output \cosine[0] ;
    
    
    wire n3267, n2999, n3265, n3497;
    wire [9:0]n726;
    
    wire n3263;
    
    LUT4 i1_4_lut (.A(n3267), .B(n2999), .C(n3265), .D(n3497), .Z(\cosine[6] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcdcc;
    LUT4 i1887_2_lut (.A(n249), .B(n246), .Z(n3267)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1887_2_lut.init = 16'heeee;
    LUT4 i1885_2_lut (.A(n247), .B(n248), .Z(n3265)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1885_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(\cosine[1] ), .B(cosOut_12__N_317), .Z(n2999)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1206_4_lut (.A(n726[2]), .B(\cosine[1] ), .C(n2006), .D(n248), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1206_4_lut.init = 16'hcfce;
    LUT4 i1212_2_lut (.A(n246), .B(n247), .Z(n726[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(22[7] 29[24])
    defparam i1212_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_15 (.A(n726[1]), .B(n2999), .C(n249), .D(n248), 
         .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_15.init = 16'hcfce;
    LUT4 i1_2_lut_rep_19 (.A(n245), .B(n244), .Z(n3497)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_19.init = 16'h4444;
    LUT4 i1213_3_lut_4_lut (.A(n245), .B(n244), .C(n246), .D(n247), 
         .Z(n726[1])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1213_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1_3_lut (.A(n246), .B(n248), .C(n247), .Z(n3104)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1198_4_lut (.A(n3263), .B(\cosine[1] ), .C(cosOut_12__N_317), 
         .D(n247), .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1198_4_lut.init = 16'hcdcc;
    LUT4 i1883_2_lut (.A(n248), .B(n249), .Z(n3263)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1883_2_lut.init = 16'heeee;
    LUT4 i786_2_lut (.A(n249), .B(cosOut_12__N_317), .Z(n2006)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(16[7] 29[24])
    defparam i786_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module packetGenerator
//

module packetGenerator (symCounter, next_state_3__N_153, clockDivider_clk_4M, 
            clockDivider_clk_4M_enable_9, n3487, fskModule_symVal, clk_N_174, 
            next_state_3__N_155, VCC_net, data, n3350, counter_0_countDone, 
            n3490, n939, next_state_3__N_152, fskModule_symDone) /* synthesis syn_module_defined=1 */ ;
    output [7:0]symCounter;
    output next_state_3__N_153;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_9;
    input n3487;
    output fskModule_symVal;
    input clk_N_174;
    output next_state_3__N_155;
    input VCC_net;
    input data;
    input n3350;
    input counter_0_countDone;
    output n3490;
    output n939;
    output next_state_3__N_152;
    input fskModule_symDone;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire n3229, n3495;
    wire [7:0]n69;
    
    wire n3493, n3494, n3247, next_symVal_N_171, next_state_3__N_154, 
        next_symVal, n3237, n1989, n3106, n3245, n3165, n13, n15, 
        n3219;
    
    LUT4 i1233_4_lut (.A(symCounter[5]), .B(next_state_3__N_153), .C(n3229), 
         .D(n3495), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1233_4_lut.init = 16'h4888;
    LUT4 i1234_4_lut (.A(symCounter[4]), .B(next_state_3__N_153), .C(n3493), 
         .D(n3494), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1234_4_lut.init = 16'h4888;
    LUT4 i1235_4_lut (.A(symCounter[3]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .D(n3495), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1235_4_lut.init = 16'h4888;
    LUT4 i1237_3_lut (.A(symCounter[1]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1237_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_rep_17 (.A(symCounter[2]), .B(symCounter[1]), .Z(n3495)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_17.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n3247)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_15 (.A(symCounter[2]), .B(symCounter[3]), .Z(n3493)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_15.init = 16'h8888;
    FD1S3IX symVal_43 (.D(next_symVal_N_171), .CK(clk_N_174), .CD(n3487), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "DISABLED";
    FD1P3IX current_state_FSM_i1 (.D(VCC_net), .SP(next_state_3__N_154), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1971_4_lut (.A(next_symVal), .B(data), .C(n3350), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1971_4_lut.init = 16'hca0a;
    LUT4 i1185_2_lut_rep_12 (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .Z(n3490)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1185_2_lut_rep_12.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[3]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n3237)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i436_1_lut_2_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .Z(n939)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i436_1_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_16 (.A(symCounter[0]), .B(symCounter[1]), .Z(n3494)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_16.init = 16'h8888;
    LUT4 i1236_3_lut_4_lut (.A(symCounter[0]), .B(symCounter[1]), .C(next_state_3__N_153), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1236_3_lut_4_lut.init = 16'h7080;
    FD1S3AX current_state_FSM_i4 (.D(n3487), .CK(clockDivider_clk_4M), .Q(next_state_3__N_152));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_171)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    FD1S3IX current_state_FSM_i3 (.D(n1989), .CK(clockDivider_clk_4M), .CD(n3487), 
            .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n3106), .CK(clockDivider_clk_4M), .CD(n3487), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n3229)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1231_4_lut (.A(symCounter[7]), .B(next_state_3__N_153), .C(n3247), 
         .D(n3245), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1231_4_lut.init = 16'h4888;
    LUT4 i1184_2_lut (.A(symCounter[0]), .B(next_state_3__N_153), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1184_2_lut.init = 16'h4444;
    LUT4 i769_4_lut (.A(next_state_3__N_153), .B(next_state_3__N_152), .C(n3165), 
         .D(fskModule_symDone), .Z(n1989)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i769_4_lut.init = 16'hceee;
    LUT4 i1_3_lut (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n3245)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut.init = 16'h8080;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n13), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n3165)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3487), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 i4_2_lut (.A(symCounter[2]), .B(symCounter[6]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_12 (.A(symCounter[1]), .B(symCounter[4]), .C(symCounter[3]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h8000;
    LUT4 i1232_4_lut (.A(symCounter[6]), .B(next_state_3__N_153), .C(n3237), 
         .D(n3494), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1232_4_lut.init = 16'h4888;
    LUT4 i1_4_lut_adj_13 (.A(n13), .B(fskModule_symDone), .C(n15), .D(n3219), 
         .Z(n3106)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h8000;
    LUT4 i1_3_lut_adj_14 (.A(next_state_3__N_153), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n3219)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_14.init = 16'h8080;
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, cout, clockDivider_clkLock, 
            clockDivider_clk_4M, cout_adj_1, counter_0_countDone, n2189) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    input cout;
    input clockDivider_clkLock;
    input clockDivider_clk_4M;
    input cout_adj_1;
    output counter_0_countDone;
    input n2189;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n2838;
    wire [25:0]n109;
    
    wire n2839, n2837, n2836, n2827, n2828, n2190, countDone_N_133, 
        n2835, n2834, n2833, n2832, n2831, n2830, n2829;
    
    CCU2C waitcount_409_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2838), .COUT(n2839), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2837), .COUT(n2838), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2836), .COUT(n2837), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2827), .COUT(n2828), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_3.INJECT1_1 = "NO";
    LUT4 i1955_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n2190)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1955_2_lut.init = 16'hbbbb;
    FD1S3IX waitcount_409__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i0.GSR = "DISABLED";
    FD1S3IX waitcount_409__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i25.GSR = "DISABLED";
    LUT4 i284_1_lut (.A(cout_adj_1), .Z(countDone_N_133)) /* synthesis lut_function=(!(A)) */ ;
    defparam i284_1_lut.init = 16'h5555;
    FD1S3IX waitcount_409__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i24.GSR = "DISABLED";
    FD1S3IX waitcount_409__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i23.GSR = "DISABLED";
    FD1S3IX waitcount_409__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i22.GSR = "DISABLED";
    FD1S3IX waitcount_409__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i21.GSR = "DISABLED";
    FD1S3IX waitcount_409__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i20.GSR = "DISABLED";
    FD1S3IX waitcount_409__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i19.GSR = "DISABLED";
    FD1S3IX waitcount_409__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i18.GSR = "DISABLED";
    FD1S3IX waitcount_409__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i17.GSR = "DISABLED";
    FD1S3IX waitcount_409__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i16.GSR = "DISABLED";
    FD1S3IX waitcount_409__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i15.GSR = "DISABLED";
    FD1S3IX waitcount_409__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i14.GSR = "DISABLED";
    FD1S3IX waitcount_409__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i13.GSR = "DISABLED";
    FD1S3IX waitcount_409__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i12.GSR = "DISABLED";
    FD1S3IX waitcount_409__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i11.GSR = "DISABLED";
    FD1S3IX waitcount_409__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n2190), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i10.GSR = "DISABLED";
    FD1S3IX waitcount_409__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i9.GSR = "DISABLED";
    FD1S3IX waitcount_409__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i8.GSR = "DISABLED";
    FD1S3IX waitcount_409__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i7.GSR = "DISABLED";
    FD1S3IX waitcount_409__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i6.GSR = "DISABLED";
    FD1S3IX waitcount_409__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i5.GSR = "DISABLED";
    FD1S3IX waitcount_409__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i4.GSR = "DISABLED";
    FD1S3IX waitcount_409__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i3.GSR = "DISABLED";
    FD1S3IX waitcount_409__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i2.GSR = "DISABLED";
    FD1S3IX waitcount_409__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n2190), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409__i1.GSR = "DISABLED";
    CCU2C waitcount_409_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2835), .COUT(n2836), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2834), .COUT(n2835), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2827), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_409_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_409_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2833), .COUT(n2834), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2832), .COUT(n2833), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2831), .COUT(n2832), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2839), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_409_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2830), .COUT(n2831), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2829), .COUT(n2830), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_409_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2828), .COUT(n2829), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_409_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_409_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_409_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_409_add_4_5.INJECT1_1 = "NO";
    FD1S3IX countDone_13 (.D(countDone_N_133), .CK(clockDivider_clk_4M), 
            .CD(n2189), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=135 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module pll_24_64m
//

module pll_24_64m (clk_N_319, serial_clk_c, pll_clko_1, top_rst_N_28, 
            LED7_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_N_319;
    output serial_clk_c;
    input pll_clko_1;
    input top_rst_N_28;
    output LED7_c;
    input GND_net;
    
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    
    INV i2109 (.A(serial_clk_c), .Z(clk_N_319));
    EHXPLLL PLLInst_0 (.CLKI(pll_clko_1), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_N_28), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(LED7_c)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=100, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[12:100])
    defparam PLLInst_0.CLKI_DIV = 3;
    defparam PLLInst_0.CLKFB_DIV = 8;
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
// Verilog Description of module IQSerializer
//

module IQSerializer (clk_N_319, n937, \ICounter[2] , \QCounter[2] , 
            \QCounter[1] , \fskModule_Q[11] , \fskModule_Q[7] , \fskModule_Q[12] , 
            \fskModule_Q[2] , \ICounter[3] , \fskModule_I[11] , \fskModule_I[2] , 
            \fskModule_I[7] , \ICounter[1] , n3491, IQSerializer_start, 
            \fskModule_I[0] , \fskModule_I[4] , \fskModule_I[12] , n2944, 
            \fskModule_Q[0] , \fskModule_Q[4] , n2946, serial_clk_c, 
            serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input clk_N_319;
    input n937;
    output \ICounter[2] ;
    output \QCounter[2] ;
    output \QCounter[1] ;
    input \fskModule_Q[11] ;
    input \fskModule_Q[7] ;
    input \fskModule_Q[12] ;
    input \fskModule_Q[2] ;
    output \ICounter[3] ;
    input \fskModule_I[11] ;
    input \fskModule_I[2] ;
    input \fskModule_I[7] ;
    output \ICounter[1] ;
    input n3491;
    input IQSerializer_start;
    input \fskModule_I[0] ;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    input n2944;
    input \fskModule_Q[0] ;
    input \fskModule_Q[4] ;
    input n2946;
    input serial_clk_c;
    output serial_iq_c;
    
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire [4:0]n388;
    
    wire n1967, n3405, n3402, n3407, n3503, n3500, n3456;
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    wire [3:0]n21;
    
    wire n3399, n3397, n3401, n3398, n3502, n3501, n3499, n3395, 
        n3498, n3404, n3403;
    wire [4:0]n1;
    
    wire n2191, n2192;
    wire [4:0]n1_adj_426;
    wire [3:0]next_state_3__N_385;
    
    wire n353, n3492, n1965, n3396, n357;
    
    FD1S3IX current_state_FSM_i0 (.D(n1967), .CK(clk_N_319), .CD(n937), 
            .Q(n388[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 gnd_bdd_2_lut_4_lut (.A(n3405), .B(n3402), .C(\ICounter[2] ), 
         .D(n388[2]), .Z(n3407)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 n3455_bdd_3_lut (.A(n3503), .B(n3500), .C(n388[2]), .Z(n3456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3455_bdd_3_lut.init = 16'hcaca;
    LUT4 i1425_3_lut (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1425_3_lut.init = 16'h6a6a;
    LUT4 gnd_bdd_2_lut_1997_4_lut (.A(n3399), .B(n3397), .C(QCounter[3]), 
         .D(n388[0]), .Z(n3401)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_1997_4_lut.init = 16'hca00;
    LUT4 n3398_bdd_3_lut (.A(n3398), .B(\fskModule_Q[11] ), .C(\QCounter[2] ), 
         .Z(n3399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3398_bdd_3_lut.init = 16'hcaca;
    LUT4 n3279_bdd_4_lut_then_3_lut (.A(n388[1]), .B(\fskModule_Q[7] ), 
         .C(QCounter[3]), .Z(n3502)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam n3279_bdd_4_lut_then_3_lut.init = 16'haeae;
    LUT4 fskModule_Q_11__bdd_3_lut (.A(\QCounter[1] ), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n3398)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_11__bdd_3_lut.init = 16'he4e4;
    LUT4 n3279_bdd_4_lut_else_3_lut (.A(\fskModule_Q[2] ), .B(\fskModule_Q[11] ), 
         .C(n388[1]), .D(QCounter[3]), .Z(n3501)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+!(D))+!B (C))) */ ;
    defparam n3279_bdd_4_lut_else_3_lut.init = 16'hfafc;
    LUT4 i2028_then_4_lut (.A(\ICounter[2] ), .B(\ICounter[3] ), .C(\fskModule_I[11] ), 
         .D(\fskModule_I[2] ), .Z(n3499)) /* synthesis lut_function=(!(A (B)+!A !(B (D)+!B (C)))) */ ;
    defparam i2028_then_4_lut.init = 16'h7632;
    LUT4 QCounter_1__bdd_2_lut_2034 (.A(\fskModule_Q[2] ), .B(\QCounter[2] ), 
         .Z(n3395)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_2034.init = 16'h2222;
    PFUMX i2047 (.BLUT(n3498), .ALUT(n3499), .C0(\fskModule_I[7] ), .Z(n3500));
    PFUMX i1995 (.BLUT(n3404), .ALUT(n3403), .C0(\ICounter[1] ), .Z(n3405));
    LUT4 sub_10_inv_0_i2_1_lut (.A(\QCounter[1] ), .Z(n1[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut.init = 16'h5555;
    FD1S3IX ICounter_411__i2 (.D(n3491), .CK(clk_N_319), .CD(n2191), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_411__i2.GSR = "DISABLED";
    LUT4 i1968_2_lut (.A(n388[0]), .B(IQSerializer_start), .Z(n2192)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1968_2_lut.init = 16'h7777;
    FD1S3IX ICounter_411__i1 (.D(n1_adj_426[1]), .CK(clk_N_319), .CD(n2191), 
            .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_411__i1.GSR = "DISABLED";
    LUT4 fskModule_I_4__bdd_4_lut (.A(\ICounter[1] ), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[11] ), .D(\ICounter[3] ), .Z(n3402)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut.init = 16'h44f0;
    LUT4 fskModule_I_4__bdd_3_lut_1994 (.A(\fskModule_I[2] ), .B(\fskModule_I[7] ), 
         .C(\ICounter[3] ), .Z(n3403)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1994.init = 16'hacac;
    LUT4 i1962_2_lut (.A(n388[2]), .B(IQSerializer_start), .Z(n2191)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1962_2_lut.init = 16'h7777;
    LUT4 reduce_or_98_i2_3_lut (.A(next_state_3__N_385[2]), .B(n388[4]), 
         .C(n388[0]), .Z(n353)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam reduce_or_98_i2_3_lut.init = 16'hdcdc;
    LUT4 i745_3_lut (.A(n388[2]), .B(n388[3]), .C(n3492), .Z(n1965)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i745_3_lut.init = 16'hecec;
    LUT4 fskModule_I_4__bdd_3_lut_2090 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(\ICounter[3] ), .Z(n3404)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_2090.init = 16'hacac;
    PFUMX i1992 (.BLUT(n3396), .ALUT(n3395), .C0(\QCounter[1] ), .Z(n3397));
    LUT4 i1_3_lut (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(next_state_3__N_385[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut.init = 16'hf7f7;
    LUT4 sub_4_inv_0_i2_1_lut (.A(\ICounter[1] ), .Z(n1_adj_426[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:43])
    defparam sub_4_inv_0_i2_1_lut.init = 16'h5555;
    FD1S3IX QCounter_413__i3 (.D(n21[3]), .CK(clk_N_319), .CD(n2192), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_413__i3.GSR = "DISABLED";
    FD1S3IX ICounter_411__i3 (.D(n2944), .CK(clk_N_319), .CD(n2191), .Q(\ICounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_411__i3.GSR = "DISABLED";
    LUT4 QCounter_1__bdd_3_lut_2035 (.A(\fskModule_Q[0] ), .B(\QCounter[2] ), 
         .C(\fskModule_Q[4] ), .Z(n3396)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_2035.init = 16'hb8b8;
    LUT4 i1_3_lut_rep_14 (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n3492)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_rep_14.init = 16'hf7f7;
    FD1S3IX QCounter_413__i2 (.D(n2946), .CK(clk_N_319), .CD(n2192), .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_413__i2.GSR = "DISABLED";
    FD1S3IX QCounter_413__i1 (.D(n1[1]), .CK(clk_N_319), .CD(n2192), .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_413__i1.GSR = "DISABLED";
    LUT4 i2028_else_4_lut (.A(\ICounter[2] ), .B(\ICounter[3] ), .C(\fskModule_I[11] ), 
         .D(\fskModule_I[2] ), .Z(n3498)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam i2028_else_4_lut.init = 16'h5410;
    LUT4 i103_2_lut_4_lut (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .D(n388[2]), .Z(n357)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i103_2_lut_4_lut.init = 16'h0800;
    LUT4 i747_3_lut (.A(n388[0]), .B(n388[1]), .C(next_state_3__N_385[2]), 
         .Z(n1967)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i747_3_lut.init = 16'hecec;
    FD1S3AX current_state_FSM_i4 (.D(n937), .CK(clk_N_319), .Q(n388[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n353), .CK(clk_N_319), .CD(n937), 
            .Q(n388[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1965), .CK(clk_N_319), .CD(n937), 
            .Q(n388[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n357), .CK(clk_N_319), .CD(n937), 
            .Q(n388[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    PFUMX i2049 (.BLUT(n3501), .ALUT(n3502), .C0(\QCounter[2] ), .Z(n3503));
    DEDFF DEDFF_0 (.clk_N_319(clk_N_319), .n937(n937), .serial_clk_c(serial_clk_c), 
          .next_state_3__N_376(n388[3]), .n3456(n3456), .next_state_3__N_374(n388[4]), 
          .n3407(n3407), .n3401(n3401), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_319, n937, serial_clk_c, next_state_3__N_376, n3456, 
            next_state_3__N_374, n3407, n3401, serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input clk_N_319;
    input n937;
    input serial_clk_c;
    input next_state_3__N_376;
    input n3456;
    input next_state_3__N_374;
    input n3407;
    input n3401;
    output serial_iq_c;
    
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire neg_edge, Q2, pose_edge, Q1;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_319), .CD(n937), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n937), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_376), .C(n3456), 
         .D(next_state_3__N_374), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n3407), .C(n3401), .D(next_state_3__N_376), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (LED7_c, serial_clk_c, clockDivider_clkLock, VCC_net, 
            clockDivider_clk_4M, n2189, clk_N_174, GND_net) /* synthesis syn_module_defined=1 */ ;
    input LED7_c;
    input serial_clk_c;
    output clockDivider_clkLock;
    input VCC_net;
    output clockDivider_clk_4M;
    output n2189;
    output clk_N_174;
    input GND_net;
    
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire n2106, n500;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    wire [7:0]n37;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    
    wire pll_lock_N_54, clkOut_N_64;
    wire [7:0]n37_adj_424;
    wire [7:0]n65;
    
    wire n3203, n3255, n3201, n2847, n2846, n2845, n2844, n2841, 
        n2842, n2843, n2840;
    
    LUT4 i1951_2_lut (.A(n2106), .B(LED7_c), .Z(n500)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1951_2_lut.init = 16'h7777;
    FD1S3IX counter_406__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i7.GSR = "DISABLED";
    FD1S3IX counter_406__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i6.GSR = "DISABLED";
    FD1S3IX counter_406__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i5.GSR = "DISABLED";
    FD1S3IX counter_406__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i4.GSR = "DISABLED";
    FD1S3IX counter_406__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i3.GSR = "DISABLED";
    FD1S3IX counter_406__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i2.GSR = "DISABLED";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    FD1S3IX counter_406__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i1.GSR = "DISABLED";
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i7 (.D(n37_adj_424[7]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i7.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n2106), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    FD1S3IX lockCounter_407__i6 (.D(n37_adj_424[6]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i5 (.D(n37_adj_424[5]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i4 (.D(n37_adj_424[4]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i3 (.D(n37_adj_424[3]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i2 (.D(n37_adj_424[2]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i1 (.D(n37_adj_424[1]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i1.GSR = "DISABLED";
    FD1S3IX lockCounter_407__i0 (.D(n37_adj_424[0]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407__i0.GSR = "DISABLED";
    FD1S3IX counter_406__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n500), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406__i0.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n3203), .B(n3255), .C(counter[2]), .D(n3201), 
         .Z(n2106)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i957_1_lut (.A(clockDivider_clkLock), .Z(n2189)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i957_1_lut.init = 16'h5555;
    LUT4 i1875_2_lut (.A(counter[1]), .B(counter[0]), .Z(n3255)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1875_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n3203)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_11 (.A(counter[5]), .B(counter[6]), .Z(n3201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    INV i2108 (.A(clockDivider_clk_4M), .Z(clk_N_174));
    CCU2C counter_406_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2847), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406_add_4_9.INIT0 = 16'haaa0;
    defparam counter_406_add_4_9.INIT1 = 16'h0000;
    defparam counter_406_add_4_9.INJECT1_0 = "NO";
    defparam counter_406_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_406_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2846), .COUT(n2847), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406_add_4_7.INIT0 = 16'haaa0;
    defparam counter_406_add_4_7.INIT1 = 16'haaa0;
    defparam counter_406_add_4_7.INJECT1_0 = "NO";
    defparam counter_406_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_406_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2845), .COUT(n2846), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406_add_4_5.INIT0 = 16'haaa0;
    defparam counter_406_add_4_5.INIT1 = 16'haaa0;
    defparam counter_406_add_4_5.INJECT1_0 = "NO";
    defparam counter_406_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_406_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2844), .COUT(n2845), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406_add_4_3.INIT0 = 16'haaa0;
    defparam counter_406_add_4_3.INIT1 = 16'haaa0;
    defparam counter_406_add_4_3.INJECT1_0 = "NO";
    defparam counter_406_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_406_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2844), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_406_add_4_1.INIT0 = 16'h0000;
    defparam counter_406_add_4_1.INIT1 = 16'h555f;
    defparam counter_406_add_4_1.INJECT1_0 = "NO";
    defparam counter_406_add_4_1.INJECT1_1 = "NO";
    CCU2C lockCounter_407_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2841), .COUT(n2842), .S0(n37_adj_424[3]), .S1(n37_adj_424[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_407_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_407_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_407_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_407_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2842), .COUT(n2843), .S0(n37_adj_424[5]), .S1(n37_adj_424[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_407_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_407_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_407_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_407_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2843), .S0(n37_adj_424[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_407_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_407_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_407_add_4_9.INJECT1_1 = "NO";
    CCU2C lockCounter_407_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2840), .COUT(n2841), .S0(n37_adj_424[1]), .S1(n37_adj_424[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_407_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_407_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_407_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_407_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2840), .S1(n37_adj_424[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_407_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_407_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_407_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_407_add_4_1.INJECT1_1 = "NO";
    
endmodule
