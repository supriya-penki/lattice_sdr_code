// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jan 11 15:43:16 2026
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
    wire serial_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire pll_clko_1 /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(65[6:16])
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    
    wire GND_net, VCC_net, LED4_c_c, LED_c, LED7_c, clockDivider_clkLock, 
        counter_0_countDone, fskModule_symDone;
    wire [13:0]IQSerializer_I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(61[21:35])
    wire [13:0]IQSerializer_Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(62[21:35])
    
    wire IQSerializer_start;
    wire [25:0]cnt1;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(103[13:17])
    
    wire n1694, n2226, n135, n134, n133, n132, n131, n130, n129, 
        n15, n1690, n1686, n128, n127, top_rst_N_28, n25, cout, 
        n2743, n2642, n2225, clockDivider_clk_4M_enable_1;
    wire [25:0]waitcount;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(12[23:32])
    
    wire n2168, n2169, n11, n12, n2224, n13, n14, n15_adj_344, 
        n16, n2223, n17, n2222, n2171, n2173, n2172, n18, n24, 
        n19, n20;
    wire [7:0]symCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(35[11:21])
    
    wire data, n2166, n126, n125, n124, next_state_3__N_153, next_state_3__N_154, 
        next_state_3__N_156, n123, n1696;
    wire [1:0]I;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(13[26:27])
    
    wire n122;
    wire [1:0]Q;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(14[25:26])
    
    wire switch, n121, n120, n119, n118, n117, n116;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    
    wire n21, n2165, n2221, n2164, n2220, n2219, n115, n2163, 
        n114, n113, n2218, n2167, n2217, n1688, n10, n9, n8, 
        clockDivider_clk_4M_enable_9, n26, n7, n112, n22, n23, I_bit_temp, 
        I_bit_temp2, Q_bit_temp, I_bit, Q_bit, n2741, n111, n110, 
        n2162, iq_switch_N_215, n608, n6, n5, n4, n3, cout_adj_345, 
        n2161, n2216, n2215, n2, n2236, n2235, n2745, n2214, 
        n2234, n2233, n2232, n2231, n2230, n2229, n2228, n2227, 
        n2170;
    
    VHI i2 (.Z(VCC_net));
    packetCounter counter_0 (.waitcount({waitcount}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .counter_0_countDone(counter_0_countDone), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .clockDivider_clk_4M_enable_1(clockDivider_clk_4M_enable_1), 
            .n1694(n1694), .cout(cout_adj_345), .clockDivider_clkLock(clockDivider_clkLock)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(129[15] 134[2])
    FD1S3AX cnt1_165__i7 (.D(n128), .CK(serial_clk_c), .Q(n19)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i7.GSR = "ENABLED";
    FD1S3AX cnt1_165__i1 (.D(n134), .CK(serial_clk_c), .Q(n25)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i1.GSR = "ENABLED";
    CCU2C cnt1_165_add_4_7 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2163), 
          .COUT(n2164), .S0(n130), .S1(n129));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_7.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_7.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_7.INJECT1_1 = "NO";
    CCU2C add_979_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2224), .COUT(n2225));
    defparam add_979_23.INIT0 = 16'h5555;
    defparam add_979_23.INIT1 = 16'h5555;
    defparam add_979_23.INJECT1_0 = "NO";
    defparam add_979_23.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i6 (.D(n129), .CK(serial_clk_c), .Q(n20)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i6.GSR = "ENABLED";
    CCU2C add_979_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2223), .COUT(n2224));
    defparam add_979_21.INIT0 = 16'h5555;
    defparam add_979_21.INIT1 = 16'h5555;
    defparam add_979_21.INJECT1_0 = "NO";
    defparam add_979_21.INJECT1_1 = "NO";
    CCU2C add_979_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2222), .COUT(n2223));
    defparam add_979_19.INIT0 = 16'h5555;
    defparam add_979_19.INIT1 = 16'h5555;
    defparam add_979_19.INJECT1_0 = "NO";
    defparam add_979_19.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i5 (.D(n130), .CK(serial_clk_c), .Q(n21)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i5.GSR = "ENABLED";
    FD1S3AX cnt1_165__i4 (.D(n131), .CK(serial_clk_c), .Q(n22)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i4.GSR = "ENABLED";
    CCU2C cnt1_165_add_4_17 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2168), 
          .COUT(n2169), .S0(n120), .S1(n119));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_17.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_17.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_17.INJECT1_1 = "NO";
    CCU2C add_978_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2236), 
          .S0(cout_adj_345));
    defparam add_978_cout.INIT0 = 16'h0000;
    defparam add_978_cout.INIT1 = 16'h0000;
    defparam add_978_cout.INJECT1_0 = "NO";
    defparam add_978_cout.INJECT1_1 = "NO";
    CCU2C add_979_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2221), .COUT(n2222));
    defparam add_979_17.INIT0 = 16'h5555;
    defparam add_979_17.INIT1 = 16'h5555;
    defparam add_979_17.INJECT1_0 = "NO";
    defparam add_979_17.INJECT1_1 = "NO";
    CCU2C add_978_20 (.A0(waitcount[24]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[25]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2235), .COUT(n2236));
    defparam add_978_20.INIT0 = 16'h555f;
    defparam add_978_20.INIT1 = 16'h555f;
    defparam add_978_20.INJECT1_0 = "NO";
    defparam add_978_20.INJECT1_1 = "NO";
    IB LED4_c_pad (.I(top_rst), .O(LED4_c_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(23[7:14])
    GSR GSR_INST (.GSR(VCC_net));
    IB top_clk_pad (.I(top_clk), .O(top_clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(22[7:14])
    CCU2C cnt1_165_add_4_5 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2162), 
          .COUT(n2163), .S0(n132), .S1(n131));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_5.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_5.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_5.INJECT1_1 = "NO";
    FD1S3AX cnt1_165__i3 (.D(n132), .CK(serial_clk_c), .Q(n23)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i3.GSR = "ENABLED";
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(35[14:18])
    CCU2C add_978_18 (.A0(waitcount[22]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[23]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2234), .COUT(n2235));
    defparam add_978_18.INIT0 = 16'h555f;
    defparam add_978_18.INIT1 = 16'h555f;
    defparam add_978_18.INJECT1_0 = "NO";
    defparam add_978_18.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB LED6_pad (.I(VCC_net), .O(LED6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(34[14:18])
    FD1S3AX cnt1_165__i2 (.D(n133), .CK(serial_clk_c), .Q(n24)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i2.GSR = "ENABLED";
    CCU2C add_979_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2220), .COUT(n2221));
    defparam add_979_15.INIT0 = 16'h5555;
    defparam add_979_15.INIT1 = 16'h5555;
    defparam add_979_15.INJECT1_0 = "NO";
    defparam add_979_15.INJECT1_1 = "NO";
    OB LED5_pad (.I(VCC_net), .O(LED5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(33[14:18])
    ROM256X1A addr_7__I_0 (.AD0(symCounter[0]), .AD1(symCounter[1]), .AD2(symCounter[2]), 
            .AD3(symCounter[3]), .AD4(symCounter[4]), .AD5(symCounter[5]), 
            .AD6(symCounter[6]), .AD7(symCounter[7]), .DO0(data)) /* synthesis initstate=0xB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA */ ;
    defparam addr_7__I_0.initval = 256'hB5463ABDE2A89C8349F82B64F363CE4D6143ADA31E8BE2DC5836468E89BED6AA;
    CCU2C add_979_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2219), .COUT(n2220));
    defparam add_979_13.INIT0 = 16'h5555;
    defparam add_979_13.INIT1 = 16'h5555;
    defparam add_979_13.INJECT1_0 = "NO";
    defparam add_979_13.INJECT1_1 = "NO";
    CCU2C add_978_16 (.A0(waitcount[20]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2233), .COUT(n2234));
    defparam add_978_16.INIT0 = 16'h555f;
    defparam add_978_16.INIT1 = 16'h555f;
    defparam add_978_16.INJECT1_0 = "NO";
    defparam add_978_16.INJECT1_1 = "NO";
    OB LED4_pad (.I(LED4_c_c), .O(LED4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(32[14:18])
    CCU2C add_978_14 (.A0(waitcount[18]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2232), .COUT(n2233));
    defparam add_978_14.INIT0 = 16'h555f;
    defparam add_978_14.INIT1 = 16'h555f;
    defparam add_978_14.INJECT1_0 = "NO";
    defparam add_978_14.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_10 (.A(ICounter[2]), .B(ICounter[1]), .Z(n2743)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_10.init = 16'h6666;
    CCU2C cnt1_165_add_4_3 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2161), 
          .COUT(n2162), .S0(n134), .S1(n133));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_3.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_3.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_3.INJECT1_1 = "NO";
    OB LED3_pad (.I(VCC_net), .O(LED3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(31[14:18])
    CCU2C add_979_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2218), .COUT(n2219));
    defparam add_979_11.INIT0 = 16'h5555;
    defparam add_979_11.INIT1 = 16'h5555;
    defparam add_979_11.INJECT1_0 = "NO";
    defparam add_979_11.INJECT1_1 = "NO";
    OB serial_clk_pad (.I(serial_clk_c), .O(serial_clk));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    OB LED2_pad (.I(VCC_net), .O(LED2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(30[14:18])
    OB LED1_pad (.I(VCC_net), .O(LED1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(29[14:18])
    OB serial_iq_pad (.I(serial_iq_c), .O(serial_iq));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    CCU2C cnt1_165_add_4_19 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2169), 
          .COUT(n2170), .S0(n118), .S1(n117));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_19.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_19.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_19.INJECT1_1 = "NO";
    OB LED_pad (.I(LED_c), .O(LED));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(28[14:17])
    LUT4 i680_1_lut (.A(cout), .Z(clockDivider_clk_4M_enable_1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i680_1_lut.init = 16'h5555;
    FD1S3AX LED_9 (.D(cnt1[25]), .CK(serial_clk_c), .Q(LED_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(104[7] 107[4])
    defparam LED_9.GSR = "ENABLED";
    CCU2C cnt1_165_add_4_11 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2165), 
          .COUT(n2166), .S0(n126), .S1(n125));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_11.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_11.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_11.INJECT1_1 = "NO";
    CCU2C add_979_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2217), .COUT(n2218));
    defparam add_979_9.INIT0 = 16'h5555;
    defparam add_979_9.INIT1 = 16'h5555;
    defparam add_979_9.INJECT1_0 = "NO";
    defparam add_979_9.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2161), .S1(n135));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_1.INIT0 = 16'h0000;
    defparam cnt1_165_add_4_1.INIT1 = 16'h555f;
    defparam cnt1_165_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_1.INJECT1_1 = "NO";
    CCU2C add_979_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2216), .COUT(n2217));
    defparam add_979_7.INIT0 = 16'haaa5;
    defparam add_979_7.INIT1 = 16'h5555;
    defparam add_979_7.INJECT1_0 = "NO";
    defparam add_979_7.INJECT1_1 = "NO";
    LUT4 top_rst_I_0_1_lut (.A(LED4_c_c), .Z(top_rst_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[52:60])
    defparam top_rst_I_0_1_lut.init = 16'h5555;
    CCU2C add_979_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2215), .COUT(n2216));
    defparam add_979_5.INIT0 = 16'h5555;
    defparam add_979_5.INIT1 = 16'haaa5;
    defparam add_979_5.INJECT1_0 = "NO";
    defparam add_979_5.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2173), .S0(n110));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_27.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_27.INIT1 = 16'h0000;
    defparam cnt1_165_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_27.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_25 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2172), 
          .COUT(n2173), .S0(n112), .S1(n111));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_25.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_25.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_25.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_23 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2171), 
          .COUT(n2172), .S0(n114), .S1(n113));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_23.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_23.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_23.INJECT1_1 = "NO";
    CCU2C add_978_12 (.A0(waitcount[16]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2231), .COUT(n2232));
    defparam add_978_12.INIT0 = 16'haaa0;
    defparam add_978_12.INIT1 = 16'h555f;
    defparam add_978_12.INJECT1_0 = "NO";
    defparam add_978_12.INJECT1_1 = "NO";
    CCU2C add_978_10 (.A0(waitcount[14]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2230), .COUT(n2231));
    defparam add_978_10.INIT0 = 16'h555f;
    defparam add_978_10.INIT1 = 16'haaa0;
    defparam add_978_10.INJECT1_0 = "NO";
    defparam add_978_10.INJECT1_1 = "NO";
    CCU2C add_979_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2214), .COUT(n2215));
    defparam add_979_3.INIT0 = 16'haaa5;
    defparam add_979_3.INIT1 = 16'h5555;
    defparam add_979_3.INJECT1_0 = "NO";
    defparam add_979_3.INJECT1_1 = "NO";
    CCU2C add_978_8 (.A0(waitcount[12]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[13]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2229), .COUT(n2230));
    defparam add_978_8.INIT0 = 16'h555f;
    defparam add_978_8.INIT1 = 16'h555f;
    defparam add_978_8.INJECT1_0 = "NO";
    defparam add_978_8.INJECT1_1 = "NO";
    CCU2C add_979_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2214));
    defparam add_979_1.INIT0 = 16'h0000;
    defparam add_979_1.INIT1 = 16'haaaf;
    defparam add_979_1.INJECT1_0 = "NO";
    defparam add_979_1.INJECT1_1 = "NO";
    CCU2C add_978_6 (.A0(waitcount[10]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[11]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2228), .COUT(n2229));
    defparam add_978_6.INIT0 = 16'haaa0;
    defparam add_978_6.INIT1 = 16'h555f;
    defparam add_978_6.INJECT1_0 = "NO";
    defparam add_978_6.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_21 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2170), 
          .COUT(n2171), .S0(n116), .S1(n115));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_21.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_21.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_21.INJECT1_1 = "NO";
    CCU2C add_978_4 (.A0(waitcount[8]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(waitcount[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2227), .COUT(n2228));
    defparam add_978_4.INIT0 = 16'h555f;
    defparam add_978_4.INIT1 = 16'haaa0;
    defparam add_978_4.INJECT1_0 = "NO";
    defparam add_978_4.INJECT1_1 = "NO";
    CCU2C add_978_2 (.A0(waitcount[5]), .B0(waitcount[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2227));
    defparam add_978_2.INIT0 = 16'h000e;
    defparam add_978_2.INIT1 = 16'haaa0;
    defparam add_978_2.INJECT1_0 = "NO";
    defparam add_978_2.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_13 (.A0(n15_adj_344), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2166), .COUT(n2167), .S0(n124), .S1(n123));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_13.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_13.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_13.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_15 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2167), 
          .COUT(n2168), .S0(n122), .S1(n121));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_15.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_15.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_15.INJECT1_1 = "NO";
    CCU2C add_979_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2226), .S1(cout));
    defparam add_979_27.INIT0 = 16'h5555;
    defparam add_979_27.INIT1 = 16'h0000;
    defparam add_979_27.INJECT1_0 = "NO";
    defparam add_979_27.INJECT1_1 = "NO";
    CCU2C add_979_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2225), .COUT(n2226));
    defparam add_979_25.INIT0 = 16'h5555;
    defparam add_979_25.INIT1 = 16'h5555;
    defparam add_979_25.INJECT1_0 = "NO";
    defparam add_979_25.INJECT1_1 = "NO";
    CCU2C cnt1_165_add_4_9 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n2164), 
          .COUT(n2165), .S0(n128), .S1(n127));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165_add_4_9.INIT0 = 16'haaa0;
    defparam cnt1_165_add_4_9.INIT1 = 16'haaa0;
    defparam cnt1_165_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_165_add_4_9.INJECT1_1 = "NO";
    clockDivider clockDivider_0 (.clk_N_175(clk_N_175), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .GND_net(GND_net), .VCC_net(VCC_net), .LED7_c(LED7_c), .serial_clk_c(serial_clk_c), 
            .clockDivider_clkLock(clockDivider_clkLock), .n1694(n1694)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(122[14] 127[2])
    FD1S3AX cnt1_165__i25 (.D(n110), .CK(serial_clk_c), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i25.GSR = "ENABLED";
    QPSK_modulator qpskModule_1 (.IQSerializer_start(IQSerializer_start), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2745(n2745), .VCC_net(VCC_net), 
            .n608(n608), .fskModule_symDone(fskModule_symDone), .clk_N_175(clk_N_175), 
            .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
            .switch(switch), .n15(n15), .I_bit_temp2(I_bit_temp2), .n1686(n1686), 
            .I_bit_temp(I_bit_temp), .n1690(n1690), .iq_switch_N_215(iq_switch_N_215), 
            .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .Q_bit(Q_bit), 
            .n1696(n1696), .Q_bit_temp(Q_bit_temp), .I_bit(I_bit), .n1688(n1688), 
            .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
            .n2642(n2642), .n2741(n2741), .\Q[1] (Q[1]), .IQSerializer_Q({IQSerializer_Q}), 
            .\I[1] (I[1]), .IQSerializer_I({IQSerializer_I})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(146[16] 161[2])
    FD1S3AX cnt1_165__i24 (.D(n111), .CK(serial_clk_c), .Q(n2)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i24.GSR = "ENABLED";
    FD1S3AX cnt1_165__i23 (.D(n112), .CK(serial_clk_c), .Q(n3)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i23.GSR = "ENABLED";
    FD1S3AX cnt1_165__i22 (.D(n113), .CK(serial_clk_c), .Q(n4)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i22.GSR = "ENABLED";
    FD1S3AX cnt1_165__i21 (.D(n114), .CK(serial_clk_c), .Q(n5)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i21.GSR = "ENABLED";
    FD1S3AX cnt1_165__i20 (.D(n115), .CK(serial_clk_c), .Q(n6)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i20.GSR = "ENABLED";
    FD1S3AX cnt1_165__i19 (.D(n116), .CK(serial_clk_c), .Q(n7)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i19.GSR = "ENABLED";
    FD1S3AX cnt1_165__i18 (.D(n117), .CK(serial_clk_c), .Q(n8)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i18.GSR = "ENABLED";
    FD1S3AX cnt1_165__i17 (.D(n118), .CK(serial_clk_c), .Q(n9)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i17.GSR = "ENABLED";
    FD1S3AX cnt1_165__i16 (.D(n119), .CK(serial_clk_c), .Q(n10)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i16.GSR = "ENABLED";
    FD1S3AX cnt1_165__i15 (.D(n120), .CK(serial_clk_c), .Q(n11)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i15.GSR = "ENABLED";
    FD1S3AX cnt1_165__i14 (.D(n121), .CK(serial_clk_c), .Q(n12)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i14.GSR = "ENABLED";
    FD1S3AX cnt1_165__i13 (.D(n122), .CK(serial_clk_c), .Q(n13)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i13.GSR = "ENABLED";
    FD1S3AX cnt1_165__i12 (.D(n123), .CK(serial_clk_c), .Q(n14)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i12.GSR = "ENABLED";
    FD1S3AX cnt1_165__i11 (.D(n124), .CK(serial_clk_c), .Q(n15_adj_344)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i11.GSR = "ENABLED";
    FD1S3AX cnt1_165__i10 (.D(n125), .CK(serial_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i10.GSR = "ENABLED";
    FD1S3AX cnt1_165__i9 (.D(n126), .CK(serial_clk_c), .Q(n17)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i9.GSR = "ENABLED";
    FD1S3AX cnt1_165__i8 (.D(n127), .CK(serial_clk_c), .Q(n18)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i8.GSR = "ENABLED";
    FD1S3AX cnt1_165__i0 (.D(n135), .CK(serial_clk_c), .Q(n26)) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(105[10:20])
    defparam cnt1_165__i0.GSR = "ENABLED";
    pll_24m my_instance_1 (.top_clk_c(top_clk_c), .pll_clko_1(pll_clko_1), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(118[9:61])
    IQSerializer IQSerializer_1 (.IQSerializer_I({IQSerializer_I}), .\ICounter[1] (ICounter[1]), 
            .IQSerializer_Q({IQSerializer_Q}), .clk_N_235(clk_N_235), .n608(n608), 
            .\ICounter[2] (ICounter[2]), .IQSerializer_start(IQSerializer_start), 
            .n2743(n2743), .serial_clk_c(serial_clk_c), .serial_iq_c(serial_iq_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(166[14] 174[2])
    packetGenerator packetGen_1 (.symCounter({symCounter}), .next_state_3__N_156(next_state_3__N_156), 
            .counter_0_countDone(counter_0_countDone), .I_bit_temp(I_bit_temp), 
            .n1688(n1688), .next_state_3__N_154(next_state_3__N_154), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .n2745(n2745), .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), 
            .n1686(n1686), .clk_N_175(clk_N_175), .fskModule_symDone(fskModule_symDone), 
            .I_bit(I_bit), .\I[1] (I[1]), .n2741(n2741), .n15(n15), 
            .switch(switch), .iq_switch_N_215(iq_switch_N_215), .I_bit_temp2(I_bit_temp2), 
            .n1690(n1690), .Q_bit(Q_bit), .\Q[1] (Q[1]), .data(data), 
            .n2642(n2642), .next_state_3__N_153(next_state_3__N_153), .Q_bit_temp(Q_bit_temp), 
            .n1696(n1696)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(136[17] 142[2])
    pll_24_64m my_instance_2 (.pll_clko_1(pll_clko_1), .top_rst_N_28(top_rst_N_28), 
            .serial_clk_c(serial_clk_c), .LED7_c(LED7_c), .GND_net(GND_net), 
            .clk_N_235(clk_N_235)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(119[12:100])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module packetCounter
//

module packetCounter (waitcount, GND_net, VCC_net, counter_0_countDone, 
            clockDivider_clk_4M, clockDivider_clk_4M_enable_1, n1694, 
            cout, clockDivider_clkLock) /* synthesis syn_module_defined=1 */ ;
    output [25:0]waitcount;
    input GND_net;
    input VCC_net;
    output counter_0_countDone;
    input clockDivider_clk_4M;
    input clockDivider_clk_4M_enable_1;
    input n1694;
    input cout;
    input clockDivider_clkLock;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    wire n2176;
    wire [25:0]n109;
    
    wire n2177, n2185, n2186, n2184, n1698, n2183, n2182, n2175, 
        n2181, n2174, n2180, n2179, n2178;
    
    CCU2C waitcount_169_add_4_7 (.A0(waitcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2176), .COUT(n2177), .S0(n109[5]), .S1(n109[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_7.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_7.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_7.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_7.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_25 (.A0(waitcount[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2185), .COUT(n2186), .S0(n109[23]), .S1(n109[24]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_25.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_25.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_25.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_25.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_23 (.A0(waitcount[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2184), .COUT(n2185), .S0(n109[21]), .S1(n109[22]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_23.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_23.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_23.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_23.INJECT1_1 = "NO";
    FD1P3IX countDone_14 (.D(VCC_net), .SP(clockDivider_clk_4M_enable_1), 
            .CD(n1694), .CK(clockDivider_clk_4M), .Q(counter_0_countDone)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=129, LSE_RLINE=134 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(14[8] 26[4])
    defparam countDone_14.GSR = "ENABLED";
    LUT4 i1484_2_lut (.A(cout), .B(clockDivider_clkLock), .Z(n1698)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(18[14] 25[8])
    defparam i1484_2_lut.init = 16'hbbbb;
    CCU2C waitcount_169_add_4_21 (.A0(waitcount[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2183), .COUT(n2184), .S0(n109[19]), .S1(n109[20]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_21.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_21.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_21.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_21.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_19 (.A0(waitcount[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2182), .COUT(n2183), .S0(n109[17]), .S1(n109[18]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_19.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_19.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_19.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_19.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_5 (.A0(waitcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2175), .COUT(n2176), .S0(n109[3]), .S1(n109[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_5.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_5.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_5.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_5.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_17 (.A0(waitcount[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2181), .COUT(n2182), .S0(n109[15]), .S1(n109[16]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_17.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_17.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_17.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_17.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_3 (.A0(waitcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2174), .COUT(n2175), .S0(n109[1]), .S1(n109[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_3.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_3.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_3.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_3.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i25 (.D(n109[25]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i25.GSR = "ENABLED";
    CCU2C waitcount_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(waitcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2174), .S1(n109[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_1.INIT0 = 16'h0000;
    defparam waitcount_169_add_4_1.INIT1 = 16'h555f;
    defparam waitcount_169_add_4_1.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_1.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_15 (.A0(waitcount[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2180), .COUT(n2181), .S0(n109[13]), .S1(n109[14]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_15.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_15.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_15.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_15.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_13 (.A0(waitcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2179), .COUT(n2180), .S0(n109[11]), .S1(n109[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_13.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_13.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_13.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_13.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i24 (.D(n109[24]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i24.GSR = "ENABLED";
    FD1S3IX waitcount_169__i23 (.D(n109[23]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i23.GSR = "ENABLED";
    FD1S3IX waitcount_169__i22 (.D(n109[22]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i22.GSR = "ENABLED";
    FD1S3IX waitcount_169__i21 (.D(n109[21]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i21.GSR = "ENABLED";
    FD1S3IX waitcount_169__i20 (.D(n109[20]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i20.GSR = "ENABLED";
    FD1S3IX waitcount_169__i19 (.D(n109[19]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i19.GSR = "ENABLED";
    FD1S3IX waitcount_169__i18 (.D(n109[18]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i18.GSR = "ENABLED";
    FD1S3IX waitcount_169__i17 (.D(n109[17]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i17.GSR = "ENABLED";
    FD1S3IX waitcount_169__i16 (.D(n109[16]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i16.GSR = "ENABLED";
    FD1S3IX waitcount_169__i15 (.D(n109[15]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i15.GSR = "ENABLED";
    FD1S3IX waitcount_169__i14 (.D(n109[14]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i14.GSR = "ENABLED";
    FD1S3IX waitcount_169__i13 (.D(n109[13]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i13.GSR = "ENABLED";
    FD1S3IX waitcount_169__i12 (.D(n109[12]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i12.GSR = "ENABLED";
    FD1S3IX waitcount_169__i11 (.D(n109[11]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i11.GSR = "ENABLED";
    FD1S3IX waitcount_169__i10 (.D(n109[10]), .CK(clockDivider_clk_4M), 
            .CD(n1698), .Q(waitcount[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i10.GSR = "ENABLED";
    FD1S3IX waitcount_169__i9 (.D(n109[9]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i9.GSR = "ENABLED";
    FD1S3IX waitcount_169__i8 (.D(n109[8]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i8.GSR = "ENABLED";
    FD1S3IX waitcount_169__i7 (.D(n109[7]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i7.GSR = "ENABLED";
    FD1S3IX waitcount_169__i6 (.D(n109[6]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i6.GSR = "ENABLED";
    FD1S3IX waitcount_169__i5 (.D(n109[5]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i5.GSR = "ENABLED";
    FD1S3IX waitcount_169__i4 (.D(n109[4]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i4.GSR = "ENABLED";
    FD1S3IX waitcount_169__i3 (.D(n109[3]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i3.GSR = "ENABLED";
    FD1S3IX waitcount_169__i2 (.D(n109[2]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i2.GSR = "ENABLED";
    FD1S3IX waitcount_169__i1 (.D(n109[1]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i1.GSR = "ENABLED";
    CCU2C waitcount_169_add_4_11 (.A0(waitcount[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2178), .COUT(n2179), .S0(n109[9]), .S1(n109[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_11.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_11.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_11.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_11.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_9 (.A0(waitcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(waitcount[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2177), .COUT(n2178), .S0(n109[7]), .S1(n109[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_9.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_9.INIT1 = 16'haaa0;
    defparam waitcount_169_add_4_9.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_9.INJECT1_1 = "NO";
    CCU2C waitcount_169_add_4_27 (.A0(waitcount[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2186), .S0(n109[25]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169_add_4_27.INIT0 = 16'haaa0;
    defparam waitcount_169_add_4_27.INIT1 = 16'h0000;
    defparam waitcount_169_add_4_27.INJECT1_0 = "NO";
    defparam waitcount_169_add_4_27.INJECT1_1 = "NO";
    FD1S3IX waitcount_169__i0 (.D(n109[0]), .CK(clockDivider_clk_4M), .CD(n1698), 
            .Q(waitcount[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetcounter.v(19[53:78])
    defparam waitcount_169__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clockDivider
//

module clockDivider (clk_N_175, clockDivider_clk_4M, GND_net, VCC_net, 
            LED7_c, serial_clk_c, clockDivider_clkLock, n1694) /* synthesis syn_module_defined=1 */ ;
    output clk_N_175;
    output clockDivider_clk_4M;
    input GND_net;
    input VCC_net;
    input LED7_c;
    input serial_clk_c;
    output clockDivider_clkLock;
    output n1694;
    
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire serial_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire [7:0]n65;
    wire [7:0]n37;
    
    wire n2157, pll_lock_N_54, clkOut_N_64, n1628, n2468, n2554;
    wire [7:0]counter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(29[11:18])
    
    wire n2466, n2156;
    wire [7:0]n37_adj_343;
    wire [7:0]lockCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(28[11:22])
    
    wire n373, n2155, n2160, n2154, n2159, n2158, n2153;
    
    INV i1639 (.A(clockDivider_clk_4M), .Z(clk_N_175));
    CCU2C lockCounter_167_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n2157), .S1(n37[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_1.INIT0 = 16'h0000;
    defparam lockCounter_167_add_4_1.INIT1 = 16'h555f;
    defparam lockCounter_167_add_4_1.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_1.INJECT1_1 = "NO";
    LUT4 pll_lock_I_0_1_lut (.A(LED7_c), .Z(pll_lock_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(32[9:25])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    FD1S3IX clkOut_23 (.D(clkOut_N_64), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(clockDivider_clk_4M)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=127 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkOut_23.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clockDivider_clk_4M), .B(n1628), .Z(clkOut_N_64)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i1_4_lut (.A(n2468), .B(n2554), .C(counter[2]), .D(n2466), 
         .Z(n1628)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut (.A(counter[4]), .B(counter[6]), .C(counter[7]), .Z(n2468)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1401_2_lut (.A(counter[0]), .B(counter[1]), .Z(n2554)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1401_2_lut.init = 16'h8888;
    CCU2C counter_166_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2156), .S0(n37_adj_343[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_9.INIT0 = 16'haaa0;
    defparam counter_166_add_4_9.INIT1 = 16'h0000;
    defparam counter_166_add_4_9.INJECT1_0 = "NO";
    defparam counter_166_add_4_9.INJECT1_1 = "NO";
    FD1P3IX clkLock_25 (.D(VCC_net), .SP(lockCounter[7]), .CD(pll_lock_N_54), 
            .CK(serial_clk_c), .Q(clockDivider_clkLock)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=127 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam clkLock_25.GSR = "ENABLED";
    FD1S3IX counter_166__i0 (.D(n37_adj_343[0]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_28 (.A(counter[5]), .B(counter[3]), .Z(n2466)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_28.init = 16'heeee;
    FD1S3IX lockCounter_167__i0 (.D(n37[0]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i0.GSR = "ENABLED";
    LUT4 i1481_2_lut (.A(n1628), .B(LED7_c), .Z(n373)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1481_2_lut.init = 16'h7777;
    CCU2C counter_166_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2155), .COUT(n2156), .S0(n37_adj_343[5]), 
          .S1(n37_adj_343[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_7.INIT0 = 16'haaa0;
    defparam counter_166_add_4_7.INIT1 = 16'haaa0;
    defparam counter_166_add_4_7.INJECT1_0 = "NO";
    defparam counter_166_add_4_7.INJECT1_1 = "NO";
    FD1S3IX lockCounter_167__i7 (.D(n37[7]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(lockCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i7.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i6 (.D(n37[6]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i6.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i5 (.D(n37[5]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i5.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i4 (.D(n37[4]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i4.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i3 (.D(n37[3]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i3.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i2 (.D(n37[2]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i2.GSR = "ENABLED";
    FD1S3IX lockCounter_167__i1 (.D(n37[1]), .CK(serial_clk_c), .CD(pll_lock_N_54), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167__i1.GSR = "ENABLED";
    FD1S3IX counter_166__i7 (.D(n37_adj_343[7]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i7.GSR = "ENABLED";
    FD1S3IX counter_166__i6 (.D(n37_adj_343[6]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i6.GSR = "ENABLED";
    FD1S3IX counter_166__i5 (.D(n37_adj_343[5]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i5.GSR = "ENABLED";
    FD1S3IX counter_166__i4 (.D(n37_adj_343[4]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i4.GSR = "ENABLED";
    FD1S3IX counter_166__i3 (.D(n37_adj_343[3]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i3.GSR = "ENABLED";
    FD1S3IX counter_166__i2 (.D(n37_adj_343[2]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i2.GSR = "ENABLED";
    FD1S3IX counter_166__i1 (.D(n37_adj_343[1]), .CK(serial_clk_c), .CD(n373), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166__i1.GSR = "ENABLED";
    CCU2C lockCounter_167_add_4_9 (.A0(lockCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2160), .S0(n37[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_9.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_9.INIT1 = 16'h0000;
    defparam lockCounter_167_add_4_9.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2154), .COUT(n2155), .S0(n37_adj_343[3]), 
          .S1(n37_adj_343[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_5.INIT0 = 16'haaa0;
    defparam counter_166_add_4_5.INIT1 = 16'haaa0;
    defparam counter_166_add_4_5.INJECT1_0 = "NO";
    defparam counter_166_add_4_5.INJECT1_1 = "NO";
    CCU2C lockCounter_167_add_4_7 (.A0(n65[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2159), .COUT(n2160), .S0(n37[5]), .S1(n37[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_7.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_7.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_7.INJECT1_1 = "NO";
    CCU2C lockCounter_167_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2158), .COUT(n2159), .S0(n37[3]), .S1(n37[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_5.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_5.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n2153), .COUT(n2154), .S0(n37_adj_343[1]), 
          .S1(n37_adj_343[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_3.INIT0 = 16'haaa0;
    defparam counter_166_add_4_3.INIT1 = 16'haaa0;
    defparam counter_166_add_4_3.INJECT1_0 = "NO";
    defparam counter_166_add_4_3.INJECT1_1 = "NO";
    CCU2C lockCounter_167_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n2157), .COUT(n2158), .S0(n37[1]), .S1(n37[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(46[24:42])
    defparam lockCounter_167_add_4_3.INIT0 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INIT1 = 16'haaa0;
    defparam lockCounter_167_add_4_3.INJECT1_0 = "NO";
    defparam lockCounter_167_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_166_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n2153), .S1(n37_adj_343[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(38[24:38])
    defparam counter_166_add_4_1.INIT0 = 16'h0000;
    defparam counter_166_add_4_1.INIT1 = 16'h555f;
    defparam counter_166_add_4_1.INJECT1_0 = "NO";
    defparam counter_166_add_4_1.INJECT1_1 = "NO";
    LUT4 i679_1_lut (.A(clockDivider_clkLock), .Z(n1694)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/clockdivider.v(31[8] 52[4])
    defparam i679_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module QPSK_modulator
//

module QPSK_modulator (IQSerializer_start, clockDivider_clk_4M, n2745, 
            VCC_net, n608, fskModule_symDone, clk_N_175, counter_0_countDone, 
            next_state_3__N_156, switch, n15, I_bit_temp2, n1686, 
            I_bit_temp, n1690, iq_switch_N_215, clockDivider_clk_4M_enable_9, 
            Q_bit, n1696, Q_bit_temp, I_bit, n1688, next_state_3__N_154, 
            next_state_3__N_153, n2642, n2741, \Q[1] , IQSerializer_Q, 
            \I[1] , IQSerializer_I) /* synthesis syn_module_defined=1 */ ;
    output IQSerializer_start;
    input clockDivider_clk_4M;
    output n2745;
    input VCC_net;
    output n608;
    output fskModule_symDone;
    input clk_N_175;
    input counter_0_countDone;
    input next_state_3__N_156;
    output switch;
    output n15;
    output I_bit_temp2;
    input n1686;
    output I_bit_temp;
    input n1690;
    input iq_switch_N_215;
    output clockDivider_clk_4M_enable_9;
    output Q_bit;
    input n1696;
    output Q_bit_temp;
    output I_bit;
    input n1688;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2642;
    input n2741;
    input \Q[1] ;
    output [13:0]IQSerializer_Q;
    input \I[1] ;
    output [13:0]IQSerializer_I;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    FD1S3DX start_9 (.D(VCC_net), .CK(clockDivider_clk_4M), .CD(n2745), 
            .Q(IQSerializer_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=146, LSE_RLINE=161 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(30[16] 33[8])
    defparam start_9.GSR = "ENABLED";
    LUT4 i213_1_lut (.A(IQSerializer_start), .Z(n608)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(30[16] 33[8])
    defparam i213_1_lut.init = 16'h5555;
    iq_div iq_div_inst (.fskModule_symDone(fskModule_symDone), .clk_N_175(clk_N_175), 
           .n2745(n2745), .counter_0_countDone(counter_0_countDone), .next_state_3__N_156(next_state_3__N_156), 
           .switch(switch), .n15(n15), .I_bit_temp2(I_bit_temp2), .n1686(n1686), 
           .I_bit_temp(I_bit_temp), .n1690(n1690), .iq_switch_N_215(iq_switch_N_215), 
           .clockDivider_clk_4M_enable_9(clockDivider_clk_4M_enable_9), .Q_bit(Q_bit), 
           .n1696(n1696), .Q_bit_temp(Q_bit_temp), .I_bit(I_bit), .n1688(n1688), 
           .next_state_3__N_154(next_state_3__N_154), .next_state_3__N_153(next_state_3__N_153), 
           .n2642(n2642)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(44[7] 53[6])
    rcos Q_inst (.counter_0_countDone(counter_0_countDone), .clockDivider_clk_4M(clockDivider_clk_4M), 
         .n2741(n2741), .\Q[1] (\Q[1] ), .VCC_net(VCC_net), .IQSerializer_Q({IQSerializer_Q})) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(70[7] 72[32])
    rcos_U1 I_inst (.counter_0_countDone(counter_0_countDone), .clockDivider_clk_4M(clockDivider_clk_4M), 
            .n2741(n2741), .VCC_net(VCC_net), .\I[1] (\I[1] ), .IQSerializer_I({IQSerializer_I})) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/qpsk_modulator.v(65[7] 67[32])
    
endmodule
//
// Verilog Description of module iq_div
//

module iq_div (fskModule_symDone, clk_N_175, n2745, counter_0_countDone, 
            next_state_3__N_156, switch, n15, I_bit_temp2, n1686, 
            I_bit_temp, n1690, iq_switch_N_215, clockDivider_clk_4M_enable_9, 
            Q_bit, n1696, Q_bit_temp, I_bit, n1688, next_state_3__N_154, 
            next_state_3__N_153, n2642) /* synthesis syn_module_defined=1 */ ;
    output fskModule_symDone;
    input clk_N_175;
    output n2745;
    input counter_0_countDone;
    input next_state_3__N_156;
    output switch;
    output n15;
    output I_bit_temp2;
    input n1686;
    output I_bit_temp;
    input n1690;
    input iq_switch_N_215;
    output clockDivider_clk_4M_enable_9;
    output Q_bit;
    input n1696;
    output Q_bit_temp;
    output I_bit;
    input n1688;
    input next_state_3__N_154;
    input next_state_3__N_153;
    output n2642;
    
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire n2407, n2492, n2744;
    wire [7:0]cnt_sample;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(21[17:27])
    
    wire n2327;
    wire [7:0]n8;
    
    wire clk_N_175_enable_4, I_1__N_182, n2330;
    wire [7:0]cnt_sample_7__N_189;
    
    wire clk_N_175_enable_5, n2506, n2564, n2422, n2323, n2420, 
        n2456, n2424, n2751;
    
    FD1S3DX symDone_56 (.D(n2407), .CK(clk_N_175), .CD(n2745), .Q(fskModule_symDone)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam symDone_56.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n2492), .B(n2744), .C(cnt_sample[4]), .D(cnt_sample[5]), 
         .Z(n2327)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i446_3_lut_4_lut (.A(cnt_sample[1]), .B(cnt_sample[2]), .C(cnt_sample[0]), 
         .D(cnt_sample[3]), .Z(n8[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i446_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1461_3_lut (.A(counter_0_countDone), .B(next_state_3__N_156), 
         .C(switch), .Z(clk_N_175_enable_4)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1461_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut (.A(cnt_sample[2]), .B(cnt_sample[3]), .Z(n2492)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i898_4_lut (.A(cnt_sample[5]), .B(I_1__N_182), .C(n15), .D(n2330), 
         .Z(cnt_sample_7__N_189[5])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam i898_4_lut.init = 16'hdcec;
    LUT4 i432_2_lut (.A(cnt_sample[1]), .B(cnt_sample[0]), .Z(n8[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i432_2_lut.init = 16'h6666;
    LUT4 i439_2_lut_3_lut (.A(cnt_sample[1]), .B(cnt_sample[0]), .C(cnt_sample[2]), 
         .Z(n8[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i439_2_lut_3_lut.init = 16'h7878;
    LUT4 rst_I_0_1_lut_rep_12 (.A(counter_0_countDone), .Z(n2745)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam rst_I_0_1_lut_rep_12.init = 16'h5555;
    FD1P3DX I_bit_temp2_62 (.D(n1686), .SP(clk_N_175_enable_5), .CK(clk_N_175), 
            .CD(n2745), .Q(I_bit_temp2)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp2_62.GSR = "ENABLED";
    FD1P3DX I_bit_temp_60 (.D(n1690), .SP(clk_N_175_enable_4), .CK(clk_N_175), 
            .CD(n2745), .Q(I_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_temp_60.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut (.A(counter_0_countDone), .B(next_state_3__N_156), 
         .Z(I_1__N_182)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    FD1S3BX iq_switch_57 (.D(iq_switch_N_215), .CK(clk_N_175), .PD(n2745), 
            .Q(switch)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(61[18] 65[12])
    defparam iq_switch_57.GSR = "ENABLED";
    FD1S3BX cnt_sample_i0 (.D(cnt_sample_7__N_189[0]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[0])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(counter_0_countDone), .B(n15), .C(next_state_3__N_156), 
         .D(n8[3]), .Z(cnt_sample_7__N_189[3])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i1_4_lut_4_lut_adj_18 (.A(counter_0_countDone), .B(n15), .C(next_state_3__N_156), 
         .D(n8[2]), .Z(cnt_sample_7__N_189[2])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut_adj_18.init = 16'hfdf5;
    LUT4 i1_4_lut_4_lut_adj_19 (.A(counter_0_countDone), .B(n15), .C(next_state_3__N_156), 
         .D(n8[1]), .Z(cnt_sample_7__N_189[1])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut_adj_19.init = 16'hfdf5;
    LUT4 i181_2_lut_2_lut (.A(counter_0_countDone), .B(fskModule_symDone), 
         .Z(clockDivider_clk_4M_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i181_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_sample[1]), .B(cnt_sample[2]), .C(cnt_sample[4]), 
         .D(cnt_sample[3]), .Z(n2506)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3DX Q_bit_59 (.D(n1696), .SP(clk_N_175_enable_5), .CK(clk_N_175), 
            .CD(n2745), .Q(Q_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_59.GSR = "ENABLED";
    LUT4 i1411_4_lut (.A(cnt_sample[0]), .B(cnt_sample[3]), .C(cnt_sample[2]), 
         .D(cnt_sample[4]), .Z(n2564)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1411_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_20 (.A(cnt_sample[4]), .B(cnt_sample[5]), .Z(n2422)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_adj_20.init = 16'heeee;
    LUT4 i896_4_lut (.A(cnt_sample[7]), .B(I_1__N_182), .C(n15), .D(n2323), 
         .Z(cnt_sample_7__N_189[7])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam i896_4_lut.init = 16'hdcec;
    LUT4 i1_2_lut_adj_21 (.A(cnt_sample[6]), .B(cnt_sample[7]), .Z(n2420)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_adj_21.init = 16'heeee;
    LUT4 i453_3_lut_4_lut (.A(cnt_sample[1]), .B(cnt_sample[0]), .C(n2492), 
         .D(cnt_sample[4]), .Z(n8[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i453_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_4_lut_adj_22 (.A(cnt_sample[5]), .B(cnt_sample[7]), .C(cnt_sample[6]), 
         .D(cnt_sample[1]), .Z(n2456)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h0100;
    FD1P3DX Q_bit_temp_61 (.D(n1686), .SP(clk_N_175_enable_4), .CK(clk_N_175), 
            .CD(n2745), .Q(Q_bit_temp)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam Q_bit_temp_61.GSR = "ENABLED";
    FD1S3BX cnt_sample_i7 (.D(cnt_sample_7__N_189[7]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[7])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i7.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(counter_0_countDone), .B(switch), .C(next_state_3__N_156), 
         .Z(clk_N_175_enable_5)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    FD1S3BX cnt_sample_i6 (.D(cnt_sample_7__N_189[6]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[6])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i6.GSR = "ENABLED";
    FD1S3BX cnt_sample_i5 (.D(cnt_sample_7__N_189[5]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[5])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i5.GSR = "ENABLED";
    FD1S3BX cnt_sample_i4 (.D(cnt_sample_7__N_189[4]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[4])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i4.GSR = "ENABLED";
    FD1S3BX cnt_sample_i3 (.D(cnt_sample_7__N_189[3]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[3])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i3.GSR = "ENABLED";
    FD1S3BX cnt_sample_i2 (.D(cnt_sample_7__N_189[2]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[2])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i2.GSR = "ENABLED";
    FD1S3BX cnt_sample_i1 (.D(cnt_sample_7__N_189[1]), .CK(clk_N_175), .PD(n2745), 
            .Q(cnt_sample[1])) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam cnt_sample_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_23 (.A(n2744), .B(n2422), .C(n2424), .D(n2420), 
         .Z(n15)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_4_lut_adj_23.init = 16'hfffd;
    LUT4 i1_2_lut_rep_18 (.A(cnt_sample[1]), .B(cnt_sample[2]), .Z(n2751)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_24 (.A(counter_0_countDone), .B(n15), .C(next_state_3__N_156), 
         .D(n8[4]), .Z(cnt_sample_7__N_189[4])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1_4_lut_4_lut_adj_24.init = 16'hfdf5;
    LUT4 i1_3_lut_4_lut (.A(cnt_sample[3]), .B(cnt_sample[4]), .C(cnt_sample[0]), 
         .D(n2751), .Z(n2330)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_25 (.A(cnt_sample[2]), .B(cnt_sample[3]), .Z(n2424)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(47[7:38])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i434_2_lut_rep_11 (.A(cnt_sample[1]), .B(cnt_sample[0]), .Z(n2744)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i434_2_lut_rep_11.init = 16'h8888;
    FD1P3DX I_bit_58 (.D(n1688), .SP(clk_N_175_enable_5), .CK(clk_N_175), 
            .CD(n2745), .Q(I_bit)) /* synthesis LSE_LINE_FILE_ID=34, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=44, LSE_RLINE=53 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(76[18] 92[12])
    defparam I_bit_58.GSR = "ENABLED";
    LUT4 i897_4_lut (.A(cnt_sample[6]), .B(I_1__N_182), .C(n15), .D(n2327), 
         .Z(cnt_sample_7__N_189[6])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(39[18] 52[6])
    defparam i897_4_lut.init = 16'hdcec;
    LUT4 i1_4_lut_adj_26 (.A(n2506), .B(cnt_sample[5]), .C(cnt_sample[0]), 
         .D(cnt_sample[6]), .Z(n2323)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iq_div.v(43[19:36])
    defparam i1_4_lut_adj_26.init = 16'h8000;
    LUT4 i1_4_lut_adj_27 (.A(n2564), .B(next_state_3__N_156), .C(counter_0_countDone), 
         .D(n2456), .Z(n2407)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_27.init = 16'h1000;
    LUT4 i1494_3_lut_3_lut (.A(counter_0_countDone), .B(next_state_3__N_154), 
         .C(next_state_3__N_153), .Z(n2642)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(64[6:16])
    defparam i1494_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1463_3_lut (.A(counter_0_countDone), .B(next_state_3__N_156), 
         .C(cnt_sample[0]), .Z(cnt_sample_7__N_189[0])) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1463_3_lut.init = 16'hdfdf;
    
endmodule
//
// Verilog Description of module rcos
//

module rcos (counter_0_countDone, clockDivider_clk_4M, n2741, \Q[1] , 
            VCC_net, IQSerializer_Q) /* synthesis sbp_module="true", syn_module_defined=1 */ ;
    input counter_0_countDone;
    input clockDivider_clk_4M;
    input n2741;
    input \Q[1] ;
    input VCC_net;
    output [13:0]IQSerializer_Q;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    rcosfilter_m rcosfilter_m_inst (.counter_0_countDone(counter_0_countDone), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2741(n2741), .\Q[1] (\Q[1] ), 
            .VCC_net(VCC_net), .IQSerializer_Q({IQSerializer_Q})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcos.v(22[18] 24[62])
    
endmodule
//
// Verilog Description of module rcosfilter_m
//

module rcosfilter_m (counter_0_countDone, clockDivider_clk_4M, n2741, 
            \Q[1] , VCC_net, IQSerializer_Q) /* synthesis syn_module_defined=1 */ ;
    input counter_0_countDone;
    input clockDivider_clk_4M;
    input n2741;
    input \Q[1] ;
    input VCC_net;
    output [13:0]IQSerializer_Q;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    rcosfilter_m_core u1_rcosfilter_m (.rstn(counter_0_countDone), .clk(clockDivider_clk_4M), 
            .inpvalid(n2741), .din({\Q[1] , \Q[1] , \Q[1] , VCC_net}), 
            .dout({IQSerializer_Q})) /* synthesis LSE_LINE_FILE_ID=41, LSE_LCOL=18, LSE_RCOL=62, LSE_LLINE=22, LSE_RLINE=24 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m.v(29[19] 38[6])
    
endmodule
//
// Verilog Description of module rcosfilter_m_core
//

module rcosfilter_m_core (rstn, clk, inpvalid, din, outvalid, rfi, 
            dout);   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(1[8:25])
    input rstn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(13[29:33])
    input clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(14[29:32])
    input inpvalid;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(15[29:37])
    input [3:0]din;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(16[27:30])
    output outvalid;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(19[29:37])
    output rfi;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(18[29:32])
    output [13:0]dout;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(21[28:32])
    
    
    
endmodule
//
// Verilog Description of module rcos_U1
//

module rcos_U1 (counter_0_countDone, clockDivider_clk_4M, n2741, VCC_net, 
            \I[1] , IQSerializer_I) /* synthesis sbp_module="true", syn_module_defined=1 */ ;
    input counter_0_countDone;
    input clockDivider_clk_4M;
    input n2741;
    input VCC_net;
    input \I[1] ;
    output [13:0]IQSerializer_I;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    rcosfilter_m_U0 rcosfilter_m_inst (.counter_0_countDone(counter_0_countDone), 
            .clockDivider_clk_4M(clockDivider_clk_4M), .n2741(n2741), .VCC_net(VCC_net), 
            .\I[1] (\I[1] ), .IQSerializer_I({IQSerializer_I})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcos.v(22[18] 24[62])
    
endmodule
//
// Verilog Description of module rcosfilter_m_U0
//

module rcosfilter_m_U0 (counter_0_countDone, clockDivider_clk_4M, n2741, 
            VCC_net, \I[1] , IQSerializer_I) /* synthesis syn_module_defined=1 */ ;
    input counter_0_countDone;
    input clockDivider_clk_4M;
    input n2741;
    input VCC_net;
    input \I[1] ;
    output [13:0]IQSerializer_I;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    
    rcosfilter_m_core_c u1_rcosfilter_m (.rstn(counter_0_countDone), .clk(clockDivider_clk_4M), 
            .inpvalid(n2741), .din({\I[1] , \I[1] , \I[1] , VCC_net}), 
            .dout({IQSerializer_I})) /* synthesis LSE_LINE_FILE_ID=41, LSE_LCOL=18, LSE_RCOL=62, LSE_LLINE=22, LSE_RLINE=24 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m.v(29[19] 38[6])
    
endmodule
//
// Verilog Description of module rcosfilter_m_core_c
//

module rcosfilter_m_core_c (rstn, clk, inpvalid, din, outvalid, rfi, 
            dout);   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(1[8:25])
    input rstn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(13[29:33])
    input clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(14[29:32])
    input inpvalid;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(15[29:37])
    input [3:0]din;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(16[27:30])
    output outvalid;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(19[29:37])
    output rfi;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(18[29:32])
    output [13:0]dout;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/rcos/rcosfilter_m/rcosfilter_m_core_bb.v(21[28:32])
    
    
    
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
// Verilog Description of module IQSerializer
//

module IQSerializer (IQSerializer_I, \ICounter[1] , IQSerializer_Q, clk_N_235, 
            n608, \ICounter[2] , IQSerializer_start, n2743, serial_clk_c, 
            serial_iq_c) /* synthesis syn_module_defined=1 */ ;
    input [13:0]IQSerializer_I;
    output \ICounter[1] ;
    input [13:0]IQSerializer_Q;
    input clk_N_235;
    input n608;
    output \ICounter[2] ;
    input IQSerializer_start;
    input n2743;
    input serial_clk_c;
    output serial_iq_c;
    
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire n2756, n2755;
    wire [3:0]QCounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(22[41:49])
    
    wire n2759, n2758;
    wire [4:0]n364;
    
    wire n1605, n2742, n2575, n10, n2709, n10_adj_333, n13, n2740, 
        n2567;
    wire [31:0]DEDFF_D1_N_324;
    
    wire n2710, n2711, n2760, n2754, n2713, n2715, n2508, n2716, 
        n2746, n2718, n2719, n2747, n2510, n342, n1700;
    wire [3:0]ICounter;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(21[41:49])
    
    wire n2748, n2708, n2566, DEDFF_D0_N_312, n346, n1699, n1603;
    wire [4:0]n4;
    
    wire n3, n2720, n2717, DEDFF_D0_N_307, n6;
    wire [3:0]n21;
    
    wire n2712, n2714, n2753, n2, n2752, n1;
    
    LUT4 i1422_then_3_lut (.A(IQSerializer_I[0]), .B(IQSerializer_I[6]), 
         .C(\ICounter[1] ), .Z(n2756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1422_then_3_lut.init = 16'hcaca;
    LUT4 i1422_else_3_lut (.A(IQSerializer_I[4]), .B(IQSerializer_I[2]), 
         .C(\ICounter[1] ), .Z(n2755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1422_else_3_lut.init = 16'hcaca;
    LUT4 i1419_then_3_lut (.A(IQSerializer_Q[6]), .B(IQSerializer_Q[2]), 
         .C(QCounter[2]), .Z(n2759)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i1419_then_3_lut.init = 16'hacac;
    LUT4 i1419_else_3_lut (.A(IQSerializer_Q[0]), .B(IQSerializer_Q[4]), 
         .C(QCounter[2]), .Z(n2758)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i1419_else_3_lut.init = 16'hacac;
    FD1S3IX current_state_FSM_i0 (.D(n1605), .CK(clk_N_235), .CD(n608), 
            .Q(n364[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i0.GSR = "ENABLED";
    LUT4 i1065_3_lut_rep_9 (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(n2742)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1065_3_lut_rep_9.init = 16'h6a6a;
    LUT4 n2575_bdd_3_lut_1543 (.A(n2575), .B(n10), .C(\ICounter[2] ), 
         .Z(n2709)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2575_bdd_3_lut_1543.init = 16'hacac;
    PFUMX i1414 (.BLUT(n10_adj_333), .ALUT(n13), .C0(n2740), .Z(n2567));
    LUT4 i1114_1_lut_3_lut (.A(QCounter[3]), .B(QCounter[2]), .C(QCounter[1]), 
         .Z(DEDFF_D1_N_324[3])) /* synthesis lut_function=(A (B (C))+!A !(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1114_1_lut_3_lut.init = 16'h9595;
    PFUMX i1544 (.BLUT(n2710), .ALUT(n2709), .C0(\ICounter[1] ), .Z(n2711));
    LUT4 n2575_bdd_4_lut (.A(n2760), .B(n2742), .C(n2754), .D(n364[1]), 
         .Z(n2713)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (D)+!B (C+(D)))) */ ;
    defparam n2575_bdd_4_lut.init = 16'hffb8;
    LUT4 n2575_bdd_3_lut_1616 (.A(n10), .B(IQSerializer_I[12]), .C(\ICounter[2] ), 
         .Z(n2710)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2575_bdd_3_lut_1616.init = 16'hacac;
    LUT4 ICounter_3__bdd_2_lut (.A(IQSerializer_I[3]), .B(\ICounter[2] ), 
         .Z(n2715)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam ICounter_3__bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut (.A(QCounter[3]), .B(QCounter[1]), .Z(n2508)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 ICounter_3__bdd_3_lut_1550 (.A(IQSerializer_I[7]), .B(IQSerializer_I[11]), 
         .C(\ICounter[2] ), .Z(n2716)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam ICounter_3__bdd_3_lut_1550.init = 16'hacac;
    LUT4 i1058_2_lut_rep_13 (.A(QCounter[2]), .B(QCounter[1]), .Z(n2746)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1058_2_lut_rep_13.init = 16'h6666;
    LUT4 ICounter_3__bdd_3_lut_1551 (.A(IQSerializer_I[1]), .B(IQSerializer_I[5]), 
         .C(\ICounter[2] ), .Z(n2718)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam ICounter_3__bdd_3_lut_1551.init = 16'hacac;
    LUT4 ICounter_3__bdd_3_lut (.A(IQSerializer_I[9]), .B(IQSerializer_I[13]), 
         .C(\ICounter[2] ), .Z(n2719)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam ICounter_3__bdd_3_lut.init = 16'hacac;
    LUT4 i1120_1_lut_rep_7_2_lut (.A(QCounter[2]), .B(QCounter[1]), .Z(n2740)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1120_1_lut_rep_7_2_lut.init = 16'h9999;
    LUT4 DEDFF_D1_I_11_i10_3_lut (.A(IQSerializer_I[8]), .B(IQSerializer_I[10]), 
         .C(\ICounter[1] ), .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(56[26:45])
    defparam DEDFF_D1_I_11_i10_3_lut.init = 16'hcaca;
    LUT4 i1056_1_lut_rep_14 (.A(QCounter[1]), .Z(n2747)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i1056_1_lut_rep_14.init = 16'h5555;
    LUT4 reduce_or_75_i2_4_lut_4_lut (.A(QCounter[1]), .B(QCounter[2]), 
         .C(n364[4]), .D(n2510), .Z(n342)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam reduce_or_75_i2_4_lut_4_lut.init = 16'hf4f0;
    LUT4 i912_2_lut_2_lut (.A(QCounter[1]), .B(IQSerializer_Q[13]), .Z(n13)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam i912_2_lut_2_lut.init = 16'h4444;
    LUT4 i1490_2_lut (.A(n364[2]), .B(IQSerializer_start), .Z(n1700)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1490_2_lut.init = 16'h7777;
    LUT4 i1_3_lut_rep_15 (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n2748)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i1_3_lut_rep_15.init = 16'hf7f7;
    LUT4 n2575_bdd_3_lut_1542 (.A(n2575), .B(\ICounter[1] ), .C(\ICounter[2] ), 
         .Z(n2708)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam n2575_bdd_3_lut_1542.init = 16'h2a2a;
    L6MUX21 i1415 (.D0(n2566), .D1(n2567), .SD(DEDFF_D1_N_324[3]), .Z(DEDFF_D0_N_312));
    LUT4 i80_2_lut_4_lut (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .D(n364[2]), .Z(n346)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(135[21:38])
    defparam i80_2_lut_4_lut.init = 16'h0800;
    FD1S3IX QCounter_171__i2 (.D(n2746), .CK(clk_N_235), .CD(n1699), .Q(QCounter[2])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i2.GSR = "ENABLED";
    FD1S3IX QCounter_171__i1 (.D(n2747), .CK(clk_N_235), .CD(n1699), .Q(QCounter[1])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_17 (.A(QCounter[3]), .B(n364[0]), .Z(n2510)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 i599_3_lut (.A(n364[2]), .B(n364[3]), .C(n2748), .Z(n1603)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i599_3_lut.init = 16'hecec;
    LUT4 DEDFF_D0_I_10_i10_3_lut (.A(IQSerializer_Q[9]), .B(IQSerializer_Q[11]), 
         .C(QCounter[1]), .Z(n10_adj_333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:45])
    defparam DEDFF_D0_I_10_i10_3_lut.init = 16'hcaca;
    LUT4 i1487_2_lut (.A(n364[0]), .B(IQSerializer_start), .Z(n1699)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(83[14] 102[8])
    defparam i1487_2_lut.init = 16'h7777;
    FD1S3IX ICounter_173__i2 (.D(n2743), .CK(clk_N_235), .CD(n1700), .Q(\ICounter[2] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i2.GSR = "ENABLED";
    FD1S3IX ICounter_173__i1 (.D(n4[1]), .CK(clk_N_235), .CD(n1700), .Q(\ICounter[1] )) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i1.GSR = "ENABLED";
    FD1S3AX current_state_FSM_i4 (.D(n608), .CK(clk_N_235), .Q(n364[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    LUT4 DEDFF_D0_I_10_i3_3_lut (.A(IQSerializer_Q[1]), .B(IQSerializer_Q[3]), 
         .C(QCounter[1]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:45])
    defparam DEDFF_D0_I_10_i3_3_lut.init = 16'hcaca;
    L6MUX21 i1554 (.D0(n2720), .D1(n2717), .SD(\ICounter[1] ), .Z(DEDFF_D0_N_307));
    PFUMX i1552 (.BLUT(n2719), .ALUT(n2718), .C0(ICounter[3]), .Z(n2720));
    PFUMX i1413 (.BLUT(n3), .ALUT(n6), .C0(n2740), .Z(n2566));
    PFUMX i1548 (.BLUT(n2716), .ALUT(n2715), .C0(ICounter[3]), .Z(n2717));
    FD1S3IX ICounter_173__i3 (.D(n21[3]), .CK(clk_N_235), .CD(n1700), 
            .Q(ICounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam ICounter_173__i3.GSR = "ENABLED";
    FD1S3IX QCounter_171__i3 (.D(n2742), .CK(clk_N_235), .CD(n1699), .Q(QCounter[3])) /* synthesis syn_preserve="TRUE" */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam QCounter_171__i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i3 (.D(n342), .CK(clk_N_235), .CD(n608), 
            .Q(n364[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i2 (.D(n1603), .CK(clk_N_235), .CD(n608), 
            .Q(n364[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i1 (.D(n346), .CK(clk_N_235), .CD(n608), 
            .Q(n364[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    PFUMX i1546 (.BLUT(n2713), .ALUT(n2712), .C0(n364[2]), .Z(n2714));
    LUT4 IQSerializer_Q_12__bdd_4_lut_4_lut_4_lut_then_2_lut (.A(IQSerializer_Q[10]), 
         .B(QCounter[2]), .Z(n2753)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam IQSerializer_Q_12__bdd_4_lut_4_lut_4_lut_then_2_lut.init = 16'h2222;
    LUT4 select_135_Select_0_i2_2_lut (.A(DEDFF_D0_N_307), .B(n364[2]), 
         .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_135_Select_0_i2_2_lut.init = 16'h8888;
    LUT4 IQSerializer_Q_12__bdd_4_lut_4_lut_4_lut_else_2_lut (.A(IQSerializer_Q[12]), 
         .B(IQSerializer_Q[8]), .C(QCounter[2]), .Z(n2752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(87[52:67])
    defparam IQSerializer_Q_12__bdd_4_lut_4_lut_4_lut_else_2_lut.init = 16'hcaca;
    LUT4 i1087_3_lut (.A(ICounter[3]), .B(\ICounter[2] ), .C(\ICounter[1] ), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(84[52:67])
    defparam i1087_3_lut.init = 16'h6a6a;
    LUT4 n2711_bdd_3_lut (.A(n2711), .B(n2708), .C(ICounter[3]), .Z(n2712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2711_bdd_3_lut.init = 16'hcaca;
    LUT4 select_135_Select_0_i1_2_lut (.A(DEDFF_D0_N_312), .B(n364[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(41[5] 70[12])
    defparam select_135_Select_0_i1_2_lut.init = 16'h8888;
    LUT4 i601_4_lut (.A(n364[0]), .B(n364[1]), .C(n2508), .D(QCounter[2]), 
         .Z(n1605)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(117[9] 154[16])
    defparam i601_4_lut.init = 16'hecee;
    PFUMX i1572 (.BLUT(n2758), .ALUT(n2759), .C0(QCounter[1]), .Z(n2760));
    PFUMX i1570 (.BLUT(n2755), .ALUT(n2756), .C0(\ICounter[2] ), .Z(n2575));
    LUT4 DEDFF_D0_I_10_i6_3_lut (.A(IQSerializer_Q[5]), .B(IQSerializer_Q[7]), 
         .C(QCounter[1]), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(63[26:45])
    defparam DEDFF_D0_I_10_i6_3_lut.init = 16'hcaca;
    PFUMX i1568 (.BLUT(n2752), .ALUT(n2753), .C0(QCounter[1]), .Z(n2754));
    LUT4 sub_4_inv_0_i2_1_lut (.A(\ICounter[1] ), .Z(n4[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(55[26:43])
    defparam sub_4_inv_0_i2_1_lut.init = 16'h5555;
    DEDFF DEDFF_0 (.clk_N_235(clk_N_235), .n608(n608), .serial_clk_c(serial_clk_c), 
          .serial_iq_c(serial_iq_c), .next_state_3__N_292(n364[3]), .n2714(n2714), 
          .next_state_3__N_290(n364[4]), .n2(n2), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(159[7] 167[2])
    
endmodule
//
// Verilog Description of module DEDFF
//

module DEDFF (clk_N_235, n608, serial_clk_c, serial_iq_c, next_state_3__N_292, 
            n2714, next_state_3__N_290, n2, n1) /* synthesis syn_module_defined=1 */ ;
    input clk_N_235;
    input n608;
    input serial_clk_c;
    output serial_iq_c;
    input next_state_3__N_292;
    input n2714;
    input next_state_3__N_290;
    input n2;
    input n1;
    
    wire clk_N_235 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/iqserializer.v(17[11:24])
    wire serial_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
    wire serial_iq_c /* synthesis IO_TYPES=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(37[10:19])
    
    wire neg_edge, Q2, pose_edge, Q1;
    
    FD1S3IX neg_edge_15 (.D(Q2), .CK(clk_N_235), .CD(n608), .Q(neg_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(48[8] 51[4])
    defparam neg_edge_15.GSR = "ENABLED";
    FD1S3IX pose_edge_14 (.D(Q1), .CK(serial_clk_c), .CD(n608), .Q(pose_edge)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=159, LSE_RLINE=167 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(42[8] 45[4])
    defparam pose_edge_14.GSR = "ENABLED";
    LUT4 neg_edge_I_0_16_2_lut (.A(neg_edge), .B(pose_edge), .Z(serial_iq_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(39[15:35])
    defparam neg_edge_I_0_16_2_lut.init = 16'h6666;
    LUT4 pose_edge_I_0_4_lut (.A(pose_edge), .B(next_state_3__N_292), .C(n2714), 
         .D(next_state_3__N_290), .Z(Q2)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(38[15:29])
    defparam pose_edge_I_0_4_lut.init = 16'haa9a;
    LUT4 neg_edge_I_0_4_lut (.A(neg_edge), .B(n2), .C(n1), .D(next_state_3__N_292), 
         .Z(Q1)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/dedff.v(37[15:28])
    defparam neg_edge_I_0_4_lut.init = 16'h5556;
    
endmodule
//
// Verilog Description of module packetGenerator
//

module packetGenerator (symCounter, next_state_3__N_156, counter_0_countDone, 
            I_bit_temp, n1688, next_state_3__N_154, clockDivider_clk_4M, 
            n2745, clockDivider_clk_4M_enable_9, n1686, clk_N_175, fskModule_symDone, 
            I_bit, \I[1] , n2741, n15, switch, iq_switch_N_215, 
            I_bit_temp2, n1690, Q_bit, \Q[1] , data, n2642, next_state_3__N_153, 
            Q_bit_temp, n1696) /* synthesis syn_module_defined=1 */ ;
    output [7:0]symCounter;
    output next_state_3__N_156;
    input counter_0_countDone;
    input I_bit_temp;
    output n1688;
    output next_state_3__N_154;
    input clockDivider_clk_4M;
    input n2745;
    input clockDivider_clk_4M_enable_9;
    output n1686;
    input clk_N_175;
    input fskModule_symDone;
    input I_bit;
    output \I[1] ;
    output n2741;
    input n15;
    input switch;
    output iq_switch_N_215;
    input I_bit_temp2;
    output n1690;
    input Q_bit;
    output \Q[1] ;
    input data;
    input n2642;
    output next_state_3__N_153;
    input Q_bit_temp;
    output n1696;
    
    wire clockDivider_clk_4M /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(50[8:27])
    wire clk_N_175 /* synthesis is_inv_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(22[12:18])
    
    wire n13;
    wire [7:0]n69;
    
    wire n2544, n2542, n2534, n2749, next_state_3__N_155, n15_c, 
        n2526, n2750, fskModule_symVal, next_symVal_N_172, n2516, 
        n2361, n5, next_symVal, n2416, n1589;
    
    LUT4 i4_2_lut (.A(symCounter[2]), .B(symCounter[5]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i867_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(I_bit_temp), .Z(n1688)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i867_2_lut_3_lut.init = 16'h4040;
    LUT4 i865_2_lut (.A(symCounter[0]), .B(next_state_3__N_154), .Z(n69[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i865_2_lut.init = 16'h4444;
    LUT4 i916_4_lut (.A(symCounter[7]), .B(next_state_3__N_154), .C(n2544), 
         .D(n2542), .Z(n69[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i916_4_lut.init = 16'h4888;
    LUT4 i1_3_lut (.A(symCounter[5]), .B(symCounter[0]), .C(symCounter[6]), 
         .Z(n2542)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i917_4_lut (.A(symCounter[6]), .B(next_state_3__N_154), .C(n2534), 
         .D(n2749), .Z(n69[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i917_4_lut.init = 16'h4888;
    LUT4 i1_4_lut (.A(symCounter[2]), .B(symCounter[3]), .C(symCounter[4]), 
         .D(symCounter[5]), .Z(n2534)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_4_lut.init = 16'h8000;
    FD1S3IX current_state_FSM_i1 (.D(next_state_3__N_155), .CK(clockDivider_clk_4M), 
            .CD(n2745), .Q(next_state_3__N_156));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_13 (.A(symCounter[1]), .B(symCounter[6]), .C(symCounter[3]), 
         .D(symCounter[7]), .Z(n15_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h8000;
    LUT4 i918_4_lut (.A(symCounter[5]), .B(next_state_3__N_154), .C(n2526), 
         .D(n2750), .Z(n69[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i918_4_lut.init = 16'h4888;
    FD1P3IX symCounter__i0 (.D(n69[0]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i0.GSR = "ENABLED";
    LUT4 i866_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(fskModule_symVal), .Z(n1686)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i866_2_lut_3_lut.init = 16'h4040;
    FD1S3IX symVal_43 (.D(next_symVal_N_172), .CK(clk_N_175), .CD(n2745), 
            .Q(fskModule_symVal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(54[8] 61[4])
    defparam symVal_43.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_14 (.A(n13), .B(fskModule_symDone), .C(n15_c), .D(n2516), 
         .Z(n2361)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_14.init = 16'h8000;
    LUT4 i919_4_lut (.A(symCounter[4]), .B(next_state_3__N_154), .C(n5), 
         .D(n2749), .Z(n69[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i919_4_lut.init = 16'h4888;
    LUT4 i1475_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(I_bit), .Z(\I[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1475_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut (.A(symCounter[3]), .B(symCounter[2]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i920_4_lut (.A(symCounter[3]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .D(n2750), .Z(n69[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i920_4_lut.init = 16'h4888;
    LUT4 i1_3_lut_adj_15 (.A(next_state_3__N_154), .B(symCounter[0]), .C(symCounter[4]), 
         .Z(n2516)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_15.init = 16'h8080;
    LUT4 i871_2_lut_rep_8 (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .Z(n2741)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i871_2_lut_rep_8.init = 16'h4444;
    LUT4 i1472_3_lut_4_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(n15), .D(switch), .Z(iq_switch_N_215)) /* synthesis lut_function=(A+((C (D)+!C !(D))+!B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1472_3_lut_4_lut.init = 16'hfbbf;
    LUT4 i870_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(I_bit_temp2), .Z(n1690)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i870_2_lut_3_lut.init = 16'h4040;
    LUT4 i1478_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(Q_bit), .Z(\Q[1] )) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i1478_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i922_3_lut (.A(symCounter[1]), .B(next_state_3__N_154), .C(symCounter[0]), 
         .Z(n69[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(116[13] 118[7])
    defparam i922_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_rep_16 (.A(symCounter[0]), .B(symCounter[1]), .Z(n2749)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_16.init = 16'h8888;
    LUT4 i921_3_lut_4_lut (.A(symCounter[0]), .B(symCounter[1]), .C(next_state_3__N_154), 
         .D(symCounter[2]), .Z(n69[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i921_3_lut_4_lut.init = 16'h7080;
    LUT4 i1_2_lut_3_lut (.A(symCounter[3]), .B(symCounter[4]), .C(symCounter[0]), 
         .Z(n2526)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_17 (.A(symCounter[1]), .B(symCounter[2]), .Z(n2750)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_rep_17.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(symCounter[1]), .B(symCounter[2]), .C(symCounter[4]), 
         .D(symCounter[3]), .Z(n2544)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(115[19:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1492_4_lut (.A(next_symVal), .B(data), .C(n2642), .D(counter_0_countDone), 
         .Z(next_symVal)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(63[1] 106[4])
    defparam i1492_4_lut.init = 16'hca0a;
    FD1P3IX symCounter__i7 (.D(n69[7]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i7.GSR = "ENABLED";
    FD1P3IX symCounter__i6 (.D(n69[6]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i6.GSR = "ENABLED";
    FD1P3IX symCounter__i5 (.D(n69[5]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i5.GSR = "ENABLED";
    FD1P3IX symCounter__i4 (.D(n69[4]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i4.GSR = "ENABLED";
    FD1P3IX symCounter__i3 (.D(n69[3]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i3.GSR = "ENABLED";
    FD1P3IX symCounter__i2 (.D(n69[2]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i2.GSR = "ENABLED";
    FD1P3IX symCounter__i1 (.D(n69[1]), .SP(clockDivider_clk_4M_enable_9), 
            .CD(n2745), .CK(clockDivider_clk_4M), .Q(symCounter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(109[8] 123[4])
    defparam symCounter__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_16 (.A(n13), .B(n15_c), .C(symCounter[0]), .D(symCounter[4]), 
         .Z(n2416)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h8000;
    LUT4 i585_4_lut (.A(next_state_3__N_154), .B(next_state_3__N_153), .C(n2416), 
         .D(fskModule_symDone), .Z(n1589)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam i585_4_lut.init = 16'hceee;
    FD1S3JX current_state_FSM_i4 (.D(next_state_3__N_156), .CK(clockDivider_clk_4M), 
            .PD(n2745), .Q(next_state_3__N_153));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i4.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i3 (.D(n1589), .CK(clockDivider_clk_4M), .CD(n2745), 
            .Q(next_state_3__N_154));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX current_state_FSM_i2 (.D(n2361), .CK(clockDivider_clk_4M), .CD(n2745), 
            .Q(next_state_3__N_155));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(69[3] 104[10])
    defparam current_state_FSM_i2.GSR = "ENABLED";
    LUT4 i881_2_lut_3_lut (.A(next_state_3__N_156), .B(counter_0_countDone), 
         .C(Q_bit_temp), .Z(n1696)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(68[11] 105[5])
    defparam i881_2_lut_3_lut.init = 16'h4040;
    LUT4 next_symVal_I_0_1_lut (.A(next_symVal), .Z(next_symVal_N_172)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/packetgenerator.v(59[15:27])
    defparam next_symVal_I_0_1_lut.init = 16'h5555;
    
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
    wire serial_clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/top_module.v(38[10:20])
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
    INV i1638 (.A(serial_clk_c), .Z(clk_N_235));
    
endmodule
