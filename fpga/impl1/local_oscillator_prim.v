// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Dec 27 05:32:01 2025
//
// Verilog Description of module local_oscillator
//

module local_oscillator (clk, rst, start, sin, cos) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(4[8:24])
    input clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(5[9:12])
    input rst;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(6[9:12])
    input start;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(7[9:14])
    output [12:0]sin;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    output [12:0]cos;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(5[9:12])
    
    wire GND_net, VCC_net, rst_c, start_c, sin_c_12, sin_c_11, sin_c_10, 
        sin_c_9, sin_c_8, sin_c_7, sin_c_6, sin_c_5, sin_c_4, sin_c_3, 
        sin_c_2, sin_c_1, sin_c_0, cos_c_12, cos_c_11, cos_c_10, 
        cos_c_9, cos_c_8, cos_c_7, cos_c_6, cos_c_5, cos_c_4, cos_c_3, 
        cos_c_2, cos_c_1, cos_c_0;
    wire [7:0]add_sin;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(21[13:20])
    wire [7:0]add_cos;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(21[22:29])
    wire [1:0]part;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(22[13:17])
    
    wire inc_dir_part_control, add_update_0_control, add_update_1_control;
    wire [1:0]next_state_1__N_47;
    
    wire n1508, n31, n1492, n1490, n1507, n1506, n1488, n1499, 
        n1498, n1497, n1491, n1472, n1496, n1553, n1565, n1505, 
        n1470, n1468, clk_c_enable_27, n1466, n373, n374, n375, 
        n376, n377, n378, n379, n380, n381, n382, n383, n384, 
        n385, n28, n1489, n25, n403, n404, n405, n406, n407, 
        n408, n409, n410, n411, n412, n413, n414, n415, n1586, 
        n1584, n1500, n1447, n66, n63, n60, n57, n54, n51, 
        n48, n45, n1455;
    wire [7:0]add_sin_7__N_27;
    wire [7:0]add_cos_7__N_35;
    
    wire n1580, n1460, n1453, n1451, n1449, n1576, n1495, clk_c_enable_2, 
        n1572, n1705, n43, n40, n691, n692, n1462, n37, n1458, 
        n705, n706, inc_dir_part_control_adj_1, n22, n788, n789, 
        n1493, n34, n42, n39, n1669, n790, n791, n792, n793, 
        n794, n795, n796, n797, n798, n799, n800, n36, n33, 
        n30, n1668, n830, n831, n832, n833, n834, n835, n836, 
        n837, n838, n839, n840, n841, n842, n13, n1445, n1441, 
        n30_adj_2, n33_adj_3, n36_adj_4, n39_adj_5, n42_adj_6, n45_adj_7, 
        n48_adj_8, n51_adj_9, n54_adj_10, n57_adj_11, n60_adj_12, 
        n63_adj_13, n66_adj_14, n15, n1443, n1235, n1464, n1667, 
        n1666, n1665, n22_adj_15, n25_adj_16, n28_adj_17, n31_adj_18, 
        n34_adj_19, n37_adj_20, n40_adj_21, n43_adj_22, n14, n1542, 
        n1516, n1515, n1514, n1513, n1561;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i5_3_lut_4_lut (.A(n1667), .B(inc_dir_part_control), .C(n1705), 
         .D(part[1]), .Z(n1565)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (C (D)+!C !(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(86[5] 89[10])
    defparam i5_3_lut_4_lut.init = 16'h2df0;
    CCU2C add_507_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(add_update_0_control), .B1(n692), .C1(start_c), .D1(add_update_1_control), 
          .COUT(n1505));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_507_1.INIT0 = 16'h0000;
    defparam add_507_1.INIT1 = 16'h00ff;
    defparam add_507_1.INJECT1_0 = "NO";
    defparam add_507_1.INJECT1_1 = "NO";
    PDPW16KD mux_38 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(add_sin_7__N_27[0]), 
            .ADR5(add_sin_7__N_27[1]), .ADR6(add_sin_7__N_27[2]), .ADR7(add_sin_7__N_27[3]), 
            .ADR8(add_sin_7__N_27[4]), .ADR9(add_sin_7__N_27[5]), .ADR10(add_sin_7__N_27[6]), 
            .ADR11(add_sin_7__N_27[7]), .ADR12(GND_net), .ADR13(GND_net), 
            .CER(VCC_net), .OCER(VCC_net), .CLKR(clk_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n385), 
            .DO1(n384), .DO2(n383), .DO3(n382), .DO4(n381), .DO5(n380), 
            .DO6(n379), .DO7(n378), .DO8(n377), .DO9(n376), .DO10(n375), 
            .DO11(n374), .DO12(n373));
    defparam mux_38.DATA_WIDTH_W = 36;
    defparam mux_38.DATA_WIDTH_R = 18;
    defparam mux_38.GSR = "DISABLED";
    defparam mux_38.REGMODE = "NOREG";
    defparam mux_38.RESETMODE = "ASYNC";
    defparam mux_38.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_38.CSDECODE_W = "0b000";
    defparam mux_38.CSDECODE_R = "0b000";
    defparam mux_38.INITVAL_00 = "0x00BC300AFB00A330096A008A2007D900710006470057F004B6003ED003240025B00192000C900000";
    defparam mux_38.INITVAL_01 = "0x018330176D016A8015E20151B014550138E012C801201011390107200FAB00EE300E1B00D5300C8B";
    defparam mux_38.INITVAL_02 = "0x02467023A6022E502223021610209F01FDC01F1901E5601D9301CCF01C0B01B4701A82019BD018F8";
    defparam mux_38.INITVAL_03 = "0x0304102F8702ECC02E1102D5502C9802BDC02B1F02A61029A3028E50282602767026A8025E802528";
    defparam mux_38.INITVAL_04 = "0x03BA503AF203A400398C038D8038240376F036BA036040354D03496033DE033260326E031B5030FB";
    defparam mux_38.INITVAL_05 = "0x00675005CD005240047A003D0003250027A001CE001210007303FC503F1703E6803DB803D0703C56";
    defparam mux_38.INITVAL_06 = "0x0109700FFB00F5E00EBF00E2100D8100CE100C3F00B9E00AFB00A58009B40090F00869007C30071C";
    defparam mux_38.INITVAL_07 = "0x019F301964018D401842017B00171D0168A015F501560014CA014330139B0130201269011CE01133";
    defparam mux_38.INITVAL_08 = "0x02271021F10216F020EC0206801FE301F5E01ED701E5001DC701D3E01CB401C2901B9D01B1001A82";
    defparam mux_38.INITVAL_09 = "0x029FD0298C02919028A602832027BD02746026CF02657025DD02563024E80246C023EF02371022F2";
    defparam mux_38.INITVAL_0A = "0x030830302302FC102F5F02EFB02E9602E3002DCA02D6202CF902C8F02C2402BB802B4A02ADC02A6D";
    defparam mux_38.INITVAL_0B = "0x035F4035A50355503504034B20345F0340B033B50335F03307032AF03255031FA0319E03141030E2";
    defparam mux_38.INITVAL_0C = "0x03A4203A05039C80398A0394A03909038C70388403840037FA037B40376C03723036D90368E03641";
    defparam mux_38.INITVAL_0D = "0x03D6203D3903D0F03CE303CB703C8903C5A03C2903BF803BC503B9203B5D03B2603AEF03AB603A7D";
    defparam mux_38.INITVAL_0E = "0x03F4D03F3803F2103F0903EF003ED503EBA03E9D03E7F03E5F03E3F03E1D03DFA03DD603DB003D8A";
    defparam mux_38.INITVAL_0F = "0x03FFF03FFD03FFA03FF603FF003FE903FE103FD803FCE03FC203FB503FA703F9703F8703F7503F62";
    defparam mux_38.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_38.INIT_DATA = "STATIC";
    CCU2C add_507_7 (.A0(n1447), .B0(n1666), .C0(n1667), .D0(add_sin[4]), 
          .A1(n1445), .B1(n1666), .C1(n1667), .D1(add_sin[5]), .CIN(n1507), 
          .COUT(n1508), .S0(n31_adj_18), .S1(n28_adj_17));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_507_7.INIT0 = 16'h56aa;
    defparam add_507_7.INIT1 = 16'h56aa;
    defparam add_507_7.INJECT1_0 = "NO";
    defparam add_507_7.INJECT1_1 = "NO";
    OB cos_pad_1 (.I(cos_c_1), .O(cos[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    LUT4 i2_3_lut_3_lut (.A(n1561), .B(add_update_1_control), .C(part[0]), 
         .Z(n1542)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i2_3_lut_3_lut.init = 16'h2020;
    LUT4 inc_dir_part_control_bdd_4_lut (.A(inc_dir_part_control_adj_1), .B(part[0]), 
         .C(n1542), .D(add_sin[0]), .Z(n1705)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam inc_dir_part_control_bdd_4_lut.init = 16'h88f0;
    GSR GSR_INST (.GSR(VCC_net));
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(6[9:12])
    OB sin_pad_6 (.I(sin_c_6), .O(sin[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    LUT4 i466_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n43_adj_22), 
         .Z(add_sin_7__N_27[0])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i466_2_lut_4_lut.init = 16'ha200;
    LUT4 i472_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n40_adj_21), 
         .Z(add_sin_7__N_27[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i472_2_lut_4_lut.init = 16'ha200;
    LUT4 i473_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n37_adj_20), 
         .Z(add_sin_7__N_27[2])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i473_2_lut_4_lut.init = 16'ha200;
    FD1S3IX part_262__i1 (.D(n1565), .CK(clk_c), .CD(n1669), .Q(part[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(86[5] 89[10])
    defparam part_262__i1.GSR = "ENABLED";
    LUT4 i474_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n34_adj_19), 
         .Z(add_sin_7__N_27[3])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i474_2_lut_4_lut.init = 16'ha200;
    FD1P3AX reg_sin_i0_i1 (.D(n800), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_0));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i1.GSR = "ENABLED";
    LUT4 i475_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n31_adj_18), 
         .Z(add_sin_7__N_27[4])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i475_2_lut_4_lut.init = 16'ha200;
    OB sin_pad_3 (.I(sin_c_3), .O(sin[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    FD1S3JX state_FSM_287_i1 (.D(n1235), .CK(clk_c), .PD(n1669), .Q(n692));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_287_i1.GSR = "ENABLED";
    LUT4 i529_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[6]), .D(n1667), .Z(n1460)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i529_3_lut_4_lut_4_lut.init = 16'h5554;
    FD1P3AX dir_63 (.D(n1553), .SP(clk_c_enable_2), .CK(clk_c), .Q(next_state_1__N_47[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam dir_63.GSR = "ENABLED";
    IB start_pad (.I(start), .O(start_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(7[9:14])
    OB cos_pad_12 (.I(cos_c_12), .O(cos[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    FD1S3IX part_262__i0 (.D(n15), .CK(clk_c), .CD(n1669), .Q(part[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(86[5] 89[10])
    defparam part_262__i0.GSR = "ENABLED";
    OB cos_pad_11 (.I(cos_c_11), .O(cos[11]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    LUT4 i527_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[7]), .D(n1667), .Z(n1458)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i527_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i476_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n28_adj_17), 
         .Z(add_sin_7__N_27[5])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i476_2_lut_4_lut.init = 16'ha200;
    LUT4 i533_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[4]), .D(n1667), .Z(n1464)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i533_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i531_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[5]), .D(n1667), .Z(n1462)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i531_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i537_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[2]), .D(n1667), .Z(n1468)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i537_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i477_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n25_adj_16), 
         .Z(add_sin_7__N_27[6])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i477_2_lut_4_lut.init = 16'ha200;
    LUT4 i478_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n22_adj_15), 
         .Z(add_sin_7__N_27[7])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam i478_2_lut_4_lut.init = 16'ha200;
    OB cos_pad_8 (.I(cos_c_8), .O(cos[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    LUT4 i535_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[3]), .D(n1667), .Z(n1466)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i535_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i541_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[0]), .D(n1667), .Z(n1472)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i541_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i539_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_cos[1]), .D(n1667), .Z(n1470)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i539_3_lut_4_lut_4_lut.init = 16'h5554;
    FD1S3IX state_FSM_i1 (.D(n706), .CK(clk_c), .CD(n1669), .Q(add_update_1_control));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i512_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[6]), .D(n1667), .Z(n1443)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i512_3_lut_4_lut_4_lut.init = 16'haaba;
    OB sin_pad_11 (.I(sin_c_11), .O(sin[11]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    CCU2C _add_1_294_add_4_13 (.A0(n374), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n373), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n1500), .S0(n33_adj_3), .S1(n30_adj_2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_13.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_13.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_13.INJECT1_1 = "NO";
    CCU2C add_507_5 (.A0(n1451), .B0(n1666), .C0(n1667), .D0(add_sin[2]), 
          .A1(n1449), .B1(n1666), .C1(n1667), .D1(add_sin[3]), .CIN(n1506), 
          .COUT(n1507), .S0(n37_adj_20), .S1(n34_adj_19));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_507_5.INIT0 = 16'h56aa;
    defparam add_507_5.INIT1 = 16'h56aa;
    defparam add_507_5.INJECT1_0 = "NO";
    defparam add_507_5.INJECT1_1 = "NO";
    OB cos_pad_7 (.I(cos_c_7), .O(cos[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    CCU2C _add_1_294_add_4_11 (.A0(n376), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n375), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n1499), .COUT(n1500), .S0(n39_adj_5), .S1(n36_adj_4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_11.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_11.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_11.INJECT1_1 = "NO";
    PDPW16KD mux_40 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(add_cos_7__N_35[0]), 
            .ADR5(add_cos_7__N_35[1]), .ADR6(add_cos_7__N_35[2]), .ADR7(add_cos_7__N_35[3]), 
            .ADR8(add_cos_7__N_35[4]), .ADR9(add_cos_7__N_35[5]), .ADR10(add_cos_7__N_35[6]), 
            .ADR11(add_cos_7__N_35[7]), .ADR12(GND_net), .ADR13(GND_net), 
            .CER(VCC_net), .OCER(VCC_net), .CLKR(clk_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n415), 
            .DO1(n414), .DO2(n413), .DO3(n412), .DO4(n411), .DO5(n410), 
            .DO6(n409), .DO7(n408), .DO8(n407), .DO9(n406), .DO10(n405), 
            .DO11(n404), .DO12(n403));
    defparam mux_40.DATA_WIDTH_W = 36;
    defparam mux_40.DATA_WIDTH_R = 18;
    defparam mux_40.GSR = "DISABLED";
    defparam mux_40.REGMODE = "NOREG";
    defparam mux_40.RESETMODE = "ASYNC";
    defparam mux_40.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_40.CSDECODE_W = "0b000";
    defparam mux_40.CSDECODE_R = "0b000";
    defparam mux_40.INITVAL_00 = "0x00BC300AFB00A330096A008A2007D900710006470057F004B6003ED003240025B00192000C900000";
    defparam mux_40.INITVAL_01 = "0x018330176D016A8015E20151B014550138E012C801201011390107200FAB00EE300E1B00D5300C8B";
    defparam mux_40.INITVAL_02 = "0x02467023A6022E502223021610209F01FDC01F1901E5601D9301CCF01C0B01B4701A82019BD018F8";
    defparam mux_40.INITVAL_03 = "0x0304102F8702ECC02E1102D5502C9802BDC02B1F02A61029A3028E50282602767026A8025E802528";
    defparam mux_40.INITVAL_04 = "0x03BA503AF203A400398C038D8038240376F036BA036040354D03496033DE033260326E031B5030FB";
    defparam mux_40.INITVAL_05 = "0x00675005CD005240047A003D0003250027A001CE001210007303FC503F1703E6803DB803D0703C56";
    defparam mux_40.INITVAL_06 = "0x0109700FFB00F5E00EBF00E2100D8100CE100C3F00B9E00AFB00A58009B40090F00869007C30071C";
    defparam mux_40.INITVAL_07 = "0x019F301964018D401842017B00171D0168A015F501560014CA014330139B0130201269011CE01133";
    defparam mux_40.INITVAL_08 = "0x02271021F10216F020EC0206801FE301F5E01ED701E5001DC701D3E01CB401C2901B9D01B1001A82";
    defparam mux_40.INITVAL_09 = "0x029FD0298C02919028A602832027BD02746026CF02657025DD02563024E80246C023EF02371022F2";
    defparam mux_40.INITVAL_0A = "0x030830302302FC102F5F02EFB02E9602E3002DCA02D6202CF902C8F02C2402BB802B4A02ADC02A6D";
    defparam mux_40.INITVAL_0B = "0x035F4035A50355503504034B20345F0340B033B50335F03307032AF03255031FA0319E03141030E2";
    defparam mux_40.INITVAL_0C = "0x03A4203A05039C80398A0394A03909038C70388403840037FA037B40376C03723036D90368E03641";
    defparam mux_40.INITVAL_0D = "0x03D6203D3903D0F03CE303CB703C8903C5A03C2903BF803BC503B9203B5D03B2603AEF03AB603A7D";
    defparam mux_40.INITVAL_0E = "0x03F4D03F3803F2103F0903EF003ED503EBA03E9D03E7F03E5F03E3F03E1D03DFA03DD603DB003D8A";
    defparam mux_40.INITVAL_0F = "0x03FFF03FFD03FFA03FF603FF003FE903FE103FD803FCE03FC203FB503FA703F9703F8703F7503F62";
    defparam mux_40.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_40.INIT_DATA = "STATIC";
    LUT4 i510_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[7]), .D(n1667), .Z(n1441)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i510_3_lut_4_lut_4_lut.init = 16'haaba;
    VLO i1 (.Z(GND_net));
    OB cos_pad_6 (.I(cos_c_6), .O(cos[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    OB cos_pad_5 (.I(cos_c_5), .O(cos[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    LUT4 i104_2_lut (.A(next_state_1__N_47[0]), .B(n691), .Z(n706)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i104_2_lut.init = 16'h8888;
    LUT4 i99_2_lut_rep_39 (.A(start_c), .B(n692), .Z(n1667)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i99_2_lut_rep_39.init = 16'h8888;
    FD1S3AY add_cos_i0 (.D(add_cos_7__N_35[0]), .CK(clk_c), .Q(add_cos[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i0.GSR = "ENABLED";
    OB sin_pad_12 (.I(sin_c_12), .O(sin[12]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    LUT4 i543_3_lut_3_lut_4_lut (.A(start_c), .B(n692), .C(part[0]), .D(inc_dir_part_control), 
         .Z(n15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i543_3_lut_3_lut_4_lut.init = 16'h0f70;
    FD1P3AX reg_cos_i0_i1 (.D(n842), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_0));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i1.GSR = "ENABLED";
    LUT4 i465_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n43), 
         .Z(add_cos_7__N_35[0])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i465_2_lut_4_lut.init = 16'hff5d;
    OB cos_pad_4 (.I(cos_c_4), .O(cos[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    CCU2C _add_1_294_add_4_9 (.A0(n378), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n377), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1498), 
          .COUT(n1499), .S0(n45_adj_7), .S1(n42_adj_6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_9.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_9.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_9.INJECT1_1 = "NO";
    OB cos_pad_3 (.I(cos_c_3), .O(cos[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    LUT4 i1_2_lut_rep_37_3_lut_4_lut (.A(start_c), .B(n692), .C(add_update_0_control), 
         .D(add_update_1_control), .Z(n1665)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i1_2_lut_rep_37_3_lut_4_lut.init = 16'hfff8;
    OB cos_pad_2 (.I(cos_c_2), .O(cos[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    OB sin_pad_7 (.I(sin_c_7), .O(sin[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB sin_pad_8 (.I(sin_c_8), .O(sin[8]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB cos_pad_9 (.I(cos_c_9), .O(cos[9]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    FD1S3AY add_cos_i1 (.D(add_cos_7__N_35[1]), .CK(clk_c), .Q(add_cos[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i1.GSR = "ENABLED";
    OB cos_pad_10 (.I(cos_c_10), .O(cos[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    OB sin_pad_9 (.I(sin_c_9), .O(sin[9]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB sin_pad_10 (.I(sin_c_10), .O(sin[10]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    CCU2C _add_1_294_add_4_7 (.A0(n380), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n379), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1497), 
          .COUT(n1498), .S0(n51_adj_9), .S1(n48_adj_8));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_7.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_7.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_7.INJECT1_1 = "NO";
    OB sin_pad_4 (.I(sin_c_4), .O(sin[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    LUT4 i1_2_lut_rep_40 (.A(add_sin[4]), .B(add_sin[7]), .Z(n1668)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(60[10:22])
    defparam i1_2_lut_rep_40.init = 16'heeee;
    OB sin_pad_5 (.I(sin_c_5), .O(sin[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB sin_pad_2 (.I(sin_c_2), .O(sin[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB sin_pad_1 (.I(sin_c_1), .O(sin[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB sin_pad_0 (.I(sin_c_0), .O(sin[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(8[27:30])
    OB cos_pad_0 (.I(cos_c_0), .O(cos[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(9[27:30])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(5[9:12])
    CCU2C add_507_3 (.A0(n1455), .B0(n1666), .C0(n1667), .D0(add_sin[0]), 
          .A1(n1453), .B1(n1666), .C1(n1667), .D1(add_sin[1]), .CIN(n1505), 
          .COUT(n1506), .S0(n43_adj_22), .S1(n40_adj_21));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_507_3.INIT0 = 16'h56aa;
    defparam add_507_3.INIT1 = 16'h56aa;
    defparam add_507_3.INJECT1_0 = "NO";
    defparam add_507_3.INJECT1_1 = "NO";
    LUT4 i6_3_lut_4_lut (.A(add_sin[4]), .B(add_sin[7]), .C(add_sin[5]), 
         .D(add_sin[1]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(60[10:22])
    defparam i6_3_lut_4_lut.init = 16'hfffe;
    LUT4 i233_1_lut_rep_41 (.A(rst_c), .Z(n1669)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(6[9:12])
    defparam i233_1_lut_rep_41.init = 16'h5555;
    FD1S3AY add_cos_i2 (.D(add_cos_7__N_35[2]), .CK(clk_c), .Q(add_cos[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i2.GSR = "ENABLED";
    FD1S3AY add_cos_i3 (.D(add_cos_7__N_35[3]), .CK(clk_c), .Q(add_cos[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i3.GSR = "ENABLED";
    FD1S3AY add_cos_i4 (.D(add_cos_7__N_35[4]), .CK(clk_c), .Q(add_cos[4])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i4.GSR = "ENABLED";
    FD1S3AY add_cos_i5 (.D(add_cos_7__N_35[5]), .CK(clk_c), .Q(add_cos[5])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i5.GSR = "ENABLED";
    FD1S3AY add_cos_i6 (.D(add_cos_7__N_35[6]), .CK(clk_c), .Q(add_cos[6])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i6.GSR = "ENABLED";
    FD1S3AY add_cos_i7 (.D(add_cos_7__N_35[7]), .CK(clk_c), .Q(add_cos[7])) /* synthesis lse_init_val=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam add_cos_i7.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i2 (.D(n799), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i3 (.D(n798), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i4 (.D(n797), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i5 (.D(n796), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i6 (.D(n795), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i7 (.D(n794), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i8 (.D(n793), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i8.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i9 (.D(n792), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_8));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i9.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i10 (.D(n791), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_9));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i10.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i11 (.D(n790), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_10));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i11.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i12 (.D(n789), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_11));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i12.GSR = "ENABLED";
    FD1P3AX reg_sin_i0_i13 (.D(n788), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(sin_c_12));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_sin_i0_i13.GSR = "ENABLED";
    FD1S3IX state_FSM_287_i2 (.D(n1665), .CK(clk_c), .CD(n1669), .Q(n691));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_287_i2.GSR = "ENABLED";
    FD1S3IX state_FSM_287_i3 (.D(n705), .CK(clk_c), .CD(n1669), .Q(add_update_0_control));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_287_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(add_sin_7__N_27[0]), .CK(clk_c), .Q(add_sin[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(rst_c), .B(inc_dir_part_control), .C(n692), 
         .D(start_c), .Z(clk_c_enable_2)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(6[9:12])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfddd;
    LUT4 i467_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n40), 
         .Z(add_cos_7__N_35[1])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i467_2_lut_4_lut.init = 16'hff5d;
    LUT4 i451_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n37), 
         .Z(add_cos_7__N_35[2])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i451_2_lut_4_lut.init = 16'hff5d;
    LUT4 i454_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n34), 
         .Z(add_cos_7__N_35[3])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i454_2_lut_4_lut.init = 16'hff5d;
    LUT4 i468_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n31), 
         .Z(add_cos_7__N_35[4])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i468_2_lut_4_lut.init = 16'hff5d;
    LUT4 i469_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n28), 
         .Z(add_cos_7__N_35[5])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i469_2_lut_4_lut.init = 16'hff5d;
    LUT4 mux_124_i2_3_lut (.A(n384), .B(n63_adj_13), .C(part[1]), .Z(n799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i2_3_lut.init = 16'hcaca;
    LUT4 mux_124_i3_3_lut (.A(n383), .B(n60_adj_12), .C(part[1]), .Z(n798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i3_3_lut.init = 16'hcaca;
    LUT4 i470_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n25), 
         .Z(add_cos_7__N_35[6])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i470_2_lut_4_lut.init = 16'hff5d;
    FD1S3AX state_FSM_i3 (.D(add_sin_7__N_27[1]), .CK(clk_c), .Q(add_sin[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(add_sin_7__N_27[2]), .CK(clk_c), .Q(add_sin[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(add_sin_7__N_27[3]), .CK(clk_c), .Q(add_sin[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i6 (.D(add_sin_7__N_27[4]), .CK(clk_c), .Q(add_sin[4]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(add_sin_7__N_27[5]), .CK(clk_c), .Q(add_sin[5]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i8 (.D(add_sin_7__N_27[6]), .CK(clk_c), .Q(add_sin[6]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i9 (.D(add_sin_7__N_27[7]), .CK(clk_c), .Q(add_sin[7]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i2 (.D(n841), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i2.GSR = "ENABLED";
    LUT4 i115_4_lut (.A(n1561), .B(n1576), .C(add_update_1_control), .D(add_sin[0]), 
         .Z(inc_dir_part_control)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i115_4_lut.init = 16'h3a0a;
    LUT4 mux_124_i4_3_lut (.A(n382), .B(n57_adj_11), .C(part[1]), .Z(n797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i4_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n1668), .B(n1572), .C(add_sin[5]), .D(add_sin[2]), 
         .Z(n1576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(60[10:22])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i471_2_lut_4_lut (.A(rst_c), .B(n1667), .C(n1666), .D(n22), 
         .Z(add_cos_7__N_35[7])) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam i471_2_lut_4_lut.init = 16'hff5d;
    LUT4 mux_124_i5_3_lut (.A(n381), .B(n54_adj_10), .C(part[1]), .Z(n796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i5_3_lut.init = 16'hcaca;
    LUT4 mux_124_i6_3_lut (.A(n380), .B(n51_adj_9), .C(part[1]), .Z(n795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i6_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(add_sin[1]), .B(add_sin[3]), .C(add_sin[6]), .Z(n1572)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(60[10:22])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 mux_124_i7_3_lut (.A(n379), .B(n48_adj_8), .C(part[1]), .Z(n794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i7_3_lut.init = 16'hcaca;
    LUT4 mux_127_i1_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n66), .D(n415), 
         .Z(n842)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i1_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_1 (.A(n1584), .B(add_sin[0]), .C(n1586), .D(n1580), 
         .Z(n1561)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_1.init = 16'h2000;
    LUT4 mux_127_i2_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n63), .D(n414), 
         .Z(n841)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i2_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut (.A(add_update_0_control), .B(add_sin[5]), .Z(n1584)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 mux_127_i3_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n60), .D(n413), 
         .Z(n840)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i3_3_lut_4_lut.init = 16'hf960;
    FD1P3AX reg_cos_i0_i3 (.D(n840), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i4 (.D(n839), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i5 (.D(n838), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_4));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i6 (.D(n837), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_5));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i7 (.D(n836), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_6));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i8 (.D(n835), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_7));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i8.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i9 (.D(n834), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_8));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i9.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i10 (.D(n833), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_9));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i10.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i11 (.D(n832), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_10));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i11.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i12 (.D(n831), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_11));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i12.GSR = "ENABLED";
    FD1P3AX reg_cos_i0_i13 (.D(n830), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(cos_c_12));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam reg_cos_i0_i13.GSR = "ENABLED";
    LUT4 mux_127_i4_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n57), .D(n412), 
         .Z(n839)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i4_3_lut_4_lut.init = 16'hf960;
    CCU2C _add_1_294_add_4_5 (.A0(n382), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n381), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1496), 
          .COUT(n1497), .S0(n57_adj_11), .S1(n54_adj_10));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_5.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_5.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_294_add_4_3 (.A0(n384), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n383), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1495), 
          .COUT(n1496), .S0(n63_adj_13), .S1(n60_adj_12));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_3.INIT0 = 16'h5555;
    defparam _add_1_294_add_4_3.INIT1 = 16'h5555;
    defparam _add_1_294_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_294_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n385), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1495), .S1(n66_adj_14));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(103[33:49])
    defparam _add_1_294_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_294_add_4_1.INIT1 = 16'haaa5;
    defparam _add_1_294_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_294_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_291_add_4_5 (.A0(n412), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n411), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1489), 
          .COUT(n1490), .S0(n57), .S1(n54));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_5.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_5.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_127_i5_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n54), .D(n411), 
         .Z(n838)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i5_3_lut_4_lut.init = 16'hf960;
    LUT4 mux_127_i6_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n51), .D(n410), 
         .Z(n837)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i6_3_lut_4_lut.init = 16'hf960;
    CCU2C _add_1_291_add_4_11 (.A0(n406), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n405), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n1492), .COUT(n1493), .S0(n39), .S1(n36));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_11.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_11.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_11.INJECT1_1 = "NO";
    LUT4 mux_127_i7_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n48), .D(n409), 
         .Z(n836)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i7_3_lut_4_lut.init = 16'hf960;
    CCU2C _add_1_291_add_4_9 (.A0(n408), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n407), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1491), 
          .COUT(n1492), .S0(n45), .S1(n42));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_9.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_9.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_291_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n415), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n1488), .S1(n66));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_291_add_4_1.INIT1 = 16'haaa5;
    defparam _add_1_291_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_127_i8_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n45), .D(n408), 
         .Z(n835)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i8_3_lut_4_lut.init = 16'hf960;
    CCU2C _add_1_291_add_4_7 (.A0(n410), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n409), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1490), 
          .COUT(n1491), .S0(n51), .S1(n48));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_7.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_7.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_291_add_4_3 (.A0(n414), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n413), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n1488), 
          .COUT(n1489), .S0(n63), .S1(n60));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_3.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_3.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_291_add_4_13 (.A0(n404), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n403), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n1493), .S0(n33), .S1(n30));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(102[62:78])
    defparam _add_1_291_add_4_13.INIT0 = 16'h5555;
    defparam _add_1_291_add_4_13.INIT1 = 16'h5555;
    defparam _add_1_291_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_291_add_4_13.INJECT1_1 = "NO";
    LUT4 i115_4_lut_adj_2 (.A(n1561), .B(n13), .C(add_update_1_control), 
         .D(n14), .Z(inc_dir_part_control_adj_1)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i115_4_lut_adj_2.init = 16'h0a3a;
    LUT4 i5_3_lut (.A(add_sin[3]), .B(add_sin[2]), .C(add_sin[6]), .Z(n13)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(60[10:22])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 mux_127_i9_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n42), .D(n407), 
         .Z(n834)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i9_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_3 (.A(add_sin[2]), .B(add_sin[3]), .C(add_sin[4]), 
         .D(add_sin[6]), .Z(n1586)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_3.init = 16'h8000;
    LUT4 mux_127_i10_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n39), .D(n406), 
         .Z(n833)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i10_3_lut_4_lut.init = 16'hf960;
    LUT4 mux_124_i8_3_lut (.A(n378), .B(n45_adj_7), .C(part[1]), .Z(n793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_4 (.A(add_sin[7]), .B(add_sin[1]), .Z(n1580)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    CCU2C add_506_9 (.A0(n1460), .B0(n1666), .C0(n1667), .D0(add_cos[6]), 
          .A1(n1458), .B1(n1666), .C1(n1667), .D1(add_cos[7]), .CIN(n1516), 
          .S0(n25), .S1(n22));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_506_9.INIT0 = 16'h56aa;
    defparam add_506_9.INIT1 = 16'h56aa;
    defparam add_506_9.INJECT1_0 = "NO";
    defparam add_506_9.INJECT1_1 = "NO";
    CCU2C add_506_7 (.A0(n1464), .B0(n1666), .C0(n1667), .D0(add_cos[4]), 
          .A1(n1462), .B1(n1666), .C1(n1667), .D1(add_cos[5]), .CIN(n1515), 
          .COUT(n1516), .S0(n31), .S1(n28));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_506_7.INIT0 = 16'h56aa;
    defparam add_506_7.INIT1 = 16'h56aa;
    defparam add_506_7.INJECT1_0 = "NO";
    defparam add_506_7.INJECT1_1 = "NO";
    CCU2C add_506_5 (.A0(n1468), .B0(n1666), .C0(n1667), .D0(add_cos[2]), 
          .A1(n1466), .B1(n1666), .C1(n1667), .D1(add_cos[3]), .CIN(n1514), 
          .COUT(n1515), .S0(n37), .S1(n34));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_506_5.INIT0 = 16'h56aa;
    defparam add_506_5.INIT1 = 16'h56aa;
    defparam add_506_5.INJECT1_0 = "NO";
    defparam add_506_5.INJECT1_1 = "NO";
    CCU2C add_506_3 (.A0(n1472), .B0(n1666), .C0(n1667), .D0(add_cos[0]), 
          .A1(n1470), .B1(n1666), .C1(n1667), .D1(add_cos[1]), .CIN(n1513), 
          .COUT(n1514), .S0(n43), .S1(n40));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_506_3.INIT0 = 16'h56aa;
    defparam add_506_3.INIT1 = 16'h56aa;
    defparam add_506_3.INJECT1_0 = "NO";
    defparam add_506_3.INJECT1_1 = "NO";
    CCU2C add_506_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(add_update_1_control), .B1(n692), .C1(start_c), .D1(add_update_0_control), 
          .COUT(n1513));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_506_1.INIT0 = 16'h0000;
    defparam add_506_1.INIT1 = 16'haabf;
    defparam add_506_1.INJECT1_0 = "NO";
    defparam add_506_1.INJECT1_1 = "NO";
    LUT4 mux_124_i9_3_lut (.A(n377), .B(n42_adj_6), .C(part[1]), .Z(n792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i9_3_lut.init = 16'hcaca;
    CCU2C add_507_9 (.A0(n1443), .B0(n1666), .C0(n1667), .D0(add_sin[6]), 
          .A1(n1441), .B1(n1666), .C1(n1667), .D1(add_sin[7]), .CIN(n1508), 
          .S0(n25_adj_16), .S1(n22_adj_15));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(78[8] 107[8])
    defparam add_507_9.INIT0 = 16'h56aa;
    defparam add_507_9.INIT1 = 16'h56aa;
    defparam add_507_9.INJECT1_0 = "NO";
    defparam add_507_9.INJECT1_1 = "NO";
    LUT4 mux_124_i10_3_lut (.A(n376), .B(n39_adj_5), .C(part[1]), .Z(n791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i10_3_lut.init = 16'hcaca;
    LUT4 mux_124_i1_3_lut (.A(n385), .B(n66_adj_14), .C(part[1]), .Z(n800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i1_3_lut.init = 16'hcaca;
    LUT4 mux_127_i11_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n36), .D(n405), 
         .Z(n832)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i11_3_lut_4_lut.init = 16'hf960;
    LUT4 i305_2_lut (.A(n692), .B(start_c), .Z(n1235)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i305_2_lut.init = 16'h2222;
    LUT4 mux_127_i12_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n33), .D(n404), 
         .Z(n831)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i12_3_lut_4_lut.init = 16'hf960;
    LUT4 mux_124_i11_3_lut (.A(n375), .B(n36_adj_4), .C(part[1]), .Z(n790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i11_3_lut.init = 16'hcaca;
    LUT4 i154_2_lut_3_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(rst_c), .Z(clk_c_enable_27)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i154_2_lut_3_lut.init = 16'he0e0;
    LUT4 i520_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[2]), .D(n1667), .Z(n1451)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i520_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i516_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[4]), .D(n1667), .Z(n1447)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i516_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i514_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[5]), .D(n1667), .Z(n1445)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i514_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i518_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[3]), .D(n1667), .Z(n1449)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i518_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i524_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[0]), .D(n1667), .Z(n1455)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i524_3_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i1_3_lut_adj_5 (.A(next_state_1__N_47[0]), .B(inc_dir_part_control), 
         .C(rst_c), .Z(n1553)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(70[8] 108[6])
    defparam i1_3_lut_adj_5.init = 16'h4040;
    LUT4 i1_2_lut_rep_38 (.A(add_update_1_control), .B(add_update_0_control), 
         .Z(n1666)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i1_2_lut_rep_38.init = 16'heeee;
    LUT4 mux_124_i12_3_lut (.A(n374), .B(n33_adj_3), .C(part[1]), .Z(n789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i12_3_lut.init = 16'hcaca;
    LUT4 mux_124_i13_3_lut (.A(n373), .B(n30_adj_2), .C(part[1]), .Z(n788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_124_i13_3_lut.init = 16'hcaca;
    LUT4 i522_3_lut_4_lut_4_lut (.A(add_update_1_control), .B(add_update_0_control), 
         .C(add_sin[1]), .D(n1667), .Z(n1453)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i522_3_lut_4_lut_4_lut.init = 16'haaba;
    LUT4 i103_2_lut (.A(next_state_1__N_47[0]), .B(n691), .Z(n705)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(42[3] 66[10])
    defparam i103_2_lut.init = 16'h4444;
    LUT4 mux_127_i13_3_lut_4_lut (.A(part[0]), .B(part[1]), .C(n30), .D(n403), 
         .Z(n830)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/local_oscillator.v(99[7] 105[16])
    defparam mux_127_i13_3_lut_4_lut.init = 16'hf960;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

