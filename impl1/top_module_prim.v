// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Jan 13 16:57:33 2026
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
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clk_N_233 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal, fskModule_symDone, IQSerializer_start;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(96[13:17])
    
    wire n2292, n2291, n2290, n2289, n2288, n26, n25, n24, n23, 
        n22, n21, n20, n19, n18, n17, n16, top_rst_N_28, n15, 
        n14, n13, n12, n11, n10, n2287, n9, n2286, n8, n2285, 
        n7, n2284, n2283, n6, n5, n4, n2282, n3, n2, n2281, 
        n2280, cout;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n112, next_state_3__N_153, next_state_3__N_154, next_state_3__N_156, 
        n2235, n2234, n2233, n2232, n2231, n2230, n2371, n2701, 
        n130, n113, n2490, next_state_3__N_293, n2224, n2225, n2226, 
        n2651, n1683, n2223, n2228, clockDivider_clk_4M_enable_9, 
        n110, I_bit, Q_bit, clockDivider_clk_4M_enable_1, n2222, n2214, 
        n2221, n2220, n2227, n2213, n2219, n580, n111, n2218, 
        n2217, n114, n115, n116, n117, n118, n119, n120, n121, 
        n122, n123, n124, n125, n131, n132, n133, n134, n135, 
        cout_adj_342, n129, n128, n127, n126, n2229, n2216, n2215;
    
    VHI i2 (.Z(VCC_net));
    packetCounter counter_0 (.counter_0_countDone(counter_0_countDone), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_1(clockDivider_clk_4M_enable_1), .n1683(n1683), 
            .VCC_net(VCC_net), .cout(cout_adj_342), .clockDivider_clkLock(clockDivider_clkLock), 
            .waitcount({waitcount}), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(123[15] 128[2])
    CCU2C cnt1_165_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2223), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_165_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_165_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_1.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2224), 
          .COUT(n2225), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i0.GSR = "DISABLED";
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    CCU2C cnt1_165_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2233), 
          .COUT(n2234), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_23.INJECT1_1 = "NO";
    CCU2C add_1067_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2220), .COUT(n2221));
    defparam add_1067_18.INIT0 = 16'h555f;
    defparam add_1067_18.INIT1 = 16'h555f;
    defparam add_1067_18.INJECT1_0 = "NO";
    defparam add_1067_18.INJECT1_1 = "NO";
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    CCU2C add_1067_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2213));
    defparam add_1067_2.INIT0 = 16'h000e;
    defparam add_1067_2.INIT1 = 16'haaa0;
    defparam add_1067_2.INJECT1_0 = "NO";
    defparam add_1067_2.INJECT1_1 = "NO";
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    CCU2C add_1067_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2219), .COUT(n2220));
    defparam add_1067_16.INIT0 = 16'h555f;
    defparam add_1067_16.INIT1 = 16'h555f;
    defparam add_1067_16.INJECT1_0 = "NO";
    defparam add_1067_16.INJECT1_1 = "NO";
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(113[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    CCU2C cnt1_165_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2232), 
          .COUT(n2233), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_21.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(97[7] 100[4])
    defparam LED_9.GSR = "DISABLED";
    CCU2C add_1067_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2222), 
          .S0(cout_adj_342));
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
          .D1(VCC_net), .CIN(n2218), .COUT(n2219));
    defparam add_1067_14.INIT0 = 16'h555f;
    defparam add_1067_14.INIT1 = 16'h555f;
    defparam add_1067_14.INJECT1_0 = "NO";
    defparam add_1067_14.INJECT1_1 = "NO";
    CCU2C add_1066_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2292), .S1(cout));
    defparam add_1066_27.INIT0 = 16'h5555;
    defparam add_1066_27.INIT1 = 16'h0000;
    defparam add_1066_27.INJECT1_0 = "NO";
    defparam add_1066_27.INJECT1_1 = "NO";
    CCU2C add_1066_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2291), .COUT(n2292));
    defparam add_1066_25.INIT0 = 16'h5555;
    defparam add_1066_25.INIT1 = 16'h5555;
    defparam add_1066_25.INJECT1_0 = "NO";
    defparam add_1066_25.INJECT1_1 = "NO";
    CCU2C add_1066_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2290), .COUT(n2291));
    defparam add_1066_23.INIT0 = 16'h5555;
    defparam add_1066_23.INIT1 = 16'h5555;
    defparam add_1066_23.INJECT1_0 = "NO";
    defparam add_1066_23.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2231), 
          .COUT(n2232), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_19.INJECT1_1 = "NO";
    CCU2C add_1066_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2289), .COUT(n2290));
    defparam add_1066_21.INIT0 = 16'h5555;
    defparam add_1066_21.INIT1 = 16'h5555;
    defparam add_1066_21.INJECT1_0 = "NO";
    defparam add_1066_21.INJECT1_1 = "NO";
    CCU2C add_1066_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2288), .COUT(n2289));
    defparam add_1066_19.INIT0 = 16'h5555;
    defparam add_1066_19.INIT1 = 16'h5555;
    defparam add_1066_19.INJECT1_0 = "NO";
    defparam add_1066_19.INJECT1_1 = "NO";
    CCU2C add_1066_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2287), .COUT(n2288));
    defparam add_1066_17.INIT0 = 16'h5555;
    defparam add_1066_17.INIT1 = 16'h5555;
    defparam add_1066_17.INJECT1_0 = "NO";
    defparam add_1066_17.INJECT1_1 = "NO";
    CCU2C add_1066_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2286), .COUT(n2287));
    defparam add_1066_15.INIT0 = 16'h5555;
    defparam add_1066_15.INIT1 = 16'h5555;
    defparam add_1066_15.INJECT1_0 = "NO";
    defparam add_1066_15.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2230), 
          .COUT(n2231), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_17.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2229), 
          .COUT(n2230), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_15.INJECT1_1 = "NO";
    CCU2C add_1067_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2217), .COUT(n2218));
    defparam add_1067_12.INIT0 = 16'haaa0;
    defparam add_1067_12.INIT1 = 16'h555f;
    defparam add_1067_12.INJECT1_0 = "NO";
    defparam add_1067_12.INJECT1_1 = "NO";
    CCU2C add_1066_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2285), .COUT(n2286));
    defparam add_1066_13.INIT0 = 16'h5555;
    defparam add_1066_13.INIT1 = 16'h5555;
    defparam add_1066_13.INJECT1_0 = "NO";
    defparam add_1066_13.INJECT1_1 = "NO";
    CCU2C add_1066_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2284), .COUT(n2285));
    defparam add_1066_11.INIT0 = 16'h5555;
    defparam add_1066_11.INIT1 = 16'h5555;
    defparam add_1066_11.INJECT1_0 = "NO";
    defparam add_1066_11.INJECT1_1 = "NO";
    CCU2C add_1066_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2283), .COUT(n2284));
    defparam add_1066_9.INIT0 = 16'h5555;
    defparam add_1066_9.INIT1 = 16'h5555;
    defparam add_1066_9.INJECT1_0 = "NO";
    defparam add_1066_9.INJECT1_1 = "NO";
    CCU2C add_1066_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2282), .COUT(n2283));
    defparam add_1066_7.INIT0 = 16'haaa5;
    defparam add_1066_7.INIT1 = 16'h5555;
    defparam add_1066_7.INJECT1_0 = "NO";
    defparam add_1066_7.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2225), 
          .COUT(n2226), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_7.INJECT1_1 = "NO";
    QPSK_modulator qpskModule_1 (.IQSerializer_start(IQSerializer_start), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .VCC_net(VCC_net), 
            .n580(n580), .fskModule_symDone(fskModule_symDone), .clk_N_172(clk_N_172), 
            .fskModule_symVal(fskModule_symVal), .I_bit(I_bit), .Q_bit(Q_bit), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
            .n2701(n2701), .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
            .n2651(n2651), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(139[16] 148[2])
    CCU2C add_1067_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2216), .COUT(n2217));
    defparam add_1067_10.INIT0 = 16'h555f;
    defparam add_1067_10.INIT1 = 16'haaa0;
    defparam add_1067_10.INJECT1_0 = "NO";
    defparam add_1067_10.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2228), 
          .COUT(n2229), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_13.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i25.GSR = "DISABLED";
    CCU2C cnt1_165_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2227), 
          .COUT(n2228), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2226), 
          .COUT(n2227), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_9.INJECT1_1 = "NO";
    CCU2C add_1067_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2215), .COUT(n2216));
    defparam add_1067_8.INIT0 = 16'h555f;
    defparam add_1067_8.INIT1 = 16'h555f;
    defparam add_1067_8.INJECT1_0 = "NO";
    defparam add_1067_8.INJECT1_1 = "NO";
    CCU2C add_1066_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2281), .COUT(n2282));
    defparam add_1066_5.INIT0 = 16'h5555;
    defparam add_1066_5.INIT1 = 16'haaa5;
    defparam add_1066_5.INJECT1_0 = "NO";
    defparam add_1066_5.INJECT1_1 = "NO";
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(110[9:61])
    FD1S3AX cnt1_165__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i24.GSR = "DISABLED";
    FD1S3AX cnt1_165__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i23.GSR = "DISABLED";
    FD1S3AX cnt1_165__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i22.GSR = "DISABLED";
    FD1S3AX cnt1_165__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i21.GSR = "DISABLED";
    FD1S3AX cnt1_165__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i20.GSR = "DISABLED";
    FD1S3AX cnt1_165__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i19.GSR = "DISABLED";
    FD1S3AX cnt1_165__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i18.GSR = "DISABLED";
    FD1S3AX cnt1_165__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i17.GSR = "DISABLED";
    FD1S3AX cnt1_165__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i16.GSR = "DISABLED";
    FD1S3AX cnt1_165__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i15.GSR = "DISABLED";
    FD1S3AX cnt1_165__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i14.GSR = "DISABLED";
    FD1S3AX cnt1_165__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i13.GSR = "DISABLED";
    FD1S3AX cnt1_165__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i12.GSR = "DISABLED";
    FD1S3AX cnt1_165__i11 (.D(n124), .CK(serial_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i11.GSR = "DISABLED";
    FD1S3AX cnt1_165__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i10.GSR = "DISABLED";
    FD1S3AX cnt1_165__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i9.GSR = "DISABLED";
    FD1S3AX cnt1_165__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i8.GSR = "DISABLED";
    FD1S3AX cnt1_165__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i7.GSR = "DISABLED";
    FD1S3AX cnt1_165__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i6.GSR = "DISABLED";
    FD1S3AX cnt1_165__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i5.GSR = "DISABLED";
    FD1S3AX cnt1_165__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i4.GSR = "DISABLED";
    FD1S3AX cnt1_165__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i3.GSR = "DISABLED";
    FD1S3AX cnt1_165__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i2.GSR = "DISABLED";
    FD1S3AX cnt1_165__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165__i1.GSR = "DISABLED";
    CCU2C add_1066_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2280), .COUT(n2281));
    defparam add_1066_3.INIT0 = 16'haaa5;
    defparam add_1066_3.INIT1 = 16'h5555;
    defparam add_1066_3.INJECT1_0 = "NO";
    defparam add_1066_3.INJECT1_1 = "NO";
    CCU2C add_1066_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2280));
    defparam add_1066_1.INIT0 = 16'h0000;
    defparam add_1066_1.INIT1 = 16'haaaf;
    defparam add_1066_1.INJECT1_0 = "NO";
    defparam add_1066_1.INJECT1_1 = "NO";
    CCU2C add_1067_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2221), .COUT(n2222));
    defparam add_1067_20.INIT0 = 16'h555f;
    defparam add_1067_20.INIT1 = 16'h555f;
    defparam add_1067_20.INJECT1_0 = "NO";
    defparam add_1067_20.INJECT1_1 = "NO";
    CCU2C add_1067_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2214), .COUT(n2215));
    defparam add_1067_6.INIT0 = 16'haaa0;
    defparam add_1067_6.INIT1 = 16'h555f;
    defparam add_1067_6.INJECT1_0 = "NO";
    defparam add_1067_6.INJECT1_1 = "NO";
    packetGenerator packetGen_1 (.fskModule_symVal(fskModule_symVal), .clk_N_172(clk_N_172), 
            .n2701(n2701), .next_state_3__N_156(next_state_3__N_156), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .counter_0_countDone(counter_0_countDone), .I_bit(I_bit), .n2371(n2371), 
            .symCounter({symCounter}), .next_state_3__N_154(next_state_3__N_154), 
            .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .data(data), 
            .n2651(n2651), .fskModule_symDone(fskModule_symDone), .next_state_3__N_153(next_state_3__N_153), 
            .Q_bit(Q_bit), .next_state_3__N_293(next_state_3__N_293), .n2490(n2490)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(130[17] 136[2])
    VLO i1 (.Z(GND_net));
    CCU2C cnt1_165_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2223), 
          .COUT(n2224), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_3.INJECT1_1 = "NO";
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_233(clk_N_233)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(113[12:100])
    IQSerializer IQSerializer_1 (.next_state_3__N_293(next_state_3__N_293), 
            .clk_N_233(clk_N_233), .n580(n580), .IQSerializer_start(IQSerializer_start), 
            .n2371(n2371), .n2490(n2490), .serial_clk_c(serial_clk_c), 
            .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(151[14] 159[2])
    CCU2C cnt1_165_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2235), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_165_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2234), 
          .COUT(n2235), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(98[10:20])
    defparam cnt1_165_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_25.INJECT1_1 = "NO";
    CCU2C add_1067_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2213), .COUT(n2214));
    defparam add_1067_4.INIT0 = 16'h555f;
    defparam add_1067_4.INIT1 = 16'haaa0;
    defparam add_1067_4.INJECT1_0 = "NO";
    defparam add_1067_4.INJECT1_1 = "NO";
    clockDivider clockDivider_0 (.clk_N_172(clk_N_172), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .clockDivider_clkLock(clockDivider_clkLock), 
            .VCC_net(VCC_net), .GND_net(GND_net), .n1683(n1683)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(116[14] 121[2])
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (counter_0_countDone, clockDivider_clk_4M, clockDivider_clk_4M_enable_1, 
            n1683, VCC_net, cout, clockDivider_clkLock, waitcount, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output counter_0_countDone;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_1;
    input n1683;
    input VCC_net;
    input cout;
    input clockDivider_clkLock;
    output [25:0]waitcount;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n1682, n2248;
    wire [25:0]n109;
    
    wire n2247, n2246, n2245, n2244, n2243, n2242, n2241, n2240, 
        n2239, n2238, n2237, n2236;
    
    FD1P3IX countDone_14 (.D(VCC_net), .SP(clockDivider_clk_4M_enable_1), 
            .CD(n1683), .CK(clockDivider_clk_4M), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_14.GSR = "DISABLED";
    LUT4 i1498_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1682)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1498_2_lut.init = 16'hbbbb;
    CCU2C waitcount_169_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2248), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_169_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2247), .COUT(n2248), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2246), .COUT(n2247), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2245), .COUT(n2246), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2244), .COUT(n2245), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2243), .COUT(n2244), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_17.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i0.GSR = "DISABLED";
    CCU2C waitcount_169_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2242), .COUT(n2243), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2241), .COUT(n2242), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2240), .COUT(n2241), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2239), .COUT(n2240), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2238), .COUT(n2239), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2237), .COUT(n2238), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_5.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i25.GSR = "DISABLED";
    CCU2C waitcount_169_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2236), .COUT(n2237), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2236), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_169_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_169_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_1.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i24.GSR = "DISABLED";
    FD1S3IX waitcount_169__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i23.GSR = "DISABLED";
    FD1S3IX waitcount_169__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i22.GSR = "DISABLED";
    FD1S3IX waitcount_169__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i21.GSR = "DISABLED";
    FD1S3IX waitcount_169__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i20.GSR = "DISABLED";
    FD1S3IX waitcount_169__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i19.GSR = "DISABLED";
    FD1S3IX waitcount_169__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i18.GSR = "DISABLED";
    FD1S3IX waitcount_169__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i17.GSR = "DISABLED";
    FD1S3IX waitcount_169__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i16.GSR = "DISABLED";
    FD1S3IX waitcount_169__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i15.GSR = "DISABLED";
    FD1S3IX waitcount_169__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i14.GSR = "DISABLED";
    FD1S3IX waitcount_169__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i13.GSR = "DISABLED";
    FD1S3IX waitcount_169__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i12.GSR = "DISABLED";
    FD1S3IX waitcount_169__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i11.GSR = "DISABLED";
    FD1S3IX waitcount_169__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1682), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i10.GSR = "DISABLED";
    FD1S3IX waitcount_169__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i9.GSR = "DISABLED";
    FD1S3IX waitcount_169__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i8.GSR = "DISABLED";
    FD1S3IX waitcount_169__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i7.GSR = "DISABLED";
    FD1S3IX waitcount_169__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i6.GSR = "DISABLED";
    FD1S3IX waitcount_169__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i5.GSR = "DISABLED";
    FD1S3IX waitcount_169__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i4.GSR = "DISABLED";
    FD1S3IX waitcount_169__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i3.GSR = "DISABLED";
    FD1S3IX waitcount_169__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i2.GSR = "DISABLED";
    FD1S3IX waitcount_169__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1682), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i1.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module QPSK_modulator
//

module QPSK_modulator (IQSerializer_start, clockDivider_clk_4M, VCC_net, 
            n580, fskModule_symDone, clk_N_172, fskModule_symVal, I_bit, 
            Q_bit, counter_0_countDone, next_state_3__N_156, n2701, 
            next_state_3__N_154, next_state_3__N_153, n2651, clockDivider_clk_4M_enable_9) /* synthesis syn_module_defined=1 */ ;
    output IQSerializer_start;
    input clockDivider_clk_4M;
    input VCC_net;
    output n580;
    output fskModule_symDone;
    input clk_N_172;
    input fskModule_symVal;
    output I_bit;
    output Q_bit;
    input counter_0_countDone;
    input next_state_3__N_156;
    output n2701;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2651;
    output clockDivider_clk_4M_enable_9;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    FD1S3AX start_9 (.D(VCC_net), .CK(clockDivider_clk_4M), .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=148 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(24[16] 27[8])
    defparam start_9.GSR = "ENABLED";
    LUT4 i228_1_lut (.A(IQSerializer_start), .Z(n580)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(24[16] 27[8])
    defparam i228_1_lut.init = 16'h5555;
    iq_div iq_div_inst (.fskModule_symDone(fskModule_symDone), .clk_N_172(clk_N_172), 
           .fskModule_symVal(fskModule_symVal), .I_bit(I_bit), .Q_bit(Q_bit), 
           .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
           .n2701(n2701), .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
           .n2651(n2651), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(38[7] 47[6])
    
endmodule
//
// Verilog Description of module iq_div
//

module iq_div (fskModule_symDone, clk_N_172, fskModule_symVal, I_bit, 
            Q_bit, counter_0_countDone, next_state_3__N_156, n2701, 
            next_state_3__N_154, next_state_3__N_153, n2651, clockDivider_clk_4M_enable_9) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_172;
    input fskModule_symVal;
    output I_bit;
    output Q_bit;
    input counter_0_countDone;
    input next_state_3__N_156;
    output n2701;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2651;
    output clockDivider_clk_4M_enable_9;
    
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire I_1__N_180, symDone_N_217, Q_bit_temp, clk_N_172_enable_3, 
        clk_N_172_enable_5, I_bit_temp, I_bit_temp2;
    wire [7:0]cnt_sample;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(21[17:27])
    
    wire n2705, n10;
    wire [7:0]cnt_sample_7__N_197;
    
    wire iq_switch, iq_switch_N_214, n12, n2700, n9, n2706, n2699, 
        n12_adj_341, n11, n8;
    
    FD1S3IX symDone_56 (.D(symDone_N_217), .CK(clk_N_172), .CD(I_1__N_180), 
            .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam symDone_56.GSR = "ENABLED";
    FD1P3IX Q_bit_temp_61 (.D(fskModule_symVal), .SP(clk_N_172_enable_3), 
            .CD(I_1__N_180), .CK(clk_N_172), .Q(Q_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_temp_61.GSR = "ENABLED";
    FD1P3IX I_bit_58 (.D(I_bit_temp), .SP(clk_N_172_enable_5), .CD(I_1__N_180), 
            .CK(clk_N_172), .Q(I_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_58.GSR = "ENABLED";
    FD1P3IX I_bit_temp_60 (.D(I_bit_temp2), .SP(clk_N_172_enable_3), .CD(I_1__N_180), 
            .CK(clk_N_172), .Q(I_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp_60.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_20 (.A(cnt_sample[3]), .B(cnt_sample[2]), .Z(n2705)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_20.init = 16'h8888;
    FD1P3IX I_bit_temp2_62 (.D(fskModule_symVal), .SP(clk_N_172_enable_5), 
            .CD(I_1__N_180), .CK(clk_N_172), .Q(I_bit_temp2)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp2_62.GSR = "ENABLED";
    LUT4 i4_3_lut_4_lut (.A(cnt_sample[3]), .B(cnt_sample[2]), .C(cnt_sample[4]), 
         .D(cnt_sample[5]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut_4_lut.init = 16'h8000;
    LUT4 i509_1_lut (.A(cnt_sample[0]), .Z(cnt_sample_7__N_197[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[21:54])
    defparam i509_1_lut.init = 16'h5555;
    FD1S3JX iq_switch_57 (.D(iq_switch_N_214), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(iq_switch)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[18] 65[12])
    defparam iq_switch_57.GSR = "ENABLED";
    LUT4 i1512_4_lut (.A(n12), .B(cnt_sample[1]), .C(n2700), .D(cnt_sample[0]), 
         .Z(symDone_N_217)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1512_4_lut.init = 16'h0004;
    FD1S3JX cnt_sample_i0 (.D(cnt_sample_7__N_197[0]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[0])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i0.GSR = "ENABLED";
    LUT4 i904_3_lut_4_lut (.A(n9), .B(n12), .C(n2700), .D(cnt_sample[2]), 
         .Z(cnt_sample_7__N_197[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i904_3_lut_4_lut.init = 16'h55a8;
    LUT4 i3_2_lut_rep_21 (.A(cnt_sample[2]), .B(cnt_sample[1]), .Z(n2706)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_rep_21.init = 16'h8888;
    FD1P3IX Q_bit_59 (.D(Q_bit_temp), .SP(clk_N_172_enable_5), .CD(I_1__N_180), 
            .CK(clk_N_172), .Q(Q_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_59.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_15 (.A(cnt_sample[3]), .B(cnt_sample[7]), .Z(n2700)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_rep_15.init = 16'heeee;
    LUT4 i1_3_lut_rep_14_4_lut (.A(cnt_sample[3]), .B(cnt_sample[7]), .C(n12), 
         .D(n9), .Z(n2699)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_3_lut_rep_14_4_lut.init = 16'hfeff;
    LUT4 i5_2_lut_3_lut_4_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[1]), 
         .D(cnt_sample[2]), .Z(n12_adj_341)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n9), .B(n12), .C(n2700), .D(iq_switch), 
         .Z(iq_switch_N_214)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_4_lut.init = 16'hfd02;
    LUT4 i899_4_lut (.A(cnt_sample[7]), .B(n2699), .C(n11), .D(n12_adj_341), 
         .Z(cnt_sample_7__N_197[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i899_4_lut.init = 16'h4888;
    LUT4 i4_3_lut (.A(cnt_sample[0]), .B(cnt_sample[6]), .C(cnt_sample[5]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i900_4_lut (.A(cnt_sample[6]), .B(n2699), .C(n9), .D(n10), 
         .Z(cnt_sample_7__N_197[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i900_4_lut.init = 16'h4888;
    LUT4 i1500_3_lut (.A(counter_0_countDone), .B(next_state_3__N_156), 
         .C(iq_switch), .Z(clk_N_172_enable_3)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1500_3_lut.init = 16'hdfdf;
    LUT4 i901_4_lut (.A(cnt_sample[5]), .B(n2699), .C(n2706), .D(n8), 
         .Z(cnt_sample_7__N_197[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i901_4_lut.init = 16'h4888;
    LUT4 i902_4_lut (.A(cnt_sample[4]), .B(n2699), .C(n2705), .D(n9), 
         .Z(cnt_sample_7__N_197[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i902_4_lut.init = 16'h4888;
    LUT4 i903_4_lut (.A(cnt_sample[3]), .B(n2699), .C(cnt_sample[0]), 
         .D(n2706), .Z(cnt_sample_7__N_197[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i903_4_lut.init = 16'h4888;
    LUT4 rst_I_0_1_lut_rep_16 (.A(counter_0_countDone), .Z(n2701)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[6:16])
    defparam rst_I_0_1_lut_rep_16.init = 16'h5555;
    LUT4 i905_3_lut (.A(cnt_sample[1]), .B(n2699), .C(cnt_sample[0]), 
         .Z(cnt_sample_7__N_197[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i905_3_lut.init = 16'h4848;
    LUT4 i1474_2_lut (.A(cnt_sample[0]), .B(cnt_sample[1]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1474_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(cnt_sample[2]), .B(cnt_sample[5]), .C(cnt_sample[4]), 
         .D(cnt_sample[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut_3_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_3_lut.init = 16'h8080;
    LUT4 i1520_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_154), 
         .C(next_state_3__N_153), .Z(n2651)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[6:16])
    defparam i1520_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i181_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[6:16])
    defparam i181_2_lut_2_lut.init = 16'hdddd;
    FD1S3JX cnt_sample_i7 (.D(cnt_sample_7__N_197[7]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[7])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i7.GSR = "ENABLED";
    FD1S3JX cnt_sample_i6 (.D(cnt_sample_7__N_197[6]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[6])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i6.GSR = "ENABLED";
    FD1S3JX cnt_sample_i5 (.D(cnt_sample_7__N_197[5]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[5])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i5.GSR = "ENABLED";
    FD1S3JX cnt_sample_i4 (.D(cnt_sample_7__N_197[4]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[4])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i4.GSR = "ENABLED";
    FD1S3JX cnt_sample_i3 (.D(cnt_sample_7__N_197[3]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[3])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i3.GSR = "ENABLED";
    FD1S3JX cnt_sample_i2 (.D(cnt_sample_7__N_197[2]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[2])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i2.GSR = "ENABLED";
    FD1S3JX cnt_sample_i1 (.D(cnt_sample_7__N_197[1]), .CK(clk_N_172), .PD(I_1__N_180), 
            .Q(cnt_sample[1])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(counter_0_countDone), .B(iq_switch), .C(next_state_3__N_156), 
         .Z(clk_N_172_enable_5)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[6:16])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut (.A(next_state_3__N_156), .B(counter_0_countDone), .Z(I_1__N_180)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    
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
            .ENCLKOS3(GND_net), .CLKOP(pll_clko_1)) /* synthesis FREQUENCY_PIN_CLKOP="24.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="6", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=61, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(110[9:61])
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

module packetGenerator (fskModule_symVal, clk_N_172, n2701, next_state_3__N_156, 
            clockDivider_clk_4M, counter_0_countDone, I_bit, n2371, 
            symCounter, next_state_3__N_154, clockDivider_clk_4M_enable_9, 
            data, n2651, fskModule_symDone, next_state_3__N_153, Q_bit, 
            next_state_3__N_293, n2490) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symVal;
    input clk_N_172;
    input n2701;
    output next_state_3__N_156;
    input clockDivider_clk_4M;
    input counter_0_countDone;
    input I_bit;
    output n2371;
    output [7:0]symCounter;
    output next_state_3__N_154;
    input clockDivider_clk_4M_enable_9;
    input data;
    input n2651;
    input fskModule_symDone;
    output next_state_3__N_153;
    input Q_bit;
    input next_state_3__N_293;
    output n2490;
    
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire next_symVal, next_state_3__N_155, n2566, n2704;
    wire [7:0]n68;
    
    wire n2574, n2703, n2702, n2552, n15, n2457, n2506, n1556, 
        n2584, n2582;
    
    FD1S3IX symVal_42 (.D(next_symVal), .CK(clk_N_172), .CD(n2701), .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 60[4])
    defparam symVal_42.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(next_state_3__N_155), .CK(clockDivider_clk_4M), 
            .CD(n2701), .Q(next_state_3__N_156));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1257_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(I_bit), .Z(n2371)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[11] 104[5])
    defparam i1257_2_lut_3_lut.init = 16'h4040;
    LUT4 i915_4_lut (.A(symCounter[5]), .B(next_state_3__N_154), .C(n2566), 
         .D(n2704), .Z(n68[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i915_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i0 (.D(n68[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(symCounter[3]), .B(symCounter[2]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2574)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i916_4_lut (.A(symCounter[4]), .B(next_state_3__N_154), .C(n2703), 
         .D(n2702), .Z(n68[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i916_4_lut.init = 16'h4888;
    LUT4 i917_4_lut (.A(symCounter[3]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .D(n2704), .Z(n68[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i917_4_lut.init = 16'h4888;
    LUT4 i1_3_lut (.A(next_state_3__N_154), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n2552)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1518_4_lut (.A(next_symVal), .B(data), .C(n2651), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(62[1] 105[4])
    defparam i1518_4_lut.init = 16'hca0a;
    LUT4 i2_2_lut_rep_17 (.A(symCounter[1]), .B(symCounter[0]), .Z(n2702)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i2_2_lut_rep_17.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2566)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_18 (.A(symCounter[3]), .B(symCounter[2]), .Z(n2703)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i918_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[0]), .C(next_state_3__N_154), 
         .D(symCounter[2]), .Z(n68[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i918_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_4_lut (.A(n2703), .B(fskModule_symDone), .C(n15), .D(n2552), 
         .Z(n2457)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_19 (.A(symCounter[1]), .B(symCounter[6]), .C(symCounter[4]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h8000;
    LUT4 i1_4_lut_adj_20 (.A(n2703), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n2506)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h8000;
    LUT4 i881_2_lut (.A(symCounter[0]), .B(next_state_3__N_154), .Z(n68[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i881_2_lut.init = 16'h4444;
    LUT4 i591_4_lut (.A(next_state_3__N_154), .B(next_state_3__N_153), .C(n2506), 
         .D(fskModule_symDone), .Z(n1556)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[3] 103[10])
    defparam i591_4_lut.init = 16'hceee;
    LUT4 i919_3_lut (.A(symCounter[1]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .Z(n68[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i919_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_rep_19 (.A(symCounter[2]), .B(symCounter[1]), .Z(n2704)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_2_lut_rep_19.init = 16'h8888;
    FD1P3IX symCounter__i7 (.D(n68[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n68[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n68[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n68[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n68[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n68[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n68[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2701), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=136 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(108[8] 122[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 i913_4_lut (.A(symCounter[7]), .B(next_state_3__N_154), .C(n2584), 
         .D(n2582), .Z(n68[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i913_4_lut.init = 16'h4888;
    FD1S3JX current_state_FSM_i4 (.D(next_state_3__N_156), .CK(clockDivider_clk_4M), 
            .PD(n2701), .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1_3_lut_adj_21 (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2582)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_3_lut_adj_21.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2584)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(114[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i914_4_lut (.A(symCounter[6]), .B(next_state_3__N_154), .C(n2574), 
         .D(n2702), .Z(n68[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[13] 117[7])
    defparam i914_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_4_lut_adj_22 (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(Q_bit), .D(next_state_3__N_293), .Z(n2490)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(67[11] 104[5])
    defparam i1_3_lut_4_lut_adj_22.init = 16'hbf00;
    FD1S3IX current_state_FSM_i3 (.D(n1556), .CK(clockDivider_clk_4M), .CD(n2701), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2457), .CK(clockDivider_clk_4M), .CD(n2701), 
            .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[3] 103[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module pll_24_64m
//

module pll_24_64m (pll_clko_1, top_rst_N_28, serial_clk_c, LED7_c, GND_net, 
            clk_N_233) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input pll_clko_1;
    input top_rst_N_28;
    output serial_clk_c;
    output LED7_c;
    input GND_net;
    output clk_N_233;
    
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clk_N_233 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    EHXPLLL PLLInst_0 (.CLKI(pll_clko_1), .CLKFB(serial_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(top_rst_N_28), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(serial_clk_c), 
            .LOCK(LED7_c)) /* synthesis FREQUENCY_PIN_CLKOP="64.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=100, LSE_LLINE=113, LSE_RLINE=113 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(113[12:100])
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
    INV i1580 (.A(serial_clk_c), .Z(clk_N_233));
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (next_state_3__N_293, clk_N_233, n580, IQSerializer_start, 
            n2371, n2490, serial_clk_c, serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    output next_state_3__N_293;
    input clk_N_233;
    input n580;
    input IQSerializer_start;
    input n2371;
    input n2490;
    input serial_clk_c;
    output serial_iq_c;
    
    wire clk_N_233 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    wire [4:0]n325;
    
    wire n2558, n303;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    wire [3:0]n21;
    
    wire n2542, n1566, n1686, n1685;
    wire [3:0]n21_adj_340;
    
    wire n2592, n2473, n1627, n2707, n1564, n2484, n307, n2708, 
        n1625, n5;
    
    LUT4 reduce_or_75_i2_4_lut_4_lut (.A(QCounter[1]), .B(QCounter[2]), 
         .C(n325[4]), .D(n2558), .Z(n303)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam reduce_or_75_i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 i1089_2_lut_3_lut (.A(ICounter[2]), .B(ICounter[1]), .C(ICounter[3]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1089_2_lut_3_lut.init = 16'h7878;
    LUT4 i601_4_lut (.A(next_state_3__N_293), .B(n325[1]), .C(n2542), 
         .D(QCounter[2]), .Z(n1566)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i601_4_lut.init = 16'hecee;
    LUT4 i1_2_lut (.A(QCounter[3]), .B(QCounter[1]), .Z(n2542)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(145[21:38])
    defparam i1_2_lut.init = 16'hdddd;
    FD1S3IX current_state_FSM_i0 (.D(n1566), .CK(clk_N_233), .CD(n580), 
            .Q(next_state_3__N_293));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 i1516_2_lut (.A(n325[2]), .B(IQSerializer_start), .Z(n1686)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1516_2_lut.init = 16'h7777;
    LUT4 i1506_2_lut (.A(next_state_3__N_293), .B(IQSerializer_start), .Z(n1685)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1506_2_lut.init = 16'h7777;
    LUT4 i1175_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n21_adj_340[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1175_3_lut.init = 16'h6a6a;
    FD1S3IX ICounter_173__i3 (.D(n21[3]), .CK(clk_N_233), .CD(n1686), 
            .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i3.GSR = "DISABLED";
    FD1S3IX QCounter_171__i3 (.D(n21_adj_340[3]), .CK(clk_N_233), .CD(n1685), 
            .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i3.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n2592), .B(ICounter[3]), .C(n325[2]), .D(n2371), 
         .Z(n2473)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam i1_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_adj_15 (.A(QCounter[2]), .B(QCounter[1]), .Z(n1627)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_15.init = 16'h6666;
    LUT4 i1_2_lut_adj_16 (.A(QCounter[3]), .B(next_state_3__N_293), .Z(n2558)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i599_3_lut (.A(n325[2]), .B(n325[3]), .C(n2707), .Z(n1564)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i599_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_17 (.A(QCounter[1]), .B(QCounter[3]), .C(QCounter[2]), 
         .D(n2490), .Z(n2484)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_17.init = 16'h0100;
    LUT4 i1503_2_lut (.A(ICounter[1]), .B(ICounter[2]), .Z(n2592)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1503_2_lut.init = 16'h1111;
    LUT4 i80_2_lut_4_lut (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .D(n325[2]), .Z(n307)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i80_2_lut_4_lut.init = 16'h0800;
    LUT4 sub_10_inv_0_i2_1_lut_rep_23 (.A(QCounter[1]), .Z(n2708)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut_rep_23.init = 16'h5555;
    LUT4 i1_3_lut_rep_22 (.A(ICounter[3]), .B(ICounter[2]), .C(ICounter[1]), 
         .Z(n2707)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i1_3_lut_rep_22.init = 16'hf7f7;
    FD1S3IX QCounter_171__i2 (.D(n1627), .CK(clk_N_233), .CD(n1685), .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i2.GSR = "DISABLED";
    FD1S3IX QCounter_171__i1 (.D(n2708), .CK(clk_N_233), .CD(n1685), .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i1.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n580), .CK(clk_N_233), .Q(n325[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n303), .CK(clk_N_233), .CD(n580), 
            .Q(n325[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1564), .CK(clk_N_233), .CD(n580), 
            .Q(n325[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n307), .CK(clk_N_233), .CD(n580), 
            .Q(n325[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_18 (.A(ICounter[2]), .B(ICounter[1]), .Z(n1625)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_18.init = 16'h6666;
    LUT4 i5_1_lut (.A(ICounter[1]), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam i5_1_lut.init = 16'h5555;
    FD1S3IX ICounter_173__i2 (.D(n1625), .CK(clk_N_233), .CD(n1686), .Q(ICounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i2.GSR = "DISABLED";
    FD1S3IX ICounter_173__i1 (.D(n5), .CK(clk_N_233), .CD(n1686), .Q(ICounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i1.GSR = "DISABLED";
    DEDFF DEDFF_0 (.clk_N_233(clk_N_233), .n580(n580), .serial_clk_c(serial_clk_c), 
          .\QCounter[1] (QCounter[1]), .next_state_3__N_292(n325[1]), .\QCounter[3] (QCounter[3]), 
          .\QCounter[2] (QCounter[2]), .\ICounter[1] (ICounter[1]), .\ICounter[3] (ICounter[3]), 
          .\ICounter[2] (ICounter[2]), .n2473(n2473), .n2484(n2484), .next_state_3__N_290(n325[3]), 
          .serial_iq_c(serial_iq_c), .next_state_3__N_288(n325[4]), .next_state_3__N_291(n325[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_233, n580, serial_clk_c, \QCounter[1] , next_state_3__N_292, 
            \QCounter[3] , \QCounter[2] , \ICounter[1] , \ICounter[3] , 
            \ICounter[2] , n2473, n2484, next_state_3__N_290, serial_iq_c, 
            next_state_3__N_288, next_state_3__N_291) /* synthesis syn_module_defined=1 */ ;
    input clk_N_233;
    input n580;
    input serial_clk_c;
    input \QCounter[1] ;
    input next_state_3__N_292;
    input \QCounter[3] ;
    input \QCounter[2] ;
    input \ICounter[1] ;
    input \ICounter[3] ;
    input \ICounter[2] ;
    input n2473;
    input n2484;
    input next_state_3__N_290;
    output serial_iq_c;
    input next_state_3__N_288;
    input next_state_3__N_291;
    
    wire clk_N_233 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire neg_edge, Q2, pose_edge, Q1, n2687, n2686, n2688;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_233), .CD(n580), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n580), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    LUT4 ICounter_1__bdd_4_lut (.A(\QCounter[1] ), .B(next_state_3__N_292), 
         .C(\QCounter[3] ), .D(\QCounter[2] ), .Z(n2687)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam ICounter_1__bdd_4_lut.init = 16'hcccd;
    LUT4 ICounter_1__bdd_3_lut (.A(\ICounter[1] ), .B(\ICounter[3] ), .C(\ICounter[2] ), 
         .Z(n2686)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam ICounter_1__bdd_3_lut.init = 16'h0101;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2473), .C(n2484), .D(next_state_3__N_290), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    LUT4 i5_4_lut (.A(pose_edge), .B(next_state_3__N_290), .C(next_state_3__N_288), 
         .D(n2688), .Z(Q2)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam i5_4_lut.init = 16'ha9aa;
    PFUMX i1537 (.BLUT(n2687), .ALUT(n2686), .C0(next_state_3__N_291), 
          .Z(n2688));
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_172, clockDivider_clk_4M, serial_clk_c, LED7_c, 
            clockDivider_clkLock, VCC_net, GND_net, n1683) /* synthesis syn_module_defined=1 */ ;
    output clk_N_172;
    output clockDivider_clk_4M;
    input serial_clk_c;
    input LED7_c;
    output clockDivider_clkLock;
    input VCC_net;
    input GND_net;
    output n1683;
    
    wire clk_N_172 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire [7:0]n65;
    
    wire pll_lock_N_54;
    wire [7:0]n37;
    
    wire clkOut_N_64, n1615, n334;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    
    wire n2532;
    wire [7:0]n37_adj_338;
    
    wire n2596, n2212, n2211, n2210, n2209, n2530, n2252, n2251, 
        n2250, n2249;
    
    INV i1581 (.A(clockDivider_clk_4M), .Z(clk_N_172));
    FD1S3IX lockCounter_167__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i0.GSR = "DISABLED";
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=116, LSE_RLINE=121 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    LUT4 i1509_2_lut (.A(n1615), .B(LED7_c), .Z(n334)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1509_2_lut.init = 16'h7777;
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=116, LSE_RLINE=121 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(counter[6]), .B(counter[7]), .C(counter[3]), .Z(n2532)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1S3IX counter_166__i0 (.D(n37_adj_338[0]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i0.GSR = "DISABLED";
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    LUT4 i1472_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2596)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1472_2_lut.init = 16'h8888;
    CCU2C lockCounter_167_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2212), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_167_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_9.INJECT1_1 = "NO";
    LUT4 i706_1_lut (.A(clockDivider_clkLock), .Z(n1683)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i706_1_lut.init = 16'h5555;
    CCU2C lockCounter_167_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2211), .COUT(n2212), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_167_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2210), .COUT(n2211), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_5.INJECT1_1 = "NO";
    FD1S3IX counter_166__i7 (.D(n37_adj_338[7]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i7.GSR = "DISABLED";
    FD1S3IX counter_166__i6 (.D(n37_adj_338[6]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i6.GSR = "DISABLED";
    FD1S3IX counter_166__i5 (.D(n37_adj_338[5]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i5.GSR = "DISABLED";
    FD1S3IX counter_166__i4 (.D(n37_adj_338[4]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i4.GSR = "DISABLED";
    FD1S3IX counter_166__i3 (.D(n37_adj_338[3]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i3.GSR = "DISABLED";
    FD1S3IX counter_166__i2 (.D(n37_adj_338[2]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i2.GSR = "DISABLED";
    FD1S3IX counter_166__i1 (.D(n37_adj_338[1]), .CK(serial_clk_c), .CD(n334), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n1615), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    CCU2C lockCounter_167_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2209), .COUT(n2210), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_14 (.A(counter[5]), .B(counter[4]), .Z(n2530)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'heeee;
    CCU2C counter_166_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2252), .S0(n37_adj_338[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_9.INIT0 = 16'haaa0;
    defparam counter_166_add_4_9.INIT1 = 16'h0000;
    defparam counter_166_add_4_9.INJECT1_0 = "NO";
    defparam counter_166_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2251), .COUT(n2252), .S0(n37_adj_338[5]), 
          .S1(n37_adj_338[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_7.INIT0 = 16'haaa0;
    defparam counter_166_add_4_7.INIT1 = 16'haaa0;
    defparam counter_166_add_4_7.INJECT1_0 = "NO";
    defparam counter_166_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2250), .COUT(n2251), .S0(n37_adj_338[3]), 
          .S1(n37_adj_338[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_5.INIT0 = 16'haaa0;
    defparam counter_166_add_4_5.INIT1 = 16'haaa0;
    defparam counter_166_add_4_5.INJECT1_0 = "NO";
    defparam counter_166_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2249), .COUT(n2250), .S0(n37_adj_338[1]), 
          .S1(n37_adj_338[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_3.INIT0 = 16'haaa0;
    defparam counter_166_add_4_3.INIT1 = 16'haaa0;
    defparam counter_166_add_4_3.INJECT1_0 = "NO";
    defparam counter_166_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2249), .S1(n37_adj_338[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_1.INIT0 = 16'h0000;
    defparam counter_166_add_4_1.INIT1 = 16'h555f;
    defparam counter_166_add_4_1.INJECT1_0 = "NO";
    defparam counter_166_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n2532), .B(n2596), .C(counter[2]), .D(n2530), 
         .Z(n1615)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    CCU2C lockCounter_167_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2209), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
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
