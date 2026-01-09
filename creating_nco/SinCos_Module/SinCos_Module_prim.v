// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Fri Jan 09 17:18:09 2026
//
// Verilog Description of module SinCos_Module
//

module SinCos_Module (Clock, ClkEn, Reset, Theta, Sine, Cosine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(8[8:21])
    input Clock;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(9[16:21])
    input ClkEn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(10[16:21])
    input Reset;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(11[16:21])
    input [9:0]Theta;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(12[22:27])
    output [11:0]Sine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(13[24:28])
    output [11:0]Cosine;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(14[24:30])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(9[16:21])
    
    wire func_or_inet_1, func_or_inet, lx_ne0, lx_ne0_inv, rom_addr0_r, 
        rom_addr0_r_1, rom_addr0_r_2, rom_addr0_r_3, rom_addr0_r_4, 
        rom_addr0_r_5, rom_addr0_r_6, mx_ctrl_r, rom_addr0_r_7, cosromoutsel_i, 
        rom_dout, rom_dout_1, rom_dout_2, rom_dout_3, rom_dout_4, 
        rom_dout_5, rom_dout_6, rom_dout_7, rom_dout_8, rom_dout_9, 
        rom_dout_10, sinromoutsel, rom_dout_11, rom_dout_12, rom_dout_13, 
        rom_dout_14, rom_dout_15, rom_dout_16, rom_dout_17, rom_dout_18, 
        rom_dout_19, rom_dout_20, rom_dout_21, rom_dout_22, cosromoutsel, 
        rom_dout_23, out_sel_i, rom_dout_s, rom_dout_s_1, rom_dout_s_2, 
        rom_dout_s_3, rom_dout_s_4, rom_dout_s_5, rom_dout_s_6, rom_dout_s_7, 
        rom_dout_s_8, rom_dout_s_9, rom_dout_s_10, mx_ctrl_r_1, rom_dout_s_11, 
        rom_dout_c, rom_dout_c_1, rom_dout_c_2, rom_dout_c_3, rom_dout_c_4, 
        rom_dout_c_5, rom_dout_c_6, rom_dout_c_7, rom_dout_c_8, rom_dout_c_9, 
        rom_dout_c_10, out_sel, rom_dout_c_11, sinout_pre, sinout_pre_1, 
        sinout_pre_2, sinout_pre_3, sinout_pre_4, sinout_pre_5, sinout_pre_6, 
        sinout_pre_7, sinout_pre_8, sinout_pre_9, sinout_pre_10, sinout_pre_11, 
        cosout_pre, cosout_pre_1, cosout_pre_2, cosout_pre_3, cosout_pre_4, 
        cosout_pre_5, cosout_pre_6, cosout_pre_7, cosout_pre_8, cosout_pre_9, 
        cosout_pre_10, cosout_pre_11, rom_addr0_r_n, rom_addr0_r_inv, 
        rom_addr0_r_n_1, rom_addr0_r_n_2, rom_addr0_r_2_inv, rom_addr0_r_1_inv, 
        co0, rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_4_inv, rom_addr0_r_3_inv, 
        co1, rom_addr0_r_n_5, rom_addr0_r_n_6, rom_addr0_r_6_inv, rom_addr0_r_5_inv, 
        co2, rom_addr0_r_n_7, rom_addr0_r_7_inv, co3, rom_dout_11_ffin, 
        rom_dout_10_ffin, rom_dout_9_ffin, rom_dout_8_ffin, rom_dout_7_ffin, 
        rom_dout_6_ffin, rom_dout_5_ffin, rom_dout_4_ffin, rom_dout_3_ffin, 
        rom_dout_2_ffin, rom_dout_1_ffin, rom_dout_ffin, rom_dout_23_ffin, 
        rom_dout_22_ffin, rom_dout_21_ffin, rom_dout_20_ffin, rom_dout_19_ffin, 
        rom_dout_18_ffin, rom_dout_17_ffin, rom_dout_16_ffin, rom_dout_15_ffin, 
        rom_dout_14_ffin, rom_dout_13_ffin, rom_dout_12_ffin, rom_addr0_r_8, 
        rom_addr0_r_9, rom_addr0_r_10, rom_addr0_r_11, rom_addr0_r_12, 
        rom_addr0_r_13, rom_addr0_r_14, rom_addr0_r_15, rom_dout_s_n, 
        rom_dout_inv, rom_dout_s_n_1, rom_dout_s_n_2, rom_dout_2_inv, 
        rom_dout_1_inv, co0_1, rom_dout_s_n_3, rom_dout_s_n_4, rom_dout_4_inv, 
        rom_dout_3_inv, co1_1, rom_dout_s_n_5, rom_dout_s_n_6, rom_dout_6_inv, 
        rom_dout_5_inv, co2_1, rom_dout_s_n_7, rom_dout_s_n_8, rom_dout_8_inv, 
        rom_dout_7_inv, co3_1, rom_dout_s_n_9, rom_dout_s_n_10, rom_dout_10_inv, 
        rom_dout_9_inv, co4, rom_dout_s_n_11, rom_dout_11_inv, co5, 
        rom_dout_c_n, rom_dout_12_inv, rom_dout_c_n_1, rom_dout_c_n_2, 
        rom_dout_14_inv, rom_dout_13_inv, co0_2, rom_dout_c_n_3, rom_dout_c_n_4, 
        rom_dout_16_inv, rom_dout_15_inv, co1_2, rom_dout_c_n_5, rom_dout_c_n_6, 
        rom_dout_18_inv, rom_dout_17_inv, co2_2, rom_dout_c_n_7, rom_dout_c_n_8, 
        rom_dout_20_inv, rom_dout_19_inv, co3_2, rom_dout_c_n_9, rom_dout_c_n_10, 
        rom_dout_22_inv, rom_dout_21_inv, co4_1, rom_dout_c_n_11, scuba_vhi, 
        scuba_vlo, rom_dout_23_inv, co5_1;
    
    INV INV_33 (.A(rom_addr0_r_7), .Z(rom_addr0_r_7_inv));
    FD1P3DX FF_59 (.D(Theta[1]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(310[13:88])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(Theta[2]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(313[13:88])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(Theta[3]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(316[13:88])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(Theta[4]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(319[13:88])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(Theta[5]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(322[13:88])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(Theta[6]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(325[13:88])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(Theta[7]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(328[13:88])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(Theta[8]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(331[13:84])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(Theta[9]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(334[13:86])
    defparam FF_51.GSR = "ENABLED";
    MUX21 muxb_55 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_49 (.D(rom_dout_10_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(365[13] 366[25])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(rom_dout_9_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(369[13] 370[24])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(rom_dout_8_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(373[13] 374[24])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(rom_dout_7_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(377[13] 378[24])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(rom_dout_6_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(381[13] 382[24])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rom_dout_5_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(385[13] 386[24])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(rom_dout_4_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(389[13] 390[24])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(rom_dout_3_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(393[13] 394[24])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(rom_dout_2_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(397[13] 398[24])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(rom_dout_1_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(401[13] 402[24])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(rom_dout_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(405[13] 406[22])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(rom_dout_23_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(409[13] 410[25])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(rom_dout_22_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(413[13] 414[25])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(rom_dout_21_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(417[13] 418[25])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(rom_dout_20_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(421[13] 422[25])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(rom_dout_19_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_19)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(425[13] 426[25])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(rom_dout_18_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_18)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(429[13] 430[25])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(rom_dout_17_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_17)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(433[13] 434[25])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(rom_dout_16_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_16)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(437[13] 438[25])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(rom_dout_15_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(441[13] 442[25])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(rom_dout_14_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(445[13] 446[25])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(rom_dout_13_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(449[13] 450[25])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(rom_dout_12_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(453[13] 454[25])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(cosromoutsel_i), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(cosromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(457[13] 458[26])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(mx_ctrl_r_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(461[13] 462[26])
    defparam FF_25.GSR = "ENABLED";
    MUX21 muxb_47 (.D0(rom_dout), .D1(rom_dout_s_n), .SD(sinromoutsel), 
          .Z(rom_dout_s)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_23 (.D0(rom_dout_s), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_22 (.D(sinout_pre_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(591[13] 592[21])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(sinout_pre_2), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(595[13] 596[21])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(sinout_pre_3), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(599[13] 600[21])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(sinout_pre_4), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(603[13] 604[21])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(sinout_pre_5), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(607[13] 608[21])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(sinout_pre_6), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(611[13] 612[21])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(sinout_pre_7), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(615[13] 616[21])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(sinout_pre_8), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(619[13] 620[21])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(sinout_pre_9), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(623[13] 624[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(sinout_pre_10), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(627[13] 628[22])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(sinout_pre_11), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(631[13] 632[22])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(cosout_pre), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(635[13:86])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(cosout_pre_1), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(638[13] 639[23])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(cosout_pre_2), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(642[13] 643[23])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(cosout_pre_3), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(646[13] 647[23])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(cosout_pre_4), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(650[13] 651[23])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(cosout_pre_5), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(654[13] 655[23])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(cosout_pre_6), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(658[13] 659[23])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(cosout_pre_7), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(662[13] 663[23])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(cosout_pre_8), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(666[13] 667[23])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(cosout_pre_9), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(670[13] 671[23])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(cosout_pre_10), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(674[13] 675[24])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(cosout_pre_11), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Cosine[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(678[13] 679[24])
    defparam FF_0.GSR = "ENABLED";
    CCU2C neg_rom_addr0_r_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(686[11] 688[71])
    defparam neg_rom_addr0_r_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
          .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(694[11] 697[42])
    defparam neg_rom_addr0_r_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
          .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(703[11] 706[42])
    defparam neg_rom_addr0_r_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_6_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2), .COUT(co3), .S0(rom_addr0_r_n_5), 
          .S1(rom_addr0_r_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(712[11] 715[42])
    defparam neg_rom_addr0_r_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_4 (.A0(rom_addr0_r_7_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3), .S0(rom_addr0_r_n_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(721[11] 723[73])
    defparam neg_rom_addr0_r_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_4.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_4.INJECT1_1 = "NO";
    ROM256X1A triglut_1_0_23 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_11_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_23.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C neg_rom_dout_s_n_1 (.A0(rom_dout_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_1), .COUT(co1_1), .S0(rom_dout_s_n_1), 
          .S1(rom_dout_s_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(881[11] 884[43])
    defparam neg_rom_dout_s_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_2 (.A0(rom_dout_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_1), .COUT(co2_1), .S0(rom_dout_s_n_3), 
          .S1(rom_dout_s_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(890[11] 893[43])
    defparam neg_rom_dout_s_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_3 (.A0(rom_dout_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_6_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_1), .COUT(co3_1), .S0(rom_dout_s_n_5), 
          .S1(rom_dout_s_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(899[11] 902[43])
    defparam neg_rom_dout_s_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_4 (.A0(rom_dout_7_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_8_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_1), .COUT(co4), .S0(rom_dout_s_n_7), 
          .S1(rom_dout_s_n_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(908[11] 911[41])
    defparam neg_rom_dout_s_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_5 (.A0(rom_dout_9_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_10_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4), .COUT(co5), .S0(rom_dout_s_n_9), 
          .S1(rom_dout_s_n_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(917[11] 920[42])
    defparam neg_rom_dout_s_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_5.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_6 (.A0(rom_dout_11_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5), .S0(rom_dout_s_n_11)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(926[11] 928[73])
    defparam neg_rom_dout_s_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_6.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_12_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_2), .S1(rom_dout_c_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(934[11] 936[72])
    defparam neg_rom_dout_c_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_1 (.A0(rom_dout_13_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_14_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2), .S0(rom_dout_c_n_1), 
          .S1(rom_dout_c_n_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(942[11] 945[43])
    defparam neg_rom_dout_c_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_2 (.A0(rom_dout_15_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_16_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2), .S0(rom_dout_c_n_3), 
          .S1(rom_dout_c_n_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(951[11] 954[43])
    defparam neg_rom_dout_c_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_3 (.A0(rom_dout_17_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_18_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_2), .S0(rom_dout_c_n_5), 
          .S1(rom_dout_c_n_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(960[11] 963[43])
    defparam neg_rom_dout_c_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_4 (.A0(rom_dout_19_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_20_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .COUT(co4_1), .S0(rom_dout_c_n_7), 
          .S1(rom_dout_c_n_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(969[11] 972[43])
    defparam neg_rom_dout_c_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_5 (.A0(rom_dout_21_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_22_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_1), .COUT(co5_1), .S0(rom_dout_c_n_9), 
          .S1(rom_dout_c_n_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(978[11] 981[44])
    defparam neg_rom_dout_c_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_5.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C neg_rom_dout_c_n_6 (.A0(rom_dout_23_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_1), .S0(rom_dout_c_n_11)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(991[11] 993[75])
    defparam neg_rom_dout_c_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_6.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    INV INV_32 (.A(rom_addr0_r_6), .Z(rom_addr0_r_6_inv));
    INV INV_31 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv));
    INV INV_30 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv));
    INV INV_29 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv));
    INV INV_28 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv));
    INV INV_27 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv));
    INV INV_26 (.A(rom_addr0_r), .Z(rom_addr0_r_inv));
    XOR2 XOR2_t1 (.A(mx_ctrl_r), .B(mx_ctrl_r_1), .Z(cosromoutsel_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(239[10:70])
    INV INV_25 (.A(rom_dout_11), .Z(rom_dout_11_inv));
    INV INV_24 (.A(rom_dout_10), .Z(rom_dout_10_inv));
    INV INV_23 (.A(rom_dout_9), .Z(rom_dout_9_inv));
    INV INV_22 (.A(rom_dout_8), .Z(rom_dout_8_inv));
    INV INV_21 (.A(rom_dout_7), .Z(rom_dout_7_inv));
    INV INV_20 (.A(rom_dout_6), .Z(rom_dout_6_inv));
    INV INV_19 (.A(rom_dout_5), .Z(rom_dout_5_inv));
    INV INV_18 (.A(rom_dout_4), .Z(rom_dout_4_inv));
    INV INV_17 (.A(rom_dout_3), .Z(rom_dout_3_inv));
    INV INV_16 (.A(rom_dout_2), .Z(rom_dout_2_inv));
    INV INV_15 (.A(rom_dout_1), .Z(rom_dout_1_inv));
    INV INV_14 (.A(rom_dout), .Z(rom_dout_inv));
    INV INV_13 (.A(rom_dout_23), .Z(rom_dout_23_inv));
    INV INV_12 (.A(rom_dout_22), .Z(rom_dout_22_inv));
    INV INV_11 (.A(rom_dout_21), .Z(rom_dout_21_inv));
    INV INV_10 (.A(rom_dout_20), .Z(rom_dout_20_inv));
    INV INV_9 (.A(rom_dout_19), .Z(rom_dout_19_inv));
    INV INV_8 (.A(rom_dout_18), .Z(rom_dout_18_inv));
    INV INV_7 (.A(rom_dout_17), .Z(rom_dout_17_inv));
    INV INV_6 (.A(rom_dout_16), .Z(rom_dout_16_inv));
    INV INV_5 (.A(rom_dout_15), .Z(rom_dout_15_inv));
    INV INV_4 (.A(rom_dout_14), .Z(rom_dout_14_inv));
    INV INV_3 (.A(rom_dout_13), .Z(rom_dout_13_inv));
    INV INV_2 (.A(rom_dout_12), .Z(rom_dout_12_inv));
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
    AND2 AND2_t0 (.A(mx_ctrl_r), .B(lx_ne0_inv), .Z(out_sel_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(303[10:64])
    FD1P3DX FF_60 (.D(Theta[0]), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(307[13:86])
    defparam FF_60.GSR = "ENABLED";
    MUX21 muxb_54 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_53 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_52 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_51 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_12)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_50 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_13)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_49 (.D0(rom_addr0_r_6), .D1(rom_addr0_r_n_6), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_14)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_48 (.D0(rom_addr0_r_7), .D1(rom_addr0_r_n_7), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_15)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_50 (.D(rom_dout_11_ffin), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(rom_dout_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(361[13] 362[25])
    defparam FF_50.GSR = "ENABLED";
    MUX21 muxb_46 (.D0(rom_dout_1), .D1(rom_dout_s_n_1), .SD(sinromoutsel), 
          .Z(rom_dout_s_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_45 (.D0(rom_dout_2), .D1(rom_dout_s_n_2), .SD(sinromoutsel), 
          .Z(rom_dout_s_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_44 (.D0(rom_dout_3), .D1(rom_dout_s_n_3), .SD(sinromoutsel), 
          .Z(rom_dout_s_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_43 (.D0(rom_dout_4), .D1(rom_dout_s_n_4), .SD(sinromoutsel), 
          .Z(rom_dout_s_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_42 (.D0(rom_dout_5), .D1(rom_dout_s_n_5), .SD(sinromoutsel), 
          .Z(rom_dout_s_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_41 (.D0(rom_dout_6), .D1(rom_dout_s_n_6), .SD(sinromoutsel), 
          .Z(rom_dout_s_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_40 (.D0(rom_dout_7), .D1(rom_dout_s_n_7), .SD(sinromoutsel), 
          .Z(rom_dout_s_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_39 (.D0(rom_dout_8), .D1(rom_dout_s_n_8), .SD(sinromoutsel), 
          .Z(rom_dout_s_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_38 (.D0(rom_dout_9), .D1(rom_dout_s_n_9), .SD(sinromoutsel), 
          .Z(rom_dout_s_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_37 (.D0(rom_dout_10), .D1(rom_dout_s_n_10), .SD(sinromoutsel), 
          .Z(rom_dout_s_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_36 (.D0(rom_dout_11), .D1(rom_dout_s_n_11), .SD(sinromoutsel), 
          .Z(rom_dout_s_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_35 (.D0(rom_dout_12), .D1(rom_dout_c_n), .SD(cosromoutsel), 
          .Z(rom_dout_c)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_34 (.D0(rom_dout_13), .D1(rom_dout_c_n_1), .SD(cosromoutsel), 
          .Z(rom_dout_c_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_33 (.D0(rom_dout_14), .D1(rom_dout_c_n_2), .SD(cosromoutsel), 
          .Z(rom_dout_c_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_32 (.D0(rom_dout_15), .D1(rom_dout_c_n_3), .SD(cosromoutsel), 
          .Z(rom_dout_c_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_31 (.D0(rom_dout_16), .D1(rom_dout_c_n_4), .SD(cosromoutsel), 
          .Z(rom_dout_c_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_30 (.D0(rom_dout_17), .D1(rom_dout_c_n_5), .SD(cosromoutsel), 
          .Z(rom_dout_c_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_29 (.D0(rom_dout_18), .D1(rom_dout_c_n_6), .SD(cosromoutsel), 
          .Z(rom_dout_c_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_28 (.D0(rom_dout_19), .D1(rom_dout_c_n_7), .SD(cosromoutsel), 
          .Z(rom_dout_c_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_27 (.D0(rom_dout_20), .D1(rom_dout_c_n_8), .SD(cosromoutsel), 
          .Z(rom_dout_c_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_26 (.D0(rom_dout_21), .D1(rom_dout_c_n_9), .SD(cosromoutsel), 
          .Z(rom_dout_c_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_25 (.D0(rom_dout_22), .D1(rom_dout_c_n_10), .SD(cosromoutsel), 
          .Z(rom_dout_c_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_24 (.D0(rom_dout_23), .D1(rom_dout_c_n_11), .SD(cosromoutsel), 
          .Z(rom_dout_c_11)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_24 (.D(out_sel_i), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(out_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(537[13:83])
    defparam FF_24.GSR = "ENABLED";
    MUX21 muxb_22 (.D0(rom_dout_s_1), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_21 (.D0(rom_dout_s_2), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_20 (.D0(rom_dout_s_3), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_19 (.D0(rom_dout_s_4), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_18 (.D0(rom_dout_s_5), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_17 (.D0(rom_dout_s_6), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_16 (.D0(rom_dout_s_7), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_15 (.D0(rom_dout_s_8), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_14 (.D0(rom_dout_s_9), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_13 (.D0(rom_dout_s_10), .D1(scuba_vhi), .SD(out_sel), .Z(sinout_pre_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_12 (.D0(rom_dout_s_11), .D1(mx_ctrl_r_1), .SD(out_sel), 
          .Z(sinout_pre_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_11 (.D0(rom_dout_c), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_10 (.D0(rom_dout_c_1), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_9 (.D0(rom_dout_c_2), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_8 (.D0(rom_dout_c_3), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_7 (.D0(rom_dout_c_4), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_6 (.D0(rom_dout_c_5), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_5 (.D0(rom_dout_c_6), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_4 (.D0(rom_dout_c_7), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_3 (.D0(rom_dout_c_8), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_2 (.D0(rom_dout_c_9), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_1 (.D0(rom_dout_c_10), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_0 (.D0(rom_dout_c_11), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_11)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_23 (.D(sinout_pre), .SP(ClkEn), .CK(Clock), .CD(Reset), 
            .Q(Sine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(588[13:84])
    defparam FF_23.GSR = "ENABLED";
    ROM256X1A triglut_1_0_22 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_10_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_22.initval = 256'b1111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_21 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_9_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_21.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_20 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_8_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_20.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_19 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_7_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_19.initval = 256'b0000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000001111111111111111111111111111100000000000000000000000011111111111111111111111000000000000000000000111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_18 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_6_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_18.initval = 256'b0000011111111111111111111111111111111111111111111111111111000000000000000000000000111111111111111111100000000000000001111111111111110000000000000011111111111100000000000011111111111100000000000111111111110000000000111111111110000000000111111111100000000000;
    ROM256X1A triglut_1_0_17 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_5_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_17.initval = 256'b0000011111111111111111111111111111111111100000000000000000111111111111100000000000111111111100000000011111111000000001111111100000001111111000000011111100000011111100000011111100000011111000000111110000001111100000111111000001111100000111110000011111000000;
    ROM256X1A triglut_1_0_16 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_4_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_16.initval = 256'b0000011111111111111111111111100000000000011111111100000000111111100000011111100000111110000011111000011110000111110001111000011110001111000111000011100011100011100011100011100011100011100111000111001110001100011100111000110001100011100111001110011100111000;
    ROM256X1A triglut_1_0_15 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_3_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_15.initval = 256'b0000011111111111111110000000011111100000011110000011110000111000011100011100011000111001110011000110011001100111001001100110011001001100100110110010010011011011011011011011011011010010010110110100101101001011010010110100101101011010010100101101011010110100;
    ROM256X1A triglut_1_0_14 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_2_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_14.initval = 256'b0000011111111110000001111000011100011100011001110011001100100110010010010010010110100101001010100101010101010110100101010101010100101010010100101001011010010010110110110110010010011001001100100110011001100110011001100110011000110011001110011000110011100110;
    ROM256X1A triglut_1_0_13 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_1_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_13.initval = 256'b0000011111100001110001100110011011011010010101101010101010110101001011011001001100110011100011110000111111111100001111111111000001111000111001110011001100110110010010010010110100101011010101101010101010101010101010101010101011010101010010101011010101101010;
    ROM256X1A triglut_1_0_12 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_12.initval = 256'b0000011100011001001001010101010010010011001111000000000000011100011001001011010101010100100100110011000011111100001111111000111001100100100101001010101010100101001011001001100110001110001111000001111111111111111111111100000001111100000111100001111000111100;
    ROM256X1A triglut_1_0_11 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_23_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_11.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_10 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), 
            .AD2(rom_addr0_r_10), .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), 
            .AD5(rom_addr0_r_13), .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), 
            .DO0(rom_dout_22_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_10.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111;
    ROM256X1A triglut_1_0_9 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_21_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_9.initval = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_8 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_20_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_8.initval = 256'b0000000000000000000000000000000000000000011111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_7 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_19_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_7.initval = 256'b0000000000000000000011111111111111111111100000000000000000000011111111111111111111111000000000000000000000000111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_6 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_18_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_6.initval = 256'b0000000000111111111100000000001111111111100000000001111111111100000000000111111111111000000000000111111111111000000000000001111111111111110000000000000000111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_5 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_17_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_5.initval = 256'b0000011111000001111100000111110000011111100000111110000001111100000011111000000111111000000111111000000111111000000011111110000000111111110000000011111111000000000111111111100000000000111111111111100000000000000000111111111111111111111111111111111111000000;
    ROM256X1A triglut_1_0_4 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_16_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_4.initval = 256'b0011100111001110011100111000110001100011100111000110001110011100011100111000111000111000111000111000111000111000011100011110001111000011110001111100001111000011111000001111100000111111000000111111100000000111111111000000000000111111111111111111111111000000;
    ROM256X1A triglut_1_0_3 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_15_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_3.initval = 256'b0101101011010110100101001011010110100101101001011010010110100101101101001001011011011011011011011011011001001001101100100110010011001100110010011100110011001100011001110011100011000111000111000011100001111000001111000000111111000000001111111111111111000000;
    ROM256X1A triglut_1_0_2 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_14_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_2.initval = 256'b1100111001100011001110011001100011001100110011001100110011001100100110010011001001001101101101101001001011010010100101001010100101010101010100101101010101010100101010010100101101001001001001001100100110011001110011000111000111000011110000001111111111000000;
    ROM256X1A triglut_1_0_1 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_13_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_1.initval = 256'b1010110101011010101001010101011010101010101010101010101010101010110101011010100101101001001001001101100110011001110011100011110000011111111110000111111111100001111000111001100110010011011010010101101010101010110101001011011011001100110001110000111111000000;
    ROM256X1A triglut_1_0_0 (.AD0(rom_addr0_r_8), .AD1(rom_addr0_r_9), .AD2(rom_addr0_r_10), 
            .AD3(rom_addr0_r_11), .AD4(rom_addr0_r_12), .AD5(rom_addr0_r_13), 
            .AD6(rom_addr0_r_14), .AD7(rom_addr0_r_15), .DO0(rom_dout_12_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_0.initval = 256'b0111100011110000111100000111110000000111111111111111111111110000011110001110001100110010011010010100101010101010010100100100110011100011111110000111111000011001100100100101010101011010010011000111000000000000011110011001001001010101010010010011000111000000;
    CCU2C neg_rom_dout_s_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_1), .S1(rom_dout_s_n)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/creating_nco/sincos_module/sincos_module.v(873[11] 875[72])
    defparam neg_rom_dout_s_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_0.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

