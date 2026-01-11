// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jan 11 19:49:50 2026
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
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal, fskModule_symDone, n130, 
        n1722, n26, IQSerializer_start;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(103[13:17])
    
    wire n25, n24, n2331, n23, n2330, n22, n2329, n2328, n2327, 
        n2326, n21, n20, n2325, n19, n18, n17, n16, n15, n14, 
        n13, n12, n11, top_rst_N_28, n10, n9, n8, n7, n6, 
        n2324, n5, n2323, n4, n2322, n2321, n3, n2, n2320, 
        n2319, cout;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2734;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n112, next_state_3__N_153, next_state_3__N_154, next_state_3__N_156, 
        n2274, n2273, n2272, n2271, n2270, n2269, n2263, n2264, 
        n2410, n113, n2529, next_state_3__N_295, n2265, n2690, n2262, 
        n2267, clockDivider_clk_4M_enable_9, n110, clockDivider_clk_4M_enable_1, 
        I_bit, Q_bit, n2261, n2253, n2260, n2259, n2266, n2252, 
        n2258, n619, n2257, n111, n2256, n114, n115, n116, n117, 
        n118, n119, n120, n121, n122, n123, n124, n125, n131, 
        n132, n133, n134, n135, cout_adj_344, n129, n128, n127, 
        n126, n2268, n2255, n2254;
    
    VHI i2 (.Z(VCC_net));
    packetCounter counter_0 (.counter_0_countDone(counter_0_countDone), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_1(clockDivider_clk_4M_enable_1), .n1722(n1722), 
            .VCC_net(VCC_net), .cout(cout_adj_344), .clockDivider_clkLock(clockDivider_clkLock), 
            .waitcount({waitcount}), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(129[15] 134[2])
    CCU2C cnt1_165_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2262), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_165_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_165_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_1.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2263), 
          .COUT(n2264), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i0.GSR = "DISABLED";
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    CCU2C cnt1_165_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2272), 
          .COUT(n2273), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_23.INJECT1_1 = "NO";
    CCU2C add_1067_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2259), .COUT(n2260));
    defparam add_1067_18.INIT0 = 16'h555f;
    defparam add_1067_18.INIT1 = 16'h555f;
    defparam add_1067_18.INJECT1_0 = "NO";
    defparam add_1067_18.INJECT1_1 = "NO";
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    CCU2C add_1067_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2252));
    defparam add_1067_2.INIT0 = 16'h000e;
    defparam add_1067_2.INIT1 = 16'haaa0;
    defparam add_1067_2.INJECT1_0 = "NO";
    defparam add_1067_2.INJECT1_1 = "NO";
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    CCU2C add_1067_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2258), .COUT(n2259));
    defparam add_1067_16.INIT0 = 16'h555f;
    defparam add_1067_16.INIT1 = 16'h555f;
    defparam add_1067_16.INJECT1_0 = "NO";
    defparam add_1067_16.INJECT1_1 = "NO";
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    CCU2C cnt1_165_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2271), 
          .COUT(n2272), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_21.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[7] 107[4])
    defparam LED_9.GSR = "DISABLED";
    CCU2C add_1067_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2261), 
          .S0(cout_adj_344));
    defparam add_1067_cout.INIT0 = 16'h0000;
    defparam add_1067_cout.INIT1 = 16'h0000;
    defparam add_1067_cout.INJECT1_0 = "NO";
    defparam add_1067_cout.INJECT1_1 = "NO";
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    GSR GSR_INST (.GSR(counter_0_countDone));
    LUT4 i707_1_lut (.A(cout), .Z(clockDivider_clk_4M_enable_1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i707_1_lut.init = 16'h5555;
    CCU2C add_1067_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2257), .COUT(n2258));
    defparam add_1067_14.INIT0 = 16'h555f;
    defparam add_1067_14.INIT1 = 16'h555f;
    defparam add_1067_14.INJECT1_0 = "NO";
    defparam add_1067_14.INJECT1_1 = "NO";
    CCU2C add_1066_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2331), .S1(cout));
    defparam add_1066_27.INIT0 = 16'h5555;
    defparam add_1066_27.INIT1 = 16'h0000;
    defparam add_1066_27.INJECT1_0 = "NO";
    defparam add_1066_27.INJECT1_1 = "NO";
    CCU2C add_1066_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2330), .COUT(n2331));
    defparam add_1066_25.INIT0 = 16'h5555;
    defparam add_1066_25.INIT1 = 16'h5555;
    defparam add_1066_25.INJECT1_0 = "NO";
    defparam add_1066_25.INJECT1_1 = "NO";
    CCU2C add_1066_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2329), .COUT(n2330));
    defparam add_1066_23.INIT0 = 16'h5555;
    defparam add_1066_23.INIT1 = 16'h5555;
    defparam add_1066_23.INJECT1_0 = "NO";
    defparam add_1066_23.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2270), 
          .COUT(n2271), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_19.INJECT1_1 = "NO";
    CCU2C add_1066_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2328), .COUT(n2329));
    defparam add_1066_21.INIT0 = 16'h5555;
    defparam add_1066_21.INIT1 = 16'h5555;
    defparam add_1066_21.INJECT1_0 = "NO";
    defparam add_1066_21.INJECT1_1 = "NO";
    CCU2C add_1066_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2327), .COUT(n2328));
    defparam add_1066_19.INIT0 = 16'h5555;
    defparam add_1066_19.INIT1 = 16'h5555;
    defparam add_1066_19.INJECT1_0 = "NO";
    defparam add_1066_19.INJECT1_1 = "NO";
    CCU2C add_1066_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2326), .COUT(n2327));
    defparam add_1066_17.INIT0 = 16'h5555;
    defparam add_1066_17.INIT1 = 16'h5555;
    defparam add_1066_17.INJECT1_0 = "NO";
    defparam add_1066_17.INJECT1_1 = "NO";
    CCU2C add_1066_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2325), .COUT(n2326));
    defparam add_1066_15.INIT0 = 16'h5555;
    defparam add_1066_15.INIT1 = 16'h5555;
    defparam add_1066_15.INJECT1_0 = "NO";
    defparam add_1066_15.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2269), 
          .COUT(n2270), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_17.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2268), 
          .COUT(n2269), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_15.INJECT1_1 = "NO";
    CCU2C add_1067_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2256), .COUT(n2257));
    defparam add_1067_12.INIT0 = 16'haaa0;
    defparam add_1067_12.INIT1 = 16'h555f;
    defparam add_1067_12.INJECT1_0 = "NO";
    defparam add_1067_12.INJECT1_1 = "NO";
    CCU2C add_1066_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2324), .COUT(n2325));
    defparam add_1066_13.INIT0 = 16'h5555;
    defparam add_1066_13.INIT1 = 16'h5555;
    defparam add_1066_13.INJECT1_0 = "NO";
    defparam add_1066_13.INJECT1_1 = "NO";
    CCU2C add_1066_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2323), .COUT(n2324));
    defparam add_1066_11.INIT0 = 16'h5555;
    defparam add_1066_11.INIT1 = 16'h5555;
    defparam add_1066_11.INJECT1_0 = "NO";
    defparam add_1066_11.INJECT1_1 = "NO";
    CCU2C add_1066_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2322), .COUT(n2323));
    defparam add_1066_9.INIT0 = 16'h5555;
    defparam add_1066_9.INIT1 = 16'h5555;
    defparam add_1066_9.INJECT1_0 = "NO";
    defparam add_1066_9.INJECT1_1 = "NO";
    CCU2C add_1066_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2321), .COUT(n2322));
    defparam add_1066_7.INIT0 = 16'haaa5;
    defparam add_1066_7.INIT1 = 16'h5555;
    defparam add_1066_7.INJECT1_0 = "NO";
    defparam add_1066_7.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2264), 
          .COUT(n2265), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_7.INJECT1_1 = "NO";
    CCU2C add_1067_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2255), .COUT(n2256));
    defparam add_1067_10.INIT0 = 16'h555f;
    defparam add_1067_10.INIT1 = 16'haaa0;
    defparam add_1067_10.INJECT1_0 = "NO";
    defparam add_1067_10.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2267), 
          .COUT(n2268), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_13.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i25.GSR = "DISABLED";
    CCU2C cnt1_165_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2266), 
          .COUT(n2267), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2265), 
          .COUT(n2266), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_9.INJECT1_1 = "NO";
    CCU2C add_1067_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2254), .COUT(n2255));
    defparam add_1067_8.INIT0 = 16'h555f;
    defparam add_1067_8.INIT1 = 16'h555f;
    defparam add_1067_8.INJECT1_0 = "NO";
    defparam add_1067_8.INJECT1_1 = "NO";
    CCU2C add_1066_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2320), .COUT(n2321));
    defparam add_1066_5.INIT0 = 16'h5555;
    defparam add_1066_5.INIT1 = 16'haaa5;
    defparam add_1066_5.INJECT1_0 = "NO";
    defparam add_1066_5.INJECT1_1 = "NO";
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(118[9:61])
    FD1S3AX cnt1_165__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i24.GSR = "DISABLED";
    FD1S3AX cnt1_165__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i23.GSR = "DISABLED";
    FD1S3AX cnt1_165__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i22.GSR = "DISABLED";
    FD1S3AX cnt1_165__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i21.GSR = "DISABLED";
    FD1S3AX cnt1_165__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i20.GSR = "DISABLED";
    FD1S3AX cnt1_165__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i19.GSR = "DISABLED";
    FD1S3AX cnt1_165__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i18.GSR = "DISABLED";
    FD1S3AX cnt1_165__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i17.GSR = "DISABLED";
    FD1S3AX cnt1_165__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i16.GSR = "DISABLED";
    FD1S3AX cnt1_165__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i15.GSR = "DISABLED";
    FD1S3AX cnt1_165__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i14.GSR = "DISABLED";
    FD1S3AX cnt1_165__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i13.GSR = "DISABLED";
    FD1S3AX cnt1_165__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i12.GSR = "DISABLED";
    FD1S3AX cnt1_165__i11 (.D(n124), .CK(serial_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i11.GSR = "DISABLED";
    FD1S3AX cnt1_165__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i10.GSR = "DISABLED";
    FD1S3AX cnt1_165__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i9.GSR = "DISABLED";
    FD1S3AX cnt1_165__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i8.GSR = "DISABLED";
    FD1S3AX cnt1_165__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i7.GSR = "DISABLED";
    FD1S3AX cnt1_165__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i6.GSR = "DISABLED";
    FD1S3AX cnt1_165__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i5.GSR = "DISABLED";
    FD1S3AX cnt1_165__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i4.GSR = "DISABLED";
    FD1S3AX cnt1_165__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i3.GSR = "DISABLED";
    FD1S3AX cnt1_165__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i2.GSR = "DISABLED";
    FD1S3AX cnt1_165__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i1.GSR = "DISABLED";
    CCU2C add_1066_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2319), .COUT(n2320));
    defparam add_1066_3.INIT0 = 16'haaa5;
    defparam add_1066_3.INIT1 = 16'h5555;
    defparam add_1066_3.INJECT1_0 = "NO";
    defparam add_1066_3.INJECT1_1 = "NO";
    CCU2C add_1066_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2319));
    defparam add_1066_1.INIT0 = 16'h0000;
    defparam add_1066_1.INIT1 = 16'haaaf;
    defparam add_1066_1.INJECT1_0 = "NO";
    defparam add_1066_1.INJECT1_1 = "NO";
    CCU2C add_1067_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2260), .COUT(n2261));
    defparam add_1067_20.INIT0 = 16'h555f;
    defparam add_1067_20.INIT1 = 16'h555f;
    defparam add_1067_20.INJECT1_0 = "NO";
    defparam add_1067_20.INJECT1_1 = "NO";
    packetGenerator packetGen_1 (.next_state_3__N_156(next_state_3__N_156), 
            .counter_0_countDone(counter_0_countDone), .I_bit(I_bit), .n2410(n2410), 
            .fskModule_symVal(fskModule_symVal), .clk_N_175(clk_N_175), 
            .n2734(n2734), .clockDivider_clk_4M(clockDivider_clk_4M), .symCounter({symCounter}), 
            .next_state_3__N_154(next_state_3__N_154), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .data(data), .n2690(n2690), .fskModule_symDone(fskModule_symDone), 
            .next_state_3__N_153(next_state_3__N_153), .Q_bit(Q_bit), .next_state_3__N_295(next_state_3__N_295), 
            .n2529(n2529)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(136[17] 142[2])
    CCU2C add_1067_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2253), .COUT(n2254));
    defparam add_1067_6.INIT0 = 16'haaa0;
    defparam add_1067_6.INIT1 = 16'h555f;
    defparam add_1067_6.INJECT1_0 = "NO";
    defparam add_1067_6.INJECT1_1 = "NO";
    QPSK_modulator qpskModule_1 (.IQSerializer_start(IQSerializer_start), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .VCC_net(VCC_net), 
            .n619(n619), .fskModule_symDone(fskModule_symDone), .clk_N_175(clk_N_175), 
            .fskModule_symVal(fskModule_symVal), .I_bit(I_bit), .Q_bit(Q_bit), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
            .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .n2734(n2734), 
            .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
            .n2690(n2690)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(146[16] 161[2])
    VLO i1 (.Z(GND_net));
    CCU2C cnt1_165_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2262), 
          .COUT(n2263), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_3.INJECT1_1 = "NO";
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_235(clk_N_235)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[12:100])
    IQSerializer IQSerializer_1 (.n364({Open_0, Open_1, Open_2, Open_3, 
            next_state_3__N_295}), .clk_N_235(clk_N_235), .n619(n619), 
            .IQSerializer_start(IQSerializer_start), .n2410(n2410), .n2529(n2529), 
            .serial_clk_c(serial_clk_c), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(166[14] 174[2])
    CCU2C cnt1_165_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2274), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_165_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2273), 
          .COUT(n2274), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_25.INJECT1_1 = "NO";
    CCU2C add_1067_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2252), .COUT(n2253));
    defparam add_1067_4.INIT0 = 16'h555f;
    defparam add_1067_4.INIT1 = 16'haaa0;
    defparam add_1067_4.INJECT1_0 = "NO";
    defparam add_1067_4.INJECT1_1 = "NO";
    clockDivider clockDivider_0 (.clk_N_175(clk_N_175), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .serial_clk_c(serial_clk_c), .clockDivider_clkLock(clockDivider_clkLock), 
            .VCC_net(VCC_net), .LED7_c(LED7_c), .GND_net(GND_net), .n1722(n1722)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(122[14] 127[2])
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (counter_0_countDone, clockDivider_clk_4M, clockDivider_clk_4M_enable_1, 
            n1722, VCC_net, cout, clockDivider_clkLock, waitcount, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output counter_0_countDone;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_1;
    input n1722;
    input VCC_net;
    input cout;
    input clockDivider_clkLock;
    output [25:0]waitcount;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n1721, n2287;
    wire [25:0]n109;
    
    wire n2286, n2285, n2284, n2283, n2282, n2281, n2280, n2279, 
        n2278, n2277, n2276, n2275;
    
    FD1P3IX countDone_14 (.D(VCC_net), .SP(clockDivider_clk_4M_enable_1), 
            .CD(n1722), .CK(clockDivider_clk_4M), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=129, LSE_RLINE=134 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_14.GSR = "DISABLED";
    LUT4 i1498_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1721)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1498_2_lut.init = 16'hbbbb;
    CCU2C waitcount_169_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2287), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_169_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2286), .COUT(n2287), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2285), .COUT(n2286), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2284), .COUT(n2285), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2283), .COUT(n2284), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2282), .COUT(n2283), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_17.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i0.GSR = "DISABLED";
    CCU2C waitcount_169_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2281), .COUT(n2282), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2280), .COUT(n2281), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2279), .COUT(n2280), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2278), .COUT(n2279), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2277), .COUT(n2278), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2276), .COUT(n2277), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_5.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i25.GSR = "DISABLED";
    CCU2C waitcount_169_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2275), .COUT(n2276), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2275), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_169_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_169_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_1.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i24.GSR = "DISABLED";
    FD1S3IX waitcount_169__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i23.GSR = "DISABLED";
    FD1S3IX waitcount_169__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i22.GSR = "DISABLED";
    FD1S3IX waitcount_169__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i21.GSR = "DISABLED";
    FD1S3IX waitcount_169__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i20.GSR = "DISABLED";
    FD1S3IX waitcount_169__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i19.GSR = "DISABLED";
    FD1S3IX waitcount_169__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i18.GSR = "DISABLED";
    FD1S3IX waitcount_169__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i17.GSR = "DISABLED";
    FD1S3IX waitcount_169__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i16.GSR = "DISABLED";
    FD1S3IX waitcount_169__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i15.GSR = "DISABLED";
    FD1S3IX waitcount_169__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i14.GSR = "DISABLED";
    FD1S3IX waitcount_169__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i13.GSR = "DISABLED";
    FD1S3IX waitcount_169__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i12.GSR = "DISABLED";
    FD1S3IX waitcount_169__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i11.GSR = "DISABLED";
    FD1S3IX waitcount_169__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1721), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i10.GSR = "DISABLED";
    FD1S3IX waitcount_169__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i9.GSR = "DISABLED";
    FD1S3IX waitcount_169__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i8.GSR = "DISABLED";
    FD1S3IX waitcount_169__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i7.GSR = "DISABLED";
    FD1S3IX waitcount_169__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i6.GSR = "DISABLED";
    FD1S3IX waitcount_169__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i5.GSR = "DISABLED";
    FD1S3IX waitcount_169__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i4.GSR = "DISABLED";
    FD1S3IX waitcount_169__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i3.GSR = "DISABLED";
    FD1S3IX waitcount_169__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i2.GSR = "DISABLED";
    FD1S3IX waitcount_169__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1721), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i1.GSR = "DISABLED";
    
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
            .ENCLKOS3(GND_net), .CLKOP(pll_clko_1)) /* synthesis FREQUENCY_PIN_CLKOP="24.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="6", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=61, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(118[9:61])
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
// Verilog Description of module packetGenerator
//

module packetGenerator (next_state_3__N_156, counter_0_countDone, I_bit, 
            n2410, fskModule_symVal, clk_N_175, n2734, clockDivider_clk_4M, 
            symCounter, next_state_3__N_154, clockDivider_clk_4M_enable_9, 
            data, n2690, fskModule_symDone, next_state_3__N_153, Q_bit, 
            next_state_3__N_295, n2529) /* synthesis syn_module_defined=1 */ ;
    output next_state_3__N_156;
    input counter_0_countDone;
    input I_bit;
    output n2410;
    output fskModule_symVal;
    input clk_N_175;
    input n2734;
    input clockDivider_clk_4M;
    output [7:0]symCounter;
    output next_state_3__N_154;
    input clockDivider_clk_4M_enable_9;
    input data;
    input n2690;
    input fskModule_symDone;
    output next_state_3__N_153;
    input Q_bit;
    input next_state_3__N_295;
    output n2529;
    
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire next_symVal_N_172, next_state_3__N_155, n2605, n2737;
    wire [7:0]n69;
    
    wire n2736, n2735, n2613, next_symVal, n15, n2545, n2591, 
        n2496, n1595, n2623, n2621;
    
    LUT4 i1257_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(I_bit), .Z(n2410)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1257_2_lut_3_lut.init = 16'h4040;
    FD1S3IX symVal_43 (.D(next_symVal_N_172), .CK(clk_N_175), .CD(n2734), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(next_state_3__N_155), .CK(clockDivider_clk_4M), 
            .CD(n2734), .Q(next_state_3__N_156));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i915_4_lut (.A(symCounter[5]), .B(next_state_3__N_154), .C(n2605), 
         .D(n2737), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i915_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i916_4_lut (.A(symCounter[4]), .B(next_state_3__N_154), .C(n2736), 
         .D(n2735), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i916_4_lut.init = 16'h4888;
    LUT4 i917_4_lut (.A(symCounter[3]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .D(n2737), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i917_4_lut.init = 16'h4888;
    LUT4 i918_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[0]), .C(next_state_3__N_154), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i918_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_rep_18 (.A(symCounter[3]), .B(symCounter[2]), .Z(n2736)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(symCounter[3]), .B(symCounter[2]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2613)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i919_3_lut (.A(symCounter[1]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i919_3_lut.init = 16'h4848;
    LUT4 i1518_4_lut (.A(next_symVal), .B(data), .C(n2690), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1518_4_lut.init = 16'hca0a;
    LUT4 i2_2_lut_rep_17 (.A(symCounter[1]), .B(symCounter[0]), .Z(n2735)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i2_2_lut_rep_17.init = 16'h8888;
    LUT4 i1_4_lut (.A(n2736), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n2545)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(next_state_3__N_154), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n2591)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_18 (.A(symCounter[1]), .B(symCounter[6]), .C(symCounter[4]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h8000;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_172)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    LUT4 i881_2_lut (.A(symCounter[0]), .B(next_state_3__N_154), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i881_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_19 (.A(n2736), .B(fskModule_symDone), .C(n15), .D(n2591), 
         .Z(n2496)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h8000;
    LUT4 i591_4_lut (.A(next_state_3__N_154), .B(next_state_3__N_153), .C(n2545), 
         .D(fskModule_symDone), .Z(n1595)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i591_4_lut.init = 16'hceee;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2605)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_19 (.A(symCounter[2]), .B(symCounter[1]), .Z(n2737)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_19.init = 16'h8888;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2734), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 i913_4_lut (.A(symCounter[7]), .B(next_state_3__N_154), .C(n2623), 
         .D(n2621), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i913_4_lut.init = 16'h4888;
    FD1S3JX current_state_FSM_i4 (.D(next_state_3__N_156), .CK(clockDivider_clk_4M), 
            .PD(n2734), .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2623)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_20 (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2621)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_adj_20.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_21 (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(Q_bit), .D(next_state_3__N_295), .Z(n2529)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1_3_lut_4_lut_adj_21.init = 16'hbf00;
    LUT4 i914_4_lut (.A(symCounter[6]), .B(next_state_3__N_154), .C(n2613), 
         .D(n2735), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i914_4_lut.init = 16'h4888;
    FD1S3IX current_state_FSM_i3 (.D(n1595), .CK(clockDivider_clk_4M), .CD(n2734), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2496), .CK(clockDivider_clk_4M), .CD(n2734), 
            .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module QPSK_modulator
//

module QPSK_modulator (IQSerializer_start, clockDivider_clk_4M, VCC_net, 
            n619, fskModule_symDone, clk_N_175, fskModule_symVal, I_bit, 
            Q_bit, counter_0_countDone, next_state_3__N_156, clockDivider_clk_4M_enable_9, 
            n2734, next_state_3__N_154, next_state_3__N_153, n2690) /* synthesis syn_module_defined=1 */ ;
    output IQSerializer_start;
    input clockDivider_clk_4M;
    input VCC_net;
    output n619;
    output fskModule_symDone;
    input clk_N_175;
    input fskModule_symVal;
    output I_bit;
    output Q_bit;
    input counter_0_countDone;
    input next_state_3__N_156;
    output clockDivider_clk_4M_enable_9;
    output n2734;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2690;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    FD1S3AX start_9 (.D(VCC_net), .CK(clockDivider_clk_4M), .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=146, LSE_RLINE=161 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(30[16] 33[8])
    defparam start_9.GSR = "ENABLED";
    LUT4 i228_1_lut (.A(IQSerializer_start), .Z(n619)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(30[16] 33[8])
    defparam i228_1_lut.init = 16'h5555;
    iq_div iq_div_inst (.fskModule_symDone(fskModule_symDone), .clk_N_175(clk_N_175), 
           .fskModule_symVal(fskModule_symVal), .I_bit(I_bit), .Q_bit(Q_bit), 
           .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
           .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .n2734(n2734), 
           .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
           .n2690(n2690)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(44[7] 53[6])
    
endmodule
//
// Verilog Description of module iq_div
//

module iq_div (fskModule_symDone, clk_N_175, fskModule_symVal, I_bit, 
            Q_bit, counter_0_countDone, next_state_3__N_156, clockDivider_clk_4M_enable_9, 
            n2734, next_state_3__N_154, next_state_3__N_153, n2690) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_175;
    input fskModule_symVal;
    output I_bit;
    output Q_bit;
    input counter_0_countDone;
    input next_state_3__N_156;
    output clockDivider_clk_4M_enable_9;
    output n2734;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2690;
    
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire I_1__N_182, symDone_N_219, Q_bit_temp, clk_N_175_enable_3, 
        clk_N_175_enable_5, I_bit_temp;
    wire [7:0]cnt_sample;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(21[17:27])
    
    wire n9, I_bit_temp2, n2738, n10, n12, n2733;
    wire [7:0]cnt_sample_7__N_199;
    
    wire switch, iq_switch_N_216, n2739, n12_adj_343, n2732, n11, 
        n8;
    
    FD1S3IX symDone_56 (.D(symDone_N_219), .CK(clk_N_175), .CD(I_1__N_182), 
            .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam symDone_56.GSR = "ENABLED";
    FD1P3IX Q_bit_temp_61 (.D(fskModule_symVal), .SP(clk_N_175_enable_3), 
            .CD(I_1__N_182), .CK(clk_N_175), .Q(Q_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_temp_61.GSR = "ENABLED";
    FD1P3IX I_bit_58 (.D(I_bit_temp), .SP(clk_N_175_enable_5), .CD(I_1__N_182), 
            .CK(clk_N_175), .Q(I_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_58.GSR = "ENABLED";
    LUT4 i1474_2_lut (.A(cnt_sample[0]), .B(cnt_sample[1]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1474_2_lut.init = 16'h8888;
    FD1P3IX I_bit_temp_60 (.D(I_bit_temp2), .SP(clk_N_175_enable_3), .CD(I_1__N_182), 
            .CK(clk_N_175), .Q(I_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp_60.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_20 (.A(cnt_sample[3]), .B(cnt_sample[2]), .Z(n2738)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_20.init = 16'h8888;
    LUT4 i4_3_lut_4_lut (.A(cnt_sample[3]), .B(cnt_sample[2]), .C(cnt_sample[4]), 
         .D(cnt_sample[5]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut_4_lut.init = 16'h8000;
    FD1P3IX I_bit_temp2_62 (.D(fskModule_symVal), .SP(clk_N_175_enable_5), 
            .CD(I_1__N_182), .CK(clk_N_175), .Q(I_bit_temp2)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp2_62.GSR = "ENABLED";
    LUT4 i1512_4_lut (.A(n12), .B(cnt_sample[1]), .C(n2733), .D(cnt_sample[0]), 
         .Z(symDone_N_219)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1512_4_lut.init = 16'h0004;
    LUT4 i509_1_lut (.A(cnt_sample[0]), .Z(cnt_sample_7__N_199[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[21:54])
    defparam i509_1_lut.init = 16'h5555;
    FD1S3JX iq_switch_57 (.D(iq_switch_N_216), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(switch)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[18] 65[12])
    defparam iq_switch_57.GSR = "ENABLED";
    LUT4 i904_3_lut_4_lut (.A(n9), .B(n12), .C(n2733), .D(cnt_sample[2]), 
         .Z(cnt_sample_7__N_199[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i904_3_lut_4_lut.init = 16'h55a8;
    FD1S3JX cnt_sample_i0 (.D(cnt_sample_7__N_199[0]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[0])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i0.GSR = "ENABLED";
    LUT4 i3_2_lut_rep_21 (.A(cnt_sample[2]), .B(cnt_sample[1]), .Z(n2739)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_rep_21.init = 16'h8888;
    FD1P3IX Q_bit_59 (.D(Q_bit_temp), .SP(clk_N_175_enable_5), .CD(I_1__N_182), 
            .CK(clk_N_175), .Q(Q_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_59.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_15 (.A(cnt_sample[3]), .B(cnt_sample[7]), .Z(n2733)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_rep_15.init = 16'heeee;
    LUT4 i5_2_lut_3_lut_4_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[1]), 
         .D(cnt_sample[2]), .Z(n12_adj_343)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n9), .B(n12), .C(n2733), .D(switch), .Z(iq_switch_N_216)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_4_lut.init = 16'hfd02;
    LUT4 i1_3_lut_3_lut (.A(counter_0_countDone), .B(switch), .C(next_state_3__N_156), 
         .Z(clk_N_175_enable_5)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i899_4_lut (.A(cnt_sample[7]), .B(n2732), .C(n11), .D(n12_adj_343), 
         .Z(cnt_sample_7__N_199[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i899_4_lut.init = 16'h4888;
    LUT4 i4_3_lut (.A(cnt_sample[0]), .B(cnt_sample[6]), .C(cnt_sample[5]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i181_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i181_2_lut_2_lut.init = 16'hdddd;
    LUT4 i900_4_lut (.A(cnt_sample[6]), .B(n2732), .C(n9), .D(n10), 
         .Z(cnt_sample_7__N_199[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i900_4_lut.init = 16'h4888;
    LUT4 i901_4_lut (.A(cnt_sample[5]), .B(n2732), .C(n2739), .D(n8), 
         .Z(cnt_sample_7__N_199[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i901_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_rep_14_4_lut (.A(cnt_sample[3]), .B(cnt_sample[7]), .C(n12), 
         .D(n9), .Z(n2732)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_3_lut_rep_14_4_lut.init = 16'hfeff;
    LUT4 i902_4_lut (.A(cnt_sample[4]), .B(n2732), .C(n2738), .D(n9), 
         .Z(cnt_sample_7__N_199[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i902_4_lut.init = 16'h4888;
    LUT4 i903_4_lut (.A(cnt_sample[3]), .B(n2732), .C(cnt_sample[0]), 
         .D(n2739), .Z(cnt_sample_7__N_199[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i903_4_lut.init = 16'h4888;
    LUT4 rst_I_0_1_lut_rep_16 (.A(counter_0_countDone), .Z(n2734)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_16.init = 16'h5555;
    LUT4 i1500_3_lut (.A(counter_0_countDone), .B(next_state_3__N_156), 
         .C(switch), .Z(clk_N_175_enable_3)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1500_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut (.A(cnt_sample[2]), .B(cnt_sample[5]), .C(cnt_sample[4]), 
         .D(cnt_sample[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut_3_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_3_lut.init = 16'h8080;
    LUT4 i905_3_lut (.A(cnt_sample[1]), .B(n2732), .C(cnt_sample[0]), 
         .Z(cnt_sample_7__N_199[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i905_3_lut.init = 16'h4848;
    FD1S3JX cnt_sample_i7 (.D(cnt_sample_7__N_199[7]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[7])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i7.GSR = "ENABLED";
    FD1S3JX cnt_sample_i6 (.D(cnt_sample_7__N_199[6]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[6])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i6.GSR = "ENABLED";
    FD1S3JX cnt_sample_i5 (.D(cnt_sample_7__N_199[5]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[5])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i5.GSR = "ENABLED";
    FD1S3JX cnt_sample_i4 (.D(cnt_sample_7__N_199[4]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[4])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i4.GSR = "ENABLED";
    FD1S3JX cnt_sample_i3 (.D(cnt_sample_7__N_199[3]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[3])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i3.GSR = "ENABLED";
    FD1S3JX cnt_sample_i2 (.D(cnt_sample_7__N_199[2]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[2])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i2.GSR = "ENABLED";
    FD1S3JX cnt_sample_i1 (.D(cnt_sample_7__N_199[1]), .CK(clk_N_175), .PD(I_1__N_182), 
            .Q(cnt_sample[1])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i1.GSR = "ENABLED";
    LUT4 i1520_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_154), 
         .C(next_state_3__N_153), .Z(n2690)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1520_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut (.A(next_state_3__N_156), .B(counter_0_countDone), .Z(I_1__N_182)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    
endmodule
//
// Verilog Description of module pll_24_64m
//

module pll_24_64m (pll_clko_1, top_rst_N_28, serial_clk_c, LED7_c, GND_net, 
            clk_N_235) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input pll_clko_1;
    input top_rst_N_28;
    output serial_clk_c;
    output LED7_c;
    input GND_net;
    output clk_N_235;
    
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    EHXPLLL PLLInst_0 (.CLKI(pll_clko_1), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_N_28), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(LED7_c)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=100, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[12:100])
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
    INV i1578 (.A(serial_clk_c), .Z(clk_N_235));
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (n364, clk_N_235, n619, IQSerializer_start, n2410, 
            n2529, serial_clk_c, serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    output [4:0]n364;
    input clk_N_235;
    input n619;
    input IQSerializer_start;
    input n2410;
    input n2529;
    input serial_clk_c;
    output serial_iq_c;
    
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    wire [3:0]n21;
    wire [4:0]n364_c;
    
    wire n2581;
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n1605, n1725, n1724;
    wire [3:0]n21_adj_342;
    
    wire n1664, n1666, n2597, n2740, n1603, n342, n2631, n2512, 
        n2523, n346, n2741, n5;
    
    LUT4 i1089_2_lut_3_lut (.A(ICounter[2]), .B(ICounter[1]), .C(ICounter[3]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1089_2_lut_3_lut.init = 16'h7878;
    LUT4 i601_4_lut (.A(n364[0]), .B(n364_c[1]), .C(n2581), .D(QCounter[2]), 
         .Z(n1605)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i601_4_lut.init = 16'hecee;
    LUT4 i1_2_lut (.A(QCounter[3]), .B(QCounter[1]), .Z(n2581)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(145[21:38])
    defparam i1_2_lut.init = 16'hdddd;
    FD1S3IX current_state_FSM_i0 (.D(n1605), .CK(clk_N_235), .CD(n619), 
            .Q(n364[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 i1516_2_lut (.A(n364_c[2]), .B(IQSerializer_start), .Z(n1725)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1516_2_lut.init = 16'h7777;
    LUT4 i1506_2_lut (.A(n364[0]), .B(IQSerializer_start), .Z(n1724)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1506_2_lut.init = 16'h7777;
    FD1S3IX ICounter_173__i3 (.D(n21[3]), .CK(clk_N_235), .CD(n1725), 
            .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i3.GSR = "DISABLED";
    FD1S3IX QCounter_171__i3 (.D(n21_adj_342[3]), .CK(clk_N_235), .CD(n1724), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_14 (.A(ICounter[2]), .B(ICounter[1]), .Z(n1664)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_14.init = 16'h6666;
    LUT4 i1175_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n21_adj_342[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1175_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut_adj_15 (.A(QCounter[2]), .B(QCounter[1]), .Z(n1666)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_15.init = 16'h6666;
    LUT4 i1_2_lut_adj_16 (.A(QCounter[3]), .B(n364[0]), .Z(n2597)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i599_3_lut (.A(n364_c[2]), .B(n364_c[3]), .C(n2740), .Z(n1603)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i599_3_lut.init = 16'hecec;
    LUT4 reduce_or_75_i2_4_lut_4_lut (.A(QCounter[1]), .B(QCounter[2]), 
         .C(n364_c[4]), .D(n2597), .Z(n342)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam reduce_or_75_i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_4_lut (.A(n2631), .B(ICounter[3]), .C(n364_c[2]), .D(n2410), 
         .Z(n2512)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam i1_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_17 (.A(QCounter[1]), .B(QCounter[3]), .C(QCounter[2]), 
         .D(n2529), .Z(n2523)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_17.init = 16'h0100;
    LUT4 i80_2_lut_4_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .D(n364_c[2]), .Z(n346)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i80_2_lut_4_lut.init = 16'h0800;
    LUT4 sub_10_inv_0_i2_1_lut_rep_23 (.A(QCounter[1]), .Z(n2741)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut_rep_23.init = 16'h5555;
    LUT4 i5_1_lut (.A(ICounter[1]), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam i5_1_lut.init = 16'h5555;
    LUT4 i1503_2_lut (.A(ICounter[1]), .B(ICounter[2]), .Z(n2631)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1503_2_lut.init = 16'h1111;
    FD1S3IX QCounter_171__i2 (.D(n1666), .CK(clk_N_235), .CD(n1724), .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i2.GSR = "DISABLED";
    FD1S3IX QCounter_171__i1 (.D(n2741), .CK(clk_N_235), .CD(n1724), .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i1.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n619), .CK(clk_N_235), .Q(n364_c[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n342), .CK(clk_N_235), .CD(n619), 
            .Q(n364_c[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1603), .CK(clk_N_235), .CD(n619), 
            .Q(n364_c[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n346), .CK(clk_N_235), .CD(n619), 
            .Q(n364_c[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    FD1S3IX ICounter_173__i2 (.D(n1664), .CK(clk_N_235), .CD(n1725), .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i2.GSR = "DISABLED";
    FD1S3IX ICounter_173__i1 (.D(n5), .CK(clk_N_235), .CD(n1725), .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i1.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_22 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2740)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i1_3_lut_rep_22.init = 16'hf7f7;
    DEDFF DEDFF_0 (.clk_N_235(clk_N_235), .n619(n619), .serial_clk_c(serial_clk_c), 
          .serial_iq_c(serial_iq_c), .next_state_3__N_292(n364_c[3]), .next_state_3__N_290(n364_c[4]), 
          .\ICounter[1] (ICounter[1]), .\ICounter[3] (ICounter[3]), .\ICounter[2] (ICounter[2]), 
          .\QCounter[1] (QCounter[1]), .next_state_3__N_294(n364_c[1]), 
          .\QCounter[3] (QCounter[3]), .\QCounter[2] (QCounter[2]), .n2512(n2512), 
          .n2523(n2523), .next_state_3__N_293(n364_c[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_235, n619, serial_clk_c, serial_iq_c, next_state_3__N_292, 
            next_state_3__N_290, \ICounter[1] , \ICounter[3] , \ICounter[2] , 
            \QCounter[1] , next_state_3__N_294, \QCounter[3] , \QCounter[2] , 
            n2512, n2523, next_state_3__N_293) /* synthesis syn_module_defined=1 */ ;
    input clk_N_235;
    input n619;
    input serial_clk_c;
    output serial_iq_c;
    input next_state_3__N_292;
    input next_state_3__N_290;
    input \ICounter[1] ;
    input \ICounter[3] ;
    input \ICounter[2] ;
    input \QCounter[1] ;
    input next_state_3__N_294;
    input \QCounter[3] ;
    input \QCounter[2] ;
    input n2512;
    input n2523;
    input next_state_3__N_293;
    
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire neg_edge, Q2, pose_edge, Q1, n2721, n2719, n2720;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_235), .CD(n619), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n619), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    LUT4 i5_4_lut (.A(pose_edge), .B(next_state_3__N_292), .C(next_state_3__N_290), 
         .D(n2721), .Z(Q2)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam i5_4_lut.init = 16'ha9aa;
    LUT4 ICounter_1__bdd_3_lut (.A(\ICounter[1] ), .B(\ICounter[3] ), .C(\ICounter[2] ), 
         .Z(n2719)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam ICounter_1__bdd_3_lut.init = 16'h0101;
    LUT4 ICounter_1__bdd_4_lut (.A(\QCounter[1] ), .B(next_state_3__N_294), 
         .C(\QCounter[3] ), .D(\QCounter[2] ), .Z(n2720)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam ICounter_1__bdd_4_lut.init = 16'hcccd;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2512), .C(n2523), .D(next_state_3__N_292), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    PFUMX i1535 (.BLUT(n2720), .ALUT(n2719), .C0(next_state_3__N_293), 
          .Z(n2721));
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_175, clockDivider_clk_4M, serial_clk_c, clockDivider_clkLock, 
            VCC_net, LED7_c, GND_net, n1722) /* synthesis syn_module_defined=1 */ ;
    output clk_N_175;
    output clockDivider_clk_4M;
    input serial_clk_c;
    output clockDivider_clkLock;
    input VCC_net;
    input LED7_c;
    input GND_net;
    output n1722;
    
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire [7:0]n65;
    
    wire pll_lock_N_54;
    wire [7:0]n37;
    
    wire clkOut_N_64;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    
    wire n2571, n2635;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    
    wire n2569, n1654, n373;
    wire [7:0]n37_adj_340;
    
    wire n2251, n2250, n2249, n2248, n2291, n2290, n2289, n2288;
    
    INV i1579 (.A(clockDivider_clk_4M), .Z(clk_N_175));
    FD1S3IX lockCounter_167__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i0.GSR = "DISABLED";
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=127 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=127 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n2571), .B(n2635), .C(counter[2]), .D(n2569), 
         .Z(n1654)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1509_2_lut (.A(n1654), .B(LED7_c), .Z(n373)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1509_2_lut.init = 16'h7777;
    FD1S3IX counter_166__i0 (.D(n37_adj_340[0]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i0.GSR = "DISABLED";
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut (.A(counter[6]), .B(counter[7]), .C(counter[3]), .Z(n2571)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C lockCounter_167_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2251), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_167_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(counter[5]), .B(counter[4]), .Z(n2569)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1472_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2635)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1472_2_lut.init = 16'h8888;
    CCU2C lockCounter_167_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2250), .COUT(n2251), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_167_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2249), .COUT(n2250), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_5.INJECT1_1 = "NO";
    FD1S3IX counter_166__i7 (.D(n37_adj_340[7]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i7.GSR = "DISABLED";
    FD1S3IX counter_166__i6 (.D(n37_adj_340[6]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i6.GSR = "DISABLED";
    FD1S3IX counter_166__i5 (.D(n37_adj_340[5]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i5.GSR = "DISABLED";
    FD1S3IX counter_166__i4 (.D(n37_adj_340[4]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i4.GSR = "DISABLED";
    FD1S3IX counter_166__i3 (.D(n37_adj_340[3]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i3.GSR = "DISABLED";
    FD1S3IX counter_166__i2 (.D(n37_adj_340[2]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i2.GSR = "DISABLED";
    FD1S3IX counter_166__i1 (.D(n37_adj_340[1]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i1.GSR = "DISABLED";
    LUT4 i706_1_lut (.A(clockDivider_clkLock), .Z(n1722)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i706_1_lut.init = 16'h5555;
    CCU2C lockCounter_167_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2248), .COUT(n2249), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2291), .S0(n37_adj_340[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_9.INIT0 = 16'haaa0;
    defparam counter_166_add_4_9.INIT1 = 16'h0000;
    defparam counter_166_add_4_9.INJECT1_0 = "NO";
    defparam counter_166_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2290), .COUT(n2291), .S0(n37_adj_340[5]), 
          .S1(n37_adj_340[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_7.INIT0 = 16'haaa0;
    defparam counter_166_add_4_7.INIT1 = 16'haaa0;
    defparam counter_166_add_4_7.INJECT1_0 = "NO";
    defparam counter_166_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2289), .COUT(n2290), .S0(n37_adj_340[3]), 
          .S1(n37_adj_340[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_5.INIT0 = 16'haaa0;
    defparam counter_166_add_4_5.INIT1 = 16'haaa0;
    defparam counter_166_add_4_5.INJECT1_0 = "NO";
    defparam counter_166_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2288), .COUT(n2289), .S0(n37_adj_340[1]), 
          .S1(n37_adj_340[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_3.INIT0 = 16'haaa0;
    defparam counter_166_add_4_3.INIT1 = 16'haaa0;
    defparam counter_166_add_4_3.INJECT1_0 = "NO";
    defparam counter_166_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2288), .S1(n37_adj_340[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_1.INIT0 = 16'h0000;
    defparam counter_166_add_4_1.INIT1 = 16'h555f;
    defparam counter_166_add_4_1.INJECT1_0 = "NO";
    defparam counter_166_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_13 (.A(clockDivider_clk_4M), .B(n1654), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'h9999;
    CCU2C lockCounter_167_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2248), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_167_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_167_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_1.INJECT1_1 = "NO";
    FD1S3IX lockCounter_167__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i7.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_167__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i1.GSR = "DISABLED";
    
endmodule
