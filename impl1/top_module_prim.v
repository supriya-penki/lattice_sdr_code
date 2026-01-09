// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Fri Jan 09 16:43:07 2026
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
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symVal, fskModule_symDone;
    wire [13:0]IQSerializer_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(61[21:35])
    wire [13:0]IQSerializer_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(62[21:35])
    
    wire n2380;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[13:17])
    
    wire n2424, n6, top_rst_N_28, n2423, n2422, n2379, n3, n2421, 
        n2420, n2419, n2418;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2378, n2377, n2376, n2375, n2374, n2373, n1819, n1822, 
        n2748, n2818, n2814, n2372, n26;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n25, n24, n23, next_state_3__N_152, next_state_3__N_153, 
        next_state_3__N_155, n22, n21, n20, n19, n18;
    wire [1:0]I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(13[26:27])
    wire [1:0]Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(14[25:26])
    
    wire n17, n16, n15, n14;
    wire [9:0]theta;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(18[19:24])
    
    wire enable_d, n13, n12;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n2371, n2370, n2369, n2368, n2367, DEDFF_D0_N_334, n2361, 
        n11, n2362, n2438, DEDFF_D0_N_339, n10, DEDFF_D1_N_350, 
        n2363, next_state_3__N_320, next_state_3__N_321, next_state_3__N_322, 
        n9, n2439, n8, n7, n6_adj_374, n5, n4, n3_adj_375, n2875, 
        n2360, n2433, n2436, n2437, n2, n2425, n2365, n2426, 
        clockDivider_clk_4M_enable_111, I_bit, Q_bit, n2942, n2469, 
        n2359;
    wire [23:0]phase_acc;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(14[23:32])
    
    wire n2868, n2427;
    wire [23:0]theta_9__N_237;
    
    wire n2465, n2833, n2428, n2429, n2430, n2431, n2432, n2434, 
        n2435, n2364, cout, n131, n132, n133, n134, n135, n130, 
        n129, n6_adj_376, n128, n127, n126, n125, n124, n123, 
        n122, n121, n3_adj_377, n120, n119, n118, n2440, n117, 
        clockDivider_clk_4M_enable_104, n116, n115, n6_adj_378, n114, 
        n2881, n113, n112, n2382, n111, n110, n2880, cout_adj_379, 
        n2366, n3_adj_380, n2381;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n2784_bdd_4_lut_4_lut (.A(n2881), .B(n3), .C(n6), .D(n2833), 
         .Z(DEDFF_D1_N_350)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (D)) */ ;
    defparam n2784_bdd_4_lut_4_lut.init = 16'hf588;
    packetCounter counter_0 (.waitcount({waitcount}), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .cout(cout), .clockDivider_clkLock(clockDivider_clkLock), .GND_net(GND_net), 
            .VCC_net(VCC_net), .cout_adj_5(cout_adj_379), .counter_0_countDone(counter_0_countDone), 
            .n1819(n1819)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(130[15] 135[2])
    CCU2C cnt1_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2359), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_169_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_169_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C cnt1_169_add_4_25 (.A0(n3_adj_375), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2370), .COUT(n2371), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_25.INJECT1_1 = "NO";
    LUT4 n2790_bdd_4_lut_4_lut (.A(n2881), .B(n3_adj_377), .C(n6_adj_378), 
         .D(n2814), .Z(DEDFF_D0_N_339)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (D)) */ ;
    defparam n2790_bdd_4_lut_4_lut.init = 16'hf588;
    LUT4 i1_2_lut (.A(ICounter[2]), .B(ICounter[1]), .Z(n2469)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2C add_1052_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2440), 
          .S0(cout));
    defparam add_1052_cout.INIT0 = 16'h0000;
    defparam add_1052_cout.INIT1 = 16'h0000;
    defparam add_1052_cout.INJECT1_0 = "NO";
    defparam add_1052_cout.INJECT1_1 = "NO";
    CCU2C add_1052_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2439), .COUT(n2440));
    defparam add_1052_20.INIT0 = 16'h555f;
    defparam add_1052_20.INIT1 = 16'h555f;
    defparam add_1052_20.INJECT1_0 = "NO";
    defparam add_1052_20.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2362), 
          .COUT(n2363), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_9.INJECT1_1 = "NO";
    CCU2C add_1052_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2438), .COUT(n2439));
    defparam add_1052_18.INIT0 = 16'h555f;
    defparam add_1052_18.INIT1 = 16'h555f;
    defparam add_1052_18.INJECT1_0 = "NO";
    defparam add_1052_18.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2360), 
          .COUT(n2361), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_18 (.A(QCounter[2]), .B(QCounter[1]), .Z(n2465)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_18.init = 16'h6666;
    CCU2C add_1052_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2437), .COUT(n2438));
    defparam add_1052_16.INIT0 = 16'h555f;
    defparam add_1052_16.INIT1 = 16'h555f;
    defparam add_1052_16.INJECT1_0 = "NO";
    defparam add_1052_16.INJECT1_1 = "NO";
    CCU2C add_1052_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2436), .COUT(n2437));
    defparam add_1052_14.INIT0 = 16'h555f;
    defparam add_1052_14.INIT1 = 16'h555f;
    defparam add_1052_14.INJECT1_0 = "NO";
    defparam add_1052_14.INJECT1_1 = "NO";
    CCU2C add_1052_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2435), .COUT(n2436));
    defparam add_1052_12.INIT0 = 16'haaa0;
    defparam add_1052_12.INIT1 = 16'h555f;
    defparam add_1052_12.INJECT1_0 = "NO";
    defparam add_1052_12.INJECT1_1 = "NO";
    CCU2C add_1052_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2434), .COUT(n2435));
    defparam add_1052_10.INIT0 = 16'h555f;
    defparam add_1052_10.INIT1 = 16'haaa0;
    defparam add_1052_10.INJECT1_0 = "NO";
    defparam add_1052_10.INJECT1_1 = "NO";
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    CCU2C add_1052_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2433), .COUT(n2434));
    defparam add_1052_8.INIT0 = 16'h555f;
    defparam add_1052_8.INIT1 = 16'h555f;
    defparam add_1052_8.INJECT1_0 = "NO";
    defparam add_1052_8.INJECT1_1 = "NO";
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    CCU2C add_1052_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2432), .COUT(n2433));
    defparam add_1052_6.INIT0 = 16'haaa0;
    defparam add_1052_6.INIT1 = 16'h555f;
    defparam add_1052_6.INJECT1_0 = "NO";
    defparam add_1052_6.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(counter_0_countDone));
    CCU2C add_1052_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2431), .COUT(n2432));
    defparam add_1052_4.INIT0 = 16'h555f;
    defparam add_1052_4.INIT1 = 16'haaa0;
    defparam add_1052_4.INJECT1_0 = "NO";
    defparam add_1052_4.INJECT1_1 = "NO";
    CCU2C add_1052_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2431));
    defparam add_1052_2.INIT0 = 16'h000e;
    defparam add_1052_2.INIT1 = 16'haaa0;
    defparam add_1052_2.INJECT1_0 = "NO";
    defparam add_1052_2.INJECT1_1 = "NO";
    FD1S3AX cnt1_169__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i0.GSR = "DISABLED";
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    CCU2C add_1053_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2430), .S1(cout_adj_379));
    defparam add_1053_27.INIT0 = 16'h5555;
    defparam add_1053_27.INIT1 = 16'h0000;
    defparam add_1053_27.INJECT1_0 = "NO";
    defparam add_1053_27.INJECT1_1 = "NO";
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    packetGenerator packetGen_1 (.next_state_3__N_155(next_state_3__N_155), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2875(n2875), .VCC_net(VCC_net), 
            .\IQSerializer_I[2] (IQSerializer_I[2]), .\IQSerializer_I[10] (IQSerializer_I[10]), 
            .\ICounter[3] (ICounter[3]), .symCounter({symCounter}), .next_state_3__N_153(next_state_3__N_153), 
            .data(data), .n2748(n2748), .counter_0_countDone(counter_0_countDone), 
            .\IQSerializer_I[12] (IQSerializer_I[12]), .\IQSerializer_I[4] (IQSerializer_I[4]), 
            .\ICounter[2] (ICounter[2]), .DEDFF_D1_N_350(DEDFF_D1_N_350), 
            .next_state_3__N_321(next_state_3__N_321), .next_state_3__N_320(next_state_3__N_320), 
            .n2942(n2942), .fskModule_symVal(fskModule_symVal), .clk_N_174(clk_N_174), 
            .clockDivider_clk_4M_enable_111(clockDivider_clk_4M_enable_111), 
            .next_state_3__N_152(next_state_3__N_152), .\IQSerializer_I[8] (IQSerializer_I[8]), 
            .\IQSerializer_I[6] (IQSerializer_I[6]), .\ICounter[1] (ICounter[1]), 
            .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
            .fskModule_symDone(fskModule_symDone), .I_bit(I_bit), .\I[1] (I[1]), 
            .Q_bit(Q_bit), .\Q[1] (Q[1]), .\IQSerializer_I[0] (IQSerializer_I[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(137[17] 143[2])
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[7] 108[4])
    defparam LED_9.GSR = "DISABLED";
    CCU2C add_1053_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2429), .COUT(n2430));
    defparam add_1053_25.INIT0 = 16'h5555;
    defparam add_1053_25.INIT1 = 16'h5555;
    defparam add_1053_25.INJECT1_0 = "NO";
    defparam add_1053_25.INJECT1_1 = "NO";
    CCU2C add_1053_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2428), .COUT(n2429));
    defparam add_1053_23.INIT0 = 16'h5555;
    defparam add_1053_23.INIT1 = 16'h5555;
    defparam add_1053_23.INJECT1_0 = "NO";
    defparam add_1053_23.INJECT1_1 = "NO";
    CCU2C add_1053_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2427), .COUT(n2428));
    defparam add_1053_21.INIT0 = 16'h5555;
    defparam add_1053_21.INIT1 = 16'h5555;
    defparam add_1053_21.INJECT1_0 = "NO";
    defparam add_1053_21.INJECT1_1 = "NO";
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    CCU2C add_1053_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2426), .COUT(n2427));
    defparam add_1053_19.INIT0 = 16'h5555;
    defparam add_1053_19.INIT1 = 16'h5555;
    defparam add_1053_19.INJECT1_0 = "NO";
    defparam add_1053_19.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    CCU2C add_1053_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2425), .COUT(n2426));
    defparam add_1053_17.INIT0 = 16'h5555;
    defparam add_1053_17.INIT1 = 16'h5555;
    defparam add_1053_17.INJECT1_0 = "NO";
    defparam add_1053_17.INJECT1_1 = "NO";
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    CCU2C cnt1_169_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2359), 
          .COUT(n2360), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_3.INJECT1_1 = "NO";
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    QPSK_modulator qpskModule_1 (.enable_d(enable_d), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
            .clk_N_174(clk_N_174), .Q_bit(Q_bit), .fskModule_symVal(fskModule_symVal), 
            .fskModule_symDone(fskModule_symDone), .next_state_3__N_155(next_state_3__N_155), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_322(next_state_3__N_322), 
            .n1822(n1822), .n2868(n2868), .I_bit(I_bit), .n2875(n2875), 
            .clockDivider_clk_4M_enable_111(clockDivider_clk_4M_enable_111), 
            .next_state_3__N_153(next_state_3__N_153), .next_state_3__N_152(next_state_3__N_152), 
            .n2748(n2748), .theta({theta}), .\theta_9__N_237[23] (theta_9__N_237[23]), 
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
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[9:61])
    CCU2C add_1053_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2424), .COUT(n2425));
    defparam add_1053_15.INIT0 = 16'h5555;
    defparam add_1053_15.INIT1 = 16'h5555;
    defparam add_1053_15.INJECT1_0 = "NO";
    defparam add_1053_15.INJECT1_1 = "NO";
    CCU2C add_1053_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2423), .COUT(n2424));
    defparam add_1053_13.INIT0 = 16'h5555;
    defparam add_1053_13.INIT1 = 16'h5555;
    defparam add_1053_13.INJECT1_0 = "NO";
    defparam add_1053_13.INJECT1_1 = "NO";
    FD1S3AX cnt1_169__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i25.GSR = "DISABLED";
    CCU2C add_1053_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2422), .COUT(n2423));
    defparam add_1053_11.INIT0 = 16'h5555;
    defparam add_1053_11.INIT1 = 16'h5555;
    defparam add_1053_11.INJECT1_0 = "NO";
    defparam add_1053_11.INJECT1_1 = "NO";
    FD1S3AX cnt1_169__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i24.GSR = "DISABLED";
    FD1S3AX cnt1_169__i23 (.D(n112), .CK(serial_clk_c), .Q(n3_adj_375)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i23.GSR = "DISABLED";
    FD1S3AX cnt1_169__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i22.GSR = "DISABLED";
    FD1S3AX cnt1_169__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169__i21.GSR = "DISABLED";
    FD1S3AX cnt1_169__i20 (.D(n115), .CK(serial_clk_c), .Q(n6_adj_374)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
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
    CCU2C add_1053_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2421), .COUT(n2422));
    defparam add_1053_9.INIT0 = 16'h5555;
    defparam add_1053_9.INIT1 = 16'h5555;
    defparam add_1053_9.INJECT1_0 = "NO";
    defparam add_1053_9.INJECT1_1 = "NO";
    CCU2C add_1053_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2420), .COUT(n2421));
    defparam add_1053_7.INIT0 = 16'haaa5;
    defparam add_1053_7.INIT1 = 16'h5555;
    defparam add_1053_7.INJECT1_0 = "NO";
    defparam add_1053_7.INJECT1_1 = "NO";
    CCU2C add_1053_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2419), .COUT(n2420));
    defparam add_1053_5.INIT0 = 16'h5555;
    defparam add_1053_5.INIT1 = 16'haaa5;
    defparam add_1053_5.INJECT1_0 = "NO";
    defparam add_1053_5.INJECT1_1 = "NO";
    CCU2C add_1053_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2418), .COUT(n2419));
    defparam add_1053_3.INIT0 = 16'haaa5;
    defparam add_1053_3.INIT1 = 16'h5555;
    defparam add_1053_3.INJECT1_0 = "NO";
    defparam add_1053_3.INJECT1_1 = "NO";
    CCU2C add_1053_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2418));
    defparam add_1053_1.INIT0 = 16'h0000;
    defparam add_1053_1.INIT1 = 16'haaaf;
    defparam add_1053_1.INJECT1_0 = "NO";
    defparam add_1053_1.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2369), 
          .COUT(n2370), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6_adj_374), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2368), .COUT(n2369), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2367), 
          .COUT(n2368), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_19.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2366), 
          .COUT(n2367), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_17.INJECT1_1 = "NO";
    IQSerializer IQSerializer_1 (.\QCounter[1] (QCounter[1]), .\QCounter[2] (QCounter[2]), 
            .IQSerializer_Q({IQSerializer_Q}), .n6(n6), .n3(n3), .\ICounter[3] (ICounter[3]), 
            .\ICounter[2] (ICounter[2]), .\ICounter[1] (ICounter[1]), .n2880(n2880), 
            .clk_N_262(clk_N_262), .n2469(n2469), .n2833(n2833), .next_state_3__N_320(next_state_3__N_320), 
            .n6_adj_1(n6_adj_378), .next_state_3__N_322(next_state_3__N_322), 
            .n1822(n1822), .n2881(n2881), .n2868(n2868), .n2818(n2818), 
            .n3_adj_2(n3_adj_377), .\IQSerializer_I[5] (IQSerializer_I[5]), 
            .\IQSerializer_I[7] (IQSerializer_I[7]), .n6_adj_3(n6_adj_376), 
            .\IQSerializer_I[1] (IQSerializer_I[1]), .\IQSerializer_I[3] (IQSerializer_I[3]), 
            .n3_adj_4(n3_adj_380), .next_state_3__N_321(next_state_3__N_321), 
            .\IQSerializer_I[11] (IQSerializer_I[11]), .\IQSerializer_I[9] (IQSerializer_I[9]), 
            .\IQSerializer_I[13] (IQSerializer_I[13]), .enable_d(enable_d), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_155(next_state_3__N_155), 
            .n2814(n2814), .DEDFF_D0_N_339(DEDFF_D0_N_339), .n2465(n2465), 
            .DEDFF_D0_N_334(DEDFF_D0_N_334), .n2942(n2942), .serial_iq_c(serial_iq_c), 
            .serial_clk_c(serial_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(163[14] 171[2])
    CCU2C _add_1_add_4_23 (.A0(theta[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2382), .S0(theta_9__N_237[23]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_add_4_23.INIT1 = 16'h0000;
    defparam _add_1_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_add_4_23.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2365), 
          .COUT(n2366), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_15.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2363), 
          .COUT(n2364), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_21 (.A0(theta[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2381), .COUT(n2382), .S0(theta_9__N_237[21]), .S1(theta_9__N_237[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_add_4_21.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_13 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2364), 
          .COUT(n2365), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_19 (.A0(theta[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2380), .COUT(n2381), .S0(theta_9__N_237[19]), .S1(theta_9__N_237[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_19.INIT0 = 16'h555f;
    defparam _add_1_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_17 (.A0(theta[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2379), .COUT(n2380), .S0(theta_9__N_237[17]), .S1(theta_9__N_237[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_add_4_17.INIT1 = 16'h555f;
    defparam _add_1_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_15 (.A0(theta[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2378), .COUT(n2379), .S0(theta_9__N_237[15]), .S1(theta_9__N_237[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_13 (.A0(phase_acc[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(theta[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2377), .COUT(n2378), .S0(theta_9__N_237[13]), .S1(theta_9__N_237[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_add_4_13.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2C _add_1_add_4_11 (.A0(phase_acc[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2376), .COUT(n2377), .S0(theta_9__N_237[11]), 
          .S1(theta_9__N_237[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_9 (.A0(phase_acc[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2375), .COUT(n2376), .S0(theta_9__N_237[9]), 
          .S1(theta_9__N_237[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_7 (.A0(phase_acc[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2374), .COUT(n2375), .S0(theta_9__N_237[7]), 
          .S1(theta_9__N_237[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_5 (.A0(phase_acc[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2373), .COUT(n2374), .S0(theta_9__N_237[5]), 
          .S1(theta_9__N_237[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_3 (.A0(phase_acc[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(phase_acc[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2372), .COUT(n2373), .S0(theta_9__N_237[3]), 
          .S1(theta_9__N_237[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_acc[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2372), .S1(theta_9__N_237[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[26:47])
    defparam _add_1_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_add_4_1.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2361), 
          .COUT(n2362), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_169_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_7.INJECT1_1 = "NO";
    CCU2C cnt1_169_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2371), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(106[10:20])
    defparam cnt1_169_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_169_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_169_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_169_add_4_27.INJECT1_1 = "NO";
    clockDivider clockDivider_0 (.clk_N_174(clk_N_174), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .serial_clk_c(serial_clk_c), .clockDivider_clkLock(clockDivider_clkLock), 
            .VCC_net(VCC_net), .n1819(n1819), .LED7_c(LED7_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(123[14] 128[2])
    LUT4 n2778_bdd_4_lut_4_lut (.A(n2880), .B(n3_adj_380), .C(n6_adj_376), 
         .D(n2818), .Z(DEDFF_D0_N_334)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (D)) */ ;
    defparam n2778_bdd_4_lut_4_lut.init = 16'hf588;
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_262(clk_N_262)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(120[12:100])
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, clockDivider_clk_4M, cout, clockDivider_clkLock, 
            GND_net, VCC_net, cout_adj_5, counter_0_countDone, n1819) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input clockDivider_clk_4M;
    input cout;
    input clockDivider_clkLock;
    input GND_net;
    input VCC_net;
    input cout_adj_5;
    output counter_0_countDone;
    input n1819;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n1821;
    wire [25:0]n109;
    
    wire n2358, countDone_N_133, n2350, n2351, n2349, n2348, n2357, 
        n2347, n2356, n2355, n2346, n2354, n2353, n2352;
    
    FD1S3IX waitcount_173__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i0.GSR = "DISABLED";
    LUT4 i1447_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1821)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1447_2_lut.init = 16'hbbbb;
    CCU2C waitcount_173_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2358), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_173_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_27.INJECT1_1 = "NO";
    LUT4 i130_1_lut (.A(cout_adj_5), .Z(countDone_N_133)) /* synthesis lut_function=(!(A)) */ ;
    defparam i130_1_lut.init = 16'h5555;
    CCU2C waitcount_173_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2350), .COUT(n2351), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2349), .COUT(n2350), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2348), .COUT(n2349), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2357), .COUT(n2358), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2347), .COUT(n2348), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2356), .COUT(n2357), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_23.INJECT1_1 = "NO";
    FD1S3IX waitcount_173__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i25.GSR = "DISABLED";
    CCU2C waitcount_173_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2355), .COUT(n2356), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2346), .COUT(n2347), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_3.INJECT1_1 = "NO";
    FD1S3IX waitcount_173__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i24.GSR = "DISABLED";
    FD1S3IX waitcount_173__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i23.GSR = "DISABLED";
    FD1S3IX waitcount_173__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i22.GSR = "DISABLED";
    FD1S3IX waitcount_173__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i21.GSR = "DISABLED";
    FD1S3IX waitcount_173__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i20.GSR = "DISABLED";
    FD1S3IX waitcount_173__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i19.GSR = "DISABLED";
    FD1S3IX waitcount_173__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i18.GSR = "DISABLED";
    FD1S3IX waitcount_173__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i17.GSR = "DISABLED";
    FD1S3IX waitcount_173__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i16.GSR = "DISABLED";
    FD1S3IX waitcount_173__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i15.GSR = "DISABLED";
    FD1S3IX waitcount_173__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i14.GSR = "DISABLED";
    FD1S3IX waitcount_173__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i13.GSR = "DISABLED";
    FD1S3IX waitcount_173__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i12.GSR = "DISABLED";
    FD1S3IX waitcount_173__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i11.GSR = "DISABLED";
    FD1S3IX waitcount_173__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1821), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i10.GSR = "DISABLED";
    FD1S3IX waitcount_173__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i9.GSR = "DISABLED";
    FD1S3IX waitcount_173__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i8.GSR = "DISABLED";
    FD1S3IX waitcount_173__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i7.GSR = "DISABLED";
    FD1S3IX waitcount_173__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i6.GSR = "DISABLED";
    FD1S3IX waitcount_173__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i5.GSR = "DISABLED";
    FD1S3IX waitcount_173__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i4.GSR = "DISABLED";
    FD1S3IX waitcount_173__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i3.GSR = "DISABLED";
    FD1S3IX waitcount_173__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i2.GSR = "DISABLED";
    FD1S3IX waitcount_173__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1821), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173__i1.GSR = "DISABLED";
    CCU2C waitcount_173_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2354), .COUT(n2355), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2353), .COUT(n2354), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2352), .COUT(n2353), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_15.INJECT1_1 = "NO";
    FD1S3IX countDone_13 (.D(countDone_N_133), .CK(clockDivider_clk_4M), 
            .CD(n1819), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=135 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_13.GSR = "DISABLED";
    CCU2C waitcount_173_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2346), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_173_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_173_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_173_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2351), .COUT(n2352), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_173_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_173_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_173_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_173_add_4_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module packetGenerator
//

module packetGenerator (next_state_3__N_155, clockDivider_clk_4M, n2875, 
            VCC_net, \IQSerializer_I[2] , \IQSerializer_I[10] , \ICounter[3] , 
            symCounter, next_state_3__N_153, data, n2748, counter_0_countDone, 
            \IQSerializer_I[12] , \IQSerializer_I[4] , \ICounter[2] , 
            DEDFF_D1_N_350, next_state_3__N_321, next_state_3__N_320, 
            n2942, fskModule_symVal, clk_N_174, clockDivider_clk_4M_enable_111, 
            next_state_3__N_152, \IQSerializer_I[8] , \IQSerializer_I[6] , 
            \ICounter[1] , clockDivider_clk_4M_enable_104, fskModule_symDone, 
            I_bit, \I[1] , Q_bit, \Q[1] , \IQSerializer_I[0] ) /* synthesis syn_module_defined=1 */ ;
    output next_state_3__N_155;
    input clockDivider_clk_4M;
    input n2875;
    input VCC_net;
    input \IQSerializer_I[2] ;
    input \IQSerializer_I[10] ;
    input \ICounter[3] ;
    output [7:0]symCounter;
    output next_state_3__N_153;
    input data;
    input n2748;
    input counter_0_countDone;
    input \IQSerializer_I[12] ;
    input \IQSerializer_I[4] ;
    input \ICounter[2] ;
    input DEDFF_D1_N_350;
    input next_state_3__N_321;
    input next_state_3__N_320;
    output n2942;
    output fskModule_symVal;
    input clk_N_174;
    input clockDivider_clk_4M_enable_111;
    output next_state_3__N_152;
    input \IQSerializer_I[8] ;
    input \IQSerializer_I[6] ;
    input \ICounter[1] ;
    output clockDivider_clk_4M_enable_104;
    input fskModule_symDone;
    input I_bit;
    output \I[1] ;
    input Q_bit;
    output \Q[1] ;
    input \IQSerializer_I[0] ;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire next_state_3__N_154, n2884;
    wire [7:0]n69;
    
    wire next_symVal, n2883, n2565, n2885, n2797, n2799, n2871, 
        n2872, next_symVal_N_171, n2659, n2796, n1719, n2593, n15, 
        n2873, n2669, n2667, n2641, n2795, n2651;
    
    FD1P3IX current_state_FSM_i1 (.D(VCC_net), .SP(next_state_3__N_154), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 n1_bdd_3_lut_then_3_lut (.A(\IQSerializer_I[2] ), .B(\IQSerializer_I[10] ), 
         .C(\ICounter[3] ), .Z(n2884)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1_bdd_3_lut_then_3_lut.init = 16'hacac;
    LUT4 i887_3_lut (.A(symCounter[1]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i887_3_lut.init = 16'h4848;
    LUT4 i1466_4_lut (.A(next_symVal), .B(data), .C(n2748), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1466_4_lut.init = 16'hca0a;
    LUT4 n1_bdd_3_lut_else_3_lut (.A(\IQSerializer_I[12] ), .B(\IQSerializer_I[4] ), 
         .C(\ICounter[3] ), .Z(n2883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1_bdd_3_lut_else_3_lut.init = 16'hcaca;
    FD1S3IX current_state_FSM_i2 (.D(n2565), .CK(clockDivider_clk_4M), .CD(n2875), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    LUT4 n2798_bdd_3_lut (.A(n2885), .B(n2797), .C(\ICounter[2] ), .Z(n2799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2798_bdd_3_lut.init = 16'hcaca;
    LUT4 DEDFF_D1_N_350_bdd_4_lut (.A(DEDFF_D1_N_350), .B(next_state_3__N_321), 
         .C(n2799), .D(next_state_3__N_320), .Z(n2942)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam DEDFF_D1_N_350_bdd_4_lut.init = 16'hf0ee;
    LUT4 i907_4_lut (.A(symCounter[4]), .B(next_state_3__N_153), .C(n2871), 
         .D(n2872), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i907_4_lut.init = 16'h4888;
    FD1S3IX symVal_43 (.D(next_symVal_N_171), .CK(clk_N_174), .CD(n2875), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "DISABLED";
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "DISABLED";
    LUT4 i4_2_lut_rep_12 (.A(symCounter[3]), .B(symCounter[2]), .Z(n2871)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_rep_12.init = 16'h8888;
    FD1S3AX current_state_FSM_i4 (.D(n2875), .CK(clockDivider_clk_4M), .Q(next_state_3__N_152));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(symCounter[3]), .B(symCounter[2]), .C(symCounter[5]), 
         .D(symCounter[4]), .Z(n2659)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 ICounter_3__bdd_3_lut (.A(\IQSerializer_I[8] ), .B(\IQSerializer_I[6] ), 
         .C(\ICounter[1] ), .Z(n2796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam ICounter_3__bdd_3_lut.init = 16'hcaca;
    FD1S3IX current_state_FSM_i3 (.D(n1719), .CK(clockDivider_clk_4M), .CD(n2875), 
            .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_171)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    LUT4 i880_2_lut (.A(symCounter[0]), .B(next_state_3__N_153), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i880_2_lut.init = 16'h4444;
    LUT4 i881_2_lut_rep_23 (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .Z(clockDivider_clk_4M_enable_104)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i881_2_lut_rep_23.init = 16'h4444;
    LUT4 i596_4_lut (.A(next_state_3__N_153), .B(next_state_3__N_152), .C(n2593), 
         .D(fskModule_symDone), .Z(n1719)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i596_4_lut.init = 16'hceee;
    LUT4 i1450_2_lut_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(I_bit), .Z(\I[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1450_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut (.A(n2871), .B(n15), .C(symCounter[0]), .D(symCounter[6]), 
         .Z(n2593)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i908_4_lut (.A(symCounter[3]), .B(next_state_3__N_153), .C(symCounter[0]), 
         .D(n2873), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i908_4_lut.init = 16'h4888;
    LUT4 i904_4_lut (.A(symCounter[7]), .B(next_state_3__N_153), .C(n2669), 
         .D(n2667), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i904_4_lut.init = 16'h4888;
    LUT4 i1_3_lut (.A(symCounter[6]), .B(symCounter[0]), .C(symCounter[5]), 
         .Z(n2667)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1457_2_lut_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(Q_bit), .Z(\Q[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1457_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_4_lut_adj_15 (.A(symCounter[1]), .B(symCounter[5]), .C(symCounter[4]), 
         .D(symCounter[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h8000;
    LUT4 i1_4_lut_adj_16 (.A(n2871), .B(fskModule_symDone), .C(n15), .D(n2641), 
         .Z(n2565)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h8000;
    LUT4 i1_3_lut_adj_17 (.A(next_state_3__N_153), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2641)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_17.init = 16'h8080;
    LUT4 i905_4_lut (.A(symCounter[6]), .B(next_state_3__N_153), .C(n2659), 
         .D(n2872), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i905_4_lut.init = 16'h4888;
    PFUMX i1509 (.BLUT(n2796), .ALUT(n2795), .C0(\ICounter[3] ), .Z(n2797));
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2651)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_2_lut_rep_13 (.A(symCounter[1]), .B(symCounter[0]), .Z(n2872)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i2_2_lut_rep_13.init = 16'h8888;
    LUT4 i909_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[0]), .C(next_state_3__N_153), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i909_3_lut_4_lut.init = 16'h7080;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "DISABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "DISABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "DISABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "DISABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "DISABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "DISABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_111), 
            .CD(n2875), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=137, LSE_RLINE=143 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_14 (.A(symCounter[2]), .B(symCounter[1]), .Z(n2873)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_14.init = 16'h8888;
    PFUMX i1561 (.BLUT(n2883), .ALUT(n2884), .C0(\ICounter[1] ), .Z(n2885));
    LUT4 i906_4_lut (.A(symCounter[5]), .B(next_state_3__N_153), .C(n2651), 
         .D(n2873), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i906_4_lut.init = 16'h4888;
    LUT4 ICounter_3__bdd_2_lut (.A(\IQSerializer_I[0] ), .B(\ICounter[1] ), 
         .Z(n2795)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam ICounter_3__bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[2]), .B(symCounter[1]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2669)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module QPSK_modulator
//

module QPSK_modulator (enable_d, clockDivider_clk_4M, clockDivider_clk_4M_enable_104, 
            clk_N_174, Q_bit, fskModule_symVal, fskModule_symDone, next_state_3__N_155, 
            counter_0_countDone, next_state_3__N_322, n1822, n2868, 
            I_bit, n2875, clockDivider_clk_4M_enable_111, next_state_3__N_153, 
            next_state_3__N_152, n2748, theta, \theta_9__N_237[23] , 
            \theta_9__N_237[22] , \theta_9__N_237[21] , \theta_9__N_237[20] , 
            \theta_9__N_237[19] , \theta_9__N_237[18] , \theta_9__N_237[17] , 
            \theta_9__N_237[16] , \theta_9__N_237[15] , \theta_9__N_237[14] , 
            \phase_acc[13] , \theta_9__N_237[13] , \phase_acc[12] , \theta_9__N_237[12] , 
            \phase_acc[11] , \theta_9__N_237[11] , \phase_acc[10] , \theta_9__N_237[10] , 
            \phase_acc[9] , \theta_9__N_237[9] , \phase_acc[8] , \theta_9__N_237[8] , 
            \phase_acc[7] , \theta_9__N_237[7] , \phase_acc[6] , \theta_9__N_237[6] , 
            \phase_acc[5] , \theta_9__N_237[5] , \phase_acc[4] , \theta_9__N_237[4] , 
            \phase_acc[3] , \theta_9__N_237[3] , \phase_acc[2] , \theta_9__N_237[2] , 
            VCC_net, GND_net, \Q[1] , IQSerializer_Q, \I[1] , IQSerializer_I) /* synthesis syn_module_defined=1 */ ;
    output enable_d;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_104;
    input clk_N_174;
    output Q_bit;
    input fskModule_symVal;
    output fskModule_symDone;
    input next_state_3__N_155;
    input counter_0_countDone;
    input next_state_3__N_322;
    output n1822;
    output n2868;
    output I_bit;
    output n2875;
    output clockDivider_clk_4M_enable_111;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n2748;
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
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire clk_N_174_enable_5, switch;
    wire [7:0]carry_sin_s;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(16[30:41])
    wire [7:0]carry_cos_s;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(17[30:41])
    
    wire rega_a_0;
    
    FD1S3AX enable_d_11 (.D(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(enable_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=145, LSE_RLINE=160 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(27[20:39])
    defparam enable_d_11.GSR = "ENABLED";
    iq_div iq_div_inst (.clk_N_174(clk_N_174), .Q_bit(Q_bit), .clk_N_174_enable_5(clk_N_174_enable_5), 
           .fskModule_symVal(fskModule_symVal), .fskModule_symDone(fskModule_symDone), 
           .next_state_3__N_155(next_state_3__N_155), .counter_0_countDone(counter_0_countDone), 
           .next_state_3__N_322(next_state_3__N_322), .enable_d(enable_d), 
           .n1822(n1822), .n2868(n2868), .I_bit(I_bit), .switch(switch)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(39[7] 48[6])
    dds_lattice_sincos dds0 (.counter_0_countDone(counter_0_countDone), .n2875(n2875), 
            .fskModule_symDone(fskModule_symDone), .clockDivider_clk_4M_enable_111(clockDivider_clk_4M_enable_111), 
            .switch(switch), .next_state_3__N_155(next_state_3__N_155), 
            .clk_N_174_enable_5(clk_N_174_enable_5), .next_state_3__N_153(next_state_3__N_153), 
            .next_state_3__N_152(next_state_3__N_152), .n2748(n2748), .theta({theta}), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .\theta_9__N_237[23] (\theta_9__N_237[23] ), 
            .\theta_9__N_237[22] (\theta_9__N_237[22] ), .\theta_9__N_237[21] (\theta_9__N_237[21] ), 
            .\theta_9__N_237[20] (\theta_9__N_237[20] ), .\theta_9__N_237[19] (\theta_9__N_237[19] ), 
            .\theta_9__N_237[18] (\theta_9__N_237[18] ), .\theta_9__N_237[17] (\theta_9__N_237[17] ), 
            .\theta_9__N_237[16] (\theta_9__N_237[16] ), .\theta_9__N_237[15] (\theta_9__N_237[15] ), 
            .\theta_9__N_237[14] (\theta_9__N_237[14] ), .\phase_acc[13] (\phase_acc[13] ), 
            .\theta_9__N_237[13] (\theta_9__N_237[13] ), .\phase_acc[12] (\phase_acc[12] ), 
            .\theta_9__N_237[12] (\theta_9__N_237[12] ), .\phase_acc[11] (\phase_acc[11] ), 
            .\theta_9__N_237[11] (\theta_9__N_237[11] ), .\phase_acc[10] (\phase_acc[10] ), 
            .\theta_9__N_237[10] (\theta_9__N_237[10] ), .\phase_acc[9] (\phase_acc[9] ), 
            .\theta_9__N_237[9] (\theta_9__N_237[9] ), .\phase_acc[8] (\phase_acc[8] ), 
            .\theta_9__N_237[8] (\theta_9__N_237[8] ), .\phase_acc[7] (\phase_acc[7] ), 
            .\theta_9__N_237[7] (\theta_9__N_237[7] ), .\phase_acc[6] (\phase_acc[6] ), 
            .\theta_9__N_237[6] (\theta_9__N_237[6] ), .\phase_acc[5] (\phase_acc[5] ), 
            .\theta_9__N_237[5] (\theta_9__N_237[5] ), .\phase_acc[4] (\phase_acc[4] ), 
            .\theta_9__N_237[4] (\theta_9__N_237[4] ), .\phase_acc[3] (\phase_acc[3] ), 
            .\theta_9__N_237[3] (\theta_9__N_237[3] ), .\phase_acc[2] (\phase_acc[2] ), 
            .\theta_9__N_237[2] (\theta_9__N_237[2] ), .VCC_net(VCC_net), 
            .\carry_sin_s[4] (carry_sin_s[4]), .\carry_sin_s[5] (carry_sin_s[5]), 
            .\carry_sin_s[6] (carry_sin_s[6]), .\carry_sin_s[7] (carry_sin_s[7]), 
            .\carry_cos_s[4] (carry_cos_s[4]), .\carry_cos_s[5] (carry_cos_s[5]), 
            .\carry_cos_s[6] (carry_cos_s[6]), .\carry_cos_s[7] (carry_cos_s[7]), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(90[7] 97[6])
    multiplier Q_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
            .VCC_net(VCC_net), .\Q[1] (\Q[1] ), .\carry_sin_s[4] (carry_sin_s[4]), 
            .\carry_sin_s[5] (carry_sin_s[5]), .\carry_sin_s[6] (carry_sin_s[6]), 
            .\carry_sin_s[7] (carry_sin_s[7]), .IQSerializer_Q({IQSerializer_Q}), 
            .GND_net(GND_net)) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(126[16] 133[6])
    multiplier_U1 I_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
            .\I[1] (\I[1] ), .\carry_cos_s[4] (carry_cos_s[4]), .\carry_cos_s[5] (carry_cos_s[5]), 
            .\carry_cos_s[6] (carry_cos_s[6]), .\carry_cos_s[7] (carry_cos_s[7]), 
            .IQSerializer_I({IQSerializer_I}), .VCC_net(VCC_net), .GND_net(GND_net)) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(117[16] 124[6])
    
endmodule
//
// Verilog Description of module iq_div
//

module iq_div (clk_N_174, Q_bit, clk_N_174_enable_5, fskModule_symVal, 
            fskModule_symDone, next_state_3__N_155, counter_0_countDone, 
            next_state_3__N_322, enable_d, n1822, n2868, I_bit, switch) /* synthesis syn_module_defined=1 */ ;
    input clk_N_174;
    output Q_bit;
    input clk_N_174_enable_5;
    input fskModule_symVal;
    output fskModule_symDone;
    input next_state_3__N_155;
    input counter_0_countDone;
    input next_state_3__N_322;
    input enable_d;
    output n1822;
    output n2868;
    output I_bit;
    output switch;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire I_bit_temp, clk_N_174_enable_3, n2876, I_bit_temp2, Q_bit_temp;
    wire [7:0]cnt_sample;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(21[17:27])
    
    wire n12, n1027, n2870, n2874;
    wire [7:0]cnt_sample_7__N_200;
    
    wire symDone_N_220, n2877, iq_switch_N_217, n10, n11, n12_adj_372, 
        n2878, n8;
    
    FD1P3IX I_bit_temp_60 (.D(I_bit_temp2), .SP(clk_N_174_enable_3), .CD(n2876), 
            .CK(clk_N_174), .Q(I_bit_temp)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp_60.GSR = "ENABLED";
    FD1P3IX Q_bit_59 (.D(Q_bit_temp), .SP(clk_N_174_enable_5), .CD(n2876), 
            .CK(clk_N_174), .Q(Q_bit)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_59.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_11_4_lut (.A(cnt_sample[3]), .B(cnt_sample[7]), .C(n12), 
         .D(n1027), .Z(n2870)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_3_lut_rep_11_4_lut.init = 16'hfeff;
    LUT4 i893_3_lut_4_lut (.A(n1027), .B(n12), .C(n2874), .D(cnt_sample[2]), 
         .Z(cnt_sample_7__N_200[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i893_3_lut_4_lut.init = 16'h55a8;
    FD1P3IX Q_bit_temp_61 (.D(fskModule_symVal), .SP(clk_N_174_enable_3), 
            .CD(n2876), .CK(clk_N_174), .Q(Q_bit_temp)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_temp_61.GSR = "ENABLED";
    FD1S3IX symDone_56 (.D(symDone_N_220), .CK(clk_N_174), .CD(n2876), 
            .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam symDone_56.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_17 (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .Z(n2876)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_17.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(next_state_3__N_322), .D(enable_d), .Z(n1822)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut_rep_9_3_lut (.A(next_state_3__N_155), .B(counter_0_countDone), 
         .C(enable_d), .Z(n2868)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_rep_9_3_lut.init = 16'hfbfb;
    FD1P3IX I_bit_58 (.D(I_bit_temp), .SP(clk_N_174_enable_5), .CD(n2876), 
            .CK(clk_N_174), .Q(I_bit)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_58.GSR = "ENABLED";
    FD1P3IX I_bit_temp2_62 (.D(fskModule_symVal), .SP(clk_N_174_enable_5), 
            .CD(n2876), .CK(clk_N_174), .Q(I_bit_temp2)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp2_62.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_18 (.A(cnt_sample[3]), .B(cnt_sample[2]), .Z(n2877)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i2_2_lut_rep_18.init = 16'h8888;
    FD1S3JX iq_switch_57 (.D(iq_switch_N_217), .CK(clk_N_174), .PD(n2876), 
            .Q(switch)) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[18] 65[12])
    defparam iq_switch_57.GSR = "ENABLED";
    FD1S3JX cnt_sample_i0 (.D(cnt_sample_7__N_200[0]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[0])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i0.GSR = "ENABLED";
    LUT4 i4_3_lut_4_lut (.A(cnt_sample[3]), .B(cnt_sample[2]), .C(cnt_sample[4]), 
         .D(cnt_sample[5]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut_4_lut.init = 16'h8000;
    LUT4 i888_4_lut (.A(cnt_sample[7]), .B(n2870), .C(n11), .D(n12_adj_372), 
         .Z(cnt_sample_7__N_200[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i888_4_lut.init = 16'h4888;
    LUT4 i4_3_lut (.A(cnt_sample[0]), .B(cnt_sample[6]), .C(cnt_sample[5]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i4_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_19 (.A(cnt_sample[2]), .B(cnt_sample[1]), .Z(n2878)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_19.init = 16'h8888;
    LUT4 i1445_3_lut (.A(counter_0_countDone), .B(next_state_3__N_155), 
         .C(switch), .Z(clk_N_174_enable_3)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1445_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut (.A(cnt_sample[2]), .B(cnt_sample[5]), .C(cnt_sample[4]), 
         .D(cnt_sample[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i890_4_lut (.A(cnt_sample[5]), .B(n2870), .C(n2878), .D(n8), 
         .Z(cnt_sample_7__N_200[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i890_4_lut.init = 16'h4888;
    LUT4 i1462_4_lut (.A(n12), .B(cnt_sample[1]), .C(n2874), .D(cnt_sample[0]), 
         .Z(symDone_N_220)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1462_4_lut.init = 16'h0004;
    LUT4 i889_4_lut (.A(cnt_sample[6]), .B(n2870), .C(n1027), .D(n10), 
         .Z(cnt_sample_7__N_200[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i889_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_4_lut (.A(n1027), .B(n12), .C(n2874), .D(switch), 
         .Z(iq_switch_N_217)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_4_lut.init = 16'hfd02;
    LUT4 i5_2_lut_3_lut_4_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[1]), 
         .D(cnt_sample[2]), .Z(n12_adj_372)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i3_2_lut_3_lut (.A(cnt_sample[4]), .B(cnt_sample[3]), .C(cnt_sample[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i3_2_lut_3_lut.init = 16'h8080;
    LUT4 i891_4_lut (.A(cnt_sample[4]), .B(n2870), .C(n2877), .D(n1027), 
         .Z(cnt_sample_7__N_200[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i891_4_lut.init = 16'h4888;
    LUT4 i892_4_lut (.A(cnt_sample[3]), .B(n2870), .C(cnt_sample[0]), 
         .D(n2878), .Z(cnt_sample_7__N_200[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i892_4_lut.init = 16'h4888;
    LUT4 i423_2_lut (.A(cnt_sample[1]), .B(cnt_sample[0]), .Z(n1027)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i423_2_lut.init = 16'h8888;
    LUT4 i419_1_lut (.A(cnt_sample[0]), .Z(cnt_sample_7__N_200[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i419_1_lut.init = 16'h5555;
    LUT4 i894_3_lut (.A(cnt_sample[1]), .B(n2870), .C(cnt_sample[0]), 
         .Z(cnt_sample_7__N_200[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(42[13] 44[7])
    defparam i894_3_lut.init = 16'h4848;
    FD1S3JX cnt_sample_i7 (.D(cnt_sample_7__N_200[7]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[7])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i7.GSR = "ENABLED";
    FD1S3JX cnt_sample_i6 (.D(cnt_sample_7__N_200[6]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[6])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i6.GSR = "ENABLED";
    FD1S3JX cnt_sample_i5 (.D(cnt_sample_7__N_200[5]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[5])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i5.GSR = "ENABLED";
    FD1S3JX cnt_sample_i4 (.D(cnt_sample_7__N_200[4]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[4])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i4.GSR = "ENABLED";
    FD1S3JX cnt_sample_i3 (.D(cnt_sample_7__N_200[3]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[3])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i3.GSR = "ENABLED";
    FD1S3JX cnt_sample_i2 (.D(cnt_sample_7__N_200[2]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[2])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i2.GSR = "ENABLED";
    FD1S3JX cnt_sample_i1 (.D(cnt_sample_7__N_200[1]), .CK(clk_N_174), .PD(n2876), 
            .Q(cnt_sample[1])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=48 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_15 (.A(cnt_sample[3]), .B(cnt_sample[7]), .Z(n2874)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_rep_15.init = 16'heeee;
    
endmodule
//
// Verilog Description of module dds_lattice_sincos
//

module dds_lattice_sincos (counter_0_countDone, n2875, fskModule_symDone, 
            clockDivider_clk_4M_enable_111, switch, next_state_3__N_155, 
            clk_N_174_enable_5, next_state_3__N_153, next_state_3__N_152, 
            n2748, theta, clockDivider_clk_4M, \theta_9__N_237[23] , 
            \theta_9__N_237[22] , \theta_9__N_237[21] , \theta_9__N_237[20] , 
            \theta_9__N_237[19] , \theta_9__N_237[18] , \theta_9__N_237[17] , 
            \theta_9__N_237[16] , \theta_9__N_237[15] , \theta_9__N_237[14] , 
            \phase_acc[13] , \theta_9__N_237[13] , \phase_acc[12] , \theta_9__N_237[12] , 
            \phase_acc[11] , \theta_9__N_237[11] , \phase_acc[10] , \theta_9__N_237[10] , 
            \phase_acc[9] , \theta_9__N_237[9] , \phase_acc[8] , \theta_9__N_237[8] , 
            \phase_acc[7] , \theta_9__N_237[7] , \phase_acc[6] , \theta_9__N_237[6] , 
            \phase_acc[5] , \theta_9__N_237[5] , \phase_acc[4] , \theta_9__N_237[4] , 
            \phase_acc[3] , \theta_9__N_237[3] , \phase_acc[2] , \theta_9__N_237[2] , 
            VCC_net, \carry_sin_s[4] , \carry_sin_s[5] , \carry_sin_s[6] , 
            \carry_sin_s[7] , \carry_cos_s[4] , \carry_cos_s[5] , \carry_cos_s[6] , 
            \carry_cos_s[7] , GND_net) /* synthesis syn_module_defined=1 */ ;
    input counter_0_countDone;
    output n2875;
    input fskModule_symDone;
    output clockDivider_clk_4M_enable_111;
    input switch;
    input next_state_3__N_155;
    output clk_N_174_enable_5;
    input next_state_3__N_153;
    input next_state_3__N_152;
    output n2748;
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
    output \carry_sin_s[4] ;
    output \carry_sin_s[5] ;
    output \carry_sin_s[6] ;
    output \carry_sin_s[7] ;
    output \carry_cos_s[4] ;
    output \carry_cos_s[5] ;
    output \carry_cos_s[6] ;
    output \carry_cos_s[7] ;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    LUT4 rst_I_0_1_lut_rep_16 (.A(counter_0_countDone), .Z(n2875)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_16.init = 16'h5555;
    LUT4 i185_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_111)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i185_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_3_lut_3_lut (.A(counter_0_countDone), .B(switch), .C(next_state_3__N_155), 
         .Z(clk_N_174_enable_5)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1468_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_153), 
         .C(next_state_3__N_152), .Z(n2748)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1468_3_lut_3_lut.init = 16'hfdfd;
    FD1S3AX phase_acc_i23 (.D(\theta_9__N_237[23] ), .CK(clockDivider_clk_4M), 
            .Q(theta[9])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i23.GSR = "ENABLED";
    FD1S3AX phase_acc_i22 (.D(\theta_9__N_237[22] ), .CK(clockDivider_clk_4M), 
            .Q(theta[8])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i22.GSR = "ENABLED";
    FD1S3AX phase_acc_i21 (.D(\theta_9__N_237[21] ), .CK(clockDivider_clk_4M), 
            .Q(theta[7])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i21.GSR = "ENABLED";
    FD1S3AX phase_acc_i20 (.D(\theta_9__N_237[20] ), .CK(clockDivider_clk_4M), 
            .Q(theta[6])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i20.GSR = "ENABLED";
    FD1S3AX phase_acc_i19 (.D(\theta_9__N_237[19] ), .CK(clockDivider_clk_4M), 
            .Q(theta[5])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i19.GSR = "ENABLED";
    FD1S3AX phase_acc_i18 (.D(\theta_9__N_237[18] ), .CK(clockDivider_clk_4M), 
            .Q(theta[4])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i18.GSR = "ENABLED";
    FD1S3AX phase_acc_i17 (.D(\theta_9__N_237[17] ), .CK(clockDivider_clk_4M), 
            .Q(theta[3])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i17.GSR = "ENABLED";
    FD1S3AX phase_acc_i16 (.D(\theta_9__N_237[16] ), .CK(clockDivider_clk_4M), 
            .Q(theta[2])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i16.GSR = "ENABLED";
    FD1S3AX phase_acc_i15 (.D(\theta_9__N_237[15] ), .CK(clockDivider_clk_4M), 
            .Q(theta[1])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i15.GSR = "ENABLED";
    FD1S3AX phase_acc_i14 (.D(\theta_9__N_237[14] ), .CK(clockDivider_clk_4M), 
            .Q(theta[0])) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i14.GSR = "ENABLED";
    FD1S3AX phase_acc_i13 (.D(\theta_9__N_237[13] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[13] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i13.GSR = "ENABLED";
    FD1S3AX phase_acc_i12 (.D(\theta_9__N_237[12] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[12] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i12.GSR = "ENABLED";
    FD1S3AX phase_acc_i11 (.D(\theta_9__N_237[11] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[11] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i11.GSR = "ENABLED";
    FD1S3AX phase_acc_i10 (.D(\theta_9__N_237[10] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[10] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i10.GSR = "ENABLED";
    FD1S3AX phase_acc_i9 (.D(\theta_9__N_237[9] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[9] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i9.GSR = "ENABLED";
    FD1S3AX phase_acc_i8 (.D(\theta_9__N_237[8] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[8] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i8.GSR = "ENABLED";
    FD1S3AX phase_acc_i7 (.D(\theta_9__N_237[7] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[7] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i7.GSR = "ENABLED";
    FD1S3AX phase_acc_i6 (.D(\theta_9__N_237[6] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[6] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i6.GSR = "ENABLED";
    FD1S3AX phase_acc_i5 (.D(\theta_9__N_237[5] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[5] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i5.GSR = "ENABLED";
    FD1S3AX phase_acc_i4 (.D(\theta_9__N_237[4] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[4] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i4.GSR = "ENABLED";
    FD1S3AX phase_acc_i3 (.D(\theta_9__N_237[3] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[3] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i3.GSR = "ENABLED";
    FD1S3AX phase_acc_i2 (.D(\theta_9__N_237[2] ), .CK(clockDivider_clk_4M), 
            .Q(\phase_acc[2] )) /* synthesis LSE_LINE_FILE_ID=35, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=97 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(20[13:48])
    defparam phase_acc_i2.GSR = "ENABLED";
    sincos_m __ (.clockDivider_clk_4M(clockDivider_clk_4M), .VCC_net(VCC_net), 
            .theta({theta}), .\carry_sin_s[4] (\carry_sin_s[4] ), .\carry_sin_s[5] (\carry_sin_s[5] ), 
            .\carry_sin_s[6] (\carry_sin_s[6] ), .\carry_sin_s[7] (\carry_sin_s[7] ), 
            .\carry_cos_s[4] (\carry_cos_s[4] ), .\carry_cos_s[5] (\carry_cos_s[5] ), 
            .\carry_cos_s[6] (\carry_cos_s[6] ), .\carry_cos_s[7] (\carry_cos_s[7] ), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    
endmodule
//
// Verilog Description of module sincos_m
//

module sincos_m (clockDivider_clk_4M, VCC_net, theta, \carry_sin_s[4] , 
            \carry_sin_s[5] , \carry_sin_s[6] , \carry_sin_s[7] , \carry_cos_s[4] , 
            \carry_cos_s[5] , \carry_cos_s[6] , \carry_cos_s[7] , GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clockDivider_clk_4M;
    input VCC_net;
    input [9:0]theta;
    output \carry_sin_s[4] ;
    output \carry_sin_s[5] ;
    output \carry_sin_s[6] ;
    output \carry_sin_s[7] ;
    output \carry_cos_s[4] ;
    output \carry_cos_s[5] ;
    output \carry_cos_s[6] ;
    output \carry_cos_s[7] ;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire rom_addr0_r_5, rom_addr0_r_5_inv, rom_addr0_r_1, rom_addr0_r_2, 
        rom_addr0_r_3, rom_addr0_r_4, rom_addr0_r_6, rom_addr0_r_7, 
        mx_ctrl_r, mx_ctrl_r_1, rom_dout_6, rom_dout_6_ffin, rom_addr0_r, 
        rom_addr0_r_n, rom_addr0_r_8, rom_dout_5, rom_dout_5_ffin, rom_dout_4, 
        rom_dout_4_ffin, rom_dout_3, rom_dout_3_ffin, rom_dout_2, rom_dout_2_ffin, 
        rom_dout_1, rom_dout_1_ffin, rom_dout, rom_dout_ffin, rom_dout_15, 
        rom_dout_15_ffin, rom_dout_14, rom_dout_14_ffin, rom_dout_13, 
        rom_dout_13_ffin, rom_dout_12, rom_dout_12_ffin, rom_dout_11, 
        rom_dout_11_ffin, rom_dout_10, rom_dout_10_ffin, rom_dout_9, 
        rom_dout_9_ffin, rom_dout_8, rom_dout_8_ffin, cosromoutsel, 
        cosromoutsel_i, sinromoutsel, sinout_pre_4, sinout_pre_5, sinout_pre_6, 
        sinout_pre_7, cosout_pre_4, cosout_pre_5, cosout_pre_6, cosout_pre_7, 
        rom_addr0_r_inv, co0, rom_addr0_r_n_1, rom_addr0_r_n_2, rom_addr0_r_2_inv, 
        rom_addr0_r_1_inv, co1, rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_4_inv, 
        rom_addr0_r_3_inv, co2, rom_addr0_r_n_5, rom_addr0_r_n_6, rom_addr0_r_6_inv, 
        co3, rom_addr0_r_n_7, rom_addr0_r_7_inv, rom_dout_7_ffin, rom_addr0_r_9, 
        rom_addr0_r_10, rom_addr0_r_11, rom_addr0_r_12, rom_addr0_r_13, 
        rom_addr0_r_14, rom_addr0_r_15, rom_dout_2_inv, rom_dout_1_inv, 
        co0_1, co1_1, rom_dout_s_n_4, rom_dout_4_inv, rom_dout_3_inv, 
        co2_1, rom_dout_s_n_5, rom_dout_s_n_6, rom_dout_6_inv, rom_dout_5_inv, 
        co3_1, rom_dout_s_n_7, rom_dout_7_inv, rom_dout_8_inv, co0_2, 
        rom_dout_10_inv, rom_dout_9_inv, co1_2, rom_dout_c_n_4, rom_dout_12_inv, 
        rom_dout_11_inv, co2_2, rom_dout_c_n_5, rom_dout_c_n_6, rom_dout_14_inv, 
        rom_dout_13_inv, co3_2, rom_dout_c_n_7, rom_dout_15_inv, rom_dout_7, 
        rom_dout_inv, func_or_inet, func_or_inet_1, lx_ne0, lx_ne0_inv, 
        out_sel_i, out_sel, rom_dout_s_4, rom_dout_s_5, rom_dout_s_6, 
        rom_dout_s_7, rom_dout_c_4, rom_dout_c_5, rom_dout_c_6, rom_dout_c_7;
    
    INV INV_23 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    FD1P3AX FF_43 (.D(theta[1]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(242[13:88])
    defparam FF_43.GSR = "ENABLED";
    FD1P3AX FF_42 (.D(theta[2]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(245[13:88])
    defparam FF_42.GSR = "ENABLED";
    FD1P3AX FF_41 (.D(theta[3]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(248[13:88])
    defparam FF_41.GSR = "ENABLED";
    FD1P3AX FF_40 (.D(theta[4]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(251[13:88])
    defparam FF_40.GSR = "ENABLED";
    FD1P3AX FF_39 (.D(theta[5]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(254[13:88])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(theta[6]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(257[13:88])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(theta[7]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(260[13:88])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(theta[8]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(263[13:84])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(theta[9]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(266[13:86])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(rom_dout_6_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(297[13] 298[24])
    defparam FF_33.GSR = "ENABLED";
    MUX21 muxb_39 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    FD1P3AX FF_32 (.D(rom_dout_5_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(301[13] 302[24])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(rom_dout_4_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(305[13] 306[24])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(rom_dout_3_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(309[13] 310[24])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(rom_dout_2_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(313[13] 314[24])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(rom_dout_1_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(317[13] 318[24])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rom_dout_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(321[13] 322[22])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(rom_dout_15_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(325[13] 326[25])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(rom_dout_14_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(329[13] 330[25])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(rom_dout_13_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(333[13] 334[25])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(rom_dout_12_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(337[13] 338[25])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(rom_dout_11_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(341[13] 342[25])
    defparam FF_22.GSR = "ENABLED";
    FD1P3AX FF_21 (.D(rom_dout_10_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(345[13] 346[25])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(rom_dout_9_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(349[13] 350[24])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(rom_dout_8_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(353[13] 354[24])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(cosromoutsel_i), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(cosromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(357[13] 358[26])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(mx_ctrl_r_1), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(361[13] 362[26])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(sinout_pre_4), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_sin_s[4] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(463[13] 464[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(sinout_pre_5), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_sin_s[5] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(467[13] 468[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(sinout_pre_6), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_sin_s[6] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(471[13] 472[21])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(sinout_pre_7), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_sin_s[7] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(475[13] 476[21])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(cosout_pre_4), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_cos_s[4] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(494[13] 495[23])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(cosout_pre_5), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_cos_s[5] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(498[13] 499[23])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(cosout_pre_6), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_cos_s[6] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(502[13] 503[23])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(cosout_pre_7), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(\carry_cos_s[7] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(506[13] 507[23])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AX FF_44 (.D(theta[0]), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(239[13:86])
    defparam FF_44.GSR = "ENABLED";
    CCU2C neg_rom_addr0_r_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(514[11] 516[71])
    defparam neg_rom_addr0_r_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_2_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
          .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(522[11] 525[42])
    defparam neg_rom_addr0_r_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_4_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
          .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(531[11] 534[42])
    defparam neg_rom_addr0_r_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_addr0_r_6_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
          .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(540[11] 543[42])
    defparam neg_rom_addr0_r_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(549[11] 551[73])
    defparam neg_rom_addr0_r_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_4.INJECT1_1 = "NO";
    ROM256X1A triglut_1_0_15 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_15.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    CCU2C neg_rom_dout_s_n_1 (.A0(rom_dout_1_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_2_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_1), .COUT(co1_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(661[11] 664[43])
    defparam neg_rom_dout_s_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_2 (.A0(rom_dout_3_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_4_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_1), .COUT(co2_1), .S1(rom_dout_s_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(670[11] 673[43])
    defparam neg_rom_dout_s_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_3 (.A0(rom_dout_5_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_6_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_1), .COUT(co3_1), .S0(rom_dout_s_n_5), 
          .S1(rom_dout_s_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(679[11] 682[43])
    defparam neg_rom_dout_s_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_4 (.A0(rom_dout_7_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_1), .S0(rom_dout_s_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(688[11] 690[74])
    defparam neg_rom_dout_s_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_8_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(696[11] 698[72])
    defparam neg_rom_dout_c_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_1 (.A0(rom_dout_9_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_10_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(704[11] 707[43])
    defparam neg_rom_dout_c_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_2 (.A0(rom_dout_11_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_12_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_2), .COUT(co2_2), .S1(rom_dout_c_n_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(713[11] 716[43])
    defparam neg_rom_dout_c_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_3 (.A0(rom_dout_13_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_14_inv), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_2), .COUT(co3_2), .S0(rom_dout_c_n_5), 
          .S1(rom_dout_c_n_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(722[11] 725[43])
    defparam neg_rom_dout_c_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_4 (.A0(rom_dout_15_inv), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_2), .S0(rom_dout_c_n_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(735[11] 737[74])
    defparam neg_rom_dout_c_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_4.INJECT1_1 = "NO";
    INV INV_24 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_25 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_22 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_21 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_20 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_19 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_18 (.A(rom_addr0_r), .Z(rom_addr0_r_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    XOR2 XOR2_t1 (.A(mx_ctrl_r), .B(mx_ctrl_r_1), .Z(cosromoutsel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(187[10:70])
    INV INV_17 (.A(rom_dout_7), .Z(rom_dout_7_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_16 (.A(rom_dout_6), .Z(rom_dout_6_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_15 (.A(rom_dout_5), .Z(rom_dout_5_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_14 (.A(rom_dout_4), .Z(rom_dout_4_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_13 (.A(rom_dout_3), .Z(rom_dout_3_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_12 (.A(rom_dout_2), .Z(rom_dout_2_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_11 (.A(rom_dout_1), .Z(rom_dout_1_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_10 (.A(rom_dout), .Z(rom_dout_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_9 (.A(rom_dout_15), .Z(rom_dout_15_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_8 (.A(rom_dout_14), .Z(rom_dout_14_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_7 (.A(rom_dout_13), .Z(rom_dout_13_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_6 (.A(rom_dout_12), .Z(rom_dout_12_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_5 (.A(rom_dout_11), .Z(rom_dout_11_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_4 (.A(rom_dout_10), .Z(rom_dout_10_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_3 (.A(rom_dout_9), .Z(rom_dout_9_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    INV INV_2 (.A(rom_dout_8), .Z(rom_dout_8_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    ROM16X1A LUT4_2 (.AD0(rom_addr0_r_11), .AD1(rom_addr0_r_10), .AD2(rom_addr0_r_9), 
            .AD3(rom_addr0_r_8), .DO0(func_or_inet)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam LUT4_2.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_15), .AD1(rom_addr0_r_14), .AD2(rom_addr0_r_13), 
            .AD3(rom_addr0_r_12), .DO0(func_or_inet_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(GND_net), .AD2(func_or_inet_1), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv)) /* synthesis LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    AND2 AND2_t0 (.A(mx_ctrl_r), .B(lx_ne0_inv), .Z(out_sel_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(235[10:64])
    FD1P3AX FF_34 (.D(rom_dout_7_ffin), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(rom_dout_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(293[13] 294[24])
    defparam FF_34.GSR = "ENABLED";
    MUX21 muxb_38 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_37 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_36 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_35 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_34 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_33 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_32 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    FD1P3AX FF_16 (.D(out_sel_i), .SP(VCC_net), .CK(clockDivider_clk_4M), 
            .Q(out_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(413[13:83])
    defparam FF_16.GSR = "ENABLED";
    MUX21 muxb_27 (.D0(rom_dout_4), .D1(rom_dout_s_n_4), .SD(sinromoutsel), 
          .Z(rom_dout_s_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_26 (.D0(rom_dout_5), .D1(rom_dout_s_n_5), .SD(sinromoutsel), 
          .Z(rom_dout_s_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_25 (.D0(rom_dout_6), .D1(rom_dout_s_n_6), .SD(sinromoutsel), 
          .Z(rom_dout_s_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_24 (.D0(rom_dout_7), .D1(rom_dout_s_n_7), .SD(sinromoutsel), 
          .Z(rom_dout_s_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_19 (.D0(rom_dout_12), .D1(rom_dout_c_n_4), .SD(cosromoutsel), 
          .Z(rom_dout_c_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_18 (.D0(rom_dout_13), .D1(rom_dout_c_n_5), .SD(cosromoutsel), 
          .Z(rom_dout_c_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_17 (.D0(rom_dout_14), .D1(rom_dout_c_n_6), .SD(cosromoutsel), 
          .Z(rom_dout_c_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_16 (.D0(rom_dout_15), .D1(rom_dout_c_n_7), .SD(cosromoutsel), 
          .Z(rom_dout_c_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_11 (.D0(rom_dout_s_4), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_10 (.D0(rom_dout_s_5), .D1(GND_net), .SD(out_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_9 (.D0(rom_dout_s_6), .D1(VCC_net), .SD(out_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_8 (.D0(rom_dout_s_7), .D1(mx_ctrl_r_1), .SD(out_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_3 (.D0(rom_dout_c_4), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_2 (.D0(rom_dout_c_5), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_1 (.D0(rom_dout_c_6), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    MUX21 muxb_0 (.D0(rom_dout_c_7), .D1(GND_net), .SD(out_sel), .Z(cosout_pre_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    ROM256X1A triglut_1_0_14 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_13 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_12.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000111111111111111111111111111100000000000000000000000001111111111111111111111100000000000000000000011111111111111111111100000000000000000000;
    ROM256X1A triglut_1_0_11 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_11.initval = 256'b1111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111110000000000000000111111111111111000000000000011111111111110000000000001111111111100000000000011111111110000000000011111111110000000000011111111110000000000;
    ROM256X1A triglut_1_0_10 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_10.initval = 256'b1111111111111111111111111111111111111111111000000000000000011111111111110000000000011111111110000000001111111100000000111111110000000111111100000011111110000001111110000001111110000011111100000011111000001111110000011111000001111110000011111000001111100000;
    ROM256X1A triglut_1_0_9 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_9.initval = 256'b1111111111111111111111111111111100000000000111111111000000011111110000001111110000011111000001111100001111000011110000111100001110000111000011100011110001110001110001110001110001110011100011100011000111001110001100011100111001110001100011000110001100011100;
    ROM256X1A triglut_1_0_8 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_8.initval = 256'b1111111111111111111111110000000011111100000111100000111100011110001110001110001110011100111001100011001100110011001100110011001101100110110010011011001001001001001001001001001001001011011010010010110100101101001011010010110101101001010010110101101011010010;
    ROM256X1A triglut_1_0_7 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_15_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_7.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_6 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_14_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_6.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_5 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_13_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_5.initval = 256'b0000000000000000000000000000000000000000111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_4 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_12_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_4.initval = 256'b0000000000000000000111111111111111111111000000000000000000000111111111111111111111110000000000000000000000000111111111111111111111111111100000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_3 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_11_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_3.initval = 256'b0000000001111111111000000000001111111111000000000001111111111000000000000111111111110000000000001111111111111000000000000011111111111111100000000000000001111111111111111111000000000000000000000000111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_2 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_10_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_2.initval = 256'b0000111110000011111000001111110000011111000001111110000011111000000111111000001111110000001111110000001111111000000111111100000001111111100000000111111110000000001111111111000000000001111111111111000000000000000011111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_1 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_9_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_1.initval = 256'b0111000110001100011000110001110011100111000110001110011100011000111000111001110001110001110001110001110001111000111000011100001110000111100001111000011110000111110000011111000001111110000001111111000000011111111100000000000111111111111111111111111111111111;
    ROM256X1A triglut_1_0_0 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_8_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dds_lattice_sincos.v(29[12] 30[23])
    defparam triglut_1_0_0.initval = 256'b1001011010110101101001010010110101101001011010010110100101101001001011011010010010010010010010010010010010011011001001101100110110011001100110011001100110011000110011100111001110001110001110001111000111100000111100000111111000000001111111111111111111111111;
    CCU2C neg_rom_dout_s_n_0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(rom_dout_inv), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .COUT(co0_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=36, LSE_LCOL=12, LSE_RCOL=23, LSE_LLINE=29, LSE_RLINE=30 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(653[11] 655[72])
    defparam neg_rom_dout_s_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_0.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module multiplier
//

module multiplier (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_104, 
            VCC_net, \Q[1] , \carry_sin_s[4] , \carry_sin_s[5] , \carry_sin_s[6] , 
            \carry_sin_s[7] , IQSerializer_Q, GND_net) /* synthesis sbp_module="true", syn_module_defined=1 */ ;
    output rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_104;
    input VCC_net;
    input \Q[1] ;
    input \carry_sin_s[4] ;
    input \carry_sin_s[5] ;
    input \carry_sin_s[6] ;
    input \carry_sin_s[7] ;
    output [13:0]IQSerializer_Q;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    mult_m mult_m_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
           .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
           .VCC_net(VCC_net), .\Q[1] (\Q[1] ), .\carry_sin_s[4] (\carry_sin_s[4] ), 
           .\carry_sin_s[5] (\carry_sin_s[5] ), .\carry_sin_s[6] (\carry_sin_s[6] ), 
           .\carry_sin_s[7] (\carry_sin_s[7] ), .IQSerializer_Q({IQSerializer_Q}), 
           .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    
endmodule
//
// Verilog Description of module mult_m
//

module mult_m (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_104, 
            VCC_net, \Q[1] , \carry_sin_s[4] , \carry_sin_s[5] , \carry_sin_s[6] , 
            \carry_sin_s[7] , IQSerializer_Q, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_104;
    input VCC_net;
    input \Q[1] ;
    input \carry_sin_s[4] ;
    input \carry_sin_s[5] ;
    input \carry_sin_s[6] ;
    input \carry_sin_s[7] ;
    output [13:0]IQSerializer_Q;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire rega_a_1, regb_b_1, mult_m_0_mult_0_4_n1, rega_a_9, mult_m_0_pp_1_2, 
        regb_b_2, mult_m_0_mult_2_0_n0, regb_b_3, mult_m_0_mult_2_1_n1, 
        rega_a_3, rega_a_2, mult_m_0_mult_2_1_n0, mult_m_0_mult_2_2_n1, 
        rega_a_5, rega_a_4, mult_m_0_mult_2_2_n0, mult_m_0_mult_2_3_n1, 
        rega_a_7, rega_a_6, mult_m_0_mult_2_3_n0, mult_m_0_mult_2_4_n2, 
        rega_a_8, mult_m_0_mult_2_4_n0, regb_b_0, rego_o_0, rego_o_1, 
        rego_o_2, rego_o_3, rego_o_4, rego_o_5, rego_o_6, rego_o_7, 
        rego_o_8, rego_o_9, rego_o_10, rego_o_11, rego_o_12, rego_o_13, 
        mult_m_0_pp_0_0, mult_m_0_pp_0_1, f_mult_m_0_pp_0_2, mult_m_0_pp_0_2, 
        f_mult_m_0_pp_0_3, mult_m_0_pp_0_3, f_mult_m_0_pp_0_4, mult_m_0_pp_0_4, 
        f_mult_m_0_pp_0_5, mult_m_0_pp_0_5, f_mult_m_0_pp_0_6, mult_m_0_pp_0_6, 
        f_mult_m_0_pp_0_7, mult_m_0_pp_0_7, f_mult_m_0_pp_0_8, mult_m_0_pp_0_8, 
        f_mult_m_0_pp_0_9, mult_m_0_pp_0_9, f_mult_m_0_pp_0_10, mult_m_0_pp_0_10, 
        f_mult_m_0_pp_0_11, mult_m_0_pp_0_11, f_mult_m_0_pp_1_2, f_mult_m_0_pp_1_3, 
        mult_m_0_pp_1_3, f_mult_m_0_pp_1_4, mult_m_0_pp_1_4, f_mult_m_0_pp_1_5, 
        mult_m_0_pp_1_5, f_mult_m_0_pp_1_6, mult_m_0_pp_1_6, f_mult_m_0_pp_1_7, 
        mult_m_0_pp_1_7, f_mult_m_0_pp_1_8, mult_m_0_pp_1_8, f_mult_m_0_pp_1_9, 
        mult_m_0_pp_1_9, f_mult_m_0_pp_1_10, mult_m_0_pp_1_10, f_mult_m_0_pp_1_11, 
        mult_m_0_pp_1_11, f_mult_m_0_pp_1_12, mult_m_0_pp_1_12, f_mult_m_0_pp_1_13, 
        mult_m_0_pp_1_13, mult_m_0_cin_lr_0, mfco, mult_m_0_cin_lr, 
        mfco_1, co_t_mult_m_0_0_1, co_t_mult_m_0_0_2, co_t_mult_m_0_0_3, 
        co_t_mult_m_0_0_4, co_t_mult_m_0_0_5, co_t_mult_m_0_0_6, mco, 
        mco_1, mco_2, mco_3, mult_m_0_mult_0_4_n3, mult_m_0_mult_2_0_n1, 
        mco_4, mco_5, mco_6, mco_7;
    
    FD1P3AX FF_51 (.D(VCC_net), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(154[13:82])
    defparam FF_51.GSR = "ENABLED";
    FD1P3AX FF_50 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(157[13:82])
    defparam FF_50.GSR = "ENABLED";
    ND2 ND2_t11 (.A(rega_a_9), .B(regb_b_1), .Z(mult_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    AND2 AND2_t10 (.A(rega_a_0), .B(regb_b_2), .Z(mult_m_0_pp_1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(132[10:68])
    ND2 ND2_t8 (.A(rega_a_0), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t7 (.A(rega_a_3), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t6 (.A(rega_a_2), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t5 (.A(rega_a_5), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t4 (.A(rega_a_4), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t3 (.A(rega_a_7), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t2 (.A(rega_a_6), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t1 (.A(rega_a_9), .B(regb_b_2), .Z(mult_m_0_mult_2_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t0 (.A(rega_a_8), .B(regb_b_3), .Z(mult_m_0_mult_2_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    FD1P3AX FF_49 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(160[13:82])
    defparam FF_49.GSR = "ENABLED";
    FD1P3AX FF_48 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(163[13:82])
    defparam FF_48.GSR = "ENABLED";
    FD1P3AX FF_47 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(166[13:82])
    defparam FF_47.GSR = "ENABLED";
    FD1P3AX FF_46 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(169[13:82])
    defparam FF_46.GSR = "ENABLED";
    FD1P3AX FF_45 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(172[13:82])
    defparam FF_45.GSR = "ENABLED";
    FD1P3AX FF_44 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(175[13:82])
    defparam FF_44.GSR = "ENABLED";
    FD1P3AX FF_43 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(178[13:82])
    defparam FF_43.GSR = "ENABLED";
    FD1P3AX FF_42 (.D(\Q[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(181[13:82])
    defparam FF_42.GSR = "ENABLED";
    FD1P3AX FF_41 (.D(\carry_sin_s[4] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(184[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1P3AX FF_40 (.D(\carry_sin_s[5] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(187[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1P3AX FF_39 (.D(\carry_sin_s[6] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(190[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(\carry_sin_s[7] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(193[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(rego_o_0), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(196[13:83])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(rego_o_1), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(199[13:83])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(rego_o_2), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(202[13:83])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_34 (.D(rego_o_3), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(205[13:83])
    defparam FF_34.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(rego_o_4), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(208[13:83])
    defparam FF_33.GSR = "ENABLED";
    FD1P3AX FF_32 (.D(rego_o_5), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(211[13:83])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(rego_o_6), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(214[13:83])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(rego_o_7), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(217[13:83])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(rego_o_8), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(220[13:83])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(rego_o_9), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(223[13:83])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rego_o_10), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(226[13:85])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(rego_o_11), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(229[13:85])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(rego_o_12), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(232[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(rego_o_13), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_Q[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(235[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(mult_m_0_pp_0_0), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(238[13] 239[31])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(mult_m_0_pp_0_1), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(242[13] 243[31])
    defparam FF_22.GSR = "ENABLED";
    FD1P3AX FF_21 (.D(mult_m_0_pp_0_2), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(246[13] 247[31])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(mult_m_0_pp_0_3), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(250[13] 251[31])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(mult_m_0_pp_0_4), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(254[13] 255[31])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(mult_m_0_pp_0_5), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(258[13] 259[31])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(mult_m_0_pp_0_6), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(262[13] 263[31])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(mult_m_0_pp_0_7), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(266[13] 267[31])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(mult_m_0_pp_0_8), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(270[13] 271[31])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(mult_m_0_pp_0_9), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(274[13] 275[31])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(mult_m_0_pp_0_10), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(278[13] 279[32])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(mult_m_0_pp_0_11), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(282[13] 283[32])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(mult_m_0_pp_1_2), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(286[13] 287[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(mult_m_0_pp_1_3), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(290[13] 291[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(mult_m_0_pp_1_4), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(294[13] 295[31])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(mult_m_0_pp_1_5), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(298[13] 299[31])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(mult_m_0_pp_1_6), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(302[13] 303[31])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(mult_m_0_pp_1_7), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(306[13] 307[31])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(mult_m_0_pp_1_8), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(310[13] 311[31])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(mult_m_0_pp_1_9), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(314[13] 315[31])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(mult_m_0_pp_1_10), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(318[13] 319[32])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(mult_m_0_pp_1_11), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(322[13] 323[32])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(mult_m_0_pp_1_12), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(326[13] 327[32])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(mult_m_0_pp_1_13), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(330[13] 331[32])
    defparam FF_0.GSR = "ENABLED";
    CCU2C mult_m_0_cin_lr_add_0 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(mult_m_0_cin_lr_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(338[11] 340[72])
    defparam mult_m_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_0_5 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(mult_m_0_pp_0_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(346[11] 348[75])
    defparam mult_m_0_Cadd_0_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_0_5.INJECT1_1 = "NO";
    CCU2C mult_m_0_cin_lr_add (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(mult_m_0_cin_lr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(354[11] 356[70])
    defparam mult_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_2_5 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_1), .S0(mult_m_0_pp_1_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(362[11] 364[77])
    defparam mult_m_0_Cadd_2_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_2_5.INJECT1_1 = "NO";
    CCU2C Cadd_t_mult_m_0_0_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(f_mult_m_0_pp_0_2), .B1(f_mult_m_0_pp_1_2), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_t_mult_m_0_0_1), .S1(rego_o_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(370[11] 372[80])
    defparam Cadd_t_mult_m_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_t_mult_m_0_0_1.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_2 (.A0(f_mult_m_0_pp_0_3), .B0(f_mult_m_0_pp_1_3), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_4), .B1(f_mult_m_0_pp_1_4), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_1), .COUT(co_t_mult_m_0_0_2), 
          .S0(rego_o_3), .S1(rego_o_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(378[11] 381[64])
    defparam t_mult_m_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_2.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_3 (.A0(f_mult_m_0_pp_0_5), .B0(f_mult_m_0_pp_1_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_6), .B1(f_mult_m_0_pp_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_2), .COUT(co_t_mult_m_0_0_3), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(387[11] 390[64])
    defparam t_mult_m_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_3.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_4 (.A0(f_mult_m_0_pp_0_7), .B0(f_mult_m_0_pp_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_8), .B1(f_mult_m_0_pp_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_3), .COUT(co_t_mult_m_0_0_4), 
          .S0(rego_o_7), .S1(rego_o_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(396[11] 399[64])
    defparam t_mult_m_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_4.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_5 (.A0(f_mult_m_0_pp_0_9), .B0(f_mult_m_0_pp_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_10), .B1(f_mult_m_0_pp_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_4), .COUT(co_t_mult_m_0_0_5), 
          .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(405[11] 408[65])
    defparam t_mult_m_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_5.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_6 (.A0(f_mult_m_0_pp_0_11), .B0(f_mult_m_0_pp_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_mult_m_0_pp_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_5), .COUT(co_t_mult_m_0_0_6), 
          .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(414[11] 417[34])
    defparam t_mult_m_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_6.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_7 (.A0(GND_net), .B0(f_mult_m_0_pp_1_13), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_t_mult_m_0_0_6), .S0(rego_o_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(423[11] 426[34])
    defparam t_mult_m_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_7.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_0 (.A0(rega_a_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(mult_m_0_cin_lr_0), .COUT(mco), .S0(mult_m_0_pp_0_1), 
          .S1(mult_m_0_pp_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(432[11] 435[20])
    defparam mult_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(mult_m_0_pp_0_3), 
          .S1(mult_m_0_pp_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(441[11] 443[77])
    defparam mult_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(mult_m_0_pp_0_5), 
          .S1(mult_m_0_pp_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(449[11] 451[79])
    defparam mult_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(mult_m_0_pp_0_7), 
          .S1(mult_m_0_pp_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(457[11] 459[79])
    defparam mult_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(mult_m_0_mult_0_4_n1), .B1(VCC_net), .C1(mult_m_0_mult_0_4_n3), 
          .D1(VCC_net), .CIN(mco_3), .COUT(mfco), .S0(mult_m_0_pp_0_9), 
          .S1(mult_m_0_pp_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(465[11] 468[21])
    defparam mult_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_0 (.A0(mult_m_0_mult_2_0_n0), .B0(VCC_net), .C0(rega_a_1), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_0_n1), .B1(VCC_net), .C1(rega_a_2), 
          .D1(regb_b_2), .CIN(mult_m_0_cin_lr), .COUT(mco_4), .S0(mult_m_0_pp_1_3), 
          .S1(mult_m_0_pp_1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(474[11] 477[22])
    defparam mult_m_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_1 (.A0(mult_m_0_mult_2_1_n0), .B0(VCC_net), .C0(rega_a_3), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_1_n1), .B1(VCC_net), .C1(rega_a_4), 
          .D1(regb_b_2), .CIN(mco_4), .COUT(mco_5), .S0(mult_m_0_pp_1_5), 
          .S1(mult_m_0_pp_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(483[11] 486[22])
    defparam mult_m_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_2 (.A0(mult_m_0_mult_2_2_n0), .B0(VCC_net), .C0(rega_a_5), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_2_n1), .B1(VCC_net), .C1(rega_a_6), 
          .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(mult_m_0_pp_1_7), 
          .S1(mult_m_0_pp_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(492[11] 495[22])
    defparam mult_m_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_3 (.A0(mult_m_0_mult_2_3_n0), .B0(VCC_net), .C0(rega_a_7), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_3_n1), .B1(VCC_net), .C1(rega_a_8), 
          .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(mult_m_0_pp_1_9), 
          .S1(mult_m_0_pp_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(501[11] 504[22])
    defparam mult_m_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_3.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_4 (.A0(mult_m_0_mult_2_4_n0), .B0(VCC_net), .C0(mult_m_0_mult_2_4_n2), 
          .D0(VCC_net), .A1(rega_a_9), .B1(regb_b_3), .C1(GND_net), 
          .D1(regb_b_2), .CIN(mco_7), .COUT(mfco_1), .S0(mult_m_0_pp_1_11), 
          .S1(mult_m_0_pp_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(514[11] 517[23])
    defparam mult_m_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_4.INJECT1_1 = "NO";
    AND2 AND2_t13 (.A(rega_a_0), .B(regb_b_0), .Z(mult_m_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(126[10:68])
    ND2 ND2_t12 (.A(rega_a_9), .B(regb_b_0), .Z(mult_m_0_mult_0_4_n3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t9 (.A(rega_a_1), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    
endmodule
//
// Verilog Description of module multiplier_U1
//

module multiplier_U1 (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_104, 
            \I[1] , \carry_cos_s[4] , \carry_cos_s[5] , \carry_cos_s[6] , 
            \carry_cos_s[7] , IQSerializer_I, VCC_net, GND_net) /* synthesis sbp_module="true", syn_module_defined=1 */ ;
    input rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_104;
    input \I[1] ;
    input \carry_cos_s[4] ;
    input \carry_cos_s[5] ;
    input \carry_cos_s[6] ;
    input \carry_cos_s[7] ;
    output [13:0]IQSerializer_I;
    input VCC_net;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    mult_m_U0 mult_m_inst (.rega_a_0(rega_a_0), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .clockDivider_clk_4M_enable_104(clockDivider_clk_4M_enable_104), 
            .\I[1] (\I[1] ), .\carry_cos_s[4] (\carry_cos_s[4] ), .\carry_cos_s[5] (\carry_cos_s[5] ), 
            .\carry_cos_s[6] (\carry_cos_s[6] ), .\carry_cos_s[7] (\carry_cos_s[7] ), 
            .IQSerializer_I({IQSerializer_I}), .VCC_net(VCC_net), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    
endmodule
//
// Verilog Description of module mult_m_U0
//

module mult_m_U0 (rega_a_0, clockDivider_clk_4M, clockDivider_clk_4M_enable_104, 
            \I[1] , \carry_cos_s[4] , \carry_cos_s[5] , \carry_cos_s[6] , 
            \carry_cos_s[7] , IQSerializer_I, VCC_net, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input rega_a_0;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_104;
    input \I[1] ;
    input \carry_cos_s[4] ;
    input \carry_cos_s[5] ;
    input \carry_cos_s[6] ;
    input \carry_cos_s[7] ;
    output [13:0]IQSerializer_I;
    input VCC_net;
    input GND_net;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire regb_b_1, mult_m_0_mult_0_4_n1, rega_a_9, mult_m_0_pp_1_2, 
        regb_b_2, mult_m_0_mult_2_0_n0, regb_b_3, mult_m_0_mult_2_1_n1, 
        rega_a_3, rega_a_2, mult_m_0_mult_2_1_n0, mult_m_0_mult_2_2_n1, 
        rega_a_5, rega_a_4, mult_m_0_mult_2_2_n0, mult_m_0_mult_2_3_n1, 
        rega_a_7, rega_a_6, mult_m_0_mult_2_3_n0, mult_m_0_mult_2_4_n2, 
        rega_a_8, mult_m_0_mult_2_4_n0, rega_a_1, regb_b_0, rego_o_0, 
        rego_o_1, rego_o_2, rego_o_3, rego_o_4, rego_o_5, rego_o_6, 
        rego_o_7, rego_o_8, rego_o_9, rego_o_10, rego_o_11, rego_o_12, 
        rego_o_13, mult_m_0_pp_0_0, mult_m_0_pp_0_1, f_mult_m_0_pp_0_2, 
        mult_m_0_pp_0_2, f_mult_m_0_pp_0_3, mult_m_0_pp_0_3, f_mult_m_0_pp_0_4, 
        mult_m_0_pp_0_4, f_mult_m_0_pp_0_5, mult_m_0_pp_0_5, f_mult_m_0_pp_0_6, 
        mult_m_0_pp_0_6, f_mult_m_0_pp_0_7, mult_m_0_pp_0_7, f_mult_m_0_pp_0_8, 
        mult_m_0_pp_0_8, f_mult_m_0_pp_0_9, mult_m_0_pp_0_9, f_mult_m_0_pp_0_10, 
        mult_m_0_pp_0_10, f_mult_m_0_pp_0_11, mult_m_0_pp_0_11, f_mult_m_0_pp_1_2, 
        f_mult_m_0_pp_1_3, mult_m_0_pp_1_3, f_mult_m_0_pp_1_4, mult_m_0_pp_1_4, 
        f_mult_m_0_pp_1_5, mult_m_0_pp_1_5, f_mult_m_0_pp_1_6, mult_m_0_pp_1_6, 
        f_mult_m_0_pp_1_7, mult_m_0_pp_1_7, f_mult_m_0_pp_1_8, mult_m_0_pp_1_8, 
        f_mult_m_0_pp_1_9, mult_m_0_pp_1_9, f_mult_m_0_pp_1_10, mult_m_0_pp_1_10, 
        f_mult_m_0_pp_1_11, mult_m_0_pp_1_11, f_mult_m_0_pp_1_12, mult_m_0_pp_1_12, 
        f_mult_m_0_pp_1_13, mult_m_0_pp_1_13, mult_m_0_cin_lr_0, mfco, 
        mult_m_0_cin_lr, mfco_1, co_t_mult_m_0_0_1, co_t_mult_m_0_0_2, 
        co_t_mult_m_0_0_3, co_t_mult_m_0_0_4, co_t_mult_m_0_0_5, co_t_mult_m_0_0_6, 
        mco, mco_1, mco_2, mco_3, mult_m_0_mult_0_4_n3, mult_m_0_mult_2_0_n1, 
        mco_4, mco_5, mco_6, mco_7;
    
    ND2 ND2_t11 (.A(rega_a_9), .B(regb_b_1), .Z(mult_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    AND2 AND2_t10 (.A(rega_a_0), .B(regb_b_2), .Z(mult_m_0_pp_1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(132[10:68])
    ND2 ND2_t8 (.A(rega_a_0), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t7 (.A(rega_a_3), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t6 (.A(rega_a_2), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t5 (.A(rega_a_5), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t4 (.A(rega_a_4), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t3 (.A(rega_a_7), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t2 (.A(rega_a_6), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t1 (.A(rega_a_9), .B(regb_b_2), .Z(mult_m_0_mult_2_4_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    ND2 ND2_t0 (.A(rega_a_8), .B(regb_b_3), .Z(mult_m_0_mult_2_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    FD1P3AX FF_50 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(157[13:82])
    defparam FF_50.GSR = "ENABLED";
    FD1P3AX FF_49 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(160[13:82])
    defparam FF_49.GSR = "ENABLED";
    FD1P3AX FF_48 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(163[13:82])
    defparam FF_48.GSR = "ENABLED";
    FD1P3AX FF_47 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(166[13:82])
    defparam FF_47.GSR = "ENABLED";
    FD1P3AX FF_46 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(169[13:82])
    defparam FF_46.GSR = "ENABLED";
    FD1P3AX FF_45 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(172[13:82])
    defparam FF_45.GSR = "ENABLED";
    FD1P3AX FF_44 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(175[13:82])
    defparam FF_44.GSR = "ENABLED";
    FD1P3AX FF_43 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(178[13:82])
    defparam FF_43.GSR = "ENABLED";
    FD1P3AX FF_42 (.D(\I[1] ), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(181[13:82])
    defparam FF_42.GSR = "ENABLED";
    FD1P3AX FF_41 (.D(\carry_cos_s[4] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(184[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1P3AX FF_40 (.D(\carry_cos_s[5] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(187[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1P3AX FF_39 (.D(\carry_cos_s[6] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(190[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3AX FF_38 (.D(\carry_cos_s[7] ), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(193[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3AX FF_37 (.D(rego_o_0), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(196[13:83])
    defparam FF_37.GSR = "ENABLED";
    FD1P3AX FF_36 (.D(rego_o_1), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(199[13:83])
    defparam FF_36.GSR = "ENABLED";
    FD1P3AX FF_35 (.D(rego_o_2), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(202[13:83])
    defparam FF_35.GSR = "ENABLED";
    FD1P3AX FF_34 (.D(rego_o_3), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(205[13:83])
    defparam FF_34.GSR = "ENABLED";
    FD1P3AX FF_33 (.D(rego_o_4), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(208[13:83])
    defparam FF_33.GSR = "ENABLED";
    FD1P3AX FF_32 (.D(rego_o_5), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(211[13:83])
    defparam FF_32.GSR = "ENABLED";
    FD1P3AX FF_31 (.D(rego_o_6), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(214[13:83])
    defparam FF_31.GSR = "ENABLED";
    FD1P3AX FF_30 (.D(rego_o_7), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(217[13:83])
    defparam FF_30.GSR = "ENABLED";
    FD1P3AX FF_29 (.D(rego_o_8), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(220[13:83])
    defparam FF_29.GSR = "ENABLED";
    FD1P3AX FF_28 (.D(rego_o_9), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(223[13:83])
    defparam FF_28.GSR = "ENABLED";
    FD1P3AX FF_27 (.D(rego_o_10), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(226[13:85])
    defparam FF_27.GSR = "ENABLED";
    FD1P3AX FF_26 (.D(rego_o_11), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(229[13:85])
    defparam FF_26.GSR = "ENABLED";
    FD1P3AX FF_25 (.D(rego_o_12), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(232[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3AX FF_24 (.D(rego_o_13), .SP(clockDivider_clk_4M_enable_104), .CK(clockDivider_clk_4M), 
            .Q(IQSerializer_I[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(235[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3AX FF_23 (.D(mult_m_0_pp_0_0), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(238[13] 239[31])
    defparam FF_23.GSR = "ENABLED";
    FD1P3AX FF_22 (.D(mult_m_0_pp_0_1), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(242[13] 243[31])
    defparam FF_22.GSR = "ENABLED";
    FD1P3AX FF_21 (.D(mult_m_0_pp_0_2), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(246[13] 247[31])
    defparam FF_21.GSR = "ENABLED";
    FD1P3AX FF_20 (.D(mult_m_0_pp_0_3), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(250[13] 251[31])
    defparam FF_20.GSR = "ENABLED";
    FD1P3AX FF_19 (.D(mult_m_0_pp_0_4), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(254[13] 255[31])
    defparam FF_19.GSR = "ENABLED";
    FD1P3AX FF_18 (.D(mult_m_0_pp_0_5), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(258[13] 259[31])
    defparam FF_18.GSR = "ENABLED";
    FD1P3AX FF_17 (.D(mult_m_0_pp_0_6), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(262[13] 263[31])
    defparam FF_17.GSR = "ENABLED";
    FD1P3AX FF_16 (.D(mult_m_0_pp_0_7), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(266[13] 267[31])
    defparam FF_16.GSR = "ENABLED";
    FD1P3AX FF_15 (.D(mult_m_0_pp_0_8), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(270[13] 271[31])
    defparam FF_15.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(mult_m_0_pp_0_9), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(274[13] 275[31])
    defparam FF_14.GSR = "ENABLED";
    FD1P3AX FF_13 (.D(mult_m_0_pp_0_10), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(278[13] 279[32])
    defparam FF_13.GSR = "ENABLED";
    FD1P3AX FF_12 (.D(mult_m_0_pp_0_11), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(282[13] 283[32])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(mult_m_0_pp_1_2), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(286[13] 287[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(mult_m_0_pp_1_3), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(290[13] 291[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(mult_m_0_pp_1_4), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(294[13] 295[31])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(mult_m_0_pp_1_5), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(298[13] 299[31])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(mult_m_0_pp_1_6), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(302[13] 303[31])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(mult_m_0_pp_1_7), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(306[13] 307[31])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(mult_m_0_pp_1_8), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(310[13] 311[31])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(mult_m_0_pp_1_9), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(314[13] 315[31])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(mult_m_0_pp_1_10), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(318[13] 319[32])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(mult_m_0_pp_1_11), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(322[13] 323[32])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(mult_m_0_pp_1_12), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(326[13] 327[32])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(mult_m_0_pp_1_13), .SP(clockDivider_clk_4M_enable_104), 
            .CK(clockDivider_clk_4M), .Q(f_mult_m_0_pp_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(330[13] 331[32])
    defparam FF_0.GSR = "ENABLED";
    CCU2C mult_m_0_cin_lr_add_0 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(mult_m_0_cin_lr_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(338[11] 340[72])
    defparam mult_m_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_0_5 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(mult_m_0_pp_0_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(346[11] 348[75])
    defparam mult_m_0_Cadd_0_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_0_5.INJECT1_1 = "NO";
    CCU2C mult_m_0_cin_lr_add (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(mult_m_0_cin_lr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(354[11] 356[70])
    defparam mult_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_2_5 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_1), .S0(mult_m_0_pp_1_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(362[11] 364[77])
    defparam mult_m_0_Cadd_2_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_2_5.INJECT1_1 = "NO";
    CCU2C Cadd_t_mult_m_0_0_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(f_mult_m_0_pp_0_2), .B1(f_mult_m_0_pp_1_2), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_t_mult_m_0_0_1), .S1(rego_o_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(370[11] 372[80])
    defparam Cadd_t_mult_m_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_t_mult_m_0_0_1.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_2 (.A0(f_mult_m_0_pp_0_3), .B0(f_mult_m_0_pp_1_3), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_4), .B1(f_mult_m_0_pp_1_4), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_1), .COUT(co_t_mult_m_0_0_2), 
          .S0(rego_o_3), .S1(rego_o_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(378[11] 381[64])
    defparam t_mult_m_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_2.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_3 (.A0(f_mult_m_0_pp_0_5), .B0(f_mult_m_0_pp_1_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_6), .B1(f_mult_m_0_pp_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_2), .COUT(co_t_mult_m_0_0_3), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(387[11] 390[64])
    defparam t_mult_m_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_3.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_4 (.A0(f_mult_m_0_pp_0_7), .B0(f_mult_m_0_pp_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_8), .B1(f_mult_m_0_pp_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_3), .COUT(co_t_mult_m_0_0_4), 
          .S0(rego_o_7), .S1(rego_o_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(396[11] 399[64])
    defparam t_mult_m_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_4.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_5 (.A0(f_mult_m_0_pp_0_9), .B0(f_mult_m_0_pp_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_mult_m_0_pp_0_10), .B1(f_mult_m_0_pp_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_4), .COUT(co_t_mult_m_0_0_5), 
          .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(405[11] 408[65])
    defparam t_mult_m_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_5.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_6 (.A0(f_mult_m_0_pp_0_11), .B0(f_mult_m_0_pp_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_mult_m_0_pp_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_mult_m_0_0_5), .COUT(co_t_mult_m_0_0_6), 
          .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(414[11] 417[34])
    defparam t_mult_m_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_6.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_7 (.A0(GND_net), .B0(f_mult_m_0_pp_1_13), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_t_mult_m_0_0_6), .S0(rego_o_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(423[11] 426[34])
    defparam t_mult_m_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_7.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_0 (.A0(rega_a_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(mult_m_0_cin_lr_0), .COUT(mco), .S0(mult_m_0_pp_0_1), 
          .S1(mult_m_0_pp_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(432[11] 435[20])
    defparam mult_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(mult_m_0_pp_0_3), 
          .S1(mult_m_0_pp_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(441[11] 443[77])
    defparam mult_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(mult_m_0_pp_0_5), 
          .S1(mult_m_0_pp_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(449[11] 451[79])
    defparam mult_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(mult_m_0_pp_0_7), 
          .S1(mult_m_0_pp_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(457[11] 459[79])
    defparam mult_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(mult_m_0_mult_0_4_n1), .B1(VCC_net), .C1(mult_m_0_mult_0_4_n3), 
          .D1(VCC_net), .CIN(mco_3), .COUT(mfco), .S0(mult_m_0_pp_0_9), 
          .S1(mult_m_0_pp_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(465[11] 468[21])
    defparam mult_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_0 (.A0(mult_m_0_mult_2_0_n0), .B0(VCC_net), .C0(rega_a_1), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_0_n1), .B1(VCC_net), .C1(rega_a_2), 
          .D1(regb_b_2), .CIN(mult_m_0_cin_lr), .COUT(mco_4), .S0(mult_m_0_pp_1_3), 
          .S1(mult_m_0_pp_1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(474[11] 477[22])
    defparam mult_m_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_1 (.A0(mult_m_0_mult_2_1_n0), .B0(VCC_net), .C0(rega_a_3), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_1_n1), .B1(VCC_net), .C1(rega_a_4), 
          .D1(regb_b_2), .CIN(mco_4), .COUT(mco_5), .S0(mult_m_0_pp_1_5), 
          .S1(mult_m_0_pp_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(483[11] 486[22])
    defparam mult_m_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_2 (.A0(mult_m_0_mult_2_2_n0), .B0(VCC_net), .C0(rega_a_5), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_2_n1), .B1(VCC_net), .C1(rega_a_6), 
          .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(mult_m_0_pp_1_7), 
          .S1(mult_m_0_pp_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(492[11] 495[22])
    defparam mult_m_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_3 (.A0(mult_m_0_mult_2_3_n0), .B0(VCC_net), .C0(rega_a_7), 
          .D0(regb_b_2), .A1(mult_m_0_mult_2_3_n1), .B1(VCC_net), .C1(rega_a_8), 
          .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(mult_m_0_pp_1_9), 
          .S1(mult_m_0_pp_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(501[11] 504[22])
    defparam mult_m_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_3.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_4 (.A0(mult_m_0_mult_2_4_n0), .B0(VCC_net), .C0(mult_m_0_mult_2_4_n2), 
          .D0(VCC_net), .A1(rega_a_9), .B1(regb_b_3), .C1(GND_net), 
          .D1(regb_b_2), .CIN(mco_7), .COUT(mfco_1), .S0(mult_m_0_pp_1_11), 
          .S1(mult_m_0_pp_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(514[11] 517[23])
    defparam mult_m_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_4.INJECT1_1 = "NO";
    ND2 ND2_t12 (.A(rega_a_9), .B(regb_b_0), .Z(mult_m_0_mult_0_4_n3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    AND2 AND2_t13 (.A(rega_a_0), .B(regb_b_0), .Z(mult_m_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(126[10:68])
    ND2 ND2_t9 (.A(rega_a_1), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=33, LSE_LCOL=12, LSE_RCOL=33, LSE_LLINE=21, LSE_RLINE=23 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier.v(21[12] 23[33])
    
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
// Verilog Description of module IQSerializer
//

module IQSerializer (\QCounter[1] , \QCounter[2] , IQSerializer_Q, n6, 
            n3, \ICounter[3] , \ICounter[2] , \ICounter[1] , n2880, 
            clk_N_262, n2469, n2833, next_state_3__N_320, n6_adj_1, 
            next_state_3__N_322, n1822, n2881, n2868, n2818, n3_adj_2, 
            \IQSerializer_I[5] , \IQSerializer_I[7] , n6_adj_3, \IQSerializer_I[1] , 
            \IQSerializer_I[3] , n3_adj_4, next_state_3__N_321, \IQSerializer_I[11] , 
            \IQSerializer_I[9] , \IQSerializer_I[13] , enable_d, counter_0_countDone, 
            next_state_3__N_155, n2814, DEDFF_D0_N_339, n2465, DEDFF_D0_N_334, 
            n2942, serial_iq_c, serial_clk_c) /* synthesis syn_module_defined=1 */ ;
    output \QCounter[1] ;
    output \QCounter[2] ;
    input [13:0]IQSerializer_Q;
    output n6;
    output n3;
    output \ICounter[3] ;
    output \ICounter[2] ;
    output \ICounter[1] ;
    output n2880;
    input clk_N_262;
    input n2469;
    output n2833;
    output next_state_3__N_320;
    output n6_adj_1;
    output next_state_3__N_322;
    input n1822;
    output n2881;
    input n2868;
    output n2818;
    output n3_adj_2;
    input \IQSerializer_I[5] ;
    input \IQSerializer_I[7] ;
    output n6_adj_3;
    input \IQSerializer_I[1] ;
    input \IQSerializer_I[3] ;
    output n3_adj_4;
    output next_state_3__N_321;
    input \IQSerializer_I[11] ;
    input \IQSerializer_I[9] ;
    input \IQSerializer_I[13] ;
    input enable_d;
    input counter_0_countDone;
    input next_state_3__N_155;
    output n2814;
    input DEDFF_D0_N_339;
    input n2465;
    input DEDFF_D0_N_334;
    input n2942;
    output serial_iq_c;
    input serial_clk_c;
    
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire [4:0]n366;
    
    wire n2629, n344;
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n2813, n1820;
    wire [3:0]n21;
    
    wire n2832, n2831, n348, n2869, n1731, n2812, n1729, n2817, 
        n2816, n2879, n2627, n1, n2;
    
    LUT4 reduce_or_76_i2_4_lut_4_lut (.A(\QCounter[1] ), .B(\QCounter[2] ), 
         .C(n366[4]), .D(n2629), .Z(n344)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam reduce_or_76_i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 DEDFF_D1_I_12_i6_3_lut (.A(IQSerializer_Q[4]), .B(IQSerializer_Q[6]), 
         .C(\QCounter[1] ), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(64[26:45])
    defparam DEDFF_D1_I_12_i6_3_lut.init = 16'hcaca;
    LUT4 DEDFF_D1_I_12_i3_3_lut (.A(IQSerializer_Q[0]), .B(IQSerializer_Q[2]), 
         .C(\QCounter[1] ), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(64[26:45])
    defparam DEDFF_D1_I_12_i3_3_lut.init = 16'hcaca;
    LUT4 i1161_3_lut_rep_21 (.A(\ICounter[3] ), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n2880)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1161_3_lut_rep_21.init = 16'h6a6a;
    LUT4 IQSerializer_Q_9__bdd_4_lut (.A(IQSerializer_Q[9]), .B(IQSerializer_Q[13]), 
         .C(QCounter[3]), .D(\QCounter[2] ), .Z(n2813)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam IQSerializer_Q_9__bdd_4_lut.init = 16'h0afc;
    FD1S3IX ICounter_175__i2 (.D(n2469), .CK(clk_N_262), .CD(n1820), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i2.GSR = "DISABLED";
    FD1S3IX ICounter_175__i1 (.D(n21[1]), .CK(clk_N_262), .CD(n1820), 
            .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i1.GSR = "DISABLED";
    PFUMX i1532 (.BLUT(n2832), .ALUT(n2831), .C0(\QCounter[1] ), .Z(n2833));
    LUT4 i1_2_lut_4_lut_4_lut (.A(\ICounter[3] ), .B(next_state_3__N_320), 
         .C(\ICounter[1] ), .D(\ICounter[2] ), .Z(n348)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:43])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 DEDFF_D0_I_10_i6_3_lut (.A(IQSerializer_Q[5]), .B(IQSerializer_Q[7]), 
         .C(\QCounter[1] ), .Z(n6_adj_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:45])
    defparam DEDFF_D0_I_10_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(QCounter[3]), .B(next_state_3__N_322), .Z(n2629)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i608_3_lut (.A(next_state_3__N_320), .B(n366[3]), .C(n2869), 
         .Z(n1731)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i608_3_lut.init = 16'hecec;
    FD1S3IX QCounter_177__i3 (.D(n2881), .CK(clk_N_262), .CD(n1822), .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i3.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_10_3_lut (.A(\ICounter[3] ), .B(\ICounter[1] ), .C(\ICounter[2] ), 
         .Z(n2869)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:43])
    defparam i1_3_lut_rep_10_3_lut.init = 16'hdfdf;
    LUT4 IQSerializer_Q_9__bdd_3_lut (.A(QCounter[3]), .B(IQSerializer_Q[11]), 
         .C(\QCounter[2] ), .Z(n2812)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam IQSerializer_Q_9__bdd_3_lut.init = 16'h5454;
    LUT4 i1075_3_lut_rep_22 (.A(QCounter[3]), .B(\QCounter[2] ), .C(\QCounter[1] ), 
         .Z(n2881)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1075_3_lut_rep_22.init = 16'h6a6a;
    LUT4 i1152_1_lut (.A(\ICounter[1] ), .Z(n21[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1152_1_lut.init = 16'h5555;
    FD1S3IX current_state_FSM_i0 (.D(n1729), .CK(clk_N_262), .CD(n2868), 
            .Q(next_state_3__N_322));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "DISABLED";
    PFUMX i1518 (.BLUT(n2817), .ALUT(n2816), .C0(\ICounter[1] ), .Z(n2818));
    LUT4 sub_10_inv_0_i2_1_lut_rep_20 (.A(\QCounter[1] ), .Z(n2879)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:43])
    defparam sub_10_inv_0_i2_1_lut_rep_20.init = 16'h5555;
    LUT4 DEDFF_D0_I_10_i3_3_lut (.A(IQSerializer_Q[1]), .B(IQSerializer_Q[3]), 
         .C(\QCounter[1] ), .Z(n3_adj_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:45])
    defparam DEDFF_D0_I_10_i3_3_lut.init = 16'hcaca;
    LUT4 DEDFF_D0_I_9_i6_3_lut (.A(\IQSerializer_I[5] ), .B(\IQSerializer_I[7] ), 
         .C(\ICounter[1] ), .Z(n6_adj_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:45])
    defparam DEDFF_D0_I_9_i6_3_lut.init = 16'hcaca;
    LUT4 DEDFF_D0_I_9_i3_3_lut (.A(\IQSerializer_I[1] ), .B(\IQSerializer_I[3] ), 
         .C(\ICounter[1] ), .Z(n3_adj_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:45])
    defparam DEDFF_D0_I_9_i3_3_lut.init = 16'hcaca;
    LUT4 i606_4_lut (.A(next_state_3__N_322), .B(next_state_3__N_321), .C(n2627), 
         .D(\QCounter[2] ), .Z(n1729)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i606_4_lut.init = 16'hecee;
    LUT4 i1_2_lut_adj_14 (.A(QCounter[3]), .B(\QCounter[1] ), .Z(n2627)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(145[21:38])
    defparam i1_2_lut_adj_14.init = 16'hdddd;
    LUT4 IQSerializer_I_11__bdd_3_lut_1544 (.A(\IQSerializer_I[11] ), .B(\ICounter[3] ), 
         .C(\ICounter[2] ), .Z(n2816)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam IQSerializer_I_11__bdd_3_lut_1544.init = 16'h3232;
    FD1S3IX ICounter_175__i3 (.D(n2880), .CK(clk_N_262), .CD(n1820), .Q(\ICounter[3] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_175__i3.GSR = "DISABLED";
    LUT4 IQSerializer_I_11__bdd_4_lut_1543 (.A(\ICounter[3] ), .B(\IQSerializer_I[9] ), 
         .C(\IQSerializer_I[13] ), .D(\ICounter[2] ), .Z(n2817)) /* synthesis lut_function=(!(A (D)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam IQSerializer_I_11__bdd_4_lut_1543.init = 16'h44fa;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(next_state_3__N_320), .B(enable_d), 
         .C(counter_0_countDone), .D(next_state_3__N_155), .Z(n1820)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hffdf;
    PFUMX i1516 (.BLUT(n2813), .ALUT(n2812), .C0(\QCounter[1] ), .Z(n2814));
    LUT4 select_138_Select_0_i1_2_lut (.A(DEDFF_D0_N_339), .B(next_state_3__N_322), 
         .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_138_Select_0_i1_2_lut.init = 16'h8888;
    FD1S3IX QCounter_177__i2 (.D(n2465), .CK(clk_N_262), .CD(n1822), .Q(\QCounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i2.GSR = "DISABLED";
    FD1S3IX QCounter_177__i1 (.D(n2879), .CK(clk_N_262), .CD(n1822), .Q(\QCounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_177__i1.GSR = "DISABLED";
    FD1S3AX current_state_FSM_i4 (.D(n2868), .CK(clk_N_262), .Q(n366[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i3 (.D(n344), .CK(clk_N_262), .CD(n2868), 
            .Q(n366[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1731), .CK(clk_N_262), .CD(n2868), 
            .Q(next_state_3__N_320));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "DISABLED";
    FD1S3IX current_state_FSM_i1 (.D(n348), .CK(clk_N_262), .CD(n2868), 
            .Q(next_state_3__N_321));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "DISABLED";
    LUT4 IQSerializer_Q_8__bdd_4_lut (.A(IQSerializer_Q[8]), .B(IQSerializer_Q[12]), 
         .C(QCounter[3]), .D(\QCounter[2] ), .Z(n2832)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam IQSerializer_Q_8__bdd_4_lut.init = 16'h0afc;
    LUT4 select_138_Select_0_i2_2_lut (.A(DEDFF_D0_N_334), .B(next_state_3__N_320), 
         .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_138_Select_0_i2_2_lut.init = 16'h8888;
    LUT4 IQSerializer_Q_8__bdd_3_lut (.A(QCounter[3]), .B(IQSerializer_Q[10]), 
         .C(\QCounter[2] ), .Z(n2831)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam IQSerializer_Q_8__bdd_3_lut.init = 16'h5454;
    DEDFF DEDFF_0 (.next_state_3__N_319(n366[3]), .n2942(n2942), .next_state_3__N_317(n366[4]), 
          .clk_N_262(clk_N_262), .n2868(n2868), .serial_iq_c(serial_iq_c), 
          .serial_clk_c(serial_clk_c), .n2(n2), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (next_state_3__N_319, n2942, next_state_3__N_317, clk_N_262, 
            n2868, serial_iq_c, serial_clk_c, n2, n1) /* synthesis syn_module_defined=1 */ ;
    input next_state_3__N_319;
    input n2942;
    input next_state_3__N_317;
    input clk_N_262;
    input n2868;
    output serial_iq_c;
    input serial_clk_c;
    input n2;
    input n1;
    
    wire clk_N_262 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    
    wire pose_edge, Q2, neg_edge, Q1;
    
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_319), .C(n2942), 
         .D(next_state_3__N_317), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_262), .CD(n2868), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "DISABLED";
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n2868), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "DISABLED";
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2), .C(n1), .D(next_state_3__N_319), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_174, clockDivider_clk_4M, serial_clk_c, clockDivider_clkLock, 
            VCC_net, n1819, LED7_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_N_174;
    output clockDivider_clk_4M;
    input serial_clk_c;
    output clockDivider_clkLock;
    input VCC_net;
    output n1819;
    input LED7_c;
    input GND_net;
    
    wire clk_N_174 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis SET_AS_NETWORK=serial_clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    
    wire pll_lock_N_54, clkOut_N_64;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    
    wire n375;
    wire [7:0]n37;
    
    wire n1760;
    wire [7:0]n65;
    wire [7:0]n37_adj_367;
    
    wire n2617, n2677, n2615, n2390, n2389, n2388, n2387, n2386, 
        n2385, n2384, n2383;
    
    INV i1619 (.A(clockDivider_clk_4M), .Z(clk_N_174));
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "DISABLED";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "DISABLED";
    LUT4 i684_1_lut (.A(clockDivider_clkLock), .Z(n1819)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i684_1_lut.init = 16'h5555;
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    FD1S3IX counter_170__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n1760), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    FD1S3IX lockCounter_171__i0 (.D(n37_adj_367[0]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i0.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i7 (.D(n37_adj_367[7]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i7.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n2617), .B(n2677), .C(counter[2]), .D(n2615), 
         .Z(n1760)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[7]), .C(counter[3]), .Z(n2617)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1S3IX lockCounter_171__i6 (.D(n37_adj_367[6]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i6.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i5 (.D(n37_adj_367[5]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i5.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i4 (.D(n37_adj_367[4]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i4.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i3 (.D(n37_adj_367[3]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i3.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i2 (.D(n37_adj_367[2]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i2.GSR = "DISABLED";
    FD1S3IX lockCounter_171__i1 (.D(n37_adj_367[1]), .CK(serial_clk_c), 
            .CD(pll_lock_N_54), .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171__i1.GSR = "DISABLED";
    FD1S3IX counter_170__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i7.GSR = "DISABLED";
    FD1S3IX counter_170__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i6.GSR = "DISABLED";
    FD1S3IX counter_170__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i5.GSR = "DISABLED";
    FD1S3IX counter_170__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i4.GSR = "DISABLED";
    FD1S3IX counter_170__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i3.GSR = "DISABLED";
    FD1S3IX counter_170__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i2.GSR = "DISABLED";
    FD1S3IX counter_170__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(n375), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170__i1.GSR = "DISABLED";
    LUT4 i1392_2_lut (.A(counter[1]), .B(counter[0]), .Z(n2677)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1392_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_13 (.A(counter[5]), .B(counter[6]), .Z(n2615)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'heeee;
    CCU2C lockCounter_171_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2390), .S0(n37_adj_367[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_171_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_9.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2389), .COUT(n2390), .S0(n37_adj_367[5]), .S1(n37_adj_367[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2388), .COUT(n2389), .S0(n37_adj_367[3]), .S1(n37_adj_367[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2387), .COUT(n2388), .S0(n37_adj_367[1]), .S1(n37_adj_367[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_171_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_171_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_171_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2387), .S1(n37_adj_367[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_171_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_171_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_171_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_171_add_4_1.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2386), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_9.INIT0 = 16'haaa0;
    defparam counter_170_add_4_9.INIT1 = 16'h0000;
    defparam counter_170_add_4_9.INJECT1_0 = "NO";
    defparam counter_170_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2385), .COUT(n2386), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_7.INIT0 = 16'haaa0;
    defparam counter_170_add_4_7.INIT1 = 16'haaa0;
    defparam counter_170_add_4_7.INJECT1_0 = "NO";
    defparam counter_170_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2384), .COUT(n2385), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_5.INIT0 = 16'haaa0;
    defparam counter_170_add_4_5.INIT1 = 16'haaa0;
    defparam counter_170_add_4_5.INJECT1_0 = "NO";
    defparam counter_170_add_4_5.INJECT1_1 = "NO";
    LUT4 i1460_2_lut (.A(n1760), .B(LED7_c), .Z(n375)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1460_2_lut.init = 16'h7777;
    CCU2C counter_170_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2383), .COUT(n2384), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_3.INIT0 = 16'haaa0;
    defparam counter_170_add_4_3.INIT1 = 16'haaa0;
    defparam counter_170_add_4_3.INJECT1_0 = "NO";
    defparam counter_170_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_170_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2383), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_170_add_4_1.INIT0 = 16'h0000;
    defparam counter_170_add_4_1.INIT1 = 16'h555f;
    defparam counter_170_add_4_1.INJECT1_0 = "NO";
    defparam counter_170_add_4_1.INJECT1_1 = "NO";
    
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
    INV i1618 (.A(serial_clk_c), .Z(clk_N_262));
    
endmodule
