// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jan 04 13:02:29 2026
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
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal;
    wire [12:0]fskModule_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(56[21:32])
    
    wire n2158;
    wire [12:0]fskModule_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(57[21:32])
    
    wire fskModule_symDone, IQSerializer_start;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[13:17])
    
    wire n2724, n2723, cout, n2722, n2721, top_rst_N_28, n2720, 
        n2, n3, n6, n2719, n2713;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2741, n2714, n2715, n2740, n116, n115, n114, n113, 
        n112, n111, n110, n2733, n2712, n2717, n2732;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n2739, n2718, n2716, next_state_3__N_152, next_state_3__N_153, 
        next_state_3__N_155, n2711, n3364, n2710, n2709, n2738;
    wire [11:0]sampleCount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(41[23:34])
    
    wire n2731, n2730, n2737, n2729, n5, n911, n135, n134, n133;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    
    wire n3201, n2736, n2735, n2781, n2780, n2779, n2778, n2777, 
        n2776, n2775, n2774, n2773, n2772, clockDivider_clk_4M_enable_9, 
        n2771, n2770, n2769, n132, n131, n130, n129, n128, n127, 
        n126, n125, n124, n123, n122, n121, n120, n2816, n119, 
        n2734, n118, n117, n4, cout_adj_427, n18, n17, n16, 
        n15, n14, n13, n9, n8, n7, n12, n10, n11, n28, n31, 
        n34, n37, n40, n43, n46, n49, n52, n55, n58, n61, 
        n26, n25, n24, n23, n22, n21, n20, n19;
    
    VHI i2 (.Z(VCC_net));
    CCU2C cnt1_379_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2737), 
          .COUT(n2738), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_655_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2709), .S1(n61));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_655_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_655_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_1.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i18.GSR = "ENABLED";
    FSKModulator fskModule_1 (.counter_0_countDone(counter_0_countDone), .fskModule_symVal(fskModule_symVal), 
            .fskModule_symDone(fskModule_symDone), .clk_N_174(clk_N_174), 
            .n3364(n3364), .n67({n28, n31, n34, n37, n40, n43, 
            n46, n49, n52, n55, n58, n61}), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_Q[0] (fskModule_Q[0]), .sampleCount({sampleCount}), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .IQSerializer_start(IQSerializer_start), 
            .next_state_3__N_155(next_state_3__N_155), .n911(n911), .next_state_3__N_153(next_state_3__N_153), 
            .next_state_3__N_152(next_state_3__N_152), .n3201(n3201), .\fskModule_Q[12] (fskModule_Q[12]), 
            .\fskModule_Q[11] (fskModule_Q[11]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[2] (fskModule_Q[2]), 
            .\fskModule_I[12] (fskModule_I[12]), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_I[4] (fskModule_I[4]), 
            .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .\fskModule_I[2] (fskModule_I[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(145[14] 154[2])
    FD1S3AX cnt1_379__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i17.GSR = "ENABLED";
    FD1S3AX cnt1_379__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i16.GSR = "ENABLED";
    FD1S3AX cnt1_379__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i15.GSR = "ENABLED";
    FD1S3AX cnt1_379__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i14.GSR = "ENABLED";
    FD1S3AX cnt1_379__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i13.GSR = "ENABLED";
    FD1S3AX cnt1_379__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i12.GSR = "ENABLED";
    FD1S3AX cnt1_379__i11 (.D(n124), .CK(serial_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i11.GSR = "ENABLED";
    FD1S3AX cnt1_379__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i10.GSR = "ENABLED";
    CCU2C add_1273_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2719), .COUT(n2720));
    defparam add_1273_12.INIT0 = 16'haaa0;
    defparam add_1273_12.INIT1 = 16'h555f;
    defparam add_1273_12.INJECT1_0 = "NO";
    defparam add_1273_12.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i9.GSR = "ENABLED";
    FD1S3AX cnt1_379__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i8.GSR = "ENABLED";
    CCU2C cnt1_379_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2736), 
          .COUT(n2737), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_655_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2712), .COUT(n2713), .S0(n40), .S1(n37));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_655_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_9.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i7.GSR = "ENABLED";
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    FD1S3AX cnt1_379__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i6.GSR = "ENABLED";
    FD1S3AX cnt1_379__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i5.GSR = "ENABLED";
    FD1S3AX cnt1_379__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i4.GSR = "ENABLED";
    FD1S3AX cnt1_379__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i3.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C _add_1_655_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2713), .COUT(n2714), .S0(n34), .S1(n31));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_655_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_11.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i2.GSR = "ENABLED";
    CCU2C _add_1_655_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2711), .COUT(n2712), .S0(n46), .S1(n43));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_655_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_7.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i1.GSR = "ENABLED";
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    CCU2C cnt1_379_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2735), 
          .COUT(n2736), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_15.INJECT1_1 = "NO";
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    CCU2C _add_1_655_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2709), .COUT(n2710), .S0(n58), .S1(n55));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_655_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_3.INJECT1_1 = "NO";
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    CCU2C add_1273_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2718), .COUT(n2719));
    defparam add_1273_10.INIT0 = 16'h555f;
    defparam add_1273_10.INIT1 = 16'haaa0;
    defparam add_1273_10.INJECT1_0 = "NO";
    defparam add_1273_10.INJECT1_1 = "NO";
    CCU2C add_1273_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2724), 
          .S0(cout));
    defparam add_1273_cout.INIT0 = 16'h0000;
    defparam add_1273_cout.INIT1 = 16'h0000;
    defparam add_1273_cout.INJECT1_0 = "NO";
    defparam add_1273_cout.INJECT1_1 = "NO";
    CCU2C _add_1_655_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2714), .S0(n28));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_655_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_13.INJECT1_1 = "NO";
    CCU2C add_1273_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2723), .COUT(n2724));
    defparam add_1273_20.INIT0 = 16'h555f;
    defparam add_1273_20.INIT1 = 16'h555f;
    defparam add_1273_20.INJECT1_0 = "NO";
    defparam add_1273_20.INJECT1_1 = "NO";
    CCU2C add_1273_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2717), .COUT(n2718));
    defparam add_1273_8.INIT0 = 16'h555f;
    defparam add_1273_8.INIT1 = 16'h555f;
    defparam add_1273_8.INJECT1_0 = "NO";
    defparam add_1273_8.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    CCU2C add_1273_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2716), .COUT(n2717));
    defparam add_1273_6.INIT0 = 16'haaa0;
    defparam add_1273_6.INIT1 = 16'h555f;
    defparam add_1273_6.INJECT1_0 = "NO";
    defparam add_1273_6.INJECT1_1 = "NO";
    CCU2C add_1273_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2715), .COUT(n2716));
    defparam add_1273_4.INIT0 = 16'h555f;
    defparam add_1273_4.INIT1 = 16'haaa0;
    defparam add_1273_4.INJECT1_0 = "NO";
    defparam add_1273_4.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2734), 
          .COUT(n2735), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_13.INJECT1_1 = "NO";
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    FD1S3AX cnt1_379__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i0.GSR = "ENABLED";
    CCU2C cnt1_379_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2733), 
          .COUT(n2734), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2732), 
          .COUT(n2733), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_9.INJECT1_1 = "NO";
    CCU2C add_1273_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2715));
    defparam add_1273_2.INIT0 = 16'h000e;
    defparam add_1273_2.INIT1 = 16'haaa0;
    defparam add_1273_2.INJECT1_0 = "NO";
    defparam add_1273_2.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2816)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[7] 108[4])
    defparam LED_9.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[9:61])
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .cout(cout), .clockDivider_clkLock(clockDivider_clkLock), .cout_adj_1(cout_adj_427), 
            .counter_0_countDone(counter_0_countDone), .n2158(n2158)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(130[15] 135[2])
    CCU2C cnt1_379_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2731), 
          .COUT(n2732), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_7.INJECT1_1 = "NO";
    packetGenerator packetGen_1 (.fskModule_symVal(fskModule_symVal), .clk_N_174(clk_N_174), 
            .n3364(n3364), .symCounter({symCounter}), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .data(data), 
            .n3201(n3201), .counter_0_countDone(counter_0_countDone), .next_state_3__N_155(next_state_3__N_155), 
            .next_state_3__N_153(next_state_3__N_153), .next_state_3__N_152(next_state_3__N_152), 
            .fskModule_symDone(fskModule_symDone)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(137[17] 143[2])
    CCU2C add_1272_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2781), .S1(cout_adj_427));
    defparam add_1272_27.INIT0 = 16'h5555;
    defparam add_1272_27.INIT1 = 16'h0000;
    defparam add_1272_27.INJECT1_0 = "NO";
    defparam add_1272_27.INJECT1_1 = "NO";
    CCU2C add_1272_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2780), .COUT(n2781));
    defparam add_1272_25.INIT0 = 16'h5555;
    defparam add_1272_25.INIT1 = 16'h5555;
    defparam add_1272_25.INJECT1_0 = "NO";
    defparam add_1272_25.INJECT1_1 = "NO";
    CCU2C add_1272_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2779), .COUT(n2780));
    defparam add_1272_23.INIT0 = 16'h5555;
    defparam add_1272_23.INIT1 = 16'h5555;
    defparam add_1272_23.INJECT1_0 = "NO";
    defparam add_1272_23.INJECT1_1 = "NO";
    CCU2C add_1272_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2778), .COUT(n2779));
    defparam add_1272_21.INIT0 = 16'h5555;
    defparam add_1272_21.INIT1 = 16'h5555;
    defparam add_1272_21.INJECT1_0 = "NO";
    defparam add_1272_21.INJECT1_1 = "NO";
    CCU2C add_1272_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2777), .COUT(n2778));
    defparam add_1272_19.INIT0 = 16'h5555;
    defparam add_1272_19.INIT1 = 16'h5555;
    defparam add_1272_19.INJECT1_0 = "NO";
    defparam add_1272_19.INJECT1_1 = "NO";
    CCU2C add_1272_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2776), .COUT(n2777));
    defparam add_1272_17.INIT0 = 16'h5555;
    defparam add_1272_17.INIT1 = 16'h5555;
    defparam add_1272_17.INJECT1_0 = "NO";
    defparam add_1272_17.INJECT1_1 = "NO";
    CCU2C add_1272_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2775), .COUT(n2776));
    defparam add_1272_15.INIT0 = 16'h5555;
    defparam add_1272_15.INIT1 = 16'h5555;
    defparam add_1272_15.INJECT1_0 = "NO";
    defparam add_1272_15.INJECT1_1 = "NO";
    CCU2C add_1273_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2722), .COUT(n2723));
    defparam add_1273_18.INIT0 = 16'h555f;
    defparam add_1273_18.INIT1 = 16'h555f;
    defparam add_1273_18.INJECT1_0 = "NO";
    defparam add_1273_18.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2730), 
          .COUT(n2731), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_5.INJECT1_1 = "NO";
    CCU2C add_1273_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2721), .COUT(n2722));
    defparam add_1273_16.INIT0 = 16'h555f;
    defparam add_1273_16.INIT1 = 16'h555f;
    defparam add_1273_16.INJECT1_0 = "NO";
    defparam add_1273_16.INJECT1_1 = "NO";
    IQSerializer IQSerializer_1 (.\fskModule_Q[2] (fskModule_Q[2]), .clk_N_319(clk_N_319), 
            .n911(n911), .\ICounter[1] (ICounter[1]), .\fskModule_I[0] (fskModule_I[0]), 
            .\fskModule_I[11] (fskModule_I[11]), .\ICounter[3] (ICounter[3]), 
            .\fskModule_I[2] (fskModule_I[2]), .\fskModule_I[7] (fskModule_I[7]), 
            .\ICounter[2] (ICounter[2]), .\fskModule_Q[0] (fskModule_Q[0]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[11] (fskModule_Q[11]), 
            .IQSerializer_start(IQSerializer_start), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[12] (fskModule_I[12]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .n2816(n2816), .serial_clk_c(serial_clk_c), 
            .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(157[14] 165[2])
    clockDivider clockDivider_0 (.clk_N_174(clk_N_174), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clkLock(clockDivider_clkLock), .serial_clk_c(serial_clk_c), 
            .VCC_net(VCC_net), .GND_net(GND_net), .LED7_c(LED7_c), .n2158(n2158)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(123[14] 128[2])
    CCU2C add_1272_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2774), .COUT(n2775));
    defparam add_1272_13.INIT0 = 16'h5555;
    defparam add_1272_13.INIT1 = 16'h5555;
    defparam add_1272_13.INJECT1_0 = "NO";
    defparam add_1272_13.INJECT1_1 = "NO";
    CCU2C add_1272_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2773), .COUT(n2774));
    defparam add_1272_11.INIT0 = 16'h5555;
    defparam add_1272_11.INIT1 = 16'h5555;
    defparam add_1272_11.INJECT1_0 = "NO";
    defparam add_1272_11.INJECT1_1 = "NO";
    CCU2C add_1272_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2772), .COUT(n2773));
    defparam add_1272_9.INIT0 = 16'h5555;
    defparam add_1272_9.INIT1 = 16'h5555;
    defparam add_1272_9.INJECT1_0 = "NO";
    defparam add_1272_9.INJECT1_1 = "NO";
    CCU2C add_1272_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2771), .COUT(n2772));
    defparam add_1272_7.INIT0 = 16'haaa5;
    defparam add_1272_7.INIT1 = 16'h5555;
    defparam add_1272_7.INJECT1_0 = "NO";
    defparam add_1272_7.INJECT1_1 = "NO";
    CCU2C add_1272_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2770), .COUT(n2771));
    defparam add_1272_5.INIT0 = 16'h5555;
    defparam add_1272_5.INIT1 = 16'haaa5;
    defparam add_1272_5.INJECT1_0 = "NO";
    defparam add_1272_5.INJECT1_1 = "NO";
    CCU2C add_1272_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2769), .COUT(n2770));
    defparam add_1272_3.INIT0 = 16'haaa5;
    defparam add_1272_3.INIT1 = 16'h5555;
    defparam add_1272_3.INJECT1_0 = "NO";
    defparam add_1272_3.INJECT1_1 = "NO";
    CCU2C add_1272_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2769));
    defparam add_1272_1.INIT0 = 16'h0000;
    defparam add_1272_1.INIT1 = 16'haaaf;
    defparam add_1272_1.INJECT1_0 = "NO";
    defparam add_1272_1.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i19.GSR = "ENABLED";
    CCU2C cnt1_379_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2741), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_379_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2740), 
          .COUT(n2741), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_655_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2710), .COUT(n2711), .S0(n52), .S1(n49));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_655_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_655_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_655_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_655_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_379__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i20.GSR = "ENABLED";
    FD1S3AX cnt1_379__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i21.GSR = "ENABLED";
    FD1S3AX cnt1_379__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i22.GSR = "ENABLED";
    FD1S3AX cnt1_379__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i23.GSR = "ENABLED";
    FD1S3AX cnt1_379__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i24.GSR = "ENABLED";
    FD1S3AX cnt1_379__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379__i25.GSR = "ENABLED";
    CCU2C cnt1_379_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2739), 
          .COUT(n2740), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_23.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2C add_1273_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2720), .COUT(n2721));
    defparam add_1273_14.INIT0 = 16'h555f;
    defparam add_1273_14.INIT1 = 16'h555f;
    defparam add_1273_14.INJECT1_0 = "NO";
    defparam add_1273_14.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2729), 
          .COUT(n2730), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_3.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2738), 
          .COUT(n2739), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_379_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_379_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt1_379_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2729), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_379_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_379_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_379_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_379_add_4_1.INJECT1_1 = "NO";
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_319(clk_N_319)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[12:100])
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (counter_0_countDone, fskModule_symVal, fskModule_symDone, 
            clk_N_174, n3364, n67, \fskModule_I[0] , \fskModule_Q[0] , 
            sampleCount, clockDivider_clk_4M, IQSerializer_start, next_state_3__N_155, 
            n911, next_state_3__N_153, next_state_3__N_152, n3201, \fskModule_Q[12] , 
            \fskModule_Q[11] , \fskModule_Q[7] , \fskModule_Q[4] , \fskModule_Q[2] , 
            \fskModule_I[12] , \fskModule_I[11] , \fskModule_I[7] , \fskModule_I[4] , 
            clockDivider_clk_4M_enable_9, \fskModule_I[2] ) /* synthesis syn_module_defined=1 */ ;
    input counter_0_countDone;
    input fskModule_symVal;
    output fskModule_symDone;
    input clk_N_174;
    output n3364;
    input [11:0]n67;
    output \fskModule_I[0] ;
    output \fskModule_Q[0] ;
    output [11:0]sampleCount;
    input clockDivider_clk_4M;
    output IQSerializer_start;
    input next_state_3__N_155;
    output n911;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n3201;
    output \fskModule_Q[12] ;
    output \fskModule_Q[11] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[2] ;
    output \fskModule_I[12] ;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[4] ;
    output clockDivider_clk_4M_enable_9;
    output \fskModule_I[2] ;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire firstFlag, n3161, lastSym_N_261, n23;
    wire [11:0]sampleCount_11__N_233;
    
    wire fskModule_start;
    wire [12:0]sine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(43[23:27])
    wire [12:0]cosine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(44[23:29])
    
    wire n514;
    wire [7:0]n243;
    
    wire n3120, n3010, lastSym, clockDivider_clk_4M_enable_2;
    wire [2:0]sin_phase;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(35[23:32])
    
    wire n576, n1;
    wire [2:0]n2;
    
    wire n2990, n2994, n17, n2988, n2959, n2872, n3160, n3363, 
        n1981, n2958, n3357, n3062, cosOut_12__N_317, n2956, n3365;
    
    LUT4 i1785_1_lut_3_lut_3_lut (.A(counter_0_countDone), .B(fskModule_symVal), 
         .C(firstFlag), .Z(n3161)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1785_1_lut_3_lut_3_lut.init = 16'h2a2a;
    FD1S3IX symDone_57 (.D(lastSym_N_261), .CK(clk_N_174), .CD(n3364), 
            .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam symDone_57.GSR = "ENABLED";
    LUT4 i1192_2_lut (.A(n67[11]), .B(n23), .Z(sampleCount_11__N_233[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(125[12] 127[6])
    defparam i1192_2_lut.init = 16'h8888;
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "ENABLED";
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "ENABLED";
    LUT4 i1193_2_lut (.A(n67[10]), .B(n23), .Z(sampleCount_11__N_233[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(125[12] 127[6])
    defparam i1193_2_lut.init = 16'h8888;
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_233[0]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n23), .B(n67[9]), .Z(sampleCount_11__N_233[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_16 (.A(n23), .B(n67[8]), .Z(sampleCount_11__N_233[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    FD1S3AX firstFlag_54 (.D(n3364), .CK(clockDivider_clk_4M), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_54.GSR = "ENABLED";
    FD1S3AX start_55 (.D(counter_0_countDone), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam start_55.GSR = "ENABLED";
    FD1S3JX cos_phase_FSM_i1 (.D(n243[7]), .CK(clockDivider_clk_4M), .PD(n514), 
            .Q(cosine[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_17 (.A(n23), .B(n67[7]), .Z(sampleCount_11__N_233[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 i1_2_lut_adj_18 (.A(n23), .B(n67[6]), .Z(sampleCount_11__N_233[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_18.init = 16'h8888;
    LUT4 i1_2_lut_adj_19 (.A(n23), .B(n67[5]), .Z(sampleCount_11__N_233[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i1_2_lut_adj_20 (.A(n23), .B(n67[4]), .Z(sampleCount_11__N_233[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 i1_2_lut_adj_21 (.A(n23), .B(n67[3]), .Z(sampleCount_11__N_233[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_21.init = 16'h8888;
    LUT4 i1_4_lut (.A(n3120), .B(n3010), .C(sampleCount[0]), .D(sampleCount[5]), 
         .Z(lastSym_N_261)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    FD1P3IX lastSym_53 (.D(fskModule_symVal), .SP(clockDivider_clk_4M_enable_2), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(lastSym)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam lastSym_53.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_22 (.A(n23), .B(n67[2]), .Z(sampleCount_11__N_233[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h8888;
    LUT4 i1_2_lut_adj_23 (.A(n23), .B(n67[1]), .Z(sampleCount_11__N_233[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_23.init = 16'h8888;
    LUT4 i1150_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .Z(fskModule_start)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1150_2_lut_2_lut.init = 16'hdddd;
    FD1S3IX sin_phase_388__i0 (.D(n1), .CK(clockDivider_clk_4M), .CD(n576), 
            .Q(sin_phase[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_388__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_24 (.A(sampleCount[3]), .B(sampleCount[8]), .C(sampleCount[1]), 
         .D(sampleCount[4]), .Z(n3010)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h0010;
    LUT4 i1374_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam i1374_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_25 (.A(n2990), .B(n2994), .C(n17), .D(n2988), 
         .Z(n2959)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(55[9:25])
    defparam i1_4_lut_adj_25.init = 16'hfffe;
    LUT4 i1_4_lut_adj_26 (.A(sampleCount[7]), .B(sampleCount[11]), .C(sampleCount[6]), 
         .D(sampleCount[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam i1_4_lut_adj_26.init = 16'hfffe;
    LUT4 i1_2_lut_adj_27 (.A(sampleCount[4]), .B(sampleCount[1]), .Z(n2988)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(55[9:25])
    defparam i1_2_lut_adj_27.init = 16'heeee;
    LUT4 i1803_2_lut (.A(firstFlag), .B(counter_0_countDone), .Z(n576)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1803_2_lut.init = 16'hbbbb;
    FD1S3AX sin_phase_388__i2 (.D(n2872), .CK(clockDivider_clk_4M), .Q(sin_phase[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_388__i2.GSR = "ENABLED";
    PFUMX sin_phase_388_mux_6_i3 (.BLUT(n3160), .ALUT(n3161), .C0(n576), 
          .Z(n2872));
    FD1S3IX sin_phase_388__i1 (.D(n2[1]), .CK(clockDivider_clk_4M), .CD(n576), 
            .Q(sin_phase[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_388__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_13 (.A(sampleCount[8]), .B(sampleCount[5]), .Z(n3363)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_13.init = 16'heeee;
    LUT4 i1_4_lut_4_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .C(cosine[1]), .D(n1981), .Z(n2958)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut.init = 16'hfffd;
    LUT4 i408_1_lut (.A(IQSerializer_start), .Z(n911)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam i408_1_lut.init = 16'h5555;
    LUT4 i398_2_lut_2_lut (.A(counter_0_countDone), .B(lastSym_N_261), .Z(clockDivider_clk_4M_enable_2)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i398_2_lut_2_lut.init = 16'hdddd;
    LUT4 i236_2_lut_2_lut (.A(counter_0_countDone), .B(firstFlag), .Z(n514)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i236_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1740_2_lut_3_lut (.A(sampleCount[9]), .B(sampleCount[10]), .C(n17), 
         .Z(n3120)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam i1740_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1784_1_lut_4_lut (.A(sin_phase[1]), .B(n2959), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n3160)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1784_1_lut_4_lut.init = 16'h69c3;
    FD1S3IX cos_phase_FSM_i8 (.D(n243[6]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(n243[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "ENABLED";
    LUT4 i5_2_lut_rep_7 (.A(sampleCount[9]), .B(sampleCount[10]), .Z(n3357)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam i5_2_lut_rep_7.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[8]), .B(sampleCount[5]), .C(sampleCount[0]), 
         .D(sampleCount[3]), .Z(n2990)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(sampleCount[9]), .B(sampleCount[10]), 
         .C(fskModule_symVal), .D(lastSym), .Z(n2994)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam i1_3_lut_4_lut_adj_28.init = 16'hfeef;
    LUT4 i1_4_lut_adj_29 (.A(sampleCount[1]), .B(sampleCount[4]), .C(n3363), 
         .D(sampleCount[3]), .Z(n3062)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_29.init = 16'hfffd;
    LUT4 i1824_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .C(next_state_3__N_152), .Z(n3201)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1824_3_lut_3_lut.init = 16'hfdfd;
    LUT4 rst_I_0_1_lut_rep_14 (.A(counter_0_countDone), .Z(n3364)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_14.init = 16'h5555;
    LUT4 i1_2_lut_adj_30 (.A(n23), .B(n67[0]), .Z(sampleCount_11__N_233[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'h8888;
    LUT4 i1_4_lut_adj_31 (.A(n3062), .B(sampleCount[0]), .C(n17), .D(n3357), 
         .Z(n23)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_31.init = 16'hfffb;
    FD1S3IX cos_phase_FSM_i7 (.D(n243[5]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(n243[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n243[4]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(n243[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n243[3]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(n243[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n243[2]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(n243[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_317), .CK(clockDivider_clk_4M), 
            .CD(n514), .Q(n243[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "ENABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[1]), .CK(clockDivider_clk_4M), .CD(n514), 
            .Q(cosOut_12__N_317));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_233[11]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i11.GSR = "ENABLED";
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_233[10]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i10.GSR = "ENABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_233[9]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i9.GSR = "ENABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_233[8]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i8.GSR = "ENABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_233[7]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i7.GSR = "ENABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_233[6]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i6.GSR = "ENABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_233[5]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i5.GSR = "ENABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_233[4]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i4.GSR = "ENABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_233[3]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i3.GSR = "ENABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_233[2]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_233[1]), .CK(clk_N_174), 
            .PD(n3364), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(118[8] 136[4])
    defparam sampleCount_i1.GSR = "ENABLED";
    FD1S3IX FSK_Q__i12 (.D(n2956), .CK(clk_N_174), .CD(n2958), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "ENABLED";
    FD1S3IX FSK_Q__i11 (.D(cosine[6]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_Q[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i11.GSR = "ENABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "ENABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "ENABLED";
    FD1S3IX FSK_Q__i2 (.D(cosine[1]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "ENABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "ENABLED";
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "ENABLED";
    FD1S3IX FSK_I__i7 (.D(sine[10]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "ENABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "ENABLED";
    LUT4 i396_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i396_2_lut_2_lut.init = 16'hdddd;
    FD1S3IX FSK_I__i2 (.D(n3365), .CK(clk_N_174), .CD(fskModule_start), 
            .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=154 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "ENABLED";
    sinModule sin_instance (.sin_phase({sin_phase}), .\sine[12] (sine[12]), 
            .\sine[11] (sine[11]), .n1(n1), .n3365(n3365), .\sine[10] (sine[10]), 
            .\sine[0] (sine[0]), .\sine[4] (sine[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n244(n243[7]), .n245(n243[6]), .n246(n243[5]), 
            .n248(n243[3]), .n247(n243[4]), .n2956(n2956), .\cosine[6] (cosine[6]), 
            .n249(n243[2]), .\cosine[1] (cosine[1]), .cosOut_12__N_317(cosOut_12__N_317), 
            .n1981(n1981), .\cosine[7] (cosine[7]), .\cosine[4] (cosine[4]), 
            .\cosine[0] (cosine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(163[11] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, \sine[12] , \sine[11] , n1, n3365, \sine[10] , 
            \sine[0] , \sine[4] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output \sine[12] ;
    output \sine[11] ;
    output n1;
    output n3365;
    output \sine[10] ;
    output \sine[0] ;
    output \sine[4] ;
    
    
    LUT4 i1506_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1506_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1807_2_lut_3_lut (.A(sin_phase[1]), .B(sin_phase[0]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1807_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i1810_3_lut_rep_15 (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(n3365)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/sinmodule.v(16[11:32])
    defparam i1810_3_lut_rep_15.init = 16'h0404;
    LUT4 i1794_3_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[10] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/sinmodule.v(16[11:32])
    defparam i1794_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i1801_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(\sine[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1801_2_lut.init = 16'h2222;
    LUT4 i1799_3_lut (.A(sin_phase[0]), .B(sin_phase[2]), .C(sin_phase[1]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1799_3_lut.init = 16'hbaba;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n244, n245, n246, n248, n247, n2956, \cosine[6] , 
            n249, \cosine[1] , cosOut_12__N_317, n1981, \cosine[7] , 
            \cosine[4] , \cosine[0] ) /* synthesis syn_module_defined=1 */ ;
    input n244;
    input n245;
    input n246;
    input n248;
    input n247;
    output n2956;
    output \cosine[6] ;
    input n249;
    input \cosine[1] ;
    input cosOut_12__N_317;
    output n1981;
    output \cosine[7] ;
    output \cosine[4] ;
    output \cosine[0] ;
    
    
    wire n3366, n3118, n2868, n3116;
    wire [9:0]n713;
    
    LUT4 i1158_2_lut_rep_16 (.A(n244), .B(n245), .Z(n3366)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(26[7] 29[24])
    defparam i1158_2_lut_rep_16.init = 16'h2222;
    LUT4 i1_3_lut (.A(n246), .B(n248), .C(n247), .Z(n2956)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut (.A(n3118), .B(n2868), .C(n3116), .D(n3366), .Z(\cosine[6] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcdcc;
    LUT4 i1738_2_lut (.A(n249), .B(n246), .Z(n3118)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1738_2_lut.init = 16'heeee;
    LUT4 i1736_2_lut (.A(n247), .B(n248), .Z(n3116)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1736_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(\cosine[1] ), .B(cosOut_12__N_317), .Z(n2868)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1167_4_lut (.A(n713[2]), .B(\cosine[1] ), .C(n1981), .D(n248), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1167_4_lut.init = 16'hcfce;
    LUT4 i1174_3_lut_4_lut (.A(n244), .B(n245), .C(n246), .D(n247), 
         .Z(n713[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(26[7] 29[24])
    defparam i1174_3_lut_4_lut.init = 16'h00f2;
    LUT4 i1173_2_lut (.A(n246), .B(n247), .Z(n713[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(22[7] 29[24])
    defparam i1173_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_15 (.A(n713[1]), .B(n2868), .C(n249), .D(n248), 
         .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_15.init = 16'hcfce;
    LUT4 i1160_4_lut (.A(n248), .B(\cosine[1] ), .C(n1981), .D(n247), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1160_4_lut.init = 16'hcdcc;
    LUT4 i761_2_lut (.A(n249), .B(cosOut_12__N_317), .Z(n1981)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(16[7] 29[24])
    defparam i761_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

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
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, clockDivider_clk_4M, 
            cout, clockDivider_clkLock, cout_adj_1, counter_0_countDone, 
            n2158) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    input clockDivider_clk_4M;
    input cout;
    input clockDivider_clkLock;
    input cout_adj_1;
    output counter_0_countDone;
    input n2158;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n2708;
    wire [25:0]n109;
    
    wire n2707, n2698, n2699, n2697, n2706, n2705, n2704, n2696, 
        n2703, n2159, n2702, n2701, n2700, countDone_N_133;
    
    CCU2C waitcount_383_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2708), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_383_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2707), .COUT(n2708), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2698), .COUT(n2699), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2697), .COUT(n2698), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2706), .COUT(n2707), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2705), .COUT(n2706), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2704), .COUT(n2705), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2696), .COUT(n2697), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2696), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_383_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_383_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2703), .COUT(n2704), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_17.INJECT1_1 = "NO";
    FD1S3IX waitcount_383__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i25.GSR = "ENABLED";
    FD1S3IX waitcount_383__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i24.GSR = "ENABLED";
    FD1S3IX waitcount_383__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i23.GSR = "ENABLED";
    FD1S3IX waitcount_383__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i22.GSR = "ENABLED";
    FD1S3IX waitcount_383__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i21.GSR = "ENABLED";
    FD1S3IX waitcount_383__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i20.GSR = "ENABLED";
    FD1S3IX waitcount_383__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i19.GSR = "ENABLED";
    FD1S3IX waitcount_383__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i18.GSR = "ENABLED";
    FD1S3IX waitcount_383__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i17.GSR = "ENABLED";
    FD1S3IX waitcount_383__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i16.GSR = "ENABLED";
    FD1S3IX waitcount_383__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i15.GSR = "ENABLED";
    FD1S3IX waitcount_383__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i14.GSR = "ENABLED";
    FD1S3IX waitcount_383__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i13.GSR = "ENABLED";
    FD1S3IX waitcount_383__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i12.GSR = "ENABLED";
    FD1S3IX waitcount_383__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i11.GSR = "ENABLED";
    FD1S3IX waitcount_383__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n2159), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i10.GSR = "ENABLED";
    FD1S3IX waitcount_383__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i9.GSR = "ENABLED";
    FD1S3IX waitcount_383__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i8.GSR = "ENABLED";
    FD1S3IX waitcount_383__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i7.GSR = "ENABLED";
    FD1S3IX waitcount_383__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i6.GSR = "ENABLED";
    FD1S3IX waitcount_383__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i5.GSR = "ENABLED";
    FD1S3IX waitcount_383__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i4.GSR = "ENABLED";
    FD1S3IX waitcount_383__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i3.GSR = "ENABLED";
    FD1S3IX waitcount_383__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i2.GSR = "ENABLED";
    FD1S3IX waitcount_383__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i1.GSR = "ENABLED";
    CCU2C waitcount_383_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2702), .COUT(n2703), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_15.INJECT1_1 = "NO";
    LUT4 i1805_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n2159)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1805_2_lut.init = 16'hbbbb;
    CCU2C waitcount_383_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2701), .COUT(n2702), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_383_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2700), .COUT(n2701), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_11.INJECT1_1 = "NO";
    LUT4 i271_1_lut (.A(cout_adj_1), .Z(countDone_N_133)) /* synthesis lut_function=(!(A)) */ ;
    defparam i271_1_lut.init = 16'h5555;
    FD1S3IX waitcount_383__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n2159), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383__i0.GSR = "ENABLED";
    CCU2C waitcount_383_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2699), .COUT(n2700), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_383_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_383_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_383_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_383_add_4_9.INJECT1_1 = "NO";
    FD1S3IX countDone_13 (.D(countDone_N_133), .CK(clockDivider_clk_4M), 
            .CD(n2158), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=135 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module packetGenerator
//

module packetGenerator (fskModule_symVal, clk_N_174, n3364, symCounter, 
            clockDivider_clk_4M, clockDivider_clk_4M_enable_9, data, n3201, 
            counter_0_countDone, next_state_3__N_155, next_state_3__N_153, 
            next_state_3__N_152, fskModule_symDone) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symVal;
    input clk_N_174;
    input n3364;
    output [7:0]symCounter;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_9;
    input data;
    input n3201;
    input counter_0_countDone;
    output next_state_3__N_155;
    output next_state_3__N_153;
    output next_state_3__N_152;
    input fskModule_symDone;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire next_symVal_N_171;
    wire [7:0]n69;
    
    wire next_symVal, n3361, n3092, next_state_3__N_154, n3086, n3022, 
        n1960, n3360, n13, n15, n3359, n3100, n3072, n2949, 
        n3084;
    
    FD1S3IX symVal_43 (.D(next_symVal_N_171), .CK(clk_N_174), .CD(n3364), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "ENABLED";
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "ENABLED";
    LUT4 i1822_4_lut (.A(next_symVal), .B(data), .C(n3201), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1822_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_11 (.A(symCounter[2]), .B(symCounter[1]), .Z(n3361)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_11.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n3092)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_171)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    FD1S3IX current_state_FSM_i1 (.D(next_state_3__N_154), .CK(clockDivider_clk_4M), 
            .CD(n3364), .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n3086)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1147_2_lut (.A(symCounter[0]), .B(next_state_3__N_153), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1147_2_lut.init = 16'h4444;
    FD1S3JX current_state_FSM_i4 (.D(next_state_3__N_155), .CK(clockDivider_clk_4M), 
            .PD(n3364), .Q(next_state_3__N_152));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    LUT4 i740_4_lut (.A(next_state_3__N_153), .B(next_state_3__N_152), .C(n3022), 
         .D(fskModule_symDone), .Z(n1960)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i740_4_lut.init = 16'hceee;
    LUT4 i1201_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[0]), .C(next_state_3__N_153), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1201_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_rep_10 (.A(symCounter[2]), .B(symCounter[3]), .Z(n3360)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_10.init = 16'h8888;
    LUT4 i1_4_lut (.A(n13), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n3022)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i2_2_lut_rep_9 (.A(symCounter[1]), .B(symCounter[0]), .Z(n3359)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i2_2_lut_rep_9.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[3]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n3100)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(symCounter[2]), .B(symCounter[6]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_12 (.A(symCounter[1]), .B(symCounter[4]), .C(symCounter[3]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h8000;
    LUT4 i1_4_lut_adj_13 (.A(n13), .B(fskModule_symDone), .C(n15), .D(n3072), 
         .Z(n2949)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h8000;
    FD1S3IX current_state_FSM_i3 (.D(n1960), .CK(clockDivider_clk_4M), .CD(n3364), 
            .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2949), .CK(clockDivider_clk_4M), .CD(n3364), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(next_state_3__N_153), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n3072)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1196_4_lut (.A(symCounter[7]), .B(next_state_3__N_153), .C(n3086), 
         .D(n3084), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1196_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_adj_14 (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n3084)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_adj_14.init = 16'h8080;
    LUT4 i1197_4_lut (.A(symCounter[6]), .B(next_state_3__N_153), .C(n3100), 
         .D(n3359), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1197_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "ENABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "ENABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "ENABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "ENABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "ENABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "ENABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n3364), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "ENABLED";
    LUT4 i1198_4_lut (.A(symCounter[5]), .B(next_state_3__N_153), .C(n3092), 
         .D(n3361), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1198_4_lut.init = 16'h4888;
    LUT4 i1199_4_lut (.A(symCounter[4]), .B(next_state_3__N_153), .C(n3360), 
         .D(n3359), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1199_4_lut.init = 16'h4888;
    LUT4 i1200_4_lut (.A(symCounter[3]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .D(n3361), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1200_4_lut.init = 16'h4888;
    LUT4 i1202_3_lut (.A(symCounter[1]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i1202_3_lut.init = 16'h4848;
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (\fskModule_Q[2] , clk_N_319, n911, \ICounter[1] , 
            \fskModule_I[0] , \fskModule_I[11] , \ICounter[3] , \fskModule_I[2] , 
            \fskModule_I[7] , \ICounter[2] , \fskModule_Q[0] , \fskModule_Q[4] , 
            \fskModule_Q[11] , IQSerializer_start, \fskModule_I[4] , \fskModule_I[12] , 
            \fskModule_Q[7] , \fskModule_Q[12] , n2816, serial_clk_c, 
            serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input \fskModule_Q[2] ;
    input clk_N_319;
    input n911;
    output \ICounter[1] ;
    input \fskModule_I[0] ;
    input \fskModule_I[11] ;
    output \ICounter[3] ;
    input \fskModule_I[2] ;
    input \fskModule_I[7] ;
    output \ICounter[2] ;
    input \fskModule_Q[0] ;
    input \fskModule_Q[4] ;
    input \fskModule_Q[11] ;
    input IQSerializer_start;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    input \fskModule_Q[7] ;
    input \fskModule_Q[12] ;
    input n2816;
    input serial_clk_c;
    output serial_iq_c;
    
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n3232, n3236, n3234;
    wire [4:0]n387;
    
    wire n3238, n1954, n3223, n3224;
    wire [4:0]n1;
    
    wire n3226, n3228, n3233, n3235, n3367, n2160;
    wire [3:0]n21;
    
    wire n2091, n3362, n3368, n3369, n3225, n3371, n3358, n356;
    wire [3:0]next_state_3__N_385;
    
    wire n3370, n3372, n3302;
    wire [3:0]n21_adj_425;
    
    wire n2161, n352, n1936;
    
    LUT4 QCounter_1__bdd_2_lut_1904 (.A(\fskModule_Q[2] ), .B(QCounter[2]), 
         .Z(n3232)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_1904.init = 16'h2222;
    LUT4 gnd_bdd_2_lut_4_lut (.A(n3236), .B(n3234), .C(QCounter[3]), .D(n387[0]), 
         .Z(n3238)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_4_lut.init = 16'hca00;
    FD1S3IX current_state_FSM_i0 (.D(n1954), .CK(clk_N_319), .CD(n911), 
            .Q(n387[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "ENABLED";
    LUT4 fskModule_I_4__bdd_4_lut_1884 (.A(\ICounter[1] ), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[11] ), .D(\ICounter[3] ), .Z(n3223)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut_1884.init = 16'h44f0;
    LUT4 fskModule_I_4__bdd_3_lut_1837 (.A(\fskModule_I[2] ), .B(\fskModule_I[7] ), 
         .C(\ICounter[3] ), .Z(n3224)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1837.init = 16'hacac;
    LUT4 sub_10_inv_0_i2_1_lut (.A(QCounter[1]), .Z(n1[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut.init = 16'h5555;
    LUT4 gnd_bdd_2_lut_1846_4_lut (.A(n3226), .B(n3223), .C(\ICounter[2] ), 
         .D(n387[2]), .Z(n3228)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_1846_4_lut.init = 16'hca00;
    LUT4 QCounter_1__bdd_3_lut_1905 (.A(\fskModule_Q[0] ), .B(QCounter[2]), 
         .C(\fskModule_Q[4] ), .Z(n3233)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_1905.init = 16'hb8b8;
    LUT4 n3235_bdd_3_lut (.A(n3235), .B(\fskModule_Q[11] ), .C(QCounter[2]), 
         .Z(n3236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3235_bdd_3_lut.init = 16'hcaca;
    LUT4 i1880_else_4_lut (.A(\ICounter[2] ), .B(\fskModule_I[11] ), .C(\ICounter[3] ), 
         .D(\fskModule_I[2] ), .Z(n3367)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i1880_else_4_lut.init = 16'h5404;
    LUT4 i1813_2_lut (.A(n387[2]), .B(IQSerializer_start), .Z(n2160)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1813_2_lut.init = 16'h7777;
    LUT4 i1318_1_lut (.A(\ICounter[1] ), .Z(n21[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1318_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(QCounter[2]), .B(QCounter[1]), .Z(n2091)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_rep_12 (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n3362)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i1_3_lut_rep_12.init = 16'hf7f7;
    PFUMX i1924 (.BLUT(n3367), .ALUT(n3368), .C0(\fskModule_I[7] ), .Z(n3369));
    LUT4 fskModule_I_4__bdd_3_lut_1885 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(\ICounter[3] ), .Z(n3225)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1885.init = 16'hacac;
    LUT4 n3299_bdd_4_lut_then_3_lut (.A(\fskModule_Q[7] ), .B(n387[1]), 
         .C(QCounter[3]), .Z(n3371)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam n3299_bdd_4_lut_then_3_lut.init = 16'hcece;
    FD1S3IX ICounter_385__i2 (.D(n3358), .CK(clk_N_319), .CD(n2160), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_385__i2.GSR = "ENABLED";
    FD1S3IX ICounter_385__i1 (.D(n21[1]), .CK(clk_N_319), .CD(n2160), 
            .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_385__i1.GSR = "ENABLED";
    PFUMX i1844 (.BLUT(n3233), .ALUT(n3232), .C0(QCounter[1]), .Z(n3234));
    LUT4 i102_2_lut_4_lut (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .D(n387[2]), .Z(n356)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i102_2_lut_4_lut.init = 16'h0800;
    LUT4 i734_3_lut (.A(n387[0]), .B(n387[1]), .C(next_state_3__N_385[2]), 
         .Z(n1954)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i734_3_lut.init = 16'hecec;
    LUT4 i1_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(next_state_3__N_385[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut.init = 16'hf7f7;
    LUT4 fskModule_Q_11__bdd_3_lut (.A(QCounter[1]), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n3235)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_11__bdd_3_lut.init = 16'he4e4;
    LUT4 n3299_bdd_4_lut_else_3_lut (.A(\fskModule_Q[2] ), .B(n387[1]), 
         .C(\fskModule_Q[11] ), .D(QCounter[3]), .Z(n3370)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam n3299_bdd_4_lut_else_3_lut.init = 16'heefc;
    LUT4 n3301_bdd_3_lut (.A(n3372), .B(n3369), .C(n387[2]), .Z(n3302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3301_bdd_3_lut.init = 16'hcaca;
    PFUMX i1838 (.BLUT(n3225), .ALUT(n3224), .C0(\ICounter[1] ), .Z(n3226));
    LUT4 i1404_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n21_adj_425[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1404_3_lut.init = 16'h6a6a;
    FD1S3IX QCounter_387__i2 (.D(n2091), .CK(clk_N_319), .CD(n2161), .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_387__i2.GSR = "ENABLED";
    FD1S3IX QCounter_387__i1 (.D(n1[1]), .CK(clk_N_319), .CD(n2161), .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_387__i1.GSR = "ENABLED";
    FD1S3IX QCounter_387__i3 (.D(n21_adj_425[3]), .CK(clk_N_319), .CD(n2161), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_387__i3.GSR = "ENABLED";
    LUT4 i1819_2_lut (.A(n387[0]), .B(IQSerializer_start), .Z(n2161)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1819_2_lut.init = 16'h7777;
    PFUMX i1926 (.BLUT(n3370), .ALUT(n3371), .C0(QCounter[2]), .Z(n3372));
    LUT4 reduce_or_97_i2_3_lut (.A(next_state_3__N_385[2]), .B(n387[4]), 
         .C(n387[0]), .Z(n352)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam reduce_or_97_i2_3_lut.init = 16'hdcdc;
    LUT4 i1880_then_4_lut (.A(\ICounter[2] ), .B(\fskModule_I[11] ), .C(\ICounter[3] ), 
         .D(\fskModule_I[2] ), .Z(n3368)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i1880_then_4_lut.init = 16'h5e0e;
    LUT4 i716_3_lut (.A(n387[2]), .B(n387[3]), .C(n3362), .Z(n1936)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i716_3_lut.init = 16'hecec;
    LUT4 i1320_2_lut_rep_8 (.A(\ICounter[2] ), .B(\ICounter[1] ), .Z(n3358)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1320_2_lut_rep_8.init = 16'h6666;
    FD1S3AX current_state_FSM_i4 (.D(n911), .CK(clk_N_319), .Q(n387[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i3 (.D(n352), .CK(clk_N_319), .CD(n911), 
            .Q(n387[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1936), .CK(clk_N_319), .CD(n911), 
            .Q(n387[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i1 (.D(n356), .CK(clk_N_319), .CD(n911), 
            .Q(n387[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    FD1S3IX ICounter_385__i3 (.D(n2816), .CK(clk_N_319), .CD(n2160), .Q(\ICounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_385__i3.GSR = "ENABLED";
    DEDFF DEDFF_0 (.n3238(n3238), .n3228(n3228), .next_state_3__N_376(n387[3]), 
          .clk_N_319(clk_N_319), .n911(n911), .serial_clk_c(serial_clk_c), 
          .serial_iq_c(serial_iq_c), .n3302(n3302), .next_state_3__N_374(n387[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (n3238, n3228, next_state_3__N_376, clk_N_319, n911, 
            serial_clk_c, serial_iq_c, n3302, next_state_3__N_374) /* synthesis syn_module_defined=1 */ ;
    input n3238;
    input n3228;
    input next_state_3__N_376;
    input clk_N_319;
    input n911;
    input serial_clk_c;
    output serial_iq_c;
    input n3302;
    input next_state_3__N_374;
    
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire neg_edge, Q1, Q2, pose_edge;
    
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n3238), .C(n3228), .D(next_state_3__N_376), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_319), .CD(n911), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "ENABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n911), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "ENABLED";
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_376), .C(n3302), 
         .D(next_state_3__N_374), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_174, clockDivider_clk_4M, clockDivider_clkLock, 
            serial_clk_c, VCC_net, GND_net, LED7_c, n2158) /* synthesis syn_module_defined=1 */ ;
    output clk_N_174;
    output clockDivider_clk_4M;
    output clockDivider_clkLock;
    input serial_clk_c;
    input VCC_net;
    input GND_net;
    input LED7_c;
    output n2158;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    
    wire pll_lock_N_54, n2728;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    wire [7:0]n37;
    
    wire n2727, n2073, clkOut_N_64, n2726, n2725, n3046, n3108, 
        n3044;
    wire [7:0]n37_adj_424;
    wire [7:0]n65;
    
    wire n487, n2692, n2695, n2694, n2693;
    
    INV i1981 (.A(clockDivider_clk_4M), .Z(clk_N_174));
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "ENABLED";
    CCU2C counter_380_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2728), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380_add_4_9.INIT0 = 16'haaa0;
    defparam counter_380_add_4_9.INIT1 = 16'h0000;
    defparam counter_380_add_4_9.INJECT1_0 = "NO";
    defparam counter_380_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_380_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2727), .COUT(n2728), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380_add_4_7.INIT0 = 16'haaa0;
    defparam counter_380_add_4_7.INIT1 = 16'haaa0;
    defparam counter_380_add_4_7.INJECT1_0 = "NO";
    defparam counter_380_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n2073), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    CCU2C counter_380_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2726), .COUT(n2727), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380_add_4_5.INIT0 = 16'haaa0;
    defparam counter_380_add_4_5.INIT1 = 16'haaa0;
    defparam counter_380_add_4_5.INJECT1_0 = "NO";
    defparam counter_380_add_4_5.INJECT1_1 = "NO";
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "ENABLED";
    CCU2C counter_380_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2725), .COUT(n2726), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380_add_4_3.INIT0 = 16'haaa0;
    defparam counter_380_add_4_3.INIT1 = 16'haaa0;
    defparam counter_380_add_4_3.INJECT1_0 = "NO";
    defparam counter_380_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n3046), .B(n3108), .C(counter[2]), .D(n3044), 
         .Z(n2073)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    FD1S3IX lockCounter_381__i7 (.D(n37_adj_424[7]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i7.GSR = "ENABLED";
    FD1S3IX lockCounter_381__i6 (.D(n37_adj_424[6]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i6.GSR = "ENABLED";
    FD1S3IX lockCounter_381__i5 (.D(n37_adj_424[5]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i5.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[3]), .C(counter[5]), .Z(n3046)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1797_2_lut (.A(n2073), .B(LED7_c), .Z(n487)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1797_2_lut.init = 16'h7777;
    FD1S3IX lockCounter_381__i4 (.D(n37_adj_424[4]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i4.GSR = "ENABLED";
    FD1S3IX lockCounter_381__i3 (.D(n37_adj_424[3]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i3.GSR = "ENABLED";
    LUT4 i1728_2_lut (.A(counter[0]), .B(counter[1]), .Z(n3108)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1728_2_lut.init = 16'h8888;
    FD1S3IX lockCounter_381__i2 (.D(n37_adj_424[2]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i2.GSR = "ENABLED";
    FD1S3IX lockCounter_381__i1 (.D(n37_adj_424[1]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i1.GSR = "ENABLED";
    CCU2C counter_380_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2725), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380_add_4_1.INIT0 = 16'h0000;
    defparam counter_380_add_4_1.INIT1 = 16'h555f;
    defparam counter_380_add_4_1.INJECT1_0 = "NO";
    defparam counter_380_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_380__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_11 (.A(counter[6]), .B(counter[7]), .Z(n3044)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    FD1S3IX counter_380__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i6.GSR = "ENABLED";
    FD1S3IX counter_380__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i5.GSR = "ENABLED";
    FD1S3IX counter_380__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i4.GSR = "ENABLED";
    FD1S3IX counter_380__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i0.GSR = "ENABLED";
    FD1S3IX counter_380__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i3.GSR = "ENABLED";
    CCU2C lockCounter_381_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2692), .S1(n37_adj_424[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_381_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_381_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_381_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_380__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i2.GSR = "ENABLED";
    FD1S3IX counter_380__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n487), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_380__i1.GSR = "ENABLED";
    FD1S3IX lockCounter_381__i0 (.D(n37_adj_424[0]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381__i0.GSR = "ENABLED";
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    CCU2C lockCounter_381_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2695), .S0(n37_adj_424[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_381_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_381_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_381_add_4_9.INJECT1_1 = "NO";
    LUT4 i926_1_lut (.A(clockDivider_clkLock), .Z(n2158)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i926_1_lut.init = 16'h5555;
    CCU2C lockCounter_381_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2694), .COUT(n2695), .S0(n37_adj_424[5]), .S1(n37_adj_424[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_381_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_381_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_381_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_381_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2693), .COUT(n2694), .S0(n37_adj_424[3]), .S1(n37_adj_424[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_381_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_381_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_381_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_381_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2692), .COUT(n2693), .S0(n37_adj_424[1]), .S1(n37_adj_424[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_381_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_381_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_381_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_381_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll_24_64m
//

module pll_24_64m (pll_clko_1, top_rst_N_28, serial_clk_c, LED7_c, GND_net, 
            clk_N_319) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input pll_clko_1;
    input top_rst_N_28;
    output serial_clk_c;
    output LED7_c;
    input GND_net;
    output clk_N_319;
    
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clk_N_319 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
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
    INV i1980 (.A(serial_clk_c), .Z(clk_N_319));
    
endmodule
