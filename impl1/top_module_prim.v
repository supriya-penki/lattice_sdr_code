// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Fri Jan 09 17:20:26 2026
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
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal, fskModule_symDone;
    wire [13:0]IQSerializer_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(61[21:35])
    wire [13:0]IQSerializer_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(62[21:35])
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[13:17])
    
    wire n22, n21, n20, n19, n18, n17, n16, n15, n14, n13, 
        n12, n11, n10, n9, n8, n7, n129, n6, n5, n4, n3, 
        n2, n2294, top_rst_N_28, n2293, n2276, n2275, n2274, n2292, 
        n2273, n2272;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2271, n2270, n2291, n1820, n2269, n2268, n2267, n2808, 
        n2266;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n2807, next_state_3__N_152, next_state_3__N_153, next_state_3__N_155, 
        n2789;
    wire [1:0]I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(13[26:27])
    wire [1:0]Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(14[25:26])
    wire [9:0]theta;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(18[19:24])
    
    wire enable_d, n2248;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n2290, n2289, n2835, n2834, n2806, n2833, n132, n2805, 
        n2787, n2832, DEDFF_D0_N_334, n2831, n2830, n2804, DEDFF_D0_N_339, 
        n2288, DEDFF_D1_N_350, next_state_3__N_320, next_state_3__N_322, 
        n2287, n2803, n1817, n2247, clockDivider_clk_4M_enable_91, 
        n134, n133, cout, I_bit, Q_bit, clockDivider_clk_4M_enable_84, 
        n2286, n135;
    wire [23:0]phase_acc;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(14[23:32])
    wire [23:0]theta_9__N_237;
    
    wire n131, n2362, n2246, n2252, n1819, n2337, n2245, n2336, 
        n2244, n2251, n2285, n2297, n2296, n130, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n121, n122, n123, n124, n125, n126, n127, n128, n2335, 
        n2334, n2333, n2332, n2331, n2330, n2329, n2328, n2327, 
        n2326, n2325, n6_adj_371, n23, n24, n25, n26, cout_adj_372, 
        n2295, n2250, n2780, n2658, n2243, n3_adj_373, n2734, 
        n2249;
    
    VHI i2 (.Z(VCC_net));
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .cout(cout_adj_372), .clockDivider_clkLock(clockDivider_clkLock), 
            .cout_adj_1(cout), .counter_0_countDone(counter_0_countDone), 
            .n1817(n1817)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(130[15] 135[2])
    CCU2C _add_1_add_4_11 (.A0(phase_acc[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2270), .COUT(n2271), .S0(theta_9__N_237[11]), 
          .S1(theta_9__N_237[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_add_4_11.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2295), 
          .COUT(n2296), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2294), 
          .COUT(n2295), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2293), 
          .COUT(n2294), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_19.INJECT1_1 = "NO";
    LUT4 IQSerializer_Q_3__bdd_3_lut (.A(IQSerializer_Q[11]), .B(IQSerializer_Q[7]), 
         .C(QCounter[2]), .Z(n2831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam IQSerializer_Q_3__bdd_3_lut.init = 16'hcaca;
    CCU2C add_945_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2247), .COUT(n2248));
    defparam add_945_12.INIT0 = 16'haaa0;
    defparam add_945_12.INIT1 = 16'h555f;
    defparam add_945_12.INJECT1_0 = "NO";
    defparam add_945_12.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_9 (.A0(phase_acc[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2269), .COUT(n2270), .S0(theta_9__N_237[9]), 
          .S1(theta_9__N_237[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_add_4_9.INJECT1_1 = "NO";
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    LUT4 IQSerializer_Q_0__bdd_3_lut (.A(IQSerializer_Q[8]), .B(IQSerializer_Q[12]), 
         .C(QCounter[2]), .Z(n2807)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam IQSerializer_Q_0__bdd_3_lut.init = 16'hacac;
    CCU2C _add_1_add_4_7 (.A0(phase_acc[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2268), .COUT(n2269), .S0(theta_9__N_237[7]), 
          .S1(theta_9__N_237[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_add_4_7.INJECT1_1 = "NO";
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    CCU2C cnt1_169_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2292), 
          .COUT(n2293), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_5 (.A0(phase_acc[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2267), .COUT(n2268), .S0(theta_9__N_237[5]), 
          .S1(theta_9__N_237[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_add_4_5.INJECT1_1 = "NO";
    CCU2C add_945_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2246), .COUT(n2247));
    defparam add_945_10.INIT0 = 16'h555f;
    defparam add_945_10.INIT1 = 16'haaa0;
    defparam add_945_10.INJECT1_0 = "NO";
    defparam add_945_10.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_3 (.A0(phase_acc[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2266), .COUT(n2267), .S0(theta_9__N_237[3]), 
          .S1(theta_9__N_237[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_add_4_3.INJECT1_1 = "NO";
    LUT4 IQSerializer_Q_0__bdd_3_lut_1476 (.A(IQSerializer_Q[0]), .B(IQSerializer_Q[4]), 
         .C(QCounter[2]), .Z(n2806)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam IQSerializer_Q_0__bdd_3_lut_1476.init = 16'hacac;
    GSR GSR_INST (.GSR(counter_0_countDone));
    CCU2C _add_1_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_acc[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2266), .S1(theta_9__N_237[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_add_4_1.INJECT1_1 = "NO";
    LUT4 IQSerializer_Q_3__bdd_2_lut (.A(IQSerializer_Q[3]), .B(QCounter[2]), 
         .Z(n2830)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam IQSerializer_Q_3__bdd_2_lut.init = 16'h2222;
    CCU2C cnt1_169_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2291), 
          .COUT(n2292), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_15.INJECT1_1 = "NO";
    CCU2C add_945_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2245), .COUT(n2246));
    defparam add_945_8.INIT0 = 16'h555f;
    defparam add_945_8.INIT1 = 16'h555f;
    defparam add_945_8.INJECT1_0 = "NO";
    defparam add_945_8.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 IQSerializer_Q_1__bdd_3_lut_1496 (.A(IQSerializer_Q[1]), .B(IQSerializer_Q[5]), 
         .C(QCounter[2]), .Z(n2833)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam IQSerializer_Q_1__bdd_3_lut_1496.init = 16'hacac;
    CCU2C cnt1_169_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2290), 
          .COUT(n2291), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_13.INJECT1_1 = "NO";
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    CCU2C cnt1_169_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2289), 
          .COUT(n2290), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_11.INJECT1_1 = "NO";
    packetGenerator packetGen_1 (.next_state_3__N_155(next_state_3__N_155), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2789(n2789), .VCC_net(VCC_net), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_320(next_state_3__N_320), 
            .enable_d(enable_d), .n1820(n1820), .symCounter({symCounter}), 
            .next_state_3__N_153(next_state_3__N_153), .fskModule_symVal(fskModule_symVal), 
            .clk_N_174(clk_N_174), .Q_bit(Q_bit), .\Q[1] (Q[1]), .clockDivider_clk_4M_enable_91(clockDivider_clk_4M_enable_91), 
            .data(data), .n2658(n2658), .fskModule_symDone(fskModule_symDone), 
            .clockDivider_clk_4M_enable_84(clockDivider_clk_4M_enable_84), 
            .next_state_3__N_152(next_state_3__N_152), .next_state_3__N_322(next_state_3__N_322), 
            .n1819(n1819), .n2780(n2780), .I_bit(I_bit), .\I[1] (I[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(137[17] 143[2])
    LUT4 IQSerializer_Q_1__bdd_3_lut (.A(IQSerializer_Q[9]), .B(IQSerializer_Q[13]), 
         .C(QCounter[2]), .Z(n2834)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam IQSerializer_Q_1__bdd_3_lut.init = 16'hacac;
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    CCU2C cnt1_169_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2288), 
          .COUT(n2289), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_9.INJECT1_1 = "NO";
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[7] 108[4])
    defparam LED_9.GSR = "DISABLED";
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    L6MUX21 i1499 (.D0(n2835), .D1(n2832), .SD(QCounter[1]), .Z(DEDFF_D0_N_339));
    LUT4 IQSerializer_Q_2__bdd_3_lut (.A(IQSerializer_Q[10]), .B(IQSerializer_Q[6]), 
         .C(QCounter[2]), .Z(n2804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam IQSerializer_Q_2__bdd_3_lut.init = 16'hcaca;
    PFUMX i1497 (.BLUT(n2834), .ALUT(n2833), .C0(QCounter[3]), .Z(n2835));
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    LUT4 n2687_bdd_4_lut_4_lut (.A(n2787), .B(n3_adj_373), .C(n6_adj_371), 
         .D(n2734), .Z(DEDFF_D0_N_334)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (D)) */ ;
    defparam n2687_bdd_4_lut_4_lut.init = 16'hf588;
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    CCU2C add_945_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2252), 
          .S0(cout_adj_372));
    defparam add_945_cout.INIT0 = 16'h0000;
    defparam add_945_cout.INIT1 = 16'h0000;
    defparam add_945_cout.INJECT1_0 = "NO";
    defparam add_945_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(ICounter[2]), .B(ICounter[1]), .Z(n2362)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    LUT4 IQSerializer_Q_2__bdd_2_lut (.A(IQSerializer_Q[2]), .B(QCounter[2]), 
         .Z(n2803)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam IQSerializer_Q_2__bdd_2_lut.init = 16'h2222;
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    CCU2C add_945_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2244), .COUT(n2245));
    defparam add_945_6.INIT0 = 16'haaa0;
    defparam add_945_6.INIT1 = 16'h555f;
    defparam add_945_6.INJECT1_0 = "NO";
    defparam add_945_6.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2287), 
          .COUT(n2288), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_7.INJECT1_1 = "NO";
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    FD1S3AX cnt1_169__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i0.GSR = "DISABLED";
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[9:61])
    FD1S3AX cnt1_169__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i25.GSR = "DISABLED";
    PFUMX i1494 (.BLUT(n2831), .ALUT(n2830), .C0(QCounter[3]), .Z(n2832));
    L6MUX21 i1479 (.D0(n2808), .D1(n2805), .SD(QCounter[1]), .Z(DEDFF_D1_N_350));
    PFUMX i1477 (.BLUT(n2807), .ALUT(n2806), .C0(QCounter[3]), .Z(n2808));
    CCU2C _add_1_add_4_23 (.A0(theta[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2276), .S0(theta_9__N_237[23]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_add_4_23.INIT1 = 16'h0000;
    defparam _add_1_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2286), 
          .COUT(n2287), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_169__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i24.GSR = "DISABLED";
    FD1S3AX cnt1_169__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i23.GSR = "DISABLED";
    FD1S3AX cnt1_169__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i22.GSR = "DISABLED";
    FD1S3AX cnt1_169__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i21.GSR = "DISABLED";
    FD1S3AX cnt1_169__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i20.GSR = "DISABLED";
    FD1S3AX cnt1_169__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i19.GSR = "DISABLED";
    FD1S3AX cnt1_169__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i18.GSR = "DISABLED";
    FD1S3AX cnt1_169__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i17.GSR = "DISABLED";
    FD1S3AX cnt1_169__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i16.GSR = "DISABLED";
    FD1S3AX cnt1_169__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i15.GSR = "DISABLED";
    FD1S3AX cnt1_169__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i14.GSR = "DISABLED";
    FD1S3AX cnt1_169__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i13.GSR = "DISABLED";
    FD1S3AX cnt1_169__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i12.GSR = "DISABLED";
    FD1S3AX cnt1_169__i11 (.D(n124), .CK(serial_clk_c), .Q(n15)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i11.GSR = "DISABLED";
    FD1S3AX cnt1_169__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i10.GSR = "DISABLED";
    FD1S3AX cnt1_169__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i9.GSR = "DISABLED";
    FD1S3AX cnt1_169__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i8.GSR = "DISABLED";
    FD1S3AX cnt1_169__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i7.GSR = "DISABLED";
    FD1S3AX cnt1_169__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i6.GSR = "DISABLED";
    FD1S3AX cnt1_169__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i5.GSR = "DISABLED";
    FD1S3AX cnt1_169__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i4.GSR = "DISABLED";
    FD1S3AX cnt1_169__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i3.GSR = "DISABLED";
    FD1S3AX cnt1_169__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i2.GSR = "DISABLED";
    FD1S3AX cnt1_169__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i1.GSR = "DISABLED";
    CCU2C add_945_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2243), .COUT(n2244));
    defparam add_945_4.INIT0 = 16'h555f;
    defparam add_945_4.INIT1 = 16'haaa0;
    defparam add_945_4.INJECT1_0 = "NO";
    defparam add_945_4.INJECT1_1 = "NO";
    CCU2C add_945_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2251), .COUT(n2252));
    defparam add_945_20.INIT0 = 16'h555f;
    defparam add_945_20.INIT1 = 16'h555f;
    defparam add_945_20.INJECT1_0 = "NO";
    defparam add_945_20.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2285), 
          .COUT(n2286), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_3.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2285), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_169_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_169_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_1.INJECT1_1 = "NO";
    CCU2C add_945_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2250), .COUT(n2251));
    defparam add_945_18.INIT0 = 16'h555f;
    defparam add_945_18.INIT1 = 16'h555f;
    defparam add_945_18.INJECT1_0 = "NO";
    defparam add_945_18.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_21 (.A0(theta[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2275), .COUT(n2276), .S0(theta_9__N_237[21]), .S1(theta_9__N_237[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_19 (.A0(theta[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2274), .COUT(n2275), .S0(theta_9__N_237[19]), .S1(theta_9__N_237[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_19.INIT0 = 16'h555f;
    defparam _add_1_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_17 (.A0(theta[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2273), .COUT(n2274), .S0(theta_9__N_237[17]), .S1(theta_9__N_237[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_add_4_17.INIT1 = 16'h555f;
    defparam _add_1_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_15 (.A0(theta[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2272), .COUT(n2273), .S0(theta_9__N_237[15]), .S1(theta_9__N_237[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_add_4_15.INJECT1_1 = "NO";
    CCU2C add_945_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2243));
    defparam add_945_2.INIT0 = 16'h000e;
    defparam add_945_2.INIT1 = 16'haaa0;
    defparam add_945_2.INJECT1_0 = "NO";
    defparam add_945_2.INJECT1_1 = "NO";
    CCU2C add_945_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2249), .COUT(n2250));
    defparam add_945_16.INIT0 = 16'h555f;
    defparam add_945_16.INIT1 = 16'h555f;
    defparam add_945_16.INJECT1_0 = "NO";
    defparam add_945_16.INJECT1_1 = "NO";
    PFUMX i1474 (.BLUT(n2804), .ALUT(n2803), .C0(QCounter[3]), .Z(n2805));
    CCU2C add_945_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2248), .COUT(n2249));
    defparam add_945_14.INIT0 = 16'h555f;
    defparam add_945_14.INIT1 = 16'h555f;
    defparam add_945_14.INJECT1_0 = "NO";
    defparam add_945_14.INJECT1_1 = "NO";
    QPSK_modulator qpskModule_1 (.enable_d(enable_d), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_84(clockDivider_clk_4M_enable_84), 
            .Q_bit(Q_bit), .clk_N_174(clk_N_174), .fskModule_symVal(fskModule_symVal), 
            .fskModule_symDone(fskModule_symDone), .I_bit(I_bit), .counter_0_countDone(counter_0_countDone), 
            .next_state_3__N_155(next_state_3__N_155), .n2789(n2789), .clockDivider_clk_4M_enable_91(clockDivider_clk_4M_enable_91), 
            .next_state_3__N_153(next_state_3__N_153), .next_state_3__N_152(next_state_3__N_152), 
            .n2658(n2658), .theta({theta}), .\theta_9__N_237[23] (theta_9__N_237[23]), 
            .\theta_9__N_237[22] (theta_9__N_237[22]), .\theta_9__N_237[21] (theta_9__N_237[21]), 
            .\theta_9__N_237[20] (theta_9__N_237[20]), .\theta_9__N_237[19] (theta_9__N_237[19]), 
            .\theta_9__N_237[18] (theta_9__N_237[18]), .\theta_9__N_237[17] (theta_9__N_237[17]), 
            .\theta_9__N_237[16] (theta_9__N_237[16]), .\theta_9__N_237[15] (theta_9__N_237[15]), 
            .\theta_9__N_237[14] (theta_9__N_237[14]), .\phase_acc[13] (phase_acc[13]), 
            .\theta_9__N_237[13] (theta_9__N_237[13]), .\phase_acc[12] (phase_acc[12]), 
            .\theta_9__N_237[12] (theta_9__N_237[12]), .\phase_acc[11] (phase_acc[11]), 
            .\theta_9__N_237[11] (theta_9__N_237[11]), .\phase_acc[10] (phase_acc[10]), 
            .\theta_9__N_237[10] (theta_9__N_237[10]), .\phase_acc[9] (phase_acc[9]), 
            .\theta_9__N_237[9] (theta_9__N_237[9]), .\phase_acc[8] (phase_acc[8]), 
            .\theta_9__N_237[8] (theta_9__N_237[8]), .\phase_acc[7] (phase_acc[7]), 
            .\theta_9__N_237[7] (theta_9__N_237[7]), .\phase_acc[6] (phase_acc[6]), 
            .\theta_9__N_237[6] (theta_9__N_237[6]), .\phase_acc[5] (phase_acc[5]), 
            .\theta_9__N_237[5] (theta_9__N_237[5]), .\phase_acc[4] (phase_acc[4]), 
            .\theta_9__N_237[4] (theta_9__N_237[4]), .\phase_acc[3] (phase_acc[3]), 
            .\theta_9__N_237[3] (theta_9__N_237[3]), .\phase_acc[2] (phase_acc[2]), 
            .\theta_9__N_237[2] (theta_9__N_237[2]), .VCC_net(VCC_net), 
            .GND_net(GND_net), .\Q[1] (Q[1]), .IQSerializer_Q({IQSerializer_Q}), 
            .\I[1] (I[1]), .IQSerializer_I({IQSerializer_I})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(145[16] 160[2])
    CCU2C _add_1_add_4_13 (.A0(phase_acc[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2271), .COUT(n2272), .S0(theta_9__N_237[13]), .S1(theta_9__N_237[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_add_4_13.INJECT1_1 = "NO";
    IQSerializer IQSerializer_1 (.IQSerializer_I({IQSerializer_I}), .\ICounter[2] (ICounter[2]), 
            .\ICounter[1] (ICounter[1]), .n370({Open_0, Open_1, next_state_3__N_320, 
            Open_2, next_state_3__N_322}), .\QCounter[3] (QCounter[3]), 
            .n2787(n2787), .clk_N_262(clk_N_262), .n1819(n1819), .\QCounter[2] (QCounter[2]), 
            .n6(n6_adj_371), .n2780(n2780), .n3(n3_adj_373), .DEDFF_D0_N_334(DEDFF_D0_N_334), 
            .\QCounter[1] (QCounter[1]), .DEDFF_D0_N_339(DEDFF_D0_N_339), 
            .n1820(n1820), .n2734(n2734), .n2362(n2362), .DEDFF_D1_N_350(DEDFF_D1_N_350), 
            .serial_iq_c(serial_iq_c), .serial_clk_c(serial_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(163[14] 171[2])
    clockDivider clockDivider_0 (.clk_N_174(clk_N_174), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .GND_net(GND_net), .VCC_net(VCC_net), .serial_clk_c(serial_clk_c), 
            .LED7_c(LED7_c), .clockDivider_clkLock(clockDivider_clkLock), 
            .n1817(n1817)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(123[14] 128[2])
    VLO i1 (.Z(GND_net));
    CCU2C add_944_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2337), .S1(cout));
    defparam add_944_27.INIT0 = 16'h5555;
    defparam add_944_27.INIT1 = 16'h0000;
    defparam add_944_27.INJECT1_0 = "NO";
    defparam add_944_27.INJECT1_1 = "NO";
    CCU2C add_944_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2336), .COUT(n2337));
    defparam add_944_25.INIT0 = 16'h5555;
    defparam add_944_25.INIT1 = 16'h5555;
    defparam add_944_25.INJECT1_0 = "NO";
    defparam add_944_25.INJECT1_1 = "NO";
    CCU2C add_944_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2335), .COUT(n2336));
    defparam add_944_23.INIT0 = 16'h5555;
    defparam add_944_23.INIT1 = 16'h5555;
    defparam add_944_23.INJECT1_0 = "NO";
    defparam add_944_23.INJECT1_1 = "NO";
    CCU2C add_944_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2334), .COUT(n2335));
    defparam add_944_21.INIT0 = 16'h5555;
    defparam add_944_21.INIT1 = 16'h5555;
    defparam add_944_21.INJECT1_0 = "NO";
    defparam add_944_21.INJECT1_1 = "NO";
    CCU2C add_944_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2333), .COUT(n2334));
    defparam add_944_19.INIT0 = 16'h5555;
    defparam add_944_19.INIT1 = 16'h5555;
    defparam add_944_19.INJECT1_0 = "NO";
    defparam add_944_19.INJECT1_1 = "NO";
    CCU2C add_944_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2332), .COUT(n2333));
    defparam add_944_17.INIT0 = 16'h5555;
    defparam add_944_17.INIT1 = 16'h5555;
    defparam add_944_17.INJECT1_0 = "NO";
    defparam add_944_17.INJECT1_1 = "NO";
    CCU2C add_944_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2331), .COUT(n2332));
    defparam add_944_15.INIT0 = 16'h5555;
    defparam add_944_15.INIT1 = 16'h5555;
    defparam add_944_15.INJECT1_0 = "NO";
    defparam add_944_15.INJECT1_1 = "NO";
    CCU2C add_944_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2330), .COUT(n2331));
    defparam add_944_13.INIT0 = 16'h5555;
    defparam add_944_13.INIT1 = 16'h5555;
    defparam add_944_13.INJECT1_0 = "NO";
    defparam add_944_13.INJECT1_1 = "NO";
    CCU2C add_944_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2329), .COUT(n2330));
    defparam add_944_11.INIT0 = 16'h5555;
    defparam add_944_11.INIT1 = 16'h5555;
    defparam add_944_11.INJECT1_0 = "NO";
    defparam add_944_11.INJECT1_1 = "NO";
    CCU2C add_944_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2328), .COUT(n2329));
    defparam add_944_9.INIT0 = 16'h5555;
    defparam add_944_9.INIT1 = 16'h5555;
    defparam add_944_9.INJECT1_0 = "NO";
    defparam add_944_9.INJECT1_1 = "NO";
    CCU2C add_944_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2327), .COUT(n2328));
    defparam add_944_7.INIT0 = 16'haaa5;
    defparam add_944_7.INIT1 = 16'h5555;
    defparam add_944_7.INJECT1_0 = "NO";
    defparam add_944_7.INJECT1_1 = "NO";
    CCU2C add_944_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2326), .COUT(n2327));
    defparam add_944_5.INIT0 = 16'h5555;
    defparam add_944_5.INIT1 = 16'haaa5;
    defparam add_944_5.INJECT1_0 = "NO";
    defparam add_944_5.INJECT1_1 = "NO";
    CCU2C add_944_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2325), .COUT(n2326));
    defparam add_944_3.INIT0 = 16'haaa5;
    defparam add_944_3.INIT1 = 16'h5555;
    defparam add_944_3.INJECT1_0 = "NO";
    defparam add_944_3.INJECT1_1 = "NO";
    CCU2C add_944_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2325));
    defparam add_944_1.INIT0 = 16'h0000;
    defparam add_944_1.INIT1 = 16'haaaf;
    defparam add_944_1.INJECT1_0 = "NO";
    defparam add_944_1.INJECT1_1 = "NO";
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_262(clk_N_262)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[12:100])
    CCU2C cnt1_169_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2297), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_169_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2296), 
          .COUT(n2297), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_25.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, clockDivider_clk_4M, 
            cout, clockDivider_clkLock, cout_adj_1, counter_0_countDone, 
            n1817) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    input clockDivider_clk_4M;
    input cout;
    input clockDivider_clkLock;
    input cout_adj_1;
    output counter_0_countDone;
    input n1817;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n2256;
    wire [25:0]n109;
    
    wire n2257, n2260, n2261, n2254, n2255, n2258, n2253, n2259, 
        n2265, n2264, n1818, n2263, n2262, countDone_N_133;
    
    CCU2C waitcount_173_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2256), .COUT(n2257), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2260), .COUT(n2261), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2254), .COUT(n2255), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2257), .COUT(n2258), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2253), .COUT(n2254), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_3.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2253), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_173_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_173_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2259), .COUT(n2260), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2265), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_173_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_27.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2258), .COUT(n2259), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_13.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2264), .COUT(n2265), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_25.INJECT1_1 = "NO";
    FD1S3IX waitcount_173__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i0.GSR = "DISABLED";
    FD1S3IX waitcount_173__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i25.GSR = "DISABLED";
    FD1S3IX waitcount_173__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i24.GSR = "DISABLED";
    FD1S3IX waitcount_173__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i23.GSR = "DISABLED";
    FD1S3IX waitcount_173__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i22.GSR = "DISABLED";
    FD1S3IX waitcount_173__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i21.GSR = "DISABLED";
    FD1S3IX waitcount_173__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i20.GSR = "DISABLED";
    FD1S3IX waitcount_173__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i19.GSR = "DISABLED";
    FD1S3IX waitcount_173__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i18.GSR = "DISABLED";
    FD1S3IX waitcount_173__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i17.GSR = "DISABLED";
    FD1S3IX waitcount_173__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i16.GSR = "DISABLED";
    FD1S3IX waitcount_173__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i15.GSR = "DISABLED";
    FD1S3IX waitcount_173__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i14.GSR = "DISABLED";
    FD1S3IX waitcount_173__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i13.GSR = "DISABLED";
    FD1S3IX waitcount_173__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i12.GSR = "DISABLED";
    FD1S3IX waitcount_173__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i11.GSR = "DISABLED";
    FD1S3IX waitcount_173__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1818), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i10.GSR = "DISABLED";
    FD1S3IX waitcount_173__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i9.GSR = "DISABLED";
    FD1S3IX waitcount_173__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i8.GSR = "DISABLED";
    FD1S3IX waitcount_173__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i7.GSR = "DISABLED";
    FD1S3IX waitcount_173__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i6.GSR = "DISABLED";
    FD1S3IX waitcount_173__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i5.GSR = "DISABLED";
    FD1S3IX waitcount_173__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i4.GSR = "DISABLED";
    FD1S3IX waitcount_173__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i3.GSR = "DISABLED";
    FD1S3IX waitcount_173__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i2.GSR = "DISABLED";
    FD1S3IX waitcount_173__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1818), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i1.GSR = "DISABLED";
    CCU2C waitcount_173_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2263), .COUT(n2264), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_23.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2262), .COUT(n2263), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_21.INJECT1_1 = "NO";
    LUT4 i1359_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1818)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1359_2_lut.init = 16'hbbbb;
    CCU2C waitcount_173_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2261), .COUT(n2262), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_19.INJECT1_1 = "NO";
    LUT4 i130_1_lut (.A(cout_adj_1), .Z(countDone_N_133)) /* synthesis lut_function=(!(A)) */ ;
    defparam i130_1_lut.init = 16'h5555;
    CCU2C waitcount_173_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2255), .COUT(n2256), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_7.INJECT1_1 = "NO";
    FD1S3IX countDone_13 (.D(countDone_N_133), .CK(clockDivider_clk_4M), 
            .CD(n1817), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=135 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module packetGenerator
//

module packetGenerator (next_state_3__N_155, clockDivider_clk_4M, n2789, 
            VCC_net, counter_0_countDone, next_state_3__N_320, enable_d, 
            n1820, symCounter, next_state_3__N_153, fskModule_symVal, 
            clk_N_174, Q_bit, \Q[1] , clockDivider_clk_4M_enable_91, 
            data, n2658, fskModule_symDone, clockDivider_clk_4M_enable_84, 
            next_state_3__N_152, next_state_3__N_322, n1819, n2780, 
            I_bit, \I[1] ) /* synthesis syn_module_defined=1 */ ;
    output next_state_3__N_155;
    input clockDivider_clk_4M;
    input n2789;
    input VCC_net;
    input counter_0_countDone;
    input next_state_3__N_320;
    input enable_d;
    output n1820;
    output [7:0]symCounter;
    output next_state_3__N_153;
    output fskModule_symVal;
    input clk_N_174;
    input Q_bit;
    output \Q[1] ;
    input clockDivider_clk_4M_enable_91;
    input data;
    input n2658;
    input fskModule_symDone;
    output clockDivider_clk_4M_enable_84;
    output next_state_3__N_152;
    input next_state_3__N_322;
    output n1819;
    output n2780;
    input I_bit;
    output \I[1] ;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire next_state_3__N_154, n2786;
    wire [7:0]n69;
    
    wire n2550, n2461, n2788, next_symVal_N_171, n2568, next_symVal, 
        n2793, n15, n2540, n2492, n1725, n2558, n2566;
    
    FD1P3IX current_state_FSM_i1 (.D(VCC_net), .SP(next_state_3__N_154), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 i1369_2_lut_3_lut_4_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(next_state_3__N_320), .D(enable_d), .Z(n1820)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1369_2_lut_3_lut_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut_rep_14 (.A(symCounter[0]), .B(symCounter[1]), .Z(n2786)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_14.init = 16'h8888;
    LUT4 i888_3_lut_4_lut (.A(symCounter[0]), .B(symCounter[1]), .C(next_state_3__N_153), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i888_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2550)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3IX current_state_FSM_i2 (.D(n2461), .CK(clockDivider_clk_4M), .CD(n2789), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    LUT4 i887_4_lut (.A(symCounter[3]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .D(n2788), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i887_4_lut.init = 16'h4888;
    FD1S3IX symVal_43 (.D(next_symVal_N_171), .CK(clk_N_174), .CD(n2789), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_16 (.A(symCounter[2]), .B(symCounter[1]), .Z(n2788)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_16.init = 16'h8888;
    LUT4 i889_3_lut (.A(symCounter[1]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i889_3_lut.init = 16'h4848;
    LUT4 i1350_2_lut_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(Q_bit), .Z(\Q[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1350_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2568)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i1371_4_lut (.A(next_symVal), .B(data), .C(n2658), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1371_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut (.A(n2793), .B(fskModule_symDone), .C(n15), .D(n2540), 
         .Z(n2461)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_21 (.A(symCounter[3]), .B(symCounter[2]), .Z(n2793)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_21.init = 16'h8888;
    LUT4 i856_2_lut_rep_13 (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .Z(clockDivider_clk_4M_enable_84)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i856_2_lut_rep_13.init = 16'h4444;
    LUT4 i1_3_lut (.A(next_state_3__N_153), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n2540)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_15 (.A(symCounter[1]), .B(symCounter[6]), .C(symCounter[4]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h8000;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_171)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    LUT4 i855_2_lut (.A(symCounter[0]), .B(next_state_3__N_153), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i855_2_lut.init = 16'h4444;
    LUT4 i598_4_lut (.A(next_state_3__N_153), .B(next_state_3__N_152), .C(n2492), 
         .D(fskModule_symDone), .Z(n1725)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i598_4_lut.init = 16'hceee;
    LUT4 i1_3_lut_4_lut (.A(symCounter[3]), .B(symCounter[2]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2558)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_16 (.A(n2793), .B(n15), .C(symCounter[0]), .D(symCounter[5]), 
         .Z(n2492)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h8000;
    LUT4 i883_4_lut (.A(symCounter[7]), .B(next_state_3__N_153), .C(n2568), 
         .D(n2566), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i883_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_adj_17 (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2566)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut_adj_17.init = 16'h8080;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_91), 
            .CD(n2789), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 i884_4_lut (.A(symCounter[6]), .B(next_state_3__N_153), .C(n2558), 
         .D(n2786), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i884_4_lut.init = 16'h4888;
    LUT4 i885_4_lut (.A(symCounter[5]), .B(next_state_3__N_153), .C(n2550), 
         .D(n2788), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i885_4_lut.init = 16'h4888;
    LUT4 i886_4_lut (.A(symCounter[4]), .B(next_state_3__N_153), .C(n2793), 
         .D(n2786), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i886_4_lut.init = 16'h4888;
    FD1S3AX current_state_FSM_i4 (.D(n2789), .CK(clockDivider_clk_4M), .Q(next_state_3__N_152));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1367_2_lut_3_lut_4_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(next_state_3__N_322), .D(enable_d), .Z(n1819)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1367_2_lut_3_lut_4_lut.init = 16'hffbf;
    LUT4 i1354_2_lut_rep_8_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(enable_d), .Z(n2780)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1354_2_lut_rep_8_3_lut.init = 16'hfbfb;
    LUT4 i1343_2_lut_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(I_bit), .Z(\I[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1343_2_lut_3_lut.init = 16'hbfbf;
    FD1S3IX current_state_FSM_i3 (.D(n1725), .CK(clockDivider_clk_4M), .CD(n2789), 
            .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    
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
// Verilog Description of module QPSK_modulator
//

module QPSK_modulator (enable_d, clockDivider_clk_4M, clockDivider_clk_4M_enable_84, 
            Q_bit, clk_N_174, fskModule_symVal, fskModule_symDone, I_bit, 
            counter_0_countDone, next_state_3__N_155, n2789, clockDivider_clk_4M_enable_91, 
            next_state_3__N_153, next_state_3__N_152, n2658, theta, 
            \theta_9__N_237[23] , \theta_9__N_237[22] , \theta_9__N_237[21] , 
            \theta_9__N_237[20] , \theta_9__N_237[19] , \theta_9__N_237[18] , 
            \theta_9__N_237[17] , \theta_9__N_237[16] , \theta_9__N_237[15] , 
            \theta_9__N_237[14] , \phase_acc[13] , \theta_9__N_237[13] , 
            \phase_acc[12] , \theta_9__N_237[12] , \phase_acc[11] , \theta_9__N_237[11] , 
            \phase_acc[10] , \theta_9__N_237[10] , \phase_acc[9] , \theta_9__N_237[9] , 
            \phase_acc[8] , \theta_9__N_237[8] , \phase_acc[7] , \theta_9__N_237[7] , 
            \phase_acc[6] , \theta_9__N_237[6] , \phase_acc[5] , \theta_9__N_237[5] , 
            \phase_acc[4] , \theta_9__N_237[4] , \phase_acc[3] , \theta_9__N_237[3] , 
            \phase_acc[2] , \theta_9__N_237[2] , VCC_net, GND_net, \Q[1] , 
            IQSerializer_Q, \I[1] , IQSerializer_I) /* synthesis syn_module_defined=1 */ ;
    output enable_d;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_84;
    output Q_bit;
    input clk_N_174;
    input fskModule_symVal;
    output fskModule_symDone;
    output I_bit;
    input counter_0_countDone;
    input next_state_3__N_155;
    output n2789;
    output clockDivider_clk_4M_enable_91;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n2658;
    output [9:0]theta;
    input \theta_9__N_237[23] ;
    input \theta_9__N_237[22] ;
    input \theta_9__N_237[21] ;
    input \theta_9__N_237[20] ;
    input \theta_9__N_237[19] ;
    input \theta_9__N_237[18] ;
    input \theta_9__N_237[17] ;
    input \theta_9__N_237[16] ;
    input \theta_9__N_237[15] ;
    input \theta_9__N_237[14] ;
    output \phase_acc[13] ;
    input \theta_9__N_237[13] ;
    output \phase_acc[12] ;
    input \theta_9__N_237[12] ;
    output \phase_acc[11] ;
    input \theta_9__N_237[11] ;
    output \phase_acc[10] ;
    input \theta_9__N_237[10] ;
    output \phase_acc[9] ;
    input \theta_9__N_237[9] ;
    output \phase_acc[8] ;
    input \theta_9__N_237[8] ;
    output \phase_acc[7] ;
    input \theta_9__N_237[7] ;
    output \phase_acc[6] ;
    input \theta_9__N_237[6] ;
    output \phase_acc[5] ;
    input \theta_9__N_237[5] ;
    output \phase_acc[4] ;
    input \theta_9__N_237[4] ;
    output \phase_acc[3] ;
    input \theta_9__N_237[3] ;
    output \phase_acc[2] ;
    input \theta_9__N_237[2] ;
    input VCC_net;
    input GND_net;
    input \Q[1] ;
    output [13:0]IQSerializer_Q;
    input \I[1] ;
    output [13:0]IQSerializer_I;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire clk_N_174_enable_4, I_1__N_183, switch;
    wire [11:0]carry_sin_s;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(16[31:42])
    wire [11:0]carry_cos_s;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(17[31:42])
    
    wire rega_a_0;
    
    FD1S3AX enable_d_11 (.D(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(enable_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=160 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(27[20:39])
    defparam enable_d_11.GSR = "ENABLED";
    iq_div iq_div_inst (.Q_bit(Q_bit), .clk_N_174(clk_N_174), .clk_N_174_enable_4(clk_N_174_enable_4), 
           .I_1__N_183(I_1__N_183), .fskModule_symVal(fskModule_symVal), 
           .fskModule_symDone(fskModule_symDone), .I_bit(I_bit), .switch(switch), 
           .counter_0_countDone(counter_0_countDone), .next_state_3__N_155(next_state_3__N_155)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(39[7] 48[6])
    dds_lattice_sincos dds0 (.counter_0_countDone(counter_0_countDone), .n2789(n2789), 
            .switch(switch), .next_state_3__N_155(next_state_3__N_155), 
            .clk_N_174_enable_4(clk_N_174_enable_4), .fskModule_symDone(fskModule_symDone), 
            .clockDivider_clk_4M_enable_91(clockDivider_clk_4M_enable_91), 
            .next_state_3__N_153(next_state_3__N_153), .next_state_3__N_152(next_state_3__N_152), 
            .n2658(n2658), .I_1__N_183(I_1__N_183), .theta({theta}), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .\theta_9__N_237[23] (\theta_9__N_237[23] ), .\theta_9__N_237[22] (\theta_9__N_237[22] ), 
            .\theta_9__N_237[21] (\theta_9__N_237[21] ), .\theta_9__N_237[20] (\theta_9__N_237[20] ), 
            .\theta_9__N_237[19] (\theta_9__N_237[19] ), .\theta_9__N_237[18] (\theta_9__N_237[18] ), 
            .\theta_9__N_237[17] (\theta_9__N_237[17] ), .\theta_9__N_237[16] (\theta_9__N_237[16] ), 
            .\theta_9__N_237[15] (\theta_9__N_237[15] ), .\theta_9__N_237[14] (\theta_9__N_237[14] ), 
            .\phase_acc[13] (\phase_acc[13] ), .\theta_9__N_237[13] (\theta_9__N_237[13] ), 
            .\phase_acc[12] (\phase_acc[12] ), .\theta_9__N_237[12] (\theta_9__N_237[12] ), 
            .\phase_acc[11] (\phase_acc[11] ), .\theta_9__N_237[11] (\theta_9__N_237[11] ), 
            .\phase_acc[10] (\phase_acc[10] ), .\theta_9__N_237[10] (\theta_9__N_237[10] ), 
            .\phase_acc[9] (\phase_acc[9] ), .\theta_9__N_237[9] (\theta_9__N_237[9] ), 
            .\phase_acc[8] (\phase_acc[8] ), .\theta_9__N_237[8] (\theta_9__N_237[8] ), 
            .\phase_acc[7] (\phase_acc[7] ), .\theta_9__N_237[7] (\theta_9__N_237[7] ), 
            .\phase_acc[6] (\phase_acc[6] ), .\theta_9__N_237[6] (\theta_9__N_237[6] ), 
            .\phase_acc[5] (\phase_acc[5] ), .\theta_9__N_237[5] (\theta_9__N_237[5] ), 
            .\phase_acc[4] (\phase_acc[4] ), .\theta_9__N_237[4] (\theta_9__N_237[4] ), 
            .\phase_acc[3] (\phase_acc[3] ), .\theta_9__N_237[3] (\theta_9__N_237[3] ), 
            .\phase_acc[2] (\phase_acc[2] ), .\theta_9__N_237[2] (\theta_9__N_237[2] ), 
            .VCC_net(VCC_net), .carry_sin_s({carry_sin_s}), .GND_net(GND_net), 
            .carry_cos_s({carry_cos_s})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(90[7] 97[6])
    multiplier_12_2_m Q_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_84(clockDivider_clk_4M_enable_84), 
            .VCC_net(VCC_net), .\Q[1] (\Q[1] ), .carry_sin_s({carry_sin_s}), 
            .IQSerializer_Q({IQSerializer_Q}), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    multiplier_12_2_m_U0 I_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_84(clockDivider_clk_4M_enable_84), 
            .\I[1] (\I[1] ), .carry_cos_s({carry_cos_s}), .IQSerializer_I({IQSerializer_I}), 
            .VCC_net(VCC_net), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    
endmodule
//
// Verilog Description of module iq_div
//

module iq_div (Q_bit, clk_N_174, clk_N_174_enable_4, I_1__N_183, fskModule_symVal, 
            fskModule_symDone, I_bit, switch, counter_0_countDone, next_state_3__N_155) /* synthesis syn_module_defined=1 */ ;
    output Q_bit;
    input clk_N_174;
    input clk_N_174_enable_4;
    input I_1__N_183;
    input fskModule_symVal;
    output fskModule_symDone;
    output I_bit;
    output switch;
    input counter_0_countDone;
    input next_state_3__N_155;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire [7:0]cnt_sample;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(21[17:27])
    
    wire n2783, Q_bit_temp, n11, n12, n1063, n2781, clk_N_174_enable_5, 
        symDone_N_220, I_bit_temp, I_bit_temp2, iq_switch_N_217, n12_adj_369;
    wire [7:0]cnt_sample_7__N_200;
    
    wire n8, n10, n2791, n2790;
    
    LUT4 i1_2_lut_rep_11 (.A(cnt_sample[3]), .B(cnt_sample[7]), .Z(n2783)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_rep_11.init = 16'heeee;
    FD1P3IX Q_bit_59 (.D(Q_bit_temp), .SP(clk_N_174_enable_4), .CD(I_1__N_183), 
            .CK(clk_N_174), .Q(Q_bit)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_59.GSR = "ENABLED";
    LUT4 i4_3_lut (.A(cnt_sample[0]), .B(cnt_sample[6]), .C(cnt_sample[5]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_rep_9_4_lut (.A(cnt_sample[3]), .B(cnt_sample[7]), .C(n12), 
         .D(n1063), .Z(n2781)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_3_lut_rep_9_4_lut.init = 16'hfeff;
    FD1P3IX Q_bit_temp_61 (.D(fskModule_symVal), .SP(clk_N_174_enable_5), 
            .CD(I_1__N_183), .CK(clk_N_174), .Q(Q_bit_temp)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_temp_61.GSR = "ENABLED";
    FD1S3IX symDone_56 (.D(symDone_N_220), .CK(clk_N_174), .CD(I_1__N_183), 
            .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam symDone_56.GSR = "ENABLED";
    FD1P3IX I_bit_58 (.D(I_bit_temp), .SP(clk_N_174_enable_4), .CD(I_1__N_183), 
            .CK(clk_N_174), .Q(I_bit)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_58.GSR = "ENABLED";
    FD1P3IX I_bit_temp2_62 (.D(fskModule_symVal), .SP(clk_N_174_enable_4), 
            .CD(I_1__N_183), .CK(clk_N_174), .Q(I_bit_temp2)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp2_62.GSR = "ENABLED";
    FD1S3JX iq_switch_57 (.D(iq_switch_N_217), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(switch)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[18] 65[12])
    defparam iq_switch_57.GSR = "ENABLED";
    LUT4 i866_4_lut (.A(cnt_sample[7]), .B(n2781), .C(n11), .D(n12_adj_369), 
         .Z(cnt_sample_7__N_200[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i866_4_lut.init = 16'h4888;
    FD1S3JX cnt_sample_i0 (.D(cnt_sample_7__N_200[0]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i0.GSR = "ENABLED";
    LUT4 i3_2_lut_3_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_3_lut.init = 16'h8080;
    LUT4 i867_4_lut (.A(cnt_sample[6]), .B(n2781), .C(n1063), .D(n10), 
         .Z(cnt_sample_7__N_200[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i867_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_4_lut (.A(n1063), .B(n12), .C(n2783), .D(switch), 
         .Z(iq_switch_N_217)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_4_lut.init = 16'hfd02;
    LUT4 i5_2_lut_3_lut_4_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[1]), 
         .D(cnt_sample[2]), .Z(n12_adj_369)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3IX I_bit_temp_60 (.D(I_bit_temp2), .SP(clk_N_174_enable_5), .CD(I_1__N_183), 
            .CK(clk_N_174), .Q(I_bit_temp)) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp_60.GSR = "ENABLED";
    LUT4 i871_3_lut_4_lut (.A(n1063), .B(n12), .C(n2783), .D(cnt_sample[2]), 
         .Z(cnt_sample_7__N_200[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i871_3_lut_4_lut.init = 16'h55a8;
    LUT4 i1365_4_lut (.A(n12), .B(cnt_sample[1]), .C(n2783), .D(cnt_sample[0]), 
         .Z(symDone_N_220)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1365_4_lut.init = 16'h0004;
    LUT4 i868_4_lut (.A(cnt_sample[5]), .B(n2781), .C(n2791), .D(n8), 
         .Z(cnt_sample_7__N_200[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i868_4_lut.init = 16'h4888;
    LUT4 i869_4_lut (.A(cnt_sample[4]), .B(n2781), .C(n2790), .D(n1063), 
         .Z(cnt_sample_7__N_200[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i869_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_rep_18 (.A(cnt_sample[3]), .B(cnt_sample[2]), .Z(n2790)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i4_3_lut_4_lut (.A(cnt_sample[3]), .B(cnt_sample[2]), .C(cnt_sample[4]), 
         .D(cnt_sample[5]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_19 (.A(cnt_sample[2]), .B(cnt_sample[1]), .Z(n2791)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_19.init = 16'h8888;
    LUT4 i455_2_lut (.A(cnt_sample[1]), .B(cnt_sample[0]), .Z(n1063)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i455_2_lut.init = 16'h8888;
    LUT4 i870_4_lut (.A(cnt_sample[3]), .B(n2781), .C(cnt_sample[0]), 
         .D(n2791), .Z(cnt_sample_7__N_200[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i870_4_lut.init = 16'h4888;
    LUT4 i514_1_lut (.A(cnt_sample[0]), .Z(cnt_sample_7__N_200[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[21:54])
    defparam i514_1_lut.init = 16'h5555;
    LUT4 i872_3_lut (.A(cnt_sample[1]), .B(n2781), .C(cnt_sample[0]), 
         .Z(cnt_sample_7__N_200[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i872_3_lut.init = 16'h4848;
    LUT4 i1_4_lut (.A(cnt_sample[2]), .B(cnt_sample[5]), .C(cnt_sample[4]), 
         .D(cnt_sample[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_4_lut.init = 16'hfffe;
    FD1S3JX cnt_sample_i7 (.D(cnt_sample_7__N_200[7]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i7.GSR = "ENABLED";
    FD1S3JX cnt_sample_i6 (.D(cnt_sample_7__N_200[6]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i6.GSR = "ENABLED";
    FD1S3JX cnt_sample_i5 (.D(cnt_sample_7__N_200[5]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i5.GSR = "ENABLED";
    FD1S3JX cnt_sample_i4 (.D(cnt_sample_7__N_200[4]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i4.GSR = "ENABLED";
    FD1S3JX cnt_sample_i3 (.D(cnt_sample_7__N_200[3]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i3.GSR = "ENABLED";
    FD1S3JX cnt_sample_i2 (.D(cnt_sample_7__N_200[2]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i2.GSR = "ENABLED";
    FD1S3JX cnt_sample_i1 (.D(cnt_sample_7__N_200[1]), .CK(clk_N_174), .PD(I_1__N_183), 
            .Q(cnt_sample[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i1.GSR = "ENABLED";
    LUT4 i1340_3_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .C(switch), .Z(clk_N_174_enable_5)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1340_3_lut.init = 16'hdfdf;
    
endmodule
//
// Verilog Description of module dds_lattice_sincos
//

module dds_lattice_sincos (counter_0_countDone, n2789, switch, next_state_3__N_155, 
            clk_N_174_enable_4, fskModule_symDone, clockDivider_clk_4M_enable_91, 
            next_state_3__N_153, next_state_3__N_152, n2658, I_1__N_183, 
            theta, clockDivider_clk_4M, \theta_9__N_237[23] , \theta_9__N_237[22] , 
            \theta_9__N_237[21] , \theta_9__N_237[20] , \theta_9__N_237[19] , 
            \theta_9__N_237[18] , \theta_9__N_237[17] , \theta_9__N_237[16] , 
            \theta_9__N_237[15] , \theta_9__N_237[14] , \phase_acc[13] , 
            \theta_9__N_237[13] , \phase_acc[12] , \theta_9__N_237[12] , 
            \phase_acc[11] , \theta_9__N_237[11] , \phase_acc[10] , \theta_9__N_237[10] , 
            \phase_acc[9] , \theta_9__N_237[9] , \phase_acc[8] , \theta_9__N_237[8] , 
            \phase_acc[7] , \theta_9__N_237[7] , \phase_acc[6] , \theta_9__N_237[6] , 
            \phase_acc[5] , \theta_9__N_237[5] , \phase_acc[4] , \theta_9__N_237[4] , 
            \phase_acc[3] , \theta_9__N_237[3] , \phase_acc[2] , \theta_9__N_237[2] , 
            VCC_net, carry_sin_s, GND_net, carry_cos_s) /* synthesis syn_module_defined=1 */ ;
    input counter_0_countDone;
    output n2789;
    input switch;
    input next_state_3__N_155;
    output clk_N_174_enable_4;
    input fskModule_symDone;
    output clockDivider_clk_4M_enable_91;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n2658;
    output I_1__N_183;
    output [9:0]theta;
    input clockDivider_clk_4M;
    input \theta_9__N_237[23] ;
    input \theta_9__N_237[22] ;
    input \theta_9__N_237[21] ;
    input \theta_9__N_237[20] ;
    input \theta_9__N_237[19] ;
    input \theta_9__N_237[18] ;
    input \theta_9__N_237[17] ;
    input \theta_9__N_237[16] ;
    input \theta_9__N_237[15] ;
    input \theta_9__N_237[14] ;
    output \phase_acc[13] ;
    input \theta_9__N_237[13] ;
    output \phase_acc[12] ;
    input \theta_9__N_237[12] ;
    output \phase_acc[11] ;
    input \theta_9__N_237[11] ;
    output \phase_acc[10] ;
    input \theta_9__N_237[10] ;
    output \phase_acc[9] ;
    input \theta_9__N_237[9] ;
    output \phase_acc[8] ;
    input \theta_9__N_237[8] ;
    output \phase_acc[7] ;
    input \theta_9__N_237[7] ;
    output \phase_acc[6] ;
    input \theta_9__N_237[6] ;
    output \phase_acc[5] ;
    input \theta_9__N_237[5] ;
    output \phase_acc[4] ;
    input \theta_9__N_237[4] ;
    output \phase_acc[3] ;
    input \theta_9__N_237[3] ;
    output \phase_acc[2] ;
    input \theta_9__N_237[2] ;
    input VCC_net;
    output [11:0]carry_sin_s;
    input GND_net;
    output [11:0]carry_cos_s;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    LUT4 rst_I_0_1_lut_rep_17 (.A(counter_0_countDone), .Z(n2789)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_17.init = 16'h5555;
    LUT4 i1_3_lut_3_lut (.A(counter_0_countDone), .B(switch), .C(next_state_3__N_155), 
         .Z(clk_N_174_enable_4)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i185_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_91)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i185_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1373_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .C(next_state_3__N_152), .Z(n2658)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1373_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .Z(I_1__N_183)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    FD1S3AX phase_acc_i23 (.D(\theta_9__N_237[23] ), .CK(clockDivider_clk_4M), 
            .Q(theta[9])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i23.GSR = "ENABLED";
    FD1S3AX phase_acc_i22 (.D(\theta_9__N_237[22] ), .CK(clockDivider_clk_4M), 
            .Q(theta[8])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i22.GSR = "ENABLED";
    FD1S3AX phase_acc_i21 (.D(\theta_9__N_237[21] ), .CK(clockDivider_clk_4M), 
            .Q(theta[7])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i21.GSR = "ENABLED";
    FD1S3AX phase_acc_i20 (.D(\theta_9__N_237[20] ), .CK(clockDivider_clk_4M), 
            .Q(theta[6])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i20.GSR = "ENABLED";
    FD1S3AX phase_acc_i19 (.D(\theta_9__N_237[19] ), .CK(clockDivider_clk_4M), 
            .Q(theta[5])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i19.GSR = "ENABLED";
    FD1S3AX phase_acc_i18 (.D(\theta_9__N_237[18] ), .CK(clockDivider_clk_4M), 
            .Q(theta[4])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i18.GSR = "ENABLED";
    FD1S3AX phase_acc_i17 (.D(\theta_9__N_237[17] ), .CK(clockDivider_clk_4M), 
            .Q(theta[3])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i17.GSR = "ENABLED";
    FD1S3AX phase_acc_i16 (.D(\theta_9__N_237[16] ), .CK(clockDivider_clk_4M), 
            .Q(theta[2])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i16.GSR = "ENABLED";
    FD1S3AX phase_acc_i15 (.D(\theta_9__N_237[15] ), .CK(clockDivider_clk_4M), 
            .Q(theta[1])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i15.GSR = "ENABLED";
    FD1S3AX phase_acc_i14 (.D(\theta_9__N_237[14] ), .CK(clockDivider_clk_4M), 
            .Q(theta[0])) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i14.GSR = "ENABLED";
    FD1S3AX phase_acc_i13 (.D(\theta_9__N_237[13] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[13] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i13.GSR = "ENABLED";
    FD1S3AX phase_acc_i12 (.D(\theta_9__N_237[12] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[12] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i12.GSR = "ENABLED";
    FD1S3AX phase_acc_i11 (.D(\theta_9__N_237[11] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[11] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i11.GSR = "ENABLED";
    FD1S3AX phase_acc_i10 (.D(\theta_9__N_237[10] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[10] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i10.GSR = "ENABLED";
    FD1S3AX phase_acc_i9 (.D(\theta_9__N_237[9] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[9] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i9.GSR = "ENABLED";
    FD1S3AX phase_acc_i8 (.D(\theta_9__N_237[8] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[8] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i8.GSR = "ENABLED";
    FD1S3AX phase_acc_i7 (.D(\theta_9__N_237[7] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[7] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i7.GSR = "ENABLED";
    FD1S3AX phase_acc_i6 (.D(\theta_9__N_237[6] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[6] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i6.GSR = "ENABLED";
    FD1S3AX phase_acc_i5 (.D(\theta_9__N_237[5] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[5] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i5.GSR = "ENABLED";
    FD1S3AX phase_acc_i4 (.D(\theta_9__N_237[4] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[4] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i4.GSR = "ENABLED";
    FD1S3AX phase_acc_i3 (.D(\theta_9__N_237[3] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[3] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i3.GSR = "ENABLED";
    FD1S3AX phase_acc_i2 (.D(\theta_9__N_237[2] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[2] )) /* synthesis LSE_LINE_FILE_ID=37, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i2.GSR = "ENABLED";
    SinCos_Module __ (.clockDivider_clk_4M(clockDivider_clk_4M), .VCC_net(VCC_net), 
            .theta({theta}), .carry_sin_s({carry_sin_s}), .GND_net(GND_net), 
            .carry_cos_s({carry_cos_s})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    
endmodule
//
// Verilog Description of module SinCos_Module
//

module SinCos_Module (clockDivider_clk_4M, VCC_net, theta, carry_sin_s, 
            GND_net, carry_cos_s) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clockDivider_clk_4M;
    input VCC_net;
    input [9:0]theta;
    output [11:0]carry_sin_s;
    input GND_net;
    output [11:0]carry_cos_s;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire rom_addr0_r_5, rom_addr0_r_5_inv, rom_addr0_r_1, rom_addr0_r_2, 
        rom_addr0_r_3, rom_addr0_r_4, rom_addr0_r_6, rom_addr0_r_7, 
        mx_ctrl_r, mx_ctrl_r_1, rom_dout_10, rom_dout_10_ffin, rom_addr0_r, 
        rom_addr0_r_n, rom_addr0_r_8, rom_dout_9, rom_dout_9_ffin, rom_dout_8, 
        rom_dout_8_ffin, rom_dout_7, rom_dout_7_ffin, rom_dout_6, rom_dout_6_ffin, 
        rom_dout_5, rom_dout_5_ffin, rom_dout_4, rom_dout_4_ffin, rom_dout_3, 
        rom_dout_3_ffin, rom_dout_2, rom_dout_2_ffin, rom_dout_1, rom_dout_1_ffin, 
        rom_dout, rom_dout_ffin, rom_dout_23, rom_dout_23_ffin, rom_dout_22, 
        rom_dout_22_ffin, rom_dout_21, rom_dout_21_ffin, rom_dout_20, 
        rom_dout_20_ffin, rom_dout_19, rom_dout_19_ffin, rom_dout_18, 
        rom_dout_18_ffin, rom_dout_17, rom_dout_17_ffin, rom_dout_16, 
        rom_dout_16_ffin, rom_dout_15, rom_dout_15_ffin, rom_dout_14, 
        rom_dout_14_ffin, rom_dout_13, rom_dout_13_ffin, rom_dout_12, 
        rom_dout_12_ffin, cosromoutsel, cosromoutsel_i, sinromoutsel, 
        sinout_pre_1, rom_dout_s, rom_dout_s_n, out_sel, sinout_pre, 
        sinout_pre_2, sinout_pre_3, sinout_pre_4, sinout_pre_5, sinout_pre_6, 
        sinout_pre_7, sinout_pre_8, sinout_pre_9, sinout_pre_10, sinout_pre_11, 
        cosout_pre, cosout_pre_1, cosout_pre_2, cosout_pre_3, cosout_pre_4, 
        cosout_pre_5, cosout_pre_6, cosout_pre_7, cosout_pre_8, cosout_pre_9, 
        cosout_pre_10, cosout_pre_11, rom_addr0_r_inv, co0, rom_addr0_r_n_1, 
        rom_addr0_r_n_2, rom_addr0_r_2_inv, rom_addr0_r_1_inv, co1, 
        rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_4_inv, rom_addr0_r_3_inv, 
        co2, rom_addr0_r_n_5, rom_addr0_r_n_6, rom_addr0_r_6_inv, co3, 
        rom_addr0_r_n_7, rom_addr0_r_7_inv, rom_dout_11_ffin, rom_addr0_r_9, 
        rom_addr0_r_10, rom_addr0_r_11, rom_addr0_r_12, rom_addr0_r_13, 
        rom_addr0_r_14, rom_addr0_r_15, rom_dout_s_n_1, rom_dout_s_n_2, 
        rom_dout_2_inv, rom_dout_1_inv, co0_1, co1_1, rom_dout_s_n_3, 
        rom_dout_s_n_4, rom_dout_4_inv, rom_dout_3_inv, co2_1, rom_dout_s_n_5, 
        rom_dout_s_n_6, rom_dout_6_inv, rom_dout_5_inv, co3_1, rom_dout_s_n_7, 
        rom_dout_s_n_8, rom_dout_8_inv, rom_dout_7_inv, co4, rom_dout_s_n_9, 
        rom_dout_s_n_10, rom_dout_10_inv, rom_dout_9_inv, co5, rom_dout_s_n_11, 
        rom_dout_11_inv, rom_dout_c_n, rom_dout_12_inv, co0_2, rom_dout_c_n_1, 
        rom_dout_c_n_2, rom_dout_14_inv, rom_dout_13_inv, co1_2, rom_dout_c_n_3, 
        rom_dout_c_n_4, rom_dout_16_inv, rom_dout_15_inv, co2_2, rom_dout_c_n_5, 
        rom_dout_c_n_6, rom_dout_18_inv, rom_dout_17_inv, co3_2, rom_dout_c_n_7, 
        rom_dout_c_n_8, rom_dout_20_inv, rom_dout_19_inv, co4_1, rom_dout_c_n_9, 
        rom_dout_c_n_10, rom_dout_22_inv, rom_dout_21_inv, co5_1, rom_dout_c_n_11, 
        rom_dout_23_inv, rom_dout_11, rom_dout_inv, func_or_inet, func_or_inet_1, 
        lx_ne0, lx_ne0_inv, out_sel_i, rom_dout_s_1, rom_dout_s_2, 
        rom_dout_s_3, rom_dout_s_4, rom_dout_s_5, rom_dout_s_6, rom_dout_s_7, 
        rom_dout_s_8, rom_dout_s_9, rom_dout_s_10, rom_dout_s_11, rom_dout_c, 
        rom_dout_c_1, rom_dout_c_2, rom_dout_c_3, rom_dout_c_4, rom_dout_c_5, 
        rom_dout_c_6, rom_dout_c_7, rom_dout_c_8, rom_dout_c_9, rom_dout_c_10, 
        rom_dout_c_11;
    
    INV INV_31 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    FD1P3AX FF_59 (.D(theta[1]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(310[13:88])
    defparam FF_59.GSR = "ENABLED";
    FD1P3AX FF_58 (.D(theta[2]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(313[13:88])
    defparam FF_58.GSR = "ENABLED";
    FD1P3AX FF_57 (.D(theta[3]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(316[13:88])
    defparam FF_57.GSR = "ENABLED";
    FD1P3AX FF_56 (.D(theta[4]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(319[13:88])
    defparam FF_56.GSR = "ENABLED";
    FD1P3AX FF_55 (.D(theta[5]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(322[13:88])
    defparam FF_55.GSR = "ENABLED";
    FD1P3AX FF_54 (.D(theta[6]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(325[13:88])
    defparam FF_54.GSR = "ENABLED";
    FD1P3AX FF_53 (.D(theta[7]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(328[13:88])
    defparam FF_53.GSR = "ENABLED";
    FD1P3AX FF_52 (.D(theta[8]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(331[13:84])
    defparam FF_52.GSR = "ENABLED";
    FD1P3AX FF_51 (.D(theta[9]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(334[13:86])
    defparam FF_51.GSR = "ENABLED";
    FD1P3AX FF_49 (.D(rom_dout_10_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(365[13] 366[25])
    defparam FF_49.GSR = "ENABLED";
    MUX21 muxb_55 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    FD1P3AX FF_48 (.D(rom_dout_9_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(369[13] 370[24])
    defparam FF_48.GSR = "ENABLED";
    FD1P3AX FF_47 (.D(rom_dout_8_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(373[13] 374[24])
    defparam FF_47.GSR = "ENABLED";
    FD1P3AX FF_46 (.D(rom_dout_7_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(377[13] 378[24])
    defparam FF_46.GSR = "ENABLED";
    FD1P3AX FF_45 (.D(rom_dout_6_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(381[13] 382[24])
    defparam FF_45.GSR = "ENABLED";
    FD1P3AX FF_44 (.D(rom_dout_5_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(385[13] 386[24])
    defparam FF_44.GSR = "ENABLED";
    FD1P3AX FF_43 (.D(rom_dout_4_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(389[13] 390[24])
    defparam FF_43.GSR = "ENABLED";
    FD1P3AX FF_42 (.D(rom_dout_3_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(393[13] 394[24])
    defparam FF_42.GSR = "ENABLED";
    FD1P3AX FF_41 (.D(rom_dout_2_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(397[13] 398[24])
    defparam FF_41.GSR = "ENABLED";
    FD1P3AX FF_40 (.D(rom_dout_1_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(401[13] 402[24])
    defparam FF_40.GSR = "ENABLED";
    FD1P3AX FF_39 (.D(rom_dout_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(405[13] 406[22])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(rom_dout_23_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(409[13] 410[25])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(rom_dout_22_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(413[13] 414[25])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(rom_dout_21_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(417[13] 418[25])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(rom_dout_20_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(421[13] 422[25])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_34 (.D(rom_dout_19_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(425[13] 426[25])
    defparam FF_34.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(rom_dout_18_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(429[13] 430[25])
    defparam FF_33.GSR = "ENABLED";
    FD1P3AX FF_32 (.D(rom_dout_17_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(433[13] 434[25])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(rom_dout_16_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(437[13] 438[25])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(rom_dout_15_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(441[13] 442[25])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(rom_dout_14_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(445[13] 446[25])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(rom_dout_13_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(449[13] 450[25])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rom_dout_12_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(453[13] 454[25])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(cosromoutsel_i), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(cosromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(457[13] 458[26])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(mx_ctrl_r_1), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(461[13] 462[26])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(sinout_pre_1), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(591[13] 592[21])
    defparam FF_22.GSR = "ENABLED";
    MUX21 muxb_47 (.D0(rom_dout), .D1(rom_dout_s_n), .SD(sinromoutsel), 
          .Z(rom_dout_s)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_23 (.D0(rom_dout_s), .D1(GND_net), .SD(out_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    FD1P3AX FF_21 (.D(sinout_pre_2), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(595[13] 596[21])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(sinout_pre_3), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(599[13] 600[21])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(sinout_pre_4), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(603[13] 604[21])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(sinout_pre_5), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(607[13] 608[21])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(sinout_pre_6), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(611[13] 612[21])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(sinout_pre_7), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(615[13] 616[21])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(sinout_pre_8), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(619[13] 620[21])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(sinout_pre_9), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(623[13] 624[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(sinout_pre_10), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(627[13] 628[22])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(sinout_pre_11), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(631[13] 632[22])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(cosout_pre), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(635[13:86])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(cosout_pre_1), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(638[13] 639[23])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(cosout_pre_2), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(642[13] 643[23])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(cosout_pre_3), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(646[13] 647[23])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(cosout_pre_4), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(650[13] 651[23])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(cosout_pre_5), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(654[13] 655[23])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(cosout_pre_6), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(658[13] 659[23])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(cosout_pre_7), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(662[13] 663[23])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(cosout_pre_8), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(666[13] 667[23])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(cosout_pre_9), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(670[13] 671[23])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(cosout_pre_10), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(674[13] 675[24])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(cosout_pre_11), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_cos_s[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(678[13] 679[24])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AX FF_60 (.D(theta[0]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(307[13:86])
    defparam FF_60.GSR = "ENABLED";
    CCU2C neg_rom_addr0_r_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(686[11] 688[71])
    defparam neg_rom_addr0_r_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_2_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
          .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(694[11] 697[42])
    defparam neg_rom_addr0_r_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_4_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
          .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(703[11] 706[42])
    defparam neg_rom_addr0_r_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_6_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
          .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(712[11] 715[42])
    defparam neg_rom_addr0_r_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(721[11] 723[73])
    defparam neg_rom_addr0_r_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_4.INJECT1_1 = "NO";
    ROM256X1A triglut_1_0_23 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_11_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_23.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    CCU2C neg_rom_dout_s_n_1 (.A0(rom_dout_1_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_2_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_1), .COUT(co1_1), .S0(rom_dout_s_n_1), 
          .S1(rom_dout_s_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(881[11] 884[43])
    defparam neg_rom_dout_s_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_2 (.A0(rom_dout_3_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_4_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_1), .COUT(co2_1), .S0(rom_dout_s_n_3), 
          .S1(rom_dout_s_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(890[11] 893[43])
    defparam neg_rom_dout_s_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_3 (.A0(rom_dout_5_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_6_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_1), .COUT(co3_1), .S0(rom_dout_s_n_5), 
          .S1(rom_dout_s_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(899[11] 902[43])
    defparam neg_rom_dout_s_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_4 (.A0(rom_dout_7_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_8_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_1), .COUT(co4), .S0(rom_dout_s_n_7), 
          .S1(rom_dout_s_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(908[11] 911[41])
    defparam neg_rom_dout_s_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_5 (.A0(rom_dout_9_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_10_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4), .COUT(co5), .S0(rom_dout_s_n_9), 
          .S1(rom_dout_s_n_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(917[11] 920[42])
    defparam neg_rom_dout_s_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_5.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_6 (.A0(rom_dout_11_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co5), .S0(rom_dout_s_n_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(926[11] 928[73])
    defparam neg_rom_dout_s_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_6.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_12_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0_2), .S1(rom_dout_c_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(934[11] 936[72])
    defparam neg_rom_dout_c_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_1 (.A0(rom_dout_13_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_14_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_2), .COUT(co1_2), .S0(rom_dout_c_n_1), 
          .S1(rom_dout_c_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(942[11] 945[43])
    defparam neg_rom_dout_c_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_2 (.A0(rom_dout_15_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_16_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_2), .COUT(co2_2), .S0(rom_dout_c_n_3), 
          .S1(rom_dout_c_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(951[11] 954[43])
    defparam neg_rom_dout_c_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_3 (.A0(rom_dout_17_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_18_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_2), .COUT(co3_2), .S0(rom_dout_c_n_5), 
          .S1(rom_dout_c_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(960[11] 963[43])
    defparam neg_rom_dout_c_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_4 (.A0(rom_dout_19_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_20_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_2), .COUT(co4_1), .S0(rom_dout_c_n_7), 
          .S1(rom_dout_c_n_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(969[11] 972[43])
    defparam neg_rom_dout_c_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_5 (.A0(rom_dout_21_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_22_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_1), .COUT(co5_1), .S0(rom_dout_c_n_9), 
          .S1(rom_dout_c_n_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(978[11] 981[44])
    defparam neg_rom_dout_c_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_5.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_6 (.A0(rom_dout_23_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co5_1), .S0(rom_dout_c_n_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(991[11] 993[75])
    defparam neg_rom_dout_c_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_6.INJECT1_1 = "NO";
    INV INV_32 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_33 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_30 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_29 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_28 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_27 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_26 (.A(rom_addr0_r), .Z(rom_addr0_r_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    XOR2 XOR2_t1 (.A(mx_ctrl_r), .B(mx_ctrl_r_1), .Z(cosromoutsel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(239[10:70])
    INV INV_25 (.A(rom_dout_11), .Z(rom_dout_11_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_24 (.A(rom_dout_10), .Z(rom_dout_10_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_23 (.A(rom_dout_9), .Z(rom_dout_9_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_22 (.A(rom_dout_8), .Z(rom_dout_8_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_21 (.A(rom_dout_7), .Z(rom_dout_7_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_20 (.A(rom_dout_6), .Z(rom_dout_6_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_19 (.A(rom_dout_5), .Z(rom_dout_5_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_18 (.A(rom_dout_4), .Z(rom_dout_4_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_17 (.A(rom_dout_3), .Z(rom_dout_3_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_16 (.A(rom_dout_2), .Z(rom_dout_2_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_15 (.A(rom_dout_1), .Z(rom_dout_1_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_14 (.A(rom_dout), .Z(rom_dout_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_13 (.A(rom_dout_23), .Z(rom_dout_23_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_12 (.A(rom_dout_22), .Z(rom_dout_22_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_11 (.A(rom_dout_21), .Z(rom_dout_21_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_10 (.A(rom_dout_20), .Z(rom_dout_20_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_9 (.A(rom_dout_19), .Z(rom_dout_19_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_8 (.A(rom_dout_18), .Z(rom_dout_18_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_7 (.A(rom_dout_17), .Z(rom_dout_17_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_6 (.A(rom_dout_16), .Z(rom_dout_16_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_5 (.A(rom_dout_15), .Z(rom_dout_15_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_4 (.A(rom_dout_14), .Z(rom_dout_14_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_3 (.A(rom_dout_13), .Z(rom_dout_13_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    INV INV_2 (.A(rom_dout_12), .Z(rom_dout_12_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    ROM16X1A LUT4_2 (.AD0(rom_addr0_r_11), .AD1(rom_addr0_r_10), .AD2(rom_addr0_r_9), 
            .AD3(rom_addr0_r_8), .DO0(func_or_inet)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam LUT4_2.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_15), .AD1(rom_addr0_r_14), .AD2(rom_addr0_r_13), 
            .AD3(rom_addr0_r_12), .DO0(func_or_inet_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(GND_net), .AD2(func_or_inet_1), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv)) /* synthesis LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    AND2 AND2_t0 (.A(mx_ctrl_r), .B(lx_ne0_inv), .Z(out_sel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(303[10:64])
    FD1P3AX FF_50 (.D(rom_dout_11_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(361[13] 362[25])
    defparam FF_50.GSR = "ENABLED";
    MUX21 muxb_54 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_53 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_52 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_51 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_50 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_49 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_48 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    FD1P3AX FF_24 (.D(out_sel_i), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(out_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(537[13:83])
    defparam FF_24.GSR = "ENABLED";
    MUX21 muxb_46 (.D0(rom_dout_1), .D1(rom_dout_s_n_1), .SD(sinromoutsel), 
          .Z(rom_dout_s_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_45 (.D0(rom_dout_2), .D1(rom_dout_s_n_2), .SD(sinromoutsel), 
          .Z(rom_dout_s_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_44 (.D0(rom_dout_3), .D1(rom_dout_s_n_3), .SD(sinromoutsel), 
          .Z(rom_dout_s_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_43 (.D0(rom_dout_4), .D1(rom_dout_s_n_4), .SD(sinromoutsel), 
          .Z(rom_dout_s_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_42 (.D0(rom_dout_5), .D1(rom_dout_s_n_5), .SD(sinromoutsel), 
          .Z(rom_dout_s_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_41 (.D0(rom_dout_6), .D1(rom_dout_s_n_6), .SD(sinromoutsel), 
          .Z(rom_dout_s_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_40 (.D0(rom_dout_7), .D1(rom_dout_s_n_7), .SD(sinromoutsel), 
          .Z(rom_dout_s_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_39 (.D0(rom_dout_8), .D1(rom_dout_s_n_8), .SD(sinromoutsel), 
          .Z(rom_dout_s_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_38 (.D0(rom_dout_9), .D1(rom_dout_s_n_9), .SD(sinromoutsel), 
          .Z(rom_dout_s_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_37 (.D0(rom_dout_10), .D1(rom_dout_s_n_10), .SD(sinromoutsel), 
          .Z(rom_dout_s_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_36 (.D0(rom_dout_11), .D1(rom_dout_s_n_11), .SD(sinromoutsel), 
          .Z(rom_dout_s_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_35 (.D0(rom_dout_12), .D1(rom_dout_c_n), .SD(cosromoutsel), 
          .Z(rom_dout_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_34 (.D0(rom_dout_13), .D1(rom_dout_c_n_1), .SD(cosromoutsel), 
          .Z(rom_dout_c_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_33 (.D0(rom_dout_14), .D1(rom_dout_c_n_2), .SD(cosromoutsel), 
          .Z(rom_dout_c_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_32 (.D0(rom_dout_15), .D1(rom_dout_c_n_3), .SD(cosromoutsel), 
          .Z(rom_dout_c_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_31 (.D0(rom_dout_16), .D1(rom_dout_c_n_4), .SD(cosromoutsel), 
          .Z(rom_dout_c_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_30 (.D0(rom_dout_17), .D1(rom_dout_c_n_5), .SD(cosromoutsel), 
          .Z(rom_dout_c_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_29 (.D0(rom_dout_18), .D1(rom_dout_c_n_6), .SD(cosromoutsel), 
          .Z(rom_dout_c_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_28 (.D0(rom_dout_19), .D1(rom_dout_c_n_7), .SD(cosromoutsel), 
          .Z(rom_dout_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_27 (.D0(rom_dout_20), .D1(rom_dout_c_n_8), .SD(cosromoutsel), 
          .Z(rom_dout_c_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_26 (.D0(rom_dout_21), .D1(rom_dout_c_n_9), .SD(cosromoutsel), 
          .Z(rom_dout_c_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_25 (.D0(rom_dout_22), .D1(rom_dout_c_n_10), .SD(cosromoutsel), 
          .Z(rom_dout_c_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_24 (.D0(rom_dout_23), .D1(rom_dout_c_n_11), .SD(cosromoutsel), 
          .Z(rom_dout_c_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    FD1P3AX FF_23 (.D(sinout_pre), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(carry_sin_s[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(588[13:84])
    defparam FF_23.GSR = "ENABLED";
    MUX21 muxb_22 (.D0(rom_dout_s_1), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_21 (.D0(rom_dout_s_2), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_20 (.D0(rom_dout_s_3), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_19 (.D0(rom_dout_s_4), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_18 (.D0(rom_dout_s_5), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_17 (.D0(rom_dout_s_6), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_16 (.D0(rom_dout_s_7), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_15 (.D0(rom_dout_s_8), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_14 (.D0(rom_dout_s_9), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_13 (.D0(rom_dout_s_10), .D1(VCC_net), .SD(out_sel), .Z(sinout_pre_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_12 (.D0(rom_dout_s_11), .D1(mx_ctrl_r_1), .SD(out_sel), 
          .Z(sinout_pre_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_11 (.D0(rom_dout_c), .D1(GND_net), .SD(out_sel), .Z(cosout_pre)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_10 (.D0(rom_dout_c_1), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_9 (.D0(rom_dout_c_2), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_8 (.D0(rom_dout_c_3), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_7 (.D0(rom_dout_c_4), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_6 (.D0(rom_dout_c_5), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_5 (.D0(rom_dout_c_6), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_4 (.D0(rom_dout_c_7), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_3 (.D0(rom_dout_c_8), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_2 (.D0(rom_dout_c_9), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_1 (.D0(rom_dout_c_10), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    MUX21 muxb_0 (.D0(rom_dout_c_11), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    ROM256X1A triglut_1_0_22 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_10_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_22.initval = 256'b1111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_21 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_9_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_21.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_20 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_8_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_20.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_19 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_19.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000001111111111111111111111111111100000000000000000000000011111111111111111111111000000000000000000000111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_18 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_18.initval = 256'b0000011111111111111111111111111111111111111111111111111111000000000000000000000000111111111111111111100000000000000001111111111111110000000000000011111111111100000000000011111111111100000000000111111111110000000000111111111110000000000111111111100000000000;
    ROM256X1A triglut_1_0_17 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_17.initval = 256'b0000011111111111111111111111111111111111100000000000000000111111111111100000000000111111111100000000011111111000000001111111100000001111111000000011111100000011111100000011111100000011111000000111110000001111100000111111000001111100000111110000011111000000;
    ROM256X1A triglut_1_0_16 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_16.initval = 256'b0000011111111111111111111111100000000000011111111100000000111111100000011111100000111110000011111000011110000111110001111000011110001111000111000011100011100011100011100011100011100011100111000111001110001100011100111000110001100011100111001110011100111000;
    ROM256X1A triglut_1_0_15 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_15.initval = 256'b0000011111111111111110000000011111100000011110000011110000111000011100011100011000111001110011000110011001100111001001100110011001001100100110110010010011011011011011011011011011010010010110110100101101001011010010110100101101011010010100101101011010110100;
    ROM256X1A triglut_1_0_14 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_14.initval = 256'b0000011111111110000001111000011100011100011001110011001100100110010010010010010110100101001010100101010101010110100101010101010100101010010100101001011010010010110110110110010010011001001100100110011001100110011001100110011000110011001110011000110011100110;
    ROM256X1A triglut_1_0_13 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_13.initval = 256'b0000011111100001110001100110011011011010010101101010101010110101001011011001001100110011100011110000111111111100001111111111000001111000111001110011001100110110010010010010110100101011010101101010101010101010101010101010101011010101010010101011010101101010;
    ROM256X1A triglut_1_0_12 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_12.initval = 256'b0000011100011001001001010101010010010011001111000000000000011100011001001011010101010100100100110011000011111100001111111000111001100100100101001010101010100101001011001001100110001110001111000001111111111111111111111100000001111100000111100001111000111100;
    ROM256X1A triglut_1_0_11 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_23_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_11.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_10 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_22_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_10.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111;
    ROM256X1A triglut_1_0_9 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_21_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_9.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_8 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_20_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_8.initval = 256'b0000000000000000000000000000000000000000011111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_7 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_19_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_7.initval = 256'b0000000000000000000011111111111111111111100000000000000000000011111111111111111111111000000000000000000000000111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_6 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_18_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_6.initval = 256'b0000000000111111111100000000001111111111100000000001111111111100000000000111111111111000000000000111111111111000000000000001111111111111110000000000000000111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_5 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_17_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_5.initval = 256'b0000011111000001111100000111110000011111100000111110000001111100000011111000000111111000000111111000000111111000000011111110000000111111110000000011111111000000000111111111100000000000111111111111100000000000000000111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_4 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_16_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_4.initval = 256'b0011100111001110011100111000110001100011100111000110001110011100011100111000111000111000111000111000111000111000011100011110001111000011110001111100001111000011111000001111100000111111000000111111100000000111111111000000000000111111111111111111111111000000;
    ROM256X1A triglut_1_0_3 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_15_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_3.initval = 256'b0101101011010110100101001011010110100101101001011010010110100101101101001001011011011011011011011011011001001001101100100110010011001100110010011100110011001100011001110011100011000111000111000011100001111000001111000000111111000000001111111111111111000000;
    ROM256X1A triglut_1_0_2 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_14_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_2.initval = 256'b1100111001100011001110011001100011001100110011001100110011001100100110010011001001001101101101101001001011010010100101001010100101010101010100101101010101010100101010010100101101001001001001001100100110011001110011000111000111000011110000001111111111000000;
    ROM256X1A triglut_1_0_1 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_13_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_1.initval = 256'b1010110101011010101001010101011010101010101010101010101010101010110101011010100101101001001001001101100110011001110011100011110000011111111110000111111111100001111000111001100110010011011010010101101010101010110101001011011011001100110001110000111111000000;
    ROM256X1A triglut_1_0_0 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_12_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(31[16] 32[23])
    defparam triglut_1_0_0.initval = 256'b0111100011110000111100000111110000000111111111111111111111110000011110001110001100110010011010010100101010101010010100100100110011100011111110000111111000011001100100100101010101011010010011000111000000000000011110011001001001010101010010010011000111000000;
    CCU2C neg_rom_dout_s_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0_1), .S1(rom_dout_s_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=38, LSE_LCOL=16, LSE_RCOL=23, LSE_LLINE=31, LSE_RLINE=32 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(873[11] 875[72])
    defparam neg_rom_dout_s_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_0.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module multiplier_12_2_m
//

module multiplier_12_2_m (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_84, 
            VCC_net, \Q[1] , carry_sin_s, IQSerializer_Q, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_84;
    input VCC_net;
    input \Q[1] ;
    input [11:0]carry_sin_s;
    output [13:0]IQSerializer_Q;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire rega_a_1, regb_b_0, multiplier_12_2_m_0_mult_0_0_n0, multiplier_12_2_m_0_mult_0_1_n1, 
        regb_b_3, regb_b_2, multiplier_12_2_m_0_mult_0_1_n0, multiplier_12_2_m_0_mult_0_2_n1, 
        regb_b_5, regb_b_4, multiplier_12_2_m_0_mult_0_2_n0, multiplier_12_2_m_0_mult_0_3_n1, 
        regb_b_7, regb_b_6, multiplier_12_2_m_0_mult_0_3_n0, multiplier_12_2_m_0_mult_0_4_n1, 
        regb_b_9, regb_b_8, multiplier_12_2_m_0_mult_0_4_n0, multiplier_12_2_m_0_mult_0_5_n3, 
        regb_b_11, regb_b_10, multiplier_12_2_m_0_mult_0_5_n0, regb_b_1, 
        rego_o_0, rego_o_1, rego_o_2, rego_o_3, rego_o_4, rego_o_5, 
        rego_o_6, rego_o_7, rego_o_8, rego_o_9, rego_o_10, rego_o_11, 
        rego_o_12, rego_o_13, multiplier_12_2_m_0_pp_0_0, p_L1_1, p_L1_2, 
        p_L1_3, p_L1_4, p_L1_5, p_L1_6, p_L1_7, p_L1_8, p_L1_9, 
        p_L1_10, p_L1_11, p_L1_12, p_L1_13, multiplier_12_2_m_0_cin_lr, 
        mfco, multiplier_12_2_m_0_mult_0_0_n1, mco, mco_1, mco_2, 
        mco_3, mco_4;
    
    FD1P3AX FF_41 (.D(VCC_net), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(120[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1P3AX FF_40 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(123[13:82])
    defparam FF_40.GSR = "ENABLED";
    ND2 ND2_t10 (.A(regb_b_0), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t9 (.A(regb_b_3), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t8 (.A(regb_b_2), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t7 (.A(regb_b_5), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t6 (.A(regb_b_4), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t5 (.A(regb_b_7), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t4 (.A(regb_b_6), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t3 (.A(regb_b_9), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t2 (.A(regb_b_8), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t1 (.A(regb_b_11), .B(rega_a_0), .Z(multiplier_12_2_m_0_mult_0_5_n3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    ND2 ND2_t0 (.A(regb_b_10), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_5_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    FD1P3AX FF_39 (.D(carry_sin_s[0]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(126[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(carry_sin_s[1]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(129[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(carry_sin_s[2]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(132[13:82])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(carry_sin_s[3]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(135[13:82])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(carry_sin_s[4]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(138[13:82])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_34 (.D(carry_sin_s[5]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(141[13:82])
    defparam FF_34.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(carry_sin_s[6]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(144[13:82])
    defparam FF_33.GSR = "ENABLED";
    FD1P3AX FF_32 (.D(carry_sin_s[7]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(147[13:82])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(carry_sin_s[8]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(150[13:82])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(carry_sin_s[9]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(153[13:82])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(carry_sin_s[10]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(156[13:84])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(carry_sin_s[11]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(159[13:84])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rego_o_0), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(162[13:83])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(rego_o_1), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(165[13:83])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(rego_o_2), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(168[13:83])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(rego_o_3), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(171[13:83])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(rego_o_4), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(174[13:83])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(rego_o_5), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(177[13:83])
    defparam FF_22.GSR = "ENABLED";
    FD1P3AX FF_21 (.D(rego_o_6), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(180[13:83])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(rego_o_7), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(183[13:83])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(rego_o_8), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(186[13:83])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(rego_o_9), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(189[13:83])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(rego_o_10), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(192[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(rego_o_11), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(195[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(rego_o_12), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(198[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(rego_o_13), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(201[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(multiplier_12_2_m_0_pp_0_0), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(204[13:80])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(p_L1_1), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(207[13:80])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(p_L1_2), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(210[13:80])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(p_L1_3), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(213[13:80])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(p_L1_4), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(216[13:79])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(p_L1_5), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(219[13:79])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(p_L1_6), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(222[13:79])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(p_L1_7), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(225[13:79])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(p_L1_8), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(228[13:79])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(p_L1_9), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(231[13:79])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(p_L1_10), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(234[13:81])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(p_L1_11), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(237[13:81])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(p_L1_12), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(240[13:81])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(p_L1_13), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(243[13:81])
    defparam FF_0.GSR = "ENABLED";
    CCU2C multiplier_12_2_m_0_cin_lr_add (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(multiplier_12_2_m_0_cin_lr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(250[11] 252[97])
    defparam multiplier_12_2_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_Cadd_0_6 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(p_L1_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(260[11] 263[24])
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_0 (.A0(multiplier_12_2_m_0_mult_0_0_n0), 
          .B0(VCC_net), .C0(regb_b_1), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_0_n1), 
          .B1(VCC_net), .C1(regb_b_2), .D1(rega_a_0), .CIN(multiplier_12_2_m_0_cin_lr), 
          .COUT(mco), .S0(p_L1_1), .S1(p_L1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(269[11] 273[20])
    defparam multiplier_12_2_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_1 (.A0(multiplier_12_2_m_0_mult_0_1_n0), 
          .B0(VCC_net), .C0(regb_b_3), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_1_n1), 
          .B1(VCC_net), .C1(regb_b_4), .D1(rega_a_0), .CIN(mco), .COUT(mco_1), 
          .S0(p_L1_3), .S1(p_L1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(279[11] 283[22])
    defparam multiplier_12_2_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_2 (.A0(multiplier_12_2_m_0_mult_0_2_n0), 
          .B0(VCC_net), .C0(regb_b_5), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_2_n1), 
          .B1(VCC_net), .C1(regb_b_6), .D1(rega_a_0), .CIN(mco_1), .COUT(mco_2), 
          .S0(p_L1_5), .S1(p_L1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(289[11] 293[22])
    defparam multiplier_12_2_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_3 (.A0(multiplier_12_2_m_0_mult_0_3_n0), 
          .B0(VCC_net), .C0(regb_b_7), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_3_n1), 
          .B1(VCC_net), .C1(regb_b_8), .D1(rega_a_0), .CIN(mco_2), .COUT(mco_3), 
          .S0(p_L1_7), .S1(p_L1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(299[11] 303[22])
    defparam multiplier_12_2_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_4 (.A0(multiplier_12_2_m_0_mult_0_4_n0), 
          .B0(VCC_net), .C0(regb_b_9), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_4_n1), 
          .B1(VCC_net), .C1(regb_b_10), .D1(rega_a_0), .CIN(mco_3), 
          .COUT(mco_4), .S0(p_L1_9), .S1(p_L1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(309[11] 313[22])
    defparam multiplier_12_2_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_5 (.A0(multiplier_12_2_m_0_mult_0_5_n0), 
          .B0(VCC_net), .C0(regb_b_11), .D0(rega_a_0), .A1(regb_b_11), 
          .B1(rega_a_1), .C1(multiplier_12_2_m_0_mult_0_5_n3), .D1(VCC_net), 
          .CIN(mco_4), .COUT(mfco), .S0(p_L1_11), .S1(p_L1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(321[11] 324[55])
    defparam multiplier_12_2_m_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_1 = "NO";
    AND2 AND2_t12 (.A(regb_b_0), .B(rega_a_0), .Z(multiplier_12_2_m_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(94[10:79])
    ND2 ND2_t11 (.A(regb_b_1), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=122, LSE_RLINE=123 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(122[20] 123[43])
    
endmodule
//
// Verilog Description of module multiplier_12_2_m_U0
//

module multiplier_12_2_m_U0 (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_84, 
            \I[1] , carry_cos_s, IQSerializer_I, VCC_net, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_84;
    input \I[1] ;
    input [11:0]carry_cos_s;
    output [13:0]IQSerializer_I;
    input VCC_net;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire regb_b_0, multiplier_12_2_m_0_mult_0_0_n0, rega_a_1, multiplier_12_2_m_0_mult_0_1_n1, 
        regb_b_3, regb_b_2, multiplier_12_2_m_0_mult_0_1_n0, multiplier_12_2_m_0_mult_0_2_n1, 
        regb_b_5, regb_b_4, multiplier_12_2_m_0_mult_0_2_n0, multiplier_12_2_m_0_mult_0_3_n1, 
        regb_b_7, regb_b_6, multiplier_12_2_m_0_mult_0_3_n0, multiplier_12_2_m_0_mult_0_4_n1, 
        regb_b_9, regb_b_8, multiplier_12_2_m_0_mult_0_4_n0, multiplier_12_2_m_0_mult_0_5_n3, 
        regb_b_11, regb_b_10, multiplier_12_2_m_0_mult_0_5_n0, regb_b_1, 
        rego_o_0, rego_o_1, rego_o_2, rego_o_3, rego_o_4, rego_o_5, 
        rego_o_6, rego_o_7, rego_o_8, rego_o_9, rego_o_10, rego_o_11, 
        rego_o_12, rego_o_13, multiplier_12_2_m_0_pp_0_0, p_L1_1, p_L1_2, 
        p_L1_3, p_L1_4, p_L1_5, p_L1_6, p_L1_7, p_L1_8, p_L1_9, 
        p_L1_10, p_L1_11, p_L1_12, p_L1_13, multiplier_12_2_m_0_cin_lr, 
        mfco, multiplier_12_2_m_0_mult_0_0_n1, mco, mco_1, mco_2, 
        mco_3, mco_4;
    
    ND2 ND2_t10 (.A(regb_b_0), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t9 (.A(regb_b_3), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t8 (.A(regb_b_2), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t7 (.A(regb_b_5), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t6 (.A(regb_b_4), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t5 (.A(regb_b_7), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t4 (.A(regb_b_6), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t3 (.A(regb_b_9), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t2 (.A(regb_b_8), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t1 (.A(regb_b_11), .B(rega_a_0), .Z(multiplier_12_2_m_0_mult_0_5_n3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    ND2 ND2_t0 (.A(regb_b_10), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_5_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    FD1P3AX FF_40 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(123[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1P3AX FF_39 (.D(carry_cos_s[0]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(126[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(carry_cos_s[1]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(129[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(carry_cos_s[2]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(132[13:82])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(carry_cos_s[3]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(135[13:82])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(carry_cos_s[4]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(138[13:82])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_34 (.D(carry_cos_s[5]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(141[13:82])
    defparam FF_34.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(carry_cos_s[6]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(144[13:82])
    defparam FF_33.GSR = "ENABLED";
    FD1P3AX FF_32 (.D(carry_cos_s[7]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(147[13:82])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(carry_cos_s[8]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(150[13:82])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(carry_cos_s[9]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(153[13:82])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(carry_cos_s[10]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(156[13:84])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(carry_cos_s[11]), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(159[13:84])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rego_o_0), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(162[13:83])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(rego_o_1), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(165[13:83])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(rego_o_2), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(168[13:83])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(rego_o_3), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(171[13:83])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(rego_o_4), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(174[13:83])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(rego_o_5), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(177[13:83])
    defparam FF_22.GSR = "ENABLED";
    FD1P3AX FF_21 (.D(rego_o_6), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(180[13:83])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(rego_o_7), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(183[13:83])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(rego_o_8), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(186[13:83])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(rego_o_9), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(189[13:83])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(rego_o_10), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(192[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(rego_o_11), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(195[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(rego_o_12), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(198[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(rego_o_13), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(201[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(multiplier_12_2_m_0_pp_0_0), .SP(clockDivider_clk_4M_enable_84), 
            .CK(clockDivider_clk_4M), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(204[13:80])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(p_L1_1), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(207[13:80])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(p_L1_2), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(210[13:80])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(p_L1_3), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(213[13:80])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(p_L1_4), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(216[13:79])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(p_L1_5), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(219[13:79])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(p_L1_6), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(222[13:79])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(p_L1_7), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(225[13:79])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(p_L1_8), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(228[13:79])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(p_L1_9), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(231[13:79])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(p_L1_10), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(234[13:81])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(p_L1_11), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(237[13:81])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(p_L1_12), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(240[13:81])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(p_L1_13), .SP(clockDivider_clk_4M_enable_84), .CK(clockDivider_clk_4M), 
            .Q(rego_o_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(243[13:81])
    defparam FF_0.GSR = "ENABLED";
    CCU2C multiplier_12_2_m_0_cin_lr_add (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(multiplier_12_2_m_0_cin_lr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(250[11] 252[97])
    defparam multiplier_12_2_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_Cadd_0_6 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(p_L1_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(260[11] 263[24])
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_0 (.A0(multiplier_12_2_m_0_mult_0_0_n0), 
          .B0(VCC_net), .C0(regb_b_1), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_0_n1), 
          .B1(VCC_net), .C1(regb_b_2), .D1(rega_a_0), .CIN(multiplier_12_2_m_0_cin_lr), 
          .COUT(mco), .S0(p_L1_1), .S1(p_L1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(269[11] 273[20])
    defparam multiplier_12_2_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_1 (.A0(multiplier_12_2_m_0_mult_0_1_n0), 
          .B0(VCC_net), .C0(regb_b_3), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_1_n1), 
          .B1(VCC_net), .C1(regb_b_4), .D1(rega_a_0), .CIN(mco), .COUT(mco_1), 
          .S0(p_L1_3), .S1(p_L1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(279[11] 283[22])
    defparam multiplier_12_2_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_2 (.A0(multiplier_12_2_m_0_mult_0_2_n0), 
          .B0(VCC_net), .C0(regb_b_5), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_2_n1), 
          .B1(VCC_net), .C1(regb_b_6), .D1(rega_a_0), .CIN(mco_1), .COUT(mco_2), 
          .S0(p_L1_5), .S1(p_L1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(289[11] 293[22])
    defparam multiplier_12_2_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_3 (.A0(multiplier_12_2_m_0_mult_0_3_n0), 
          .B0(VCC_net), .C0(regb_b_7), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_3_n1), 
          .B1(VCC_net), .C1(regb_b_8), .D1(rega_a_0), .CIN(mco_2), .COUT(mco_3), 
          .S0(p_L1_7), .S1(p_L1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(299[11] 303[22])
    defparam multiplier_12_2_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_4 (.A0(multiplier_12_2_m_0_mult_0_4_n0), 
          .B0(VCC_net), .C0(regb_b_9), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_4_n1), 
          .B1(VCC_net), .C1(regb_b_10), .D1(rega_a_0), .CIN(mco_3), 
          .COUT(mco_4), .S0(p_L1_9), .S1(p_L1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(309[11] 313[22])
    defparam multiplier_12_2_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_5 (.A0(multiplier_12_2_m_0_mult_0_5_n0), 
          .B0(VCC_net), .C0(regb_b_11), .D0(rega_a_0), .A1(regb_b_11), 
          .B1(rega_a_1), .C1(multiplier_12_2_m_0_mult_0_5_n3), .D1(VCC_net), 
          .CIN(mco_4), .COUT(mfco), .S0(p_L1_11), .S1(p_L1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(321[11] 324[55])
    defparam multiplier_12_2_m_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_1 = "NO";
    ND2 ND2_t11 (.A(regb_b_1), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(119[20] 120[43])
    AND2 AND2_t12 (.A(regb_b_0), .B(rega_a_0), .Z(multiplier_12_2_m_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=37, LSE_LCOL=20, LSE_RCOL=43, LSE_LLINE=119, LSE_RLINE=120 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(94[10:79])
    
endmodule
//
// Verilog Description of module IQSerializer
//

module IQSerializer (IQSerializer_I, \ICounter[2] , \ICounter[1] , n370, 
            \QCounter[3] , n2787, clk_N_262, n1819, \QCounter[2] , 
            n6, n2780, n3, DEDFF_D0_N_334, \QCounter[1] , DEDFF_D0_N_339, 
            n1820, n2734, n2362, DEDFF_D1_N_350, serial_iq_c, serial_clk_c) /* synthesis syn_module_defined=1 */ ;
    input [13:0]IQSerializer_I;
    output \ICounter[2] ;
    output \ICounter[1] ;
    output [4:0]n370;
    output \QCounter[3] ;
    output n2787;
    input clk_N_262;
    input n1819;
    output \QCounter[2] ;
    output n6;
    input n2780;
    output n3;
    input DEDFF_D0_N_334;
    output \QCounter[1] ;
    input DEDFF_D0_N_339;
    input n1820;
    output n2734;
    input n2362;
    input DEDFF_D1_N_350;
    output serial_iq_c;
    input serial_clk_c;
    
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    
    wire n10, n2705;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    
    wire n352, n2528, n2782, n2784;
    wire [4:0]n370_c;
    
    wire n2526, n1737, n2707, n2704, n2708, n2, n3_adj_368, n1, 
        n2792, n348, n1735, n2706, n2733, n2732;
    wire [4:0]n4;
    wire [3:0]n21;
    
    wire n2709, n2710;
    
    LUT4 n10_bdd_3_lut_1414 (.A(n10), .B(IQSerializer_I[6]), .C(\ICounter[2] ), 
         .Z(n2705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10_bdd_3_lut_1414.init = 16'hcaca;
    LUT4 i81_2_lut_4_lut (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .D(n370[2]), .Z(n352)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i81_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut (.A(\QCounter[3] ), .B(n370[0]), .Z(n2528)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_10 (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n2782)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_rep_10.init = 16'hf7f7;
    LUT4 i1_3_lut_rep_15 (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n2787)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_rep_15.init = 16'h6a6a;
    FD1S3IX QCounter_177__i3 (.D(n2784), .CK(clk_N_262), .CD(n1819), .Q(\QCounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i3.GSR = "DISABLED";
    LUT4 i610_4_lut (.A(n370[0]), .B(n370_c[1]), .C(n2526), .D(\QCounter[2] ), 
         .Z(n1737)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i610_4_lut.init = 16'hecee;
    LUT4 DEDFF_D0_I_9_i6_3_lut (.A(IQSerializer_I[5]), .B(IQSerializer_I[7]), 
         .C(\ICounter[1] ), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:45])
    defparam DEDFF_D0_I_9_i6_3_lut.init = 16'hcaca;
    FD1S3IX current_state_FSM_i0 (.D(n1737), .CK(clk_N_262), .CD(n2780), 
            .Q(n370[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    LUT4 DEDFF_D0_I_9_i3_3_lut (.A(IQSerializer_I[1]), .B(IQSerializer_I[3]), 
         .C(\ICounter[1] ), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:45])
    defparam DEDFF_D0_I_9_i3_3_lut.init = 16'hcaca;
    LUT4 n2707_bdd_3_lut (.A(n2707), .B(n2704), .C(ICounter[3]), .Z(n2708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2707_bdd_3_lut.init = 16'hcaca;
    LUT4 select_138_Select_0_i2_2_lut (.A(DEDFF_D0_N_334), .B(n370[2]), 
         .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_138_Select_0_i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_14 (.A(\QCounter[3] ), .B(\QCounter[1] ), .Z(n2526)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(145[21:38])
    defparam i1_2_lut_adj_14.init = 16'hdddd;
    LUT4 DEDFF_D1_I_11_i3_3_lut (.A(IQSerializer_I[0]), .B(IQSerializer_I[2]), 
         .C(\ICounter[1] ), .Z(n3_adj_368)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(56[26:45])
    defparam DEDFF_D1_I_11_i3_3_lut.init = 16'hcaca;
    LUT4 select_138_Select_0_i1_2_lut (.A(DEDFF_D0_N_339), .B(n370[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_138_Select_0_i1_2_lut.init = 16'h8888;
    LUT4 sub_10_inv_0_i2_1_lut_rep_20 (.A(\QCounter[1] ), .Z(n2792)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut_rep_20.init = 16'h5555;
    FD1S3IX ICounter_175__i3 (.D(n2787), .CK(clk_N_262), .CD(n1820), .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i3.GSR = "DISABLED";
    LUT4 reduce_or_76_i2_4_lut_4_lut (.A(\QCounter[1] ), .B(\QCounter[2] ), 
         .C(n370_c[4]), .D(n2528), .Z(n348)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam reduce_or_76_i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 DEDFF_D1_I_11_i10_3_lut (.A(IQSerializer_I[8]), .B(IQSerializer_I[10]), 
         .C(\ICounter[1] ), .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(56[26:45])
    defparam DEDFF_D1_I_11_i10_3_lut.init = 16'hcaca;
    LUT4 i608_3_lut (.A(n370[2]), .B(n370_c[3]), .C(n2782), .Z(n1735)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i608_3_lut.init = 16'hecec;
    LUT4 n10_bdd_3_lut (.A(n10), .B(IQSerializer_I[12]), .C(\ICounter[2] ), 
         .Z(n2706)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n10_bdd_3_lut.init = 16'hacac;
    PFUMX i1431 (.BLUT(n2733), .ALUT(n2732), .C0(\ICounter[1] ), .Z(n2734));
    LUT4 sub_4_inv_0_i2_1_lut (.A(\ICounter[1] ), .Z(n4[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:43])
    defparam sub_4_inv_0_i2_1_lut.init = 16'h5555;
    FD1S3IX QCounter_177__i2 (.D(n21[2]), .CK(clk_N_262), .CD(n1819), 
            .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i2.GSR = "DISABLED";
    FD1S3IX QCounter_177__i1 (.D(n2792), .CK(clk_N_262), .CD(n1819), .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i1.GSR = "DISABLED";
    PFUMX i1417 (.BLUT(n2709), .ALUT(n2708), .C0(n370[2]), .Z(n2710));
    LUT4 IQSerializer_I_9__bdd_4_lut (.A(IQSerializer_I[9]), .B(IQSerializer_I[13]), 
         .C(ICounter[3]), .D(\ICounter[2] ), .Z(n2733)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam IQSerializer_I_9__bdd_4_lut.init = 16'h0afc;
    PFUMX i1415 (.BLUT(n2706), .ALUT(n2705), .C0(\ICounter[1] ), .Z(n2707));
    LUT4 i1014_2_lut (.A(\QCounter[2] ), .B(\QCounter[1] ), .Z(n21[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1014_2_lut.init = 16'h6666;
    LUT4 IQSerializer_I_9__bdd_3_lut (.A(ICounter[3]), .B(IQSerializer_I[11]), 
         .C(\ICounter[2] ), .Z(n2732)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam IQSerializer_I_9__bdd_3_lut.init = 16'h5454;
    LUT4 i1_3_lut_rep_12 (.A(\QCounter[3] ), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(n2784)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut_rep_12.init = 16'h6a6a;
    FD1S3IX ICounter_175__i2 (.D(n2362), .CK(clk_N_262), .CD(n1820), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i2.GSR = "DISABLED";
    FD1S3IX ICounter_175__i1 (.D(n4[1]), .CK(clk_N_262), .CD(n1820), .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i1.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n2780), .CK(clk_N_262), .Q(n370_c[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n348), .CK(clk_N_262), .CD(n2780), 
            .Q(n370_c[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1735), .CK(clk_N_262), .CD(n2780), 
            .Q(n370[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n352), .CK(clk_N_262), .CD(n2780), 
            .Q(n370_c[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 n3_bdd_4_lut (.A(n3_adj_368), .B(\ICounter[1] ), .C(IQSerializer_I[4]), 
         .D(\ICounter[2] ), .Z(n2704)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h22b8;
    LUT4 n3_bdd_2_lut (.A(DEDFF_D1_N_350), .B(n370_c[1]), .Z(n2709)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n3_bdd_2_lut.init = 16'heeee;
    DEDFF DEDFF_0 (.clk_N_262(clk_N_262), .n2780(n2780), .serial_iq_c(serial_iq_c), 
          .serial_clk_c(serial_clk_c), .n2(n2), .n1(n1), .next_state_3__N_319(n370_c[3]), 
          .n2710(n2710), .next_state_3__N_317(n370_c[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_262, n2780, serial_iq_c, serial_clk_c, n2, n1, 
            next_state_3__N_319, n2710, next_state_3__N_317) /* synthesis syn_module_defined=1 */ ;
    input clk_N_262;
    input n2780;
    output serial_iq_c;
    input serial_clk_c;
    input n2;
    input n1;
    input next_state_3__N_319;
    input n2710;
    input next_state_3__N_317;
    
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    
    wire neg_edge, Q2, pose_edge, Q1;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_262), .CD(n2780), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n2780), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2), .C(n1), .D(next_state_3__N_319), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_319), .C(n2710), 
         .D(next_state_3__N_317), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_174, clockDivider_clk_4M, GND_net, VCC_net, 
            serial_clk_c, LED7_c, clockDivider_clkLock, n1817) /* synthesis syn_module_defined=1 */ ;
    output clk_N_174;
    output clockDivider_clk_4M;
    input GND_net;
    input VCC_net;
    input serial_clk_c;
    input LED7_c;
    output clockDivider_clkLock;
    output n1817;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis SET_AS_NETWORK=clockDivider_clk_4M, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    
    wire n2281;
    wire [7:0]n65;
    wire [7:0]n37;
    
    wire n2282, pll_lock_N_54, clkOut_N_64, n2280;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    wire [7:0]n37_adj_367;
    
    wire n1758, n379, n2279, n2278;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    
    wire n2277, n2516, n2576, n2514, n2284, n2283;
    
    INV i1549 (.A(clockDivider_clk_4M), .Z(clk_N_174));
    CCU2C lockCounter_171_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2281), .COUT(n2282), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_3.INJECT1_1 = "NO";
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    CCU2C lockCounter_171_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2281), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_171_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_171_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_1.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2280), .S0(n37_adj_367[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_9.INIT0 = 16'haaa0;
    defparam counter_170_add_4_9.INIT1 = 16'h0000;
    defparam counter_170_add_4_9.INJECT1_0 = "NO";
    defparam counter_170_add_4_9.INJECT1_1 = "NO";
    LUT4 i1362_2_lut (.A(n1758), .B(LED7_c), .Z(n379)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1362_2_lut.init = 16'h7777;
    CCU2C counter_170_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2279), .COUT(n2280), .S0(n37_adj_367[5]), 
          .S1(n37_adj_367[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_7.INIT0 = 16'haaa0;
    defparam counter_170_add_4_7.INIT1 = 16'haaa0;
    defparam counter_170_add_4_7.INJECT1_0 = "NO";
    defparam counter_170_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2278), .COUT(n2279), .S0(n37_adj_367[3]), 
          .S1(n37_adj_367[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_5.INIT0 = 16'haaa0;
    defparam counter_170_add_4_5.INIT1 = 16'haaa0;
    defparam counter_170_add_4_5.INJECT1_0 = "NO";
    defparam counter_170_add_4_5.INJECT1_1 = "NO";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    CCU2C counter_170_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2277), .COUT(n2278), .S0(n37_adj_367[1]), 
          .S1(n37_adj_367[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_3.INIT0 = 16'haaa0;
    defparam counter_170_add_4_3.INIT1 = 16'haaa0;
    defparam counter_170_add_4_3.INJECT1_0 = "NO";
    defparam counter_170_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2277), .S1(n37_adj_367[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_1.INIT0 = 16'h0000;
    defparam counter_170_add_4_1.INIT1 = 16'h555f;
    defparam counter_170_add_4_1.INJECT1_0 = "NO";
    defparam counter_170_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_170__i0 (.D(n37_adj_367[0]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i0.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i0.GSR = "DISABLED";
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n1758), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i1_4_lut (.A(n2516), .B(n2576), .C(counter[2]), .D(n2514), 
         .Z(n1758)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i678_1_lut (.A(clockDivider_clkLock), .Z(n1817)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i678_1_lut.init = 16'h5555;
    FD1S3IX lockCounter_171__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i7.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i1.GSR = "DISABLED";
    FD1S3IX counter_170__i7 (.D(n37_adj_367[7]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i7.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n2516)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1S3IX counter_170__i6 (.D(n37_adj_367[6]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i6.GSR = "DISABLED";
    FD1S3IX counter_170__i5 (.D(n37_adj_367[5]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i5.GSR = "DISABLED";
    FD1S3IX counter_170__i4 (.D(n37_adj_367[4]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i4.GSR = "DISABLED";
    FD1S3IX counter_170__i3 (.D(n37_adj_367[3]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i3.GSR = "DISABLED";
    FD1S3IX counter_170__i2 (.D(n37_adj_367[2]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i2.GSR = "DISABLED";
    FD1S3IX counter_170__i1 (.D(n37_adj_367[1]), .CK(serial_clk_c), .CD(n379), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i1.GSR = "DISABLED";
    LUT4 i1286_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2576)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1286_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_13 (.A(counter[5]), .B(counter[6]), .Z(n2514)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'heeee;
    CCU2C lockCounter_171_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2284), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_171_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_9.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2283), .COUT(n2284), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2282), .COUT(n2283), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll_24_64m
//

module pll_24_64m (pll_clko_1, top_rst_N_28, serial_clk_c, LED7_c, GND_net, 
            clk_N_262) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input pll_clko_1;
    input top_rst_N_28;
    output serial_clk_c;
    output LED7_c;
    input GND_net;
    output clk_N_262;
    
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
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
    INV i1548 (.A(serial_clk_c), .Z(clk_N_262));
    
endmodule
