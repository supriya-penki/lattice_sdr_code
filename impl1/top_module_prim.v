// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Dec 30 04:03:30 2025
//
// Verilog Description of module top_module
//

module top_module (top_clk, rxd09, top_rst_n, serial_iq, serial_clk, 
            LED, LED1, LED2, LED3, LED4, LED5, LED6, LED7) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(7[8:18])
    input top_clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(8[8:15])
    input rxd09;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(9[13:18])
    input top_rst_n;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(10[8:17])
    output serial_iq;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(12[10:19])
    output serial_clk /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    output LED /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(15[17:20])
    output LED1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(16[17:21])
    output LED2;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(17[17:21])
    output LED3;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(18[17:21])
    output LED4;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(19[17:21])
    output LED5;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(20[17:21])
    output LED6;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(21[17:21])
    output LED7;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[17:21])
    
    wire top_clk_c /* synthesis SET_AS_NETWORK=top_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    wire clkDivider_clko /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(68[8:23])
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(21[12:18])
    wire clk_N_317 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, top_rst_n_c, serial_iq_c, LED7_c;
    wire [25:0]cnt2;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[12:16])
    
    wire counter_0_countDone, fskModule_symVal;
    wire [12:0]fskModule_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(72[21:32])
    wire [12:0]fskModule_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(73[21:32])
    
    wire fskModule_symDone, IQSerializer_start, n2567, n2836, n9, 
        n26, n8, n2566;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n7, n2565, n124, n123, n122;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(34[11:21])
    
    wire data, n129, n128, n121, n120, n3211, n3210, n3209, 
        clkDivider_clko_enable_1, n934, n6, firstFlag;
    wire [11:0]sampleCount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(41[23:34])
    
    wire n233, n2577, n2576, n2575, n2627, n2626, n2625, n2574, 
        n2624, n2729, n2623, n22, n2622, n926, n2621, n2573, 
        n114, n2572, n127, n126;
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(23[41:49])
    
    wire n115, n2620, n2571, n116, n2570, n23, n2619, n2618, 
        n2617, n2616, n2615, n5, cout, n2569, n2614, n2613, 
        n2612, n117, n2611, n2610, n2609, n2608, n2607, n2606, 
        n113, n112, n111, n110, n2605, n578, n492, n24, n118, 
        n119, n2600, n19, n18, n2599, n17, n16, n2598, n15, 
        n14, n10, n2597, n13, n11, n12, n25, n132, n131, n130, 
        n21, n2596, n2595, n125, n20, n1926, n135, n134, n133, 
        cout_adj_417, n2568, n2648, n4, n3, n2, n28, n31, n34, 
        n37, n40, n43, n46, n49, n52, n55, n58, n61;
    
    VHI i2 (.Z(VCC_net));
    INV i2077 (.A(top_clk_c), .Z(clk_N_317));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(8[8:15])
    GSR GSR_INST (.GSR(n3211));
    CCU2C add_1351_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2565), .COUT(n2566));
    defparam add_1351_3.INIT0 = 16'haaa5;
    defparam add_1351_3.INIT1 = 16'h5555;
    defparam add_1351_3.INJECT1_0 = "NO";
    defparam add_1351_3.INJECT1_1 = "NO";
    CCU2C add_1351_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2576), .COUT(n2577));
    defparam add_1351_25.INIT0 = 16'h5555;
    defparam add_1351_25.INIT1 = 16'h5555;
    defparam add_1351_25.INJECT1_0 = "NO";
    defparam add_1351_25.INJECT1_1 = "NO";
    CCU2C add_1351_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2565));
    defparam add_1351_1.INIT0 = 16'h0000;
    defparam add_1351_1.INIT1 = 16'haaaf;
    defparam add_1351_1.INJECT1_0 = "NO";
    defparam add_1351_1.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    FD1S3AX LED7_8 (.D(cnt2[25]), .CK(top_clk_c), .Q(LED7_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[7] 32[4])
    defparam LED7_8.GSR = "DISABLED";
    CCU2C add_1351_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2575), .COUT(n2576));
    defparam add_1351_23.INIT0 = 16'h5555;
    defparam add_1351_23.INIT1 = 16'h5555;
    defparam add_1351_23.INJECT1_0 = "NO";
    defparam add_1351_23.INJECT1_1 = "NO";
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[17:21])
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    LUT4 i913_1_lut (.A(cout_adj_417), .Z(clkDivider_clko_enable_1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i913_1_lut.init = 16'h5555;
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(21[17:21])
    FD1S3AX cnt2_401__i25 (.D(n110), .CK(top_clk_c), .Q(cnt2[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i25.GSR = "DISABLED";
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(20[17:21])
    FD1S3AX cnt2_401__i24 (.D(n111), .CK(top_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i24.GSR = "DISABLED";
    FD1S3AX cnt2_401__i23 (.D(n112), .CK(top_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i23.GSR = "DISABLED";
    FD1S3AX cnt2_401__i22 (.D(n113), .CK(top_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i22.GSR = "DISABLED";
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(8[8:15])
    OB LED4_pad (.I(VCC_net), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(19[17:21])
    FD1S3AX cnt2_401__i21 (.D(n114), .CK(top_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i21.GSR = "DISABLED";
    FD1S3AX cnt2_401__i20 (.D(n115), .CK(top_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i20.GSR = "DISABLED";
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(18[17:21])
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(17[17:21])
    FD1S3AX cnt2_401__i19 (.D(n116), .CK(top_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i19.GSR = "DISABLED";
    FD1S3AX cnt2_401__i18 (.D(n117), .CK(top_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i18.GSR = "DISABLED";
    FD1S3AX cnt2_401__i17 (.D(n118), .CK(top_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i17.GSR = "DISABLED";
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(16[17:21])
    FD1S3AX cnt2_401__i16 (.D(n119), .CK(top_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i16.GSR = "DISABLED";
    FD1S3AX cnt2_401__i15 (.D(n120), .CK(top_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i15.GSR = "DISABLED";
    FD1S3AX cnt2_401__i14 (.D(n121), .CK(top_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i14.GSR = "DISABLED";
    FD1S3AX cnt2_401__i13 (.D(n122), .CK(top_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i13.GSR = "DISABLED";
    FD1S3AX cnt2_401__i12 (.D(n123), .CK(top_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i12.GSR = "DISABLED";
    CCU2C add_1351_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2574), .COUT(n2575));
    defparam add_1351_21.INIT0 = 16'h5555;
    defparam add_1351_21.INIT1 = 16'h5555;
    defparam add_1351_21.INJECT1_0 = "NO";
    defparam add_1351_21.INJECT1_1 = "NO";
    FD1S3AX cnt2_401__i11 (.D(n124), .CK(top_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i11.GSR = "DISABLED";
    OB serial_clk_pad (.I(top_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(12[10:19])
    FD1S3AX cnt2_401__i10 (.D(n125), .CK(top_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i10.GSR = "DISABLED";
    FD1S3AX cnt2_401__i9 (.D(n126), .CK(top_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i9.GSR = "DISABLED";
    FD1S3AX cnt2_401__i8 (.D(n127), .CK(top_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i8.GSR = "DISABLED";
    FD1S3AX cnt2_401__i7 (.D(n128), .CK(top_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i7.GSR = "DISABLED";
    FD1S3AX cnt2_401__i6 (.D(n129), .CK(top_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i6.GSR = "DISABLED";
    CCU2C add_1351_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2573), .COUT(n2574));
    defparam add_1351_19.INIT0 = 16'h5555;
    defparam add_1351_19.INIT1 = 16'h5555;
    defparam add_1351_19.INJECT1_0 = "NO";
    defparam add_1351_19.INJECT1_1 = "NO";
    FD1S3AX cnt2_401__i5 (.D(n130), .CK(top_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i5.GSR = "DISABLED";
    FD1S3AX cnt2_401__i4 (.D(n131), .CK(top_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i4.GSR = "DISABLED";
    FD1S3AX cnt2_401__i3 (.D(n132), .CK(top_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i3.GSR = "DISABLED";
    FD1S3AX cnt2_401__i2 (.D(n133), .CK(top_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i2.GSR = "DISABLED";
    CCU2C add_1351_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2572), .COUT(n2573));
    defparam add_1351_17.INIT0 = 16'h5555;
    defparam add_1351_17.INIT1 = 16'h5555;
    defparam add_1351_17.INJECT1_0 = "NO";
    defparam add_1351_17.INJECT1_1 = "NO";
    FD1S3AX cnt2_401__i1 (.D(n134), .CK(top_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i1.GSR = "DISABLED";
    CCU2C add_1351_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2577), .S1(cout_adj_417));
    defparam add_1351_27.INIT0 = 16'h5555;
    defparam add_1351_27.INIT1 = 16'h0000;
    defparam add_1351_27.INJECT1_0 = "NO";
    defparam add_1351_27.INJECT1_1 = "NO";
    FD1S3AX cnt2_401__i0 (.D(n135), .CK(top_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401__i0.GSR = "DISABLED";
    OB LED_pad (.I(VCC_net), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(15[17:20])
    CCU2C add_1351_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2571), .COUT(n2572));
    defparam add_1351_15.INIT0 = 16'h5555;
    defparam add_1351_15.INIT1 = 16'h5555;
    defparam add_1351_15.INJECT1_0 = "NO";
    defparam add_1351_15.INJECT1_1 = "NO";
    CCU2C add_1351_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2570), .COUT(n2571));
    defparam add_1351_13.INIT0 = 16'h5555;
    defparam add_1351_13.INIT1 = 16'h5555;
    defparam add_1351_13.INJECT1_0 = "NO";
    defparam add_1351_13.INJECT1_1 = "NO";
    CCU2C add_1351_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2569), .COUT(n2570));
    defparam add_1351_11.INIT0 = 16'h5555;
    defparam add_1351_11.INIT1 = 16'h5555;
    defparam add_1351_11.INJECT1_0 = "NO";
    defparam add_1351_11.INJECT1_1 = "NO";
    CCU2C add_1351_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2568), .COUT(n2569));
    defparam add_1351_9.INIT0 = 16'h5555;
    defparam add_1351_9.INIT1 = 16'h5555;
    defparam add_1351_9.INJECT1_0 = "NO";
    defparam add_1351_9.INJECT1_1 = "NO";
    CCU2C add_1351_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2567), .COUT(n2568));
    defparam add_1351_7.INIT0 = 16'haaa5;
    defparam add_1351_7.INIT1 = 16'h5555;
    defparam add_1351_7.INJECT1_0 = "NO";
    defparam add_1351_7.INJECT1_1 = "NO";
    CCU2C add_1352_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2627), 
          .S0(cout));
    defparam add_1352_cout.INIT0 = 16'h0000;
    defparam add_1352_cout.INIT1 = 16'h0000;
    defparam add_1352_cout.INJECT1_0 = "NO";
    defparam add_1352_cout.INJECT1_1 = "NO";
    CCU2C add_1352_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2626), .COUT(n2627));
    defparam add_1352_20.INIT0 = 16'h555f;
    defparam add_1352_20.INIT1 = 16'h555f;
    defparam add_1352_20.INJECT1_0 = "NO";
    defparam add_1352_20.INJECT1_1 = "NO";
    CCU2C add_1352_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2625), .COUT(n2626));
    defparam add_1352_18.INIT0 = 16'h555f;
    defparam add_1352_18.INIT1 = 16'h555f;
    defparam add_1352_18.INJECT1_0 = "NO";
    defparam add_1352_18.INJECT1_1 = "NO";
    CCU2C add_1352_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2624), .COUT(n2625));
    defparam add_1352_16.INIT0 = 16'h555f;
    defparam add_1352_16.INIT1 = 16'h555f;
    defparam add_1352_16.INJECT1_0 = "NO";
    defparam add_1352_16.INJECT1_1 = "NO";
    CCU2C add_1352_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2623), .COUT(n2624));
    defparam add_1352_14.INIT0 = 16'h555f;
    defparam add_1352_14.INIT1 = 16'h555f;
    defparam add_1352_14.INJECT1_0 = "NO";
    defparam add_1352_14.INJECT1_1 = "NO";
    CCU2C add_1352_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2622), .COUT(n2623));
    defparam add_1352_12.INIT0 = 16'haaa0;
    defparam add_1352_12.INIT1 = 16'h555f;
    defparam add_1352_12.INJECT1_0 = "NO";
    defparam add_1352_12.INJECT1_1 = "NO";
    CCU2C add_1352_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2621), .COUT(n2622));
    defparam add_1352_10.INIT0 = 16'h555f;
    defparam add_1352_10.INIT1 = 16'haaa0;
    defparam add_1352_10.INJECT1_0 = "NO";
    defparam add_1352_10.INJECT1_1 = "NO";
    CCU2C add_1352_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2620), .COUT(n2621));
    defparam add_1352_8.INIT0 = 16'h555f;
    defparam add_1352_8.INIT1 = 16'h555f;
    defparam add_1352_8.INJECT1_0 = "NO";
    defparam add_1352_8.INJECT1_1 = "NO";
    CCU2C add_1352_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2619), .COUT(n2620));
    defparam add_1352_6.INIT0 = 16'haaa0;
    defparam add_1352_6.INIT1 = 16'h555f;
    defparam add_1352_6.INJECT1_0 = "NO";
    defparam add_1352_6.INJECT1_1 = "NO";
    CCU2C add_1352_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2618), .COUT(n2619));
    defparam add_1352_4.INIT0 = 16'h555f;
    defparam add_1352_4.INIT1 = 16'haaa0;
    defparam add_1352_4.INJECT1_0 = "NO";
    defparam add_1352_4.INJECT1_1 = "NO";
    CCU2C add_1352_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2618));
    defparam add_1352_2.INIT0 = 16'h000e;
    defparam add_1352_2.INIT1 = 16'haaa0;
    defparam add_1352_2.INJECT1_0 = "NO";
    defparam add_1352_2.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_27 (.A0(cnt2[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2617), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_27.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_27.INIT1 = 16'h0000;
    defparam cnt2_401_add_4_27.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2616), 
          .COUT(n2617), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_25.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_25.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_25.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_25.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2615), 
          .COUT(n2616), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_23.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_23.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_23.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2614), 
          .COUT(n2615), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_21.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_21.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_21.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2613), 
          .COUT(n2614), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_19.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_19.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_19.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_19.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2612), 
          .COUT(n2613), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_17.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_17.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_17.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_17.INJECT1_1 = "NO";
    CCU2C add_1351_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2566), .COUT(n2567));
    defparam add_1351_5.INIT0 = 16'h5555;
    defparam add_1351_5.INIT1 = 16'haaa5;
    defparam add_1351_5.INJECT1_0 = "NO";
    defparam add_1351_5.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2611), 
          .COUT(n2612), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_15.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_15.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_15.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_15.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2610), 
          .COUT(n2611), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_13.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_13.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_13.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_13.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2609), 
          .COUT(n2610), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_11.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_11.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_11.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2608), 
          .COUT(n2609), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_9.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_9.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_9.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_9.INJECT1_1 = "NO";
    FSKModulator fskModule_0 (.fskModule_symDone(fskModule_symDone), .clk_N_172(clk_N_172), 
            .n926(n926), .sampleCount({sampleCount}), .n67({n28, n31, 
            n34, n37, n40, n43, n46, n49, n52, n55, n58, n61}), 
            .firstFlag(firstFlag), .clkDivider_clko(clkDivider_clko), .n3210(n3210), 
            .IQSerializer_start(IQSerializer_start), .n3211(n3211), .n3209(n3209), 
            .\fskModule_I[0] (fskModule_I[0]), .\fskModule_Q[0] (fskModule_Q[0]), 
            .n492(n492), .fskModule_symVal(fskModule_symVal), .n934(n934), 
            .n578(n578), .n233(n233), .\fskModule_Q[12] (fskModule_Q[12]), 
            .n2836(n2836), .\fskModule_Q[11] (fskModule_Q[11]), .\fskModule_Q[7] (fskModule_Q[7]), 
            .\fskModule_Q[4] (fskModule_Q[4]), .\fskModule_Q[2] (fskModule_Q[2]), 
            .\fskModule_I[12] (fskModule_I[12]), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_I[7] (fskModule_I[7]), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[2] (fskModule_I[2]), .n2729(n2729)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(147[14] 156[2])
    CCU2C cnt2_401_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2607), 
          .COUT(n2608), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_7.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_7.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_7.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_7.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2606), 
          .COUT(n2607), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_5.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_5.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_5.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_5.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2605), 
          .COUT(n2606), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_3.INIT0 = 16'haaa0;
    defparam cnt2_401_add_4_3.INIT1 = 16'haaa0;
    defparam cnt2_401_add_4_3.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_3.INJECT1_1 = "NO";
    CCU2C cnt2_401_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2605), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[10:20])
    defparam cnt2_401_add_4_1.INIT0 = 16'h0000;
    defparam cnt2_401_add_4_1.INIT1 = 16'h555f;
    defparam cnt2_401_add_4_1.INJECT1_0 = "NO";
    defparam cnt2_401_add_4_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    packetCounter counter_0 (.counter_0_countDone(counter_0_countDone), .clkDivider_clko(clkDivider_clko), 
            .clkDivider_clko_enable_1(clkDivider_clko_enable_1), .n3210(n3210), 
            .VCC_net(VCC_net), .waitcount({waitcount}), .GND_net(GND_net), 
            .n1926(n1926)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(131[15] 135[2])
    CCU2C _add_1_671_add_4_13 (.A0(sampleCount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2600), .S0(n28));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_671_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n2648)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    CCU2C _add_1_671_add_4_11 (.A0(sampleCount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2599), .COUT(n2600), .S0(n34), .S1(n31));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_671_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_671_add_4_9 (.A0(sampleCount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2598), .COUT(n2599), .S0(n40), .S1(n37));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_671_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_671_add_4_7 (.A0(sampleCount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2597), .COUT(n2598), .S0(n46), .S1(n43));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_671_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_671_add_4_5 (.A0(sampleCount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2596), .COUT(n2597), .S0(n52), .S1(n49));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_671_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_671_add_4_3 (.A0(sampleCount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sampleCount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2595), .COUT(n2596), .S0(n58), .S1(n55));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_671_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_671_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_671_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sampleCount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2595), .S1(n61));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(126[19:46])
    defparam _add_1_671_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_671_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_671_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_671_add_4_1.INJECT1_1 = "NO";
    packetGenerator packetGen_0 (.symCounter({symCounter}), .fskModule_symVal(fskModule_symVal), 
            .clk_N_172(clk_N_172), .clkDivider_clko(clkDivider_clko), .fskModule_symDone(fskModule_symDone), 
            .data(data), .counter_0_countDone(counter_0_countDone), .n2729(n2729), 
            .n233(n233), .n2836(n2836), .n926(n926), .n3209(n3209)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(137[17] 143[2])
    IB top_rst_n_pad (.I(top_rst_n), .O(top_rst_n_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(10[8:17])
    clockDivider clockDivider_0 (.GND_net(GND_net), .VCC_net(VCC_net), .top_clk_c(top_clk_c), 
            .clkDivider_clko(clkDivider_clko), .firstFlag(firstFlag), .n578(n578), 
            .n3210(n3210), .n492(n492), .n3211(n3211), .top_rst_n_c(top_rst_n_c), 
            .cout(cout), .n1926(n1926), .clk_N_172(clk_N_172)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(121[14] 126[2])
    IQSerializer IQSerializer_0 (.clk_N_317(clk_N_317), .n934(n934), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\QCounter[3] (QCounter[3]), .\fskModule_I[4] (fskModule_I[4]), 
            .\fskModule_I[12] (fskModule_I[12]), .\fskModule_I[2] (fskModule_I[2]), 
            .\fskModule_I[7] (fskModule_I[7]), .n2648(n2648), .\fskModule_Q[0] (fskModule_Q[0]), 
            .\QCounter[2] (QCounter[2]), .\fskModule_Q[4] (fskModule_Q[4]), 
            .\fskModule_I[0] (fskModule_I[0]), .\fskModule_I[11] (fskModule_I[11]), 
            .\fskModule_Q[2] (fskModule_Q[2]), .\QCounter[1] (QCounter[1]), 
            .\fskModule_Q[7] (fskModule_Q[7]), .\fskModule_Q[11] (fskModule_Q[11]), 
            .\fskModule_Q[12] (fskModule_Q[12]), .IQSerializer_start(IQSerializer_start), 
            .top_clk_c(top_clk_c), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(162[14] 170[2])
    
endmodule
//
// Verilog Description of module FSKModulator
//

module FSKModulator (fskModule_symDone, clk_N_172, n926, sampleCount, 
            n67, firstFlag, clkDivider_clko, n3210, IQSerializer_start, 
            n3211, n3209, \fskModule_I[0] , \fskModule_Q[0] , n492, 
            fskModule_symVal, n934, n578, n233, \fskModule_Q[12] , 
            n2836, \fskModule_Q[11] , \fskModule_Q[7] , \fskModule_Q[4] , 
            \fskModule_Q[2] , \fskModule_I[12] , \fskModule_I[11] , \fskModule_I[7] , 
            \fskModule_I[4] , \fskModule_I[2] , n2729) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_172;
    input n926;
    output [11:0]sampleCount;
    input [11:0]n67;
    output firstFlag;
    input clkDivider_clko;
    input n3210;
    output IQSerializer_start;
    input n3211;
    input n3209;
    output \fskModule_I[0] ;
    output \fskModule_Q[0] ;
    input n492;
    input fskModule_symVal;
    output n934;
    input n578;
    output n233;
    output \fskModule_Q[12] ;
    input n2836;
    output \fskModule_Q[11] ;
    output \fskModule_Q[7] ;
    output \fskModule_Q[4] ;
    output \fskModule_Q[2] ;
    output \fskModule_I[12] ;
    output \fskModule_I[11] ;
    output \fskModule_I[7] ;
    output \fskModule_I[4] ;
    output \fskModule_I[2] ;
    output n2729;
    
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(21[12:18])
    wire clkDivider_clko /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(68[8:23])
    
    wire n2828, n2767;
    wire [11:0]sampleCount_11__N_231;
    wire [12:0]sine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(43[23:27])
    wire [12:0]cosine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(44[23:29])
    
    wire n3214, n2858;
    wire [7:0]n227;
    
    wire n3215, n2880, n17, clkDivider_clko_enable_3, lastSym, n2856, 
        n2862, n3025;
    wire [2:0]sin_phase;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(35[23:32])
    
    wire n2833, n3024, n1, n2918, n2743;
    wire [2:0]n2;
    
    wire cosOut_12__N_315, n2823, n2878;
    
    FD1S3IX symDone_60 (.D(n926), .CK(clk_N_172), .CD(n2828), .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam symDone_60.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[0]), .Z(sampleCount_11__N_231[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_22 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[1]), .Z(sampleCount_11__N_231[1])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_22.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_23 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[5]), .Z(sampleCount_11__N_231[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_23.init = 16'hdf00;
    LUT4 i1_3_lut (.A(sampleCount[1]), .B(n2767), .C(sampleCount[0]), 
         .Z(n2828)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_3_lut.init = 16'hfdfd;
    FD1S3AX firstFlag_56 (.D(n3210), .CK(clkDivider_clko), .Q(firstFlag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam firstFlag_56.GSR = "DISABLED";
    FD1S3AX start_57 (.D(n3211), .CK(clkDivider_clko), .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam start_57.GSR = "DISABLED";
    FD1S3JX sampleCount_i0 (.D(sampleCount_11__N_231[0]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i0.GSR = "ENABLED";
    FD1S3IX FSK_I__i0 (.D(sine[0]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i0.GSR = "DISABLED";
    FD1S3IX FSK_Q__i0 (.D(cosine[0]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_Q[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_19 (.A(sampleCount[3]), .B(sampleCount[8]), .Z(n3214)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_19.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(sampleCount[3]), .B(sampleCount[8]), .C(sampleCount[5]), 
         .D(sampleCount[0]), .Z(n2858)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_24 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[9]), .Z(sampleCount_11__N_231[9])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_24.init = 16'hdf00;
    FD1S3JX cos_phase_FSM_i1 (.D(n227[7]), .CK(clkDivider_clko), .PD(n492), 
            .Q(cosine[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i1.GSR = "DISABLED";
    LUT4 i422_4_lut_4_lut (.A(n3211), .B(n3215), .C(n2880), .D(n17), 
         .Z(clkDivider_clko_enable_3)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(15[9:24])
    defparam i422_4_lut_4_lut.init = 16'h5575;
    LUT4 i5_2_lut_rep_20 (.A(sampleCount[9]), .B(sampleCount[10]), .Z(n3215)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut_rep_20.init = 16'heeee;
    FD1P3IX lastSym_55 (.D(fskModule_symVal), .SP(clkDivider_clko_enable_3), 
            .CD(n3210), .CK(clkDivider_clko), .Q(lastSym)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam lastSym_55.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(sampleCount[4]), .B(sampleCount[1]), .Z(n2856)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(71[9:25])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_25 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[3]), .Z(sampleCount_11__N_231[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_25.init = 16'hdf00;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(sampleCount[9]), .B(sampleCount[10]), 
         .C(fskModule_symVal), .D(lastSym), .Z(n2862)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_26.init = 16'hfeef;
    LUT4 i1890_1_lut_3_lut_3_lut (.A(n3211), .B(fskModule_symVal), .C(firstFlag), 
         .Z(n3025)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(15[9:24])
    defparam i1890_1_lut_3_lut_3_lut.init = 16'h2a2a;
    LUT4 i438_1_lut (.A(IQSerializer_start), .Z(n934)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(70[8] 116[4])
    defparam i438_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_27 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[8]), .Z(sampleCount_11__N_231[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_27.init = 16'hdf00;
    LUT4 i1130_2_lut_4_lut (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[11]), .Z(sampleCount_11__N_231[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1130_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1889_1_lut_4_lut (.A(sin_phase[1]), .B(n2833), .C(sin_phase[2]), 
         .D(sin_phase[0]), .Z(n3024)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1889_1_lut_4_lut.init = 16'h69c3;
    LUT4 i1131_2_lut_4_lut (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[10]), .Z(sampleCount_11__N_231[10])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1131_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_28 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[4]), .Z(sampleCount_11__N_231[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_28.init = 16'hdf00;
    FD1S3IX sin_phase_410__i0 (.D(n1), .CK(clkDivider_clko), .CD(n578), 
            .Q(sin_phase[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_410__i0.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n3215), .B(n17), .C(n3214), .D(n2918), .Z(n2767)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_29 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[7]), .Z(sampleCount_11__N_231[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_29.init = 16'hdf00;
    FD1S3AX sin_phase_410__i2 (.D(n2743), .CK(clkDivider_clko), .Q(sin_phase[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_410__i2.GSR = "DISABLED";
    FD1S3IX sin_phase_410__i1 (.D(n2[1]), .CK(clkDivider_clko), .CD(n578), 
            .Q(sin_phase[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam sin_phase_410__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_30 (.A(sampleCount[4]), .B(sampleCount[5]), .Z(n2918)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_31 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[6]), .Z(sampleCount_11__N_231[6])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_31.init = 16'hdf00;
    LUT4 i1_4_lut_adj_32 (.A(sampleCount[7]), .B(sampleCount[11]), .C(sampleCount[6]), 
         .D(sampleCount[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'hfffe;
    LUT4 i1_4_lut_adj_33 (.A(n2858), .B(n2862), .C(n17), .D(n2856), 
         .Z(n2833)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(71[9:25])
    defparam i1_4_lut_adj_33.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_34 (.A(sampleCount[0]), .B(n2767), .C(sampleCount[1]), 
         .D(n67[2]), .Z(sampleCount_11__N_231[2])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam i1_2_lut_4_lut_adj_34.init = 16'hdf00;
    PFUMX sin_phase_410_mux_6_i3 (.BLUT(n3024), .ALUT(n3025), .C0(n578), 
          .Z(n2743));
    FD1S3IX cos_phase_FSM_i8 (.D(n227[6]), .CK(clkDivider_clko), .CD(n492), 
            .Q(n227[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i8.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i7 (.D(n227[5]), .CK(clkDivider_clko), .CD(n492), 
            .Q(n227[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i7.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i6 (.D(n227[4]), .CK(clkDivider_clko), .CD(n492), 
            .Q(n227[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i6.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i5 (.D(n227[3]), .CK(clkDivider_clko), .CD(n492), 
            .Q(n227[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i5.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i4 (.D(n233), .CK(clkDivider_clko), .CD(n492), 
            .Q(n227[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i4.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i3 (.D(cosOut_12__N_315), .CK(clkDivider_clko), 
            .CD(n492), .Q(n233));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i3.GSR = "DISABLED";
    FD1S3IX cos_phase_FSM_i2 (.D(cosine[1]), .CK(clkDivider_clko), .CD(n492), 
            .Q(cosOut_12__N_315));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(92[17:41])
    defparam cos_phase_FSM_i2.GSR = "DISABLED";
    FD1S3IX FSK_Q__i12 (.D(n2823), .CK(clk_N_172), .CD(n2836), .Q(\fskModule_Q[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i12.GSR = "DISABLED";
    FD1S3IX FSK_Q__i11 (.D(cosine[6]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_Q[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i11.GSR = "DISABLED";
    FD1S3IX FSK_Q__i7 (.D(cosine[7]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_Q[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i7.GSR = "DISABLED";
    FD1S3IX FSK_Q__i4 (.D(cosine[4]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_Q[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i4.GSR = "DISABLED";
    FD1S3IX FSK_Q__i2 (.D(cosine[1]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_Q[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_Q__i2.GSR = "DISABLED";
    FD1S3IX FSK_I__i12 (.D(sine[12]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[12] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i12.GSR = "DISABLED";
    FD1S3IX FSK_I__i11 (.D(sine[11]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[11] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i11.GSR = "DISABLED";
    FD1S3IX FSK_I__i7 (.D(sine[10]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i7.GSR = "DISABLED";
    FD1S3IX FSK_I__i4 (.D(sine[4]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i4.GSR = "DISABLED";
    LUT4 i1_3_lut_adj_35 (.A(n2878), .B(sampleCount[0]), .C(sampleCount[3]), 
         .Z(n2880)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_adj_35.init = 16'h0202;
    FD1S3IX FSK_I__i2 (.D(sine[1]), .CK(clk_N_172), .CD(n3209), .Q(\fskModule_I[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(59[8] 67[4])
    defparam FSK_I__i2.GSR = "DISABLED";
    FD1S3JX sampleCount_i11 (.D(sampleCount_11__N_231[11]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_36 (.A(sampleCount[5]), .B(sampleCount[8]), .C(sampleCount[1]), 
         .D(sampleCount[4]), .Z(n2878)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'h0010;
    FD1S3JX sampleCount_i10 (.D(sampleCount_11__N_231[10]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i10.GSR = "ENABLED";
    FD1S3JX sampleCount_i9 (.D(sampleCount_11__N_231[9]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i9.GSR = "ENABLED";
    FD1S3JX sampleCount_i8 (.D(sampleCount_11__N_231[8]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i8.GSR = "ENABLED";
    FD1S3JX sampleCount_i7 (.D(sampleCount_11__N_231[7]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i7.GSR = "ENABLED";
    FD1S3JX sampleCount_i6 (.D(sampleCount_11__N_231[6]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i6.GSR = "ENABLED";
    FD1S3JX sampleCount_i5 (.D(sampleCount_11__N_231[5]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i5.GSR = "ENABLED";
    FD1S3JX sampleCount_i4 (.D(sampleCount_11__N_231[4]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i4.GSR = "ENABLED";
    FD1S3JX sampleCount_i3 (.D(sampleCount_11__N_231[3]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i3.GSR = "ENABLED";
    FD1S3JX sampleCount_i2 (.D(sampleCount_11__N_231[2]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i2.GSR = "ENABLED";
    FD1S3JX sampleCount_i1 (.D(sampleCount_11__N_231[1]), .CK(clk_N_172), 
            .PD(n3209), .Q(sampleCount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=156 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(122[11] 135[5])
    defparam sampleCount_i1.GSR = "ENABLED";
    LUT4 i1395_2_lut (.A(sin_phase[1]), .B(sin_phase[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(89[12] 108[6])
    defparam i1395_2_lut.init = 16'h6666;
    sinModule sin_instance (.sin_phase({sin_phase}), .\sine[1] (sine[1]), 
            .\sine[4] (sine[4]), .n1(n1), .\sine[12] (sine[12]), .\sine[10] (sine[10]), 
            .\sine[11] (sine[11]), .\sine[0] (sine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(159[11] 162[2])
    cosModule cos_instance (.n228(n227[7]), .n229(n227[6]), .n230(n227[5]), 
            .n231(n227[4]), .n232(n227[3]), .n2823(n2823), .\cosine[1] (cosine[1]), 
            .cosOut_12__N_315(cosOut_12__N_315), .n2729(n2729), .\cosine[6] (cosine[6]), 
            .n233(n233), .\cosine[7] (cosine[7]), .\cosine[4] (cosine[4]), 
            .\cosine[0] (cosine[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/fskmodulator.v(163[12] 166[2])
    
endmodule
//
// Verilog Description of module sinModule
//

module sinModule (sin_phase, \sine[1] , \sine[4] , n1, \sine[12] , 
            \sine[10] , \sine[11] , \sine[0] ) /* synthesis syn_module_defined=1 */ ;
    input [2:0]sin_phase;
    output \sine[1] ;
    output \sine[4] ;
    output n1;
    output \sine[12] ;
    output \sine[10] ;
    output \sine[11] ;
    output \sine[0] ;
    
    
    LUT4 i1908_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[1] )) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/sinmodule.v(16[11:32])
    defparam i1908_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[4] )) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_4_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_1_lut (.A(sin_phase[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i1608_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[12] )) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1608_2_lut_3_lut.init = 16'he0e0;
    LUT4 i13_3_lut_3_lut (.A(sin_phase[2]), .B(sin_phase[1]), .C(sin_phase[0]), 
         .Z(\sine[10] )) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam i13_3_lut_3_lut.init = 16'ha4a4;
    LUT4 i1_2_lut_3_lut (.A(sin_phase[0]), .B(sin_phase[1]), .C(sin_phase[2]), 
         .Z(\sine[11] )) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut (.A(sin_phase[0]), .B(sin_phase[1]), .Z(\sine[0] )) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module cosModule
//

module cosModule (n228, n229, n230, n231, n232, n2823, \cosine[1] , 
            cosOut_12__N_315, n2729, \cosine[6] , n233, \cosine[7] , 
            \cosine[4] , \cosine[0] ) /* synthesis syn_module_defined=1 */ ;
    input n228;
    input n229;
    input n230;
    input n231;
    input n232;
    output n2823;
    input \cosine[1] ;
    input cosOut_12__N_315;
    output n2729;
    output \cosine[6] ;
    input n233;
    output \cosine[7] ;
    output \cosine[4] ;
    output \cosine[0] ;
    
    
    wire n3220;
    wire [9:0]n715;
    
    wire n2994, n2992, n2736;
    
    LUT4 i1092_2_lut_rep_25 (.A(n228), .B(n229), .Z(n3220)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(26[7] 29[24])
    defparam i1092_2_lut_rep_25.init = 16'h2222;
    LUT4 i1120_3_lut_4_lut (.A(n228), .B(n229), .C(n230), .D(n231), 
         .Z(n715[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(26[7] 29[24])
    defparam i1120_3_lut_4_lut.init = 16'h00f2;
    LUT4 i1_3_lut (.A(n230), .B(n232), .C(n231), .Z(n2823)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(20[7] 29[24])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut (.A(\cosine[1] ), .B(cosOut_12__N_315), .Z(n2729)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n2994), .B(n2729), .C(n2992), .D(n3220), .Z(\cosine[6] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut.init = 16'hcdcc;
    LUT4 i1850_2_lut (.A(n233), .B(n230), .Z(n2994)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1850_2_lut.init = 16'heeee;
    LUT4 i1848_2_lut (.A(n231), .B(n232), .Z(n2992)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1848_2_lut.init = 16'heeee;
    LUT4 i1107_4_lut (.A(n715[2]), .B(\cosine[1] ), .C(n2736), .D(n232), 
         .Z(\cosine[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1107_4_lut.init = 16'hcfce;
    LUT4 i1119_2_lut (.A(n230), .B(n231), .Z(n715[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(22[7] 29[24])
    defparam i1119_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_21 (.A(n715[1]), .B(n2729), .C(n233), .D(n232), 
         .Z(\cosine[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1_4_lut_adj_21.init = 16'hcfce;
    LUT4 i1094_4_lut (.A(n232), .B(\cosine[1] ), .C(n2736), .D(n231), 
         .Z(\cosine[0] )) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/cosmodule.v(14[7] 29[24])
    defparam i1094_4_lut.init = 16'hcdcc;
    LUT4 i1595_2_lut (.A(n233), .B(cosOut_12__N_315), .Z(n2736)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1595_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module packetCounter
//

module packetCounter (counter_0_countDone, clkDivider_clko, clkDivider_clko_enable_1, 
            n3210, VCC_net, waitcount, GND_net, n1926) /* synthesis syn_module_defined=1 */ ;
    output counter_0_countDone;
    input clkDivider_clko;
    input clkDivider_clko_enable_1;
    input n3210;
    input VCC_net;
    output [25:0]waitcount;
    input GND_net;
    input n1926;
    
    wire clkDivider_clko /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(68[8:23])
    
    wire n2590;
    wire [25:0]n109;
    
    wire n2591, n2589, n2588, n2587, n2586, n2585, n2584, n2583, 
        n2582, n2594, n2593, n2592;
    
    FD1P3IX countDone_14 (.D(VCC_net), .SP(clkDivider_clko_enable_1), .CD(n3210), 
            .CK(clkDivider_clko), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=135 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 27[4])
    defparam countDone_14.GSR = "DISABLED";
    CCU2C waitcount_405_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2590), .COUT(n2591), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2589), .COUT(n2590), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2588), .COUT(n2589), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2587), .COUT(n2588), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2586), .COUT(n2587), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_11.INJECT1_1 = "NO";
    FD1S3IX waitcount_405__i0 (.D(n109[0]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i0.GSR = "DISABLED";
    FD1S3IX waitcount_405__i25 (.D(n109[25]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i25.GSR = "DISABLED";
    FD1S3IX waitcount_405__i24 (.D(n109[24]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i24.GSR = "DISABLED";
    FD1S3IX waitcount_405__i23 (.D(n109[23]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i23.GSR = "DISABLED";
    FD1S3IX waitcount_405__i22 (.D(n109[22]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i22.GSR = "DISABLED";
    FD1S3IX waitcount_405__i21 (.D(n109[21]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i21.GSR = "DISABLED";
    FD1S3IX waitcount_405__i20 (.D(n109[20]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i20.GSR = "DISABLED";
    FD1S3IX waitcount_405__i19 (.D(n109[19]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i19.GSR = "DISABLED";
    FD1S3IX waitcount_405__i18 (.D(n109[18]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i18.GSR = "DISABLED";
    FD1S3IX waitcount_405__i17 (.D(n109[17]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i17.GSR = "DISABLED";
    FD1S3IX waitcount_405__i16 (.D(n109[16]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i16.GSR = "DISABLED";
    FD1S3IX waitcount_405__i15 (.D(n109[15]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i15.GSR = "DISABLED";
    FD1S3IX waitcount_405__i14 (.D(n109[14]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i14.GSR = "DISABLED";
    FD1S3IX waitcount_405__i13 (.D(n109[13]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i13.GSR = "DISABLED";
    FD1S3IX waitcount_405__i12 (.D(n109[12]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i12.GSR = "DISABLED";
    FD1S3IX waitcount_405__i11 (.D(n109[11]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i11.GSR = "DISABLED";
    FD1S3IX waitcount_405__i10 (.D(n109[10]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i10.GSR = "DISABLED";
    FD1S3IX waitcount_405__i9 (.D(n109[9]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i9.GSR = "DISABLED";
    FD1S3IX waitcount_405__i8 (.D(n109[8]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i8.GSR = "DISABLED";
    FD1S3IX waitcount_405__i7 (.D(n109[7]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i7.GSR = "DISABLED";
    FD1S3IX waitcount_405__i6 (.D(n109[6]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i6.GSR = "DISABLED";
    FD1S3IX waitcount_405__i5 (.D(n109[5]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i5.GSR = "DISABLED";
    FD1S3IX waitcount_405__i4 (.D(n109[4]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i4.GSR = "DISABLED";
    FD1S3IX waitcount_405__i3 (.D(n109[3]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i3.GSR = "DISABLED";
    FD1S3IX waitcount_405__i2 (.D(n109[2]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i2.GSR = "DISABLED";
    FD1S3IX waitcount_405__i1 (.D(n109[1]), .CK(clkDivider_clko), .CD(n1926), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405__i1.GSR = "DISABLED";
    CCU2C waitcount_405_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2585), .COUT(n2586), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2584), .COUT(n2585), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2583), .COUT(n2584), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2582), .COUT(n2583), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2582), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_405_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_405_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2594), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_405_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2593), .COUT(n2594), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2592), .COUT(n2593), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_405_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2591), .COUT(n2592), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_405_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_405_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_405_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_405_add_4_21.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module packetGenerator
//

module packetGenerator (symCounter, fskModule_symVal, clk_N_172, clkDivider_clko, 
            fskModule_symDone, data, counter_0_countDone, n2729, n233, 
            n2836, n926, n3209) /* synthesis syn_module_defined=1 */ ;
    output [7:0]symCounter;
    output fskModule_symVal;
    input clk_N_172;
    input clkDivider_clko;
    input fskModule_symDone;
    input data;
    input counter_0_countDone;
    input n2729;
    input n233;
    output n2836;
    output n926;
    output n3209;
    
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(21[12:18])
    wire clkDivider_clko /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(68[8:23])
    
    wire next_state_3__N_151, n2980, n3217;
    wire [7:0]n69;
    
    wire n2972, n2970, n3216, next_symVal_N_169, clkDivider_clko_enable_10, 
        next_state_3__N_150, n2892, n1738, n13, n15, n3218, next_state_3__N_153, 
        next_state_3__N_152, next_symVal, next_symVal_N_170, n2962, 
        n2831, n3221, n2792, n3219;
    
    LUT4 i1133_4_lut (.A(symCounter[6]), .B(next_state_3__N_151), .C(n2980), 
         .D(n3217), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1133_4_lut.init = 16'h4888;
    LUT4 i1134_4_lut (.A(symCounter[5]), .B(next_state_3__N_151), .C(n2972), 
         .D(n2970), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1134_4_lut.init = 16'h4888;
    FD1S3IX symVal_43 (.D(next_symVal_N_169), .CK(clk_N_172), .CD(n3216), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(52[8] 59[4])
    defparam symVal_43.GSR = "DISABLED";
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i727_4_lut (.A(next_state_3__N_151), .B(next_state_3__N_150), .C(n2892), 
         .D(fskModule_symDone), .Z(n1738)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam i727_4_lut.init = 16'hceee;
    LUT4 i1_4_lut (.A(n13), .B(n15), .C(symCounter[0]), .D(symCounter[7]), 
         .Z(n2892)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(symCounter[4]), .B(symCounter[2]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1135_4_lut (.A(symCounter[4]), .B(next_state_3__N_151), .C(n3218), 
         .D(n3217), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1135_4_lut.init = 16'h4888;
    LUT4 i1136_4_lut (.A(symCounter[3]), .B(next_state_3__N_151), .C(symCounter[0]), 
         .D(n2970), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1136_4_lut.init = 16'h4888;
    FD1S3IX current_state_FSM_i1 (.D(next_state_3__N_152), .CK(clkDivider_clko), 
            .CD(n3216), .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1917_4_lut (.A(next_symVal), .B(data), .C(next_symVal_N_170), 
         .D(counter_0_countDone), .Z(next_symVal)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(61[1] 107[4])
    defparam i1917_4_lut.init = 16'hca00;
    LUT4 i1_4_lut_adj_18 (.A(n13), .B(fskModule_symDone), .C(n15), .D(n2962), 
         .Z(n2831)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h8000;
    LUT4 i1138_3_lut (.A(symCounter[1]), .B(next_state_3__N_151), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1138_3_lut.init = 16'h4848;
    LUT4 i1_3_lut (.A(next_state_3__N_151), .B(symCounter[0]), .C(symCounter[7]), 
         .Z(n2962)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 next_state_3__N_150_I_0_2_lut (.A(next_state_3__N_150), .B(next_state_3__N_151), 
         .Z(next_symVal_N_170)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam next_state_3__N_150_I_0_2_lut.init = 16'heeee;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_169)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(57[13:25])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    LUT4 rst_n_I_0_1_lut_rep_21 (.A(counter_0_countDone), .Z(n3216)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[5:17])
    defparam rst_n_I_0_1_lut_rep_21.init = 16'h5555;
    LUT4 i1_2_lut_rep_26 (.A(symCounter[5]), .B(symCounter[6]), .Z(n3221)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_26.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut (.A(counter_0_countDone), .B(n2729), .C(n233), 
         .D(next_state_3__N_153), .Z(n2836)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[5:17])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_4_lut (.A(symCounter[5]), .B(symCounter[6]), .C(symCounter[3]), 
         .D(symCounter[1]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i1132_3_lut (.A(symCounter[7]), .B(next_state_3__N_151), .C(n2792), 
         .Z(n69[7])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1132_3_lut.init = 16'h4848;
    LUT4 i1_4_lut_adj_19 (.A(n2970), .B(n3221), .C(n3219), .D(symCounter[0]), 
         .Z(n2792)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_4_lut_adj_19.init = 16'h8000;
    LUT4 i430_1_lut_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .Z(n926)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[5:17])
    defparam i430_1_lut_2_lut_2_lut.init = 16'h2222;
    LUT4 i420_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clkDivider_clko_enable_10)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[5:17])
    defparam i420_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1082_2_lut_rep_14_2_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .Z(n3209)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[5:17])
    defparam i1082_2_lut_rep_14_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut (.A(symCounter[1]), .B(symCounter[2]), .Z(n2970)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_22 (.A(symCounter[0]), .B(symCounter[1]), .Z(n3217)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_2_lut_rep_22.init = 16'h8888;
    LUT4 i1137_3_lut_4_lut (.A(symCounter[0]), .B(symCounter[1]), .C(next_state_3__N_151), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1137_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_rep_23 (.A(symCounter[3]), .B(symCounter[2]), .Z(n3218)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_2_lut_rep_23.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_20 (.A(symCounter[3]), .B(symCounter[2]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2980)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_3_lut_4_lut_adj_20.init = 16'h8000;
    FD1S3JX current_state_FSM_i4 (.D(next_state_3__N_153), .CK(clkDivider_clko), 
            .PD(n3216), .Q(next_state_3__N_150));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_24 (.A(symCounter[3]), .B(symCounter[4]), .Z(n3219)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_2_lut_rep_24.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2972)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[15:32])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1081_2_lut (.A(symCounter[0]), .B(next_state_3__N_151), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(117[10] 119[4])
    defparam i1081_2_lut.init = 16'h4444;
    FD1S3IX current_state_FSM_i3 (.D(n1738), .CK(clkDivider_clko), .CD(n3216), 
            .Q(next_state_3__N_151));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2831), .CK(clkDivider_clko), .CD(n3216), 
            .Q(next_state_3__N_152));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[1] 103[9])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clkDivider_clko_enable_10), 
            .CD(n3216), .CK(clkDivider_clko), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(110[8] 124[4])
    defparam symCounter__i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (GND_net, VCC_net, top_clk_c, clkDivider_clko, firstFlag, 
            n578, n3210, n492, n3211, top_rst_n_c, cout, n1926, 
            clk_N_172) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input top_clk_c;
    output clkDivider_clko;
    input firstFlag;
    output n578;
    output n3210;
    output n492;
    output n3211;
    input top_rst_n_c;
    input cout;
    output n1926;
    output clk_N_172;
    
    wire top_clk_c /* synthesis SET_AS_NETWORK=top_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    wire clkDivider_clko /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(68[8:23])
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(21[12:18])
    
    wire n2578;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(15[11:22])
    wire [7:0]n37;
    
    wire n2579;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(16[11:18])
    
    wire n2996, n2928, n483;
    wire [7:0]n37_adj_416;
    
    wire n2580, n4, n6, n2829, n3208, n3212, clkOut_N_62, n1922, 
        n1921, n1920, n2581, n1856, n2604, n2603, n2602, n2601, 
        n2930;
    
    CCU2C lockCounter_403_add_4_3 (.A0(lockCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2578), .COUT(n2579), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_403_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_403_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_403_add_4_3.INJECT1_1 = "NO";
    LUT4 i1852_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2996)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1852_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(counter[5]), .B(counter[6]), .Z(n2928)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX counter_402__i0 (.D(n37_adj_416[0]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i0.GSR = "DISABLED";
    CCU2C lockCounter_403_add_4_5 (.A0(lockCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2579), .COUT(n2580), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_403_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_403_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_403_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_13 (.A(lockCounter[2]), .B(n4), .C(n6), .D(n2829), 
         .Z(n3208)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i2_4_lut_rep_13.init = 16'hccc8;
    FD1S3IX lockCounter_403__i0 (.D(n37[0]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i0.GSR = "DISABLED";
    FD1S3IX clkOut_28 (.D(clkOut_N_62), .CK(top_clk_c), .CD(n3212), .Q(clkDivider_clko)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(18[8] 34[4])
    defparam clkOut_28.GSR = "DISABLED";
    LUT4 i1906_2_lut_4_lut (.A(n1922), .B(n1921), .C(n1920), .D(firstFlag), 
         .Z(n578)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i1906_2_lut_4_lut.init = 16'hff35;
    LUT4 clkLock_I_0_1_lut_rep_15_3_lut (.A(n1922), .B(n1921), .C(n1920), 
         .Z(n3210)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam clkLock_I_0_1_lut_rep_15_3_lut.init = 16'h3535;
    LUT4 i221_2_lut_2_lut_4_lut (.A(n1922), .B(n1921), .C(n1920), .D(firstFlag), 
         .Z(n492)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i221_2_lut_2_lut_4_lut.init = 16'hff35;
    CCU2C lockCounter_403_add_4_7 (.A0(lockCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(lockCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2580), .COUT(n2581), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_403_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_403_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_403_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_403_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2581), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_403_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_403_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_403_add_4_9.INJECT1_1 = "NO";
    LUT4 i912_3_lut_rep_16 (.A(n1922), .B(n1921), .C(n1920), .Z(n3211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i912_3_lut_rep_16.init = 16'hcaca;
    LUT4 i1921_3_lut (.A(n1922), .B(top_rst_n_c), .Z(n1922)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i1921_3_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_16 (.A(top_rst_n_c), .B(lockCounter[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i1929_4_lut_4_lut_3_lut (.A(top_rst_n_c), .B(n1920), .C(n3208), 
         .Z(n1920)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(19[9:25])
    defparam i1929_4_lut_4_lut_3_lut.init = 16'ha8a8;
    LUT4 i2_2_lut (.A(lockCounter[1]), .B(lockCounter[5]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX lockCounter_403__i7 (.D(n37[7]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i7.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i6 (.D(n37[6]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i5 (.D(n37[5]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i4 (.D(n37[4]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i3 (.D(n37[3]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i2 (.D(n37[2]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_403__i1 (.D(n37[1]), .CK(top_clk_c), .CD(n3212), 
            .Q(lockCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403__i1.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(lockCounter[0]), .B(lockCounter[6]), .C(lockCounter[4]), 
         .D(lockCounter[3]), .Z(n2829)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_17 (.A(clkDivider_clko), .B(n1856), .Z(clkOut_N_62)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h9999;
    CCU2C counter_402_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2604), .S0(n37_adj_416[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402_add_4_9.INIT0 = 16'haaa0;
    defparam counter_402_add_4_9.INIT1 = 16'h0000;
    defparam counter_402_add_4_9.INJECT1_0 = "NO";
    defparam counter_402_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_402_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2603), .COUT(n2604), .S0(n37_adj_416[5]), 
          .S1(n37_adj_416[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402_add_4_7.INIT0 = 16'haaa0;
    defparam counter_402_add_4_7.INIT1 = 16'haaa0;
    defparam counter_402_add_4_7.INJECT1_0 = "NO";
    defparam counter_402_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_402_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2602), .COUT(n2603), .S0(n37_adj_416[3]), 
          .S1(n37_adj_416[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402_add_4_5.INIT0 = 16'haaa0;
    defparam counter_402_add_4_5.INIT1 = 16'haaa0;
    defparam counter_402_add_4_5.INJECT1_0 = "NO";
    defparam counter_402_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_402_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2601), .COUT(n2602), .S0(n37_adj_416[1]), 
          .S1(n37_adj_416[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402_add_4_3.INIT0 = 16'haaa0;
    defparam counter_402_add_4_3.INIT1 = 16'haaa0;
    defparam counter_402_add_4_3.INJECT1_0 = "NO";
    defparam counter_402_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_402_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2601), .S1(n37_adj_416[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402_add_4_1.INIT0 = 16'h0000;
    defparam counter_402_add_4_1.INIT1 = 16'h555f;
    defparam counter_402_add_4_1.INJECT1_0 = "NO";
    defparam counter_402_add_4_1.INJECT1_1 = "NO";
    LUT4 i1904_2_lut_4_lut (.A(n1922), .B(n1921), .C(n1920), .D(cout), 
         .Z(n1926)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(36[1] 46[4])
    defparam i1904_2_lut_4_lut.init = 16'hff35;
    FD1S3IX counter_402__i7 (.D(n37_adj_416[7]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i7.GSR = "DISABLED";
    LUT4 i1899_2_lut (.A(n1856), .B(top_rst_n_c), .Z(n483)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1899_2_lut.init = 16'h7777;
    LUT4 i1925_4_lut_2_lut (.A(n3208), .B(n1921), .Z(n1921)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1925_4_lut_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n2930), .B(n2996), .C(counter[2]), .D(n2928), 
         .Z(n1856)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    FD1S3IX counter_402__i6 (.D(n37_adj_416[6]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i6.GSR = "DISABLED";
    FD1S3IX counter_402__i5 (.D(n37_adj_416[5]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i5.GSR = "DISABLED";
    FD1S3IX counter_402__i4 (.D(n37_adj_416[4]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i4.GSR = "DISABLED";
    FD1S3IX counter_402__i3 (.D(n37_adj_416[3]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i3.GSR = "DISABLED";
    FD1S3IX counter_402__i2 (.D(n37_adj_416[2]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i2.GSR = "DISABLED";
    FD1S3IX counter_402__i1 (.D(n37_adj_416[1]), .CK(top_clk_c), .CD(n483), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(24[24:38])
    defparam counter_402__i1.GSR = "DISABLED";
    LUT4 pll_lock_I_0_1_lut_rep_17 (.A(top_rst_n_c), .Z(n3212)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(19[9:25])
    defparam pll_lock_I_0_1_lut_rep_17.init = 16'h5555;
    CCU2C lockCounter_403_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lockCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2578), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[24:42])
    defparam lockCounter_403_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_403_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_403_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_403_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n2930)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    INV i2076 (.A(clkDivider_clko), .Z(clk_N_172));
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (clk_N_317, n934, GND_net, VCC_net, \QCounter[3] , 
            \fskModule_I[4] , \fskModule_I[12] , \fskModule_I[2] , \fskModule_I[7] , 
            n2648, \fskModule_Q[0] , \QCounter[2] , \fskModule_Q[4] , 
            \fskModule_I[0] , \fskModule_I[11] , \fskModule_Q[2] , \QCounter[1] , 
            \fskModule_Q[7] , \fskModule_Q[11] , \fskModule_Q[12] , IQSerializer_start, 
            top_clk_c, serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input clk_N_317;
    input n934;
    input GND_net;
    input VCC_net;
    output \QCounter[3] ;
    input \fskModule_I[4] ;
    input \fskModule_I[12] ;
    input \fskModule_I[2] ;
    input \fskModule_I[7] ;
    input n2648;
    input \fskModule_Q[0] ;
    output \QCounter[2] ;
    input \fskModule_Q[4] ;
    input \fskModule_I[0] ;
    input \fskModule_I[11] ;
    input \fskModule_Q[2] ;
    output \QCounter[1] ;
    input \fskModule_Q[7] ;
    input \fskModule_Q[11] ;
    input \fskModule_Q[12] ;
    input IQSerializer_start;
    input top_clk_c;
    output serial_iq_c;
    
    wire clk_N_317 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire top_clk_c /* synthesis SET_AS_NETWORK=top_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    wire [4:0]n374;
    
    wire n1742;
    wire [9:0]ZCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(24[40:48])
    
    wire n1925;
    wire [9:0]n45;
    
    wire n3184, n3183;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n3185, n2533, n3157, n3155, n3159, n3129, n3126, n3131, 
        n3213, n343, n3128, n2537, n3224, n3186, n3127, n1928, 
        n3154, n3153, n3223, n2536, n1927, n2644, n3222;
    wire [3:0]n21;
    wire [3:0]n21_adj_407;
    
    wire n2325, n2535, n2534, n3156;
    wire [3:0]next_state_3__N_375;
    wire [3:0]next_state_3__N_367;
    
    wire n1720, n2944, n2950, n2940, n2946, n337, n1718;
    
    FD1S3IX current_state_FSM_i0 (.D(n1742), .CK(clk_N_317), .CD(n934), 
            .Q(n374[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i0 (.D(n45[0]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[0])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i0.GSR = "DISABLED";
    PFUMX i1999 (.BLUT(n3184), .ALUT(n3183), .C0(ICounter[2]), .Z(n3185));
    CCU2C ZCounter_409_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ZCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2533), .S1(n45[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_1.INIT0 = 16'h0000;
    defparam ZCounter_409_add_4_1.INIT1 = 16'h555f;
    defparam ZCounter_409_add_4_1.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_1.INJECT1_1 = "NO";
    LUT4 gnd_bdd_2_lut_4_lut (.A(n3157), .B(n3155), .C(\QCounter[3] ), 
         .D(n374[0]), .Z(n3159)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 gnd_bdd_2_lut_1977_4_lut (.A(n3129), .B(n3126), .C(ICounter[2]), 
         .D(n374[2]), .Z(n3131)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam gnd_bdd_2_lut_1977_4_lut.init = 16'hca00;
    LUT4 i1_3_lut_rep_18 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n3213)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(134[21:38])
    defparam i1_3_lut_rep_18.init = 16'hf7f7;
    LUT4 i96_2_lut_4_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .D(n374[2]), .Z(n343)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(134[21:38])
    defparam i96_2_lut_4_lut.init = 16'h0800;
    LUT4 fskModule_I_4__bdd_3_lut_1962 (.A(\fskModule_I[4] ), .B(\fskModule_I[12] ), 
         .C(ICounter[3]), .Z(n3128)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1962.init = 16'hacac;
    CCU2C ZCounter_409_add_4_11 (.A0(ZCounter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2537), .S0(n45[9]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_11.INIT0 = 16'haaa0;
    defparam ZCounter_409_add_4_11.INIT1 = 16'h0000;
    defparam ZCounter_409_add_4_11.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_11.INJECT1_1 = "NO";
    LUT4 n2786_bdd_3_lut (.A(n3224), .B(n3185), .C(n374[2]), .Z(n3186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2786_bdd_3_lut.init = 16'hcaca;
    LUT4 fskModule_I_4__bdd_3_lut_1958 (.A(\fskModule_I[2] ), .B(\fskModule_I[7] ), 
         .C(ICounter[3]), .Z(n3127)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_4__bdd_3_lut_1958.init = 16'hacac;
    FD1S3IX QCounter_412__i3 (.D(n2648), .CK(clk_N_317), .CD(n1928), .Q(\QCounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam QCounter_412__i3.GSR = "DISABLED";
    LUT4 QCounter_1__bdd_3_lut_2006 (.A(\fskModule_Q[0] ), .B(\QCounter[2] ), 
         .C(\fskModule_Q[4] ), .Z(n3154)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam QCounter_1__bdd_3_lut_2006.init = 16'hb8b8;
    LUT4 fskModule_I_4__bdd_4_lut_1961 (.A(ICounter[1]), .B(\fskModule_I[0] ), 
         .C(\fskModule_I[11] ), .D(ICounter[3]), .Z(n3126)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam fskModule_I_4__bdd_4_lut_1961.init = 16'h44f0;
    LUT4 QCounter_1__bdd_2_lut_2005 (.A(\fskModule_Q[2] ), .B(\QCounter[2] ), 
         .Z(n3153)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam QCounter_1__bdd_2_lut_2005.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_then_3_lut (.A(n374[1]), .B(\fskModule_Q[2] ), .C(\QCounter[2] ), 
         .Z(n3223)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam i1_4_lut_4_lut_then_3_lut.init = 16'haeae;
    CCU2C ZCounter_409_add_4_9 (.A0(ZCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ZCounter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2536), .COUT(n2537), .S0(n45[7]), .S1(n45[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_9.INIT0 = 16'haaa0;
    defparam ZCounter_409_add_4_9.INIT1 = 16'haaa0;
    defparam ZCounter_409_add_4_9.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_9.INJECT1_1 = "NO";
    LUT4 fskModule_I_2__bdd_3_lut_2053 (.A(\fskModule_I[2] ), .B(\fskModule_I[11] ), 
         .C(ICounter[3]), .Z(n3184)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam fskModule_I_2__bdd_3_lut_2053.init = 16'hacac;
    PFUMX i1975 (.BLUT(n3154), .ALUT(n3153), .C0(\QCounter[1] ), .Z(n3155));
    FD1S3IX ICounter_407__i3 (.D(n2644), .CK(clk_N_317), .CD(n1927), .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(85[52:67])
    defparam ICounter_407__i3.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_else_3_lut (.A(\fskModule_Q[7] ), .B(\fskModule_Q[11] ), 
         .C(n374[1]), .D(\QCounter[2] ), .Z(n3222)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam i1_4_lut_4_lut_else_3_lut.init = 16'hfafc;
    FD1S3IX ICounter_407__i2 (.D(n21[2]), .CK(clk_N_317), .CD(n1927), 
            .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(85[52:67])
    defparam ICounter_407__i2.GSR = "DISABLED";
    FD1S3IX ICounter_407__i1 (.D(n21[1]), .CK(clk_N_317), .CD(n1927), 
            .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(85[52:67])
    defparam ICounter_407__i1.GSR = "DISABLED";
    LUT4 fskModule_I_2__bdd_2_lut_2052 (.A(\fskModule_I[7] ), .B(ICounter[3]), 
         .Z(n3183)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam fskModule_I_2__bdd_2_lut_2052.init = 16'h2222;
    FD1S3IX QCounter_412__i2 (.D(n21_adj_407[2]), .CK(clk_N_317), .CD(n1928), 
            .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam QCounter_412__i2.GSR = "DISABLED";
    FD1S3IX QCounter_412__i1 (.D(n2325), .CK(clk_N_317), .CD(n1928), .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam QCounter_412__i1.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i9 (.D(n45[9]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[9])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i9.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i8 (.D(n45[8]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[8])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i8.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i7 (.D(n45[7]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[7])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i7.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i6 (.D(n45[6]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[6])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i6.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i5 (.D(n45[5]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[5])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i5.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i4 (.D(n45[4]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[4])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i4.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i3 (.D(n45[3]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[3])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i3.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i2 (.D(n45[2]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[2])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i2.GSR = "DISABLED";
    FD1S3IX ZCounter_409__i1 (.D(n45[1]), .CK(clk_N_317), .CD(n1925), 
            .Q(ZCounter[1])) /* synthesis syn_preserve="TRUE", syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409__i1.GSR = "DISABLED";
    CCU2C ZCounter_409_add_4_7 (.A0(ZCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ZCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2535), .COUT(n2536), .S0(n45[5]), .S1(n45[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_7.INIT0 = 16'haaa0;
    defparam ZCounter_409_add_4_7.INIT1 = 16'haaa0;
    defparam ZCounter_409_add_4_7.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_7.INJECT1_1 = "NO";
    CCU2C ZCounter_409_add_4_5 (.A0(ZCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ZCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2534), .COUT(n2535), .S0(n45[3]), .S1(n45[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_5.INIT0 = 16'haaa0;
    defparam ZCounter_409_add_4_5.INIT1 = 16'haaa0;
    defparam ZCounter_409_add_4_5.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_5.INJECT1_1 = "NO";
    LUT4 n3156_bdd_3_lut (.A(n3156), .B(\fskModule_Q[11] ), .C(\QCounter[2] ), 
         .Z(n3157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3156_bdd_3_lut.init = 16'hcaca;
    CCU2C ZCounter_409_add_4_3 (.A0(ZCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ZCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2533), .COUT(n2534), .S0(n45[1]), .S1(n45[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(91[41:56])
    defparam ZCounter_409_add_4_3.INIT0 = 16'haaa0;
    defparam ZCounter_409_add_4_3.INIT1 = 16'haaa0;
    defparam ZCounter_409_add_4_3.INJECT1_0 = "NO";
    defparam ZCounter_409_add_4_3.INJECT1_1 = "NO";
    LUT4 i709_4_lut (.A(n374[4]), .B(next_state_3__N_375[2]), .C(next_state_3__N_367[1]), 
         .D(n374[0]), .Z(n1720)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam i709_4_lut.init = 16'h3b0a;
    LUT4 i1_4_lut (.A(n2944), .B(n2950), .C(n2940), .D(n2946), .Z(next_state_3__N_367[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    PFUMX i2013 (.BLUT(n3222), .ALUT(n3223), .C0(\QCounter[3] ), .Z(n3224));
    LUT4 i1_2_lut (.A(ZCounter[2]), .B(ZCounter[3]), .Z(n2944)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(\QCounter[3] ), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(next_state_3__N_375[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut.init = 16'hf7f7;
    LUT4 i731_3_lut (.A(n374[0]), .B(n374[1]), .C(next_state_3__N_375[2]), 
         .Z(n1742)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam i731_3_lut.init = 16'hecec;
    LUT4 fskModule_Q_11__bdd_3_lut (.A(\QCounter[1] ), .B(\fskModule_Q[12] ), 
         .C(\fskModule_Q[7] ), .Z(n3156)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam fskModule_Q_11__bdd_3_lut.init = 16'he4e4;
    LUT4 i1_4_lut_adj_12 (.A(ZCounter[7]), .B(ZCounter[5]), .C(ZCounter[1]), 
         .D(ZCounter[9]), .Z(n2950)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h8000;
    LUT4 i1_2_lut_adj_13 (.A(ZCounter[6]), .B(ZCounter[4]), .Z(n2940)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i1_2_lut_adj_14 (.A(ZCounter[8]), .B(ZCounter[0]), .Z(n2946)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'h8888;
    LUT4 i90_2_lut (.A(next_state_3__N_367[1]), .B(n374[4]), .Z(n337)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam i90_2_lut.init = 16'h8888;
    LUT4 i707_3_lut (.A(n374[2]), .B(n374[3]), .C(n3213), .Z(n1718)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam i707_3_lut.init = 16'hecec;
    LUT4 i1472_2_lut (.A(\QCounter[2] ), .B(\QCounter[1] ), .Z(n21_adj_407[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam i1472_2_lut.init = 16'h6666;
    PFUMX i1959 (.BLUT(n3128), .ALUT(n3127), .C0(ICounter[1]), .Z(n3129));
    LUT4 i1416_1_lut (.A(ICounter[1]), .Z(n21[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(85[52:67])
    defparam i1416_1_lut.init = 16'h5555;
    LUT4 i1470_1_lut (.A(\QCounter[1] ), .Z(n2325)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(88[52:67])
    defparam i1470_1_lut.init = 16'h5555;
    LUT4 i1418_2_lut (.A(ICounter[2]), .B(ICounter[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(85[52:67])
    defparam i1418_2_lut.init = 16'h6666;
    LUT4 i1902_2_lut (.A(n374[4]), .B(IQSerializer_start), .Z(n1925)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[14] 102[8])
    defparam i1902_2_lut.init = 16'h7777;
    LUT4 i1914_2_lut (.A(n374[0]), .B(IQSerializer_start), .Z(n1928)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[14] 102[8])
    defparam i1914_2_lut.init = 16'h7777;
    FD1S3JX current_state_FSM_i4 (.D(n1720), .CK(clk_N_317), .PD(n934), 
            .Q(n374[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n337), .CK(clk_N_317), .CD(n934), 
            .Q(n374[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1718), .CK(clk_N_317), .CD(n934), 
            .Q(n374[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n343), .CK(clk_N_317), .CD(n934), 
            .Q(n374[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 153[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1911_2_lut (.A(n374[2]), .B(IQSerializer_start), .Z(n1927)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[14] 102[8])
    defparam i1911_2_lut.init = 16'h7777;
    LUT4 i1_3_lut_adj_15 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2644)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_adj_15.init = 16'h6a6a;
    DEDFF DEDFF_0 (.top_clk_c(top_clk_c), .n934(n934), .clk_N_317(clk_N_317), 
          .n3159(n3159), .n3131(n3131), .next_state_3__N_362(n374[3]), 
          .next_state_3__N_360(n374[4]), .n3186(n3186), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(158[7] 166[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (top_clk_c, n934, clk_N_317, n3159, n3131, next_state_3__N_362, 
            next_state_3__N_360, n3186, serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input top_clk_c;
    input n934;
    input clk_N_317;
    input n3159;
    input n3131;
    input next_state_3__N_362;
    input next_state_3__N_360;
    input n3186;
    output serial_iq_c;
    
    wire top_clk_c /* synthesis SET_AS_NETWORK=top_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(13[10:20])
    wire clk_N_317 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire pose_edge, Q1, neg_edge, Q2;
    
    FD1S3IX pose_edge_14 (.D(Q1), .CK(top_clk_c), .CD(n934), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=158, LSE_RLINE=166 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(22[8] 25[4])
    defparam pose_edge_14.GSR = "DISABLED";
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_317), .CD(n934), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=158, LSE_RLINE=166 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(28[8] 31[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n3159), .C(n3131), .D(next_state_3__N_362), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(17[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_360), .C(n3186), 
         .D(next_state_3__N_362), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(18[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(19[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    
endmodule
