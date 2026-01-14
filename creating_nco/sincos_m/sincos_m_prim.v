// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Jan 07 23:44:29 2026
//
// Verilog Description of module sincos_m
//

module sincos_m (Clock, ClkEn, Reset, Theta, Sine, Cosine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(8[8:16])
    input Clock;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(9[16:21])
    input ClkEn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(10[16:21])
    input Reset;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(11[16:21])
    input [9:0]Theta;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(12[22:27])
    output [7:0]Sine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(13[23:27])
    output [7:0]Cosine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(14[23:29])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(9[16:21])
    
    wire func_or_inet_1, func_or_inet, lx_ne0, lx_ne0_inv, rom_addr0_r, 
        rom_addr0_r_1, rom_addr0_r_2, rom_addr0_r_3, rom_addr0_r_4, 
        rom_addr0_r_5, rom_addr0_r_6, mx_ctrl_r, rom_addr0_r_7, cosromoutsel_i, 
        rom_dout, rom_dout_1, rom_dout_2, rom_dout_3, rom_dout_4, 
        rom_dout_5, rom_dout_6, sinromoutsel, rom_dout_7, rom_dout_8, 
        rom_dout_9, rom_dout_10, rom_dout_11, rom_dout_12, rom_dout_13, 
        rom_dout_14, cosromoutsel, rom_dout_15, out_sel_i, rom_dout_s, 
        rom_dout_s_1, rom_dout_s_2, rom_dout_s_3, rom_dout_s_4, rom_dout_s_5, 
        rom_dout_s_6, mx_ctrl_r_1, rom_dout_s_7, rom_dout_c, rom_dout_c_1, 
        rom_dout_c_2, rom_dout_c_3, rom_dout_c_4, rom_dout_c_5, rom_dout_c_6, 
        out_sel, rom_dout_c_7, sinout_pre, sinout_pre_1, sinout_pre_2, 
        sinout_pre_3, sinout_pre_4, sinout_pre_5, sinout_pre_6, sinout_pre_7, 
        cosout_pre, cosout_pre_1, cosout_pre_2, cosout_pre_3, cosout_pre_4, 
        cosout_pre_5, cosout_pre_6, cosout_pre_7, rom_addr0_r_n, rom_addr0_r_inv, 
        rom_addr0_r_n_1, rom_addr0_r_n_2, rom_addr0_r_2_inv, rom_addr0_r_1_inv, 
        co0, rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_4_inv, rom_addr0_r_3_inv, 
        co1, rom_addr0_r_n_5, rom_addr0_r_n_6, rom_addr0_r_6_inv, rom_addr0_r_5_inv, 
        co2, rom_addr0_r_n_7, rom_addr0_r_7_inv, co3, rom_dout_7_ffin, 
        rom_dout_6_ffin, rom_dout_5_ffin, rom_dout_4_ffin, rom_dout_3_ffin, 
        rom_dout_2_ffin, rom_dout_1_ffin, rom_dout_ffin, rom_dout_15_ffin, 
        rom_dout_14_ffin, rom_dout_13_ffin, rom_dout_12_ffin, rom_dout_11_ffin, 
        rom_dout_10_ffin, rom_dout_9_ffin, rom_dout_8_ffin, rom_addr0_r_8, 
        rom_addr0_r_9, rom_addr0_r_10, rom_addr0_r_11, rom_addr0_r_12, 
        rom_addr0_r_13, rom_addr0_r_14, rom_addr0_r_15, rom_dout_s_n, 
        rom_dout_inv, rom_dout_s_n_1, rom_dout_s_n_2, rom_dout_2_inv, 
        rom_dout_1_inv, co0_1, rom_dout_s_n_3, rom_dout_s_n_4, rom_dout_4_inv, 
        rom_dout_3_inv, co1_1, rom_dout_s_n_5, rom_dout_s_n_6, rom_dout_6_inv, 
        rom_dout_5_inv, co2_1, rom_dout_s_n_7, rom_dout_7_inv, co3_1, 
        rom_dout_c_n, rom_dout_8_inv, rom_dout_c_n_1, rom_dout_c_n_2, 
        rom_dout_10_inv, rom_dout_9_inv, co0_2, rom_dout_c_n_3, rom_dout_c_n_4, 
        rom_dout_12_inv, rom_dout_11_inv, co1_2, rom_dout_c_n_5, rom_dout_c_n_6, 
        rom_dout_14_inv, rom_dout_13_inv, co2_2, rom_dout_c_n_7, scuba_vhi, 
        scuba_vlo, rom_dout_15_inv, co3_2;
    
    INV INV_25 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv));
    FD1P3DX FF_43 (.D(Theta[1]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(242[13:88])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(Theta[2]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(245[13:88])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(Theta[3]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(248[13:88])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(Theta[4]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(251[13:88])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(Theta[5]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(254[13:88])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(Theta[6]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(257[13:88])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(Theta[7]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(260[13:88])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(Theta[8]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(263[13:84])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(Theta[9]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(266[13:86])
    defparam FF_35.GSR = "ENABLED";
    MUX21 muxb_39 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_33 (.D(rom_dout_6_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(297[13] 298[24])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(rom_dout_5_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(301[13] 302[24])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(rom_dout_4_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(305[13] 306[24])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(rom_dout_3_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(309[13] 310[24])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(rom_dout_2_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(313[13] 314[24])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(rom_dout_1_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(317[13] 318[24])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(rom_dout_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(321[13] 322[22])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(rom_dout_15_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(325[13] 326[25])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(rom_dout_14_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(329[13] 330[25])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(rom_dout_13_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(333[13] 334[25])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(rom_dout_12_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(337[13] 338[25])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(rom_dout_11_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(341[13] 342[25])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(rom_dout_10_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(345[13] 346[25])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(rom_dout_9_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(349[13] 350[24])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(rom_dout_8_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(353[13] 354[24])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(cosromoutsel_i), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(cosromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(357[13] 358[26])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(mx_ctrl_r_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(361[13] 362[26])
    defparam FF_17.GSR = "ENABLED";
    MUX21 muxb_31 (.D0(rom_dout), .D1(rom_dout_s_n), .SD(sinromoutsel), 
          .Z(rom_dout_s)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_15 (.D0(rom_dout_s), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_14 (.D(sinout_pre_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(451[13] 452[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(sinout_pre_2), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(455[13] 456[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(sinout_pre_3), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(459[13] 460[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(sinout_pre_4), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(463[13] 464[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(sinout_pre_5), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(467[13] 468[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(sinout_pre_6), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(471[13] 472[21])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(sinout_pre_7), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(475[13] 476[21])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(cosout_pre), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(479[13:85])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(cosout_pre_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(482[13] 483[23])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(cosout_pre_2), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(486[13] 487[23])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(cosout_pre_3), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(490[13] 491[23])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(cosout_pre_4), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(494[13] 495[23])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(cosout_pre_5), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(498[13] 499[23])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(cosout_pre_6), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(502[13] 503[23])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(cosout_pre_7), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(506[13] 507[23])
    defparam FF_0.GSR = "ENABLED";
    CCU2C neg_rom_addr0_r_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(514[11] 516[71])
    defparam neg_rom_addr0_r_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
          .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(522[11] 525[42])
    defparam neg_rom_addr0_r_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
          .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(531[11] 534[42])
    defparam neg_rom_addr0_r_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_6_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
          .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(540[11] 543[42])
    defparam neg_rom_addr0_r_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(549[11] 551[73])
    defparam neg_rom_addr0_r_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_4.INJECT1_1 = "NO";
    ROM256X1A triglut_1_0_15 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_7_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_15.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C neg_rom_dout_s_n_1 (.A0(rom_dout_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_1), .COUT(co1_1), .S0(rom_dout_s_n_1), 
          .S1(rom_dout_s_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(661[11] 664[43])
    defparam neg_rom_dout_s_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_2 (.A0(rom_dout_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_1), .COUT(co2_1), .S0(rom_dout_s_n_3), 
          .S1(rom_dout_s_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(670[11] 673[43])
    defparam neg_rom_dout_s_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_3 (.A0(rom_dout_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_6_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_1), .COUT(co3_1), .S0(rom_dout_s_n_5), 
          .S1(rom_dout_s_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(679[11] 682[43])
    defparam neg_rom_dout_s_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_4 (.A0(rom_dout_7_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_1), .S0(rom_dout_s_n_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(688[11] 690[74])
    defparam neg_rom_dout_s_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_8_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_2), .S1(rom_dout_c_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(696[11] 698[72])
    defparam neg_rom_dout_c_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_1 (.A0(rom_dout_9_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_10_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2), .S0(rom_dout_c_n_1), 
          .S1(rom_dout_c_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(704[11] 707[43])
    defparam neg_rom_dout_c_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_2 (.A0(rom_dout_11_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_12_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2), .S0(rom_dout_c_n_3), 
          .S1(rom_dout_c_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(713[11] 716[43])
    defparam neg_rom_dout_c_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_3 (.A0(rom_dout_13_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_14_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_2), .S0(rom_dout_c_n_5), 
          .S1(rom_dout_c_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(722[11] 725[43])
    defparam neg_rom_dout_c_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_3.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C neg_rom_dout_c_n_4 (.A0(rom_dout_15_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .S0(rom_dout_c_n_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(735[11] 737[74])
    defparam neg_rom_dout_c_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_4.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    INV INV_24 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv));
    INV INV_23 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv));
    INV INV_22 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv));
    INV INV_21 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv));
    INV INV_20 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv));
    INV INV_19 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv));
    INV INV_18 (.A(rom_addr0_r), .Z(rom_addr0_r_inv));
    XOR2 XOR2_t1 (.A(mx_ctrl_r), .B(mx_ctrl_r_1), .Z(cosromoutsel_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(187[10:70])
    INV INV_17 (.A(rom_dout_7), .Z(rom_dout_7_inv));
    INV INV_16 (.A(rom_dout_6), .Z(rom_dout_6_inv));
    INV INV_15 (.A(rom_dout_5), .Z(rom_dout_5_inv));
    INV INV_14 (.A(rom_dout_4), .Z(rom_dout_4_inv));
    INV INV_13 (.A(rom_dout_3), .Z(rom_dout_3_inv));
    INV INV_12 (.A(rom_dout_2), .Z(rom_dout_2_inv));
    INV INV_11 (.A(rom_dout_1), .Z(rom_dout_1_inv));
    INV INV_10 (.A(rom_dout), .Z(rom_dout_inv));
    INV INV_9 (.A(rom_dout_15), .Z(rom_dout_15_inv));
    INV INV_8 (.A(rom_dout_14), .Z(rom_dout_14_inv));
    INV INV_7 (.A(rom_dout_13), .Z(rom_dout_13_inv));
    INV INV_6 (.A(rom_dout_12), .Z(rom_dout_12_inv));
    INV INV_5 (.A(rom_dout_11), .Z(rom_dout_11_inv));
    INV INV_4 (.A(rom_dout_10), .Z(rom_dout_10_inv));
    INV INV_3 (.A(rom_dout_9), .Z(rom_dout_9_inv));
    INV INV_2 (.A(rom_dout_8), .Z(rom_dout_8_inv));
    ROM16X1A LUT4_2 (.AD0(rom_addr0_r_11), .AD1(rom_addr0_r_10), .AD2(rom_addr0_r_9), 
            .AD3(rom_addr0_r_8), .DO0(func_or_inet)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b1111111111111110;
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_15), .AD1(rom_addr0_r_14), .AD2(rom_addr0_r_13), 
            .AD3(rom_addr0_r_12), .DO0(func_or_inet_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(func_or_inet_1), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv));
    AND2 AND2_t0 (.A(mx_ctrl_r), .B(lx_ne0_inv), .Z(out_sel_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(235[10:64])
    FD1P3DX FF_44 (.D(Theta[0]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(239[13:86])
    defparam FF_44.GSR = "ENABLED";
    MUX21 muxb_38 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_37 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_36 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_35 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_34 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_33 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_32 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_34 (.D(rom_dout_7_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(293[13] 294[24])
    defparam FF_34.GSR = "ENABLED";
    MUX21 muxb_30 (.D0(rom_dout_1), .D1(rom_dout_s_n_1), .SD(sinromoutsel), 
          .Z(rom_dout_s_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_29 (.D0(rom_dout_2), .D1(rom_dout_s_n_2), .SD(sinromoutsel), 
          .Z(rom_dout_s_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_28 (.D0(rom_dout_3), .D1(rom_dout_s_n_3), .SD(sinromoutsel), 
          .Z(rom_dout_s_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_27 (.D0(rom_dout_4), .D1(rom_dout_s_n_4), .SD(sinromoutsel), 
          .Z(rom_dout_s_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_26 (.D0(rom_dout_5), .D1(rom_dout_s_n_5), .SD(sinromoutsel), 
          .Z(rom_dout_s_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_25 (.D0(rom_dout_6), .D1(rom_dout_s_n_6), .SD(sinromoutsel), 
          .Z(rom_dout_s_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_24 (.D0(rom_dout_7), .D1(rom_dout_s_n_7), .SD(sinromoutsel), 
          .Z(rom_dout_s_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_23 (.D0(rom_dout_8), .D1(rom_dout_c_n), .SD(cosromoutsel), 
          .Z(rom_dout_c)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_22 (.D0(rom_dout_9), .D1(rom_dout_c_n_1), .SD(cosromoutsel), 
          .Z(rom_dout_c_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_21 (.D0(rom_dout_10), .D1(rom_dout_c_n_2), .SD(cosromoutsel), 
          .Z(rom_dout_c_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_20 (.D0(rom_dout_11), .D1(rom_dout_c_n_3), .SD(cosromoutsel), 
          .Z(rom_dout_c_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_19 (.D0(rom_dout_12), .D1(rom_dout_c_n_4), .SD(cosromoutsel), 
          .Z(rom_dout_c_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_18 (.D0(rom_dout_13), .D1(rom_dout_c_n_5), .SD(cosromoutsel), 
          .Z(rom_dout_c_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_17 (.D0(rom_dout_14), .D1(rom_dout_c_n_6), .SD(cosromoutsel), 
          .Z(rom_dout_c_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_16 (.D0(rom_dout_15), .D1(rom_dout_c_n_7), .SD(cosromoutsel), 
          .Z(rom_dout_c_7)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_16 (.D(out_sel_i), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(out_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(413[13:83])
    defparam FF_16.GSR = "ENABLED";
    MUX21 muxb_14 (.D0(rom_dout_s_1), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_13 (.D0(rom_dout_s_2), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_12 (.D0(rom_dout_s_3), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_11 (.D0(rom_dout_s_4), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_10 (.D0(rom_dout_s_5), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_9 (.D0(rom_dout_s_6), .D1(scuba_vhi), .SD(out_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_8 (.D0(rom_dout_s_7), .D1(mx_ctrl_r_1), .SD(out_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_7 (.D0(rom_dout_c), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_6 (.D0(rom_dout_c_1), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_5 (.D0(rom_dout_c_2), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_4 (.D0(rom_dout_c_3), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_3 (.D0(rom_dout_c_4), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_2 (.D0(rom_dout_c_5), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_1 (.D0(rom_dout_c_6), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_0 (.D0(rom_dout_c_7), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_15 (.D(sinout_pre), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(448[13:84])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_14 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_6_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_13 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_5_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_13.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_4_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_12.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000111111111111111111111111111100000000000000000000000001111111111111111111111100000000000000000000011111111111111111111100000000000000000000;
    ROM256X1A triglut_1_0_11 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_3_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_11.initval = 256'b1111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111110000000000000000111111111111111000000000000011111111111110000000000001111111111100000000000011111111110000000000011111111110000000000011111111110000000000;
    ROM256X1A triglut_1_0_10 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_2_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_10.initval = 256'b1111111111111111111111111111111111111111111000000000000000011111111111110000000000011111111110000000001111111100000000111111110000000111111100000011111110000001111110000001111110000011111100000011111000001111110000011111000001111110000011111000001111100000;
    ROM256X1A triglut_1_0_9 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_1_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_9.initval = 256'b1111111111111111111111111111111100000000000111111111000000011111110000001111110000011111000001111100001111000011110000111100001110000111000011100011110001110001110001110001110001110011100011100011000111001110001100011100111001110001100011000110001100011100;
    ROM256X1A triglut_1_0_8 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_8.initval = 256'b1111111111111111111111110000000011111100000111100000111100011110001110001110001110011100111001100011001100110011001100110011001101100110110010011011001001001001001001001001001001001011011010010010110100101101001011010010110101101001010010110101101011010010;
    ROM256X1A triglut_1_0_7 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_15_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_7.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_6 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_14_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_6.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_5 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_13_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_5.initval = 256'b0000000000000000000000000000000000000000111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_4 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_12_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_4.initval = 256'b0000000000000000000111111111111111111111000000000000000000000111111111111111111111110000000000000000000000000111111111111111111111111111100000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_3 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_11_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_3.initval = 256'b0000000001111111111000000000001111111111000000000001111111111000000000000111111111110000000000001111111111111000000000000011111111111111100000000000000001111111111111111111000000000000000000000000111111111111111111111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_2 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_10_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_2.initval = 256'b0000111110000011111000001111110000011111000001111110000011111000000111111000001111110000001111110000001111111000000111111100000001111111100000000111111110000000001111111111000000000001111111111111000000000000000011111111111111111111111111111111111111111111;
    ROM256X1A triglut_1_0_1 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_9_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_1.initval = 256'b0111000110001100011000110001110011100111000110001110011100011000111000111001110001110001110001110001110001111000111000011100001110000111100001111000011110000111110000011111000001111110000001111111000000011111111100000000000111111111111111111111111111111111;
    ROM256X1A triglut_1_0_0 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_8_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_0.initval = 256'b1001011010110101101001010010110101101001011010010110100101101001001011011010010010010010010010010010010010011011001001101100110110011001100110011001100110011000110011100111001110001110001110001111000111100000111100000111111000000001111111111111111111111111;
    CCU2C neg_rom_dout_s_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_1), .S1(rom_dout_s_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_m/sincos_m.v(653[11] 655[72])
    defparam neg_rom_dout_s_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_0.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

