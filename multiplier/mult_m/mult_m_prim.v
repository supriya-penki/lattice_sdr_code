// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Thu Jan 08 03:04:21 2026
//
// Verilog Description of module mult_m
//

module mult_m (Clock, ClkEn, Aclr, DataA, DataB, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(8[8:14])
    input Clock;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(9[16:21])
    input ClkEn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(10[16:21])
    input Aclr;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(11[16:20])
    input [9:0]DataA;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(12[22:27])
    input [3:0]DataB;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(13[22:27])
    output [13:0]Result;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(14[24:30])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(9[16:21])
    
    wire rego_o_0, rego_o_1, mult_m_0_pp_0_0, mult_m_0_pp_1_2, mult_m_0_pp_0_11, 
        mult_m_0_pp_1_13, rego_o_2, f_mult_m_0_pp_1_2, f_mult_m_0_pp_0_2, 
        rego_o_3, rego_o_4, f_mult_m_0_pp_1_4, f_mult_m_0_pp_1_3, f_mult_m_0_pp_0_4, 
        f_mult_m_0_pp_0_3, co_t_mult_m_0_0_1, rego_o_5, rego_o_6, f_mult_m_0_pp_1_6, 
        f_mult_m_0_pp_1_5, f_mult_m_0_pp_0_6, f_mult_m_0_pp_0_5, co_t_mult_m_0_0_2, 
        rego_o_7, rego_o_8, f_mult_m_0_pp_1_8, f_mult_m_0_pp_1_7, f_mult_m_0_pp_0_8, 
        f_mult_m_0_pp_0_7, co_t_mult_m_0_0_3, rego_o_9, rego_o_10, f_mult_m_0_pp_1_10, 
        f_mult_m_0_pp_1_9, f_mult_m_0_pp_0_10, f_mult_m_0_pp_0_9, co_t_mult_m_0_0_4, 
        rego_o_11, rego_o_12, f_mult_m_0_pp_1_12, f_mult_m_0_pp_1_11, 
        f_mult_m_0_pp_0_11, co_t_mult_m_0_0_5, rego_o_13, f_mult_m_0_pp_1_13, 
        co_t_mult_m_0_0_6, mult_m_0_pp_0_2, mult_m_0_pp_0_1, mult_m_0_cin_lr_0, 
        rega_a_0, mult_m_0_pp_0_4, mult_m_0_pp_0_3, mco, mult_m_0_pp_0_6, 
        mult_m_0_pp_0_5, mco_1, mult_m_0_pp_0_8, mult_m_0_pp_0_7, mco_2, 
        mfco, mult_m_0_pp_0_10, mult_m_0_pp_0_9, mco_3, regb_b_0, 
        regb_b_1, mult_m_0_mult_0_4_n3, mult_m_0_mult_0_4_n1, mult_m_0_pp_1_4, 
        mult_m_0_pp_1_3, mult_m_0_cin_lr, rega_a_2, mult_m_0_mult_2_0_n1, 
        rega_a_1, mult_m_0_mult_2_0_n0, mult_m_0_pp_1_6, mult_m_0_pp_1_5, 
        mco_4, rega_a_4, mult_m_0_mult_2_1_n1, rega_a_3, mult_m_0_mult_2_1_n0, 
        mult_m_0_pp_1_8, mult_m_0_pp_1_7, mco_5, rega_a_6, mult_m_0_mult_2_2_n1, 
        rega_a_5, mult_m_0_mult_2_2_n0, mult_m_0_pp_1_10, mult_m_0_pp_1_9, 
        mco_6, rega_a_8, mult_m_0_mult_2_3_n1, rega_a_7, mult_m_0_mult_2_3_n0, 
        mfco_1, mult_m_0_pp_1_12, mult_m_0_pp_1_11, mco_7, regb_b_2, 
        regb_b_3, scuba_vhi, scuba_vlo, rega_a_9, mult_m_0_mult_2_4_n2, 
        mult_m_0_mult_2_4_n0;
    
    ND2 ND2_t11 (.A(rega_a_9), .B(regb_b_1), .Z(mult_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t10 (.A(rega_a_0), .B(regb_b_2), .Z(mult_m_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(132[10:68])
    ND2 ND2_t8 (.A(rega_a_0), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t7 (.A(rega_a_3), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t6 (.A(rega_a_2), .B(regb_b_3), .Z(mult_m_0_mult_2_1_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t5 (.A(rega_a_5), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t4 (.A(rega_a_4), .B(regb_b_3), .Z(mult_m_0_mult_2_2_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t3 (.A(rega_a_7), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t2 (.A(rega_a_6), .B(regb_b_3), .Z(mult_m_0_mult_2_3_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t1 (.A(rega_a_9), .B(regb_b_2), .Z(mult_m_0_mult_2_4_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t0 (.A(rega_a_8), .B(regb_b_3), .Z(mult_m_0_mult_2_4_n0)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_51 (.D(DataA[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(154[13:82])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(DataA[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(157[13:82])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(DataA[2]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(160[13:82])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(DataA[3]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(163[13:82])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(DataA[4]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(166[13:82])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(DataA[5]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(169[13:82])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(DataA[6]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(172[13:82])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(DataA[7]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(175[13:82])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(DataA[8]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(178[13:82])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(DataA[9]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(181[13:82])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(DataB[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(184[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(DataB[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(187[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(DataB[2]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(190[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(DataB[3]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(193[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(rego_o_0), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(196[13:83])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(rego_o_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(199[13:83])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(rego_o_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(202[13:83])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(rego_o_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(205[13:83])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(rego_o_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(208[13:83])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(rego_o_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(211[13:83])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(rego_o_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(214[13:83])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(rego_o_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(217[13:83])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(rego_o_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(220[13:83])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(rego_o_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(223[13:83])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(rego_o_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(226[13:85])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(rego_o_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(229[13:85])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(rego_o_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[12])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(232[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(rego_o_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[13])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(235[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(mult_m_0_pp_0_0), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(238[13] 239[31])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(mult_m_0_pp_0_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(242[13] 243[31])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(mult_m_0_pp_0_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(246[13] 247[31])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(mult_m_0_pp_0_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(250[13] 251[31])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(mult_m_0_pp_0_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(254[13] 255[31])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(mult_m_0_pp_0_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(258[13] 259[31])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(mult_m_0_pp_0_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(262[13] 263[31])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(mult_m_0_pp_0_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(266[13] 267[31])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(mult_m_0_pp_0_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(270[13] 271[31])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(mult_m_0_pp_0_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(274[13] 275[31])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(mult_m_0_pp_0_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(278[13] 279[32])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(mult_m_0_pp_0_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(282[13] 283[32])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(mult_m_0_pp_1_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(286[13] 287[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(mult_m_0_pp_1_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(290[13] 291[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(mult_m_0_pp_1_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(294[13] 295[31])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(mult_m_0_pp_1_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(298[13] 299[31])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(mult_m_0_pp_1_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(302[13] 303[31])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(mult_m_0_pp_1_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(306[13] 307[31])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(mult_m_0_pp_1_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(310[13] 311[31])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(mult_m_0_pp_1_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(314[13] 315[31])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(mult_m_0_pp_1_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(318[13] 319[32])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(mult_m_0_pp_1_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(322[13] 323[32])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(mult_m_0_pp_1_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(326[13] 327[32])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(mult_m_0_pp_1_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_mult_m_0_pp_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(330[13] 331[32])
    defparam FF_0.GSR = "ENABLED";
    CCU2C mult_m_0_cin_lr_add_0 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(mult_m_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(338[11] 340[72])
    defparam mult_m_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam mult_m_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_0_5 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco), .S0(mult_m_0_pp_0_11)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(346[11] 348[75])
    defparam mult_m_0_Cadd_0_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_0_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_0_5.INJECT1_1 = "NO";
    CCU2C mult_m_0_cin_lr_add (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(mult_m_0_cin_lr)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(354[11] 356[70])
    defparam mult_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam mult_m_0_cin_lr_add.INJECT1_1 = "NO";
    CCU2C mult_m_0_Cadd_2_5 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_1), .S0(mult_m_0_pp_1_13)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(362[11] 364[77])
    defparam mult_m_0_Cadd_2_5.INIT0 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INIT1 = 16'b0110011010101010;
    defparam mult_m_0_Cadd_2_5.INJECT1_0 = "NO";
    defparam mult_m_0_Cadd_2_5.INJECT1_1 = "NO";
    CCU2C Cadd_t_mult_m_0_0_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(f_mult_m_0_pp_0_2), .B1(f_mult_m_0_pp_1_2), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_t_mult_m_0_0_1), .S1(rego_o_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(370[11] 372[80])
    defparam Cadd_t_mult_m_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_mult_m_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_t_mult_m_0_0_1.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_2 (.A0(f_mult_m_0_pp_0_3), .B0(f_mult_m_0_pp_1_3), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_mult_m_0_pp_0_4), .B1(f_mult_m_0_pp_1_4), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_1), .COUT(co_t_mult_m_0_0_2), 
          .S0(rego_o_3), .S1(rego_o_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(378[11] 381[64])
    defparam t_mult_m_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_2.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_2.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_3 (.A0(f_mult_m_0_pp_0_5), .B0(f_mult_m_0_pp_1_5), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_mult_m_0_pp_0_6), .B1(f_mult_m_0_pp_1_6), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_2), .COUT(co_t_mult_m_0_0_3), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(387[11] 390[64])
    defparam t_mult_m_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_3.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_3.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_4 (.A0(f_mult_m_0_pp_0_7), .B0(f_mult_m_0_pp_1_7), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_mult_m_0_pp_0_8), .B1(f_mult_m_0_pp_1_8), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_3), .COUT(co_t_mult_m_0_0_4), 
          .S0(rego_o_7), .S1(rego_o_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(396[11] 399[64])
    defparam t_mult_m_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_4.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_4.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_5 (.A0(f_mult_m_0_pp_0_9), .B0(f_mult_m_0_pp_1_9), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_mult_m_0_pp_0_10), .B1(f_mult_m_0_pp_1_10), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_4), .COUT(co_t_mult_m_0_0_5), 
          .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(405[11] 408[65])
    defparam t_mult_m_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_5.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_5.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_6 (.A0(f_mult_m_0_pp_0_11), .B0(f_mult_m_0_pp_1_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(f_mult_m_0_pp_1_12), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_5), .COUT(co_t_mult_m_0_0_6), 
          .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(414[11] 417[34])
    defparam t_mult_m_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_6.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_6.INJECT1_1 = "NO";
    CCU2C t_mult_m_0_add_0_7 (.A0(scuba_vlo), .B0(f_mult_m_0_pp_1_13), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co_t_mult_m_0_0_6), .S0(rego_o_13)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(423[11] 426[34])
    defparam t_mult_m_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam t_mult_m_0_add_0_7.INJECT1_0 = "NO";
    defparam t_mult_m_0_add_0_7.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_0 (.A0(rega_a_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(mult_m_0_cin_lr_0), .COUT(mco), .S0(mult_m_0_pp_0_1), 
          .S1(mult_m_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(432[11] 435[20])
    defparam mult_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(mult_m_0_pp_0_3), 
          .S1(mult_m_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(441[11] 443[77])
    defparam mult_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(mult_m_0_pp_0_5), 
          .S1(mult_m_0_pp_0_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(449[11] 451[79])
    defparam mult_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(mult_m_0_pp_0_7), 
          .S1(mult_m_0_pp_0_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(457[11] 459[79])
    defparam mult_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(mult_m_0_mult_0_4_n1), .B1(scuba_vhi), .C1(mult_m_0_mult_0_4_n3), 
          .D1(scuba_vhi), .CIN(mco_3), .COUT(mfco), .S0(mult_m_0_pp_0_9), 
          .S1(mult_m_0_pp_0_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(465[11] 468[21])
    defparam mult_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_0 (.A0(mult_m_0_mult_2_0_n0), .B0(scuba_vhi), 
          .C0(rega_a_1), .D0(regb_b_2), .A1(mult_m_0_mult_2_0_n1), .B1(scuba_vhi), 
          .C1(rega_a_2), .D1(regb_b_2), .CIN(mult_m_0_cin_lr), .COUT(mco_4), 
          .S0(mult_m_0_pp_1_3), .S1(mult_m_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(474[11] 477[22])
    defparam mult_m_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_0.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_1 (.A0(mult_m_0_mult_2_1_n0), .B0(scuba_vhi), 
          .C0(rega_a_3), .D0(regb_b_2), .A1(mult_m_0_mult_2_1_n1), .B1(scuba_vhi), 
          .C1(rega_a_4), .D1(regb_b_2), .CIN(mco_4), .COUT(mco_5), .S0(mult_m_0_pp_1_5), 
          .S1(mult_m_0_pp_1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(483[11] 486[22])
    defparam mult_m_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_1.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_2 (.A0(mult_m_0_mult_2_2_n0), .B0(scuba_vhi), 
          .C0(rega_a_5), .D0(regb_b_2), .A1(mult_m_0_mult_2_2_n1), .B1(scuba_vhi), 
          .C1(rega_a_6), .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(mult_m_0_pp_1_7), 
          .S1(mult_m_0_pp_1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(492[11] 495[22])
    defparam mult_m_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_2.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C mult_m_0_mult_2_3 (.A0(mult_m_0_mult_2_3_n0), .B0(scuba_vhi), 
          .C0(rega_a_7), .D0(regb_b_2), .A1(mult_m_0_mult_2_3_n1), .B1(scuba_vhi), 
          .C1(rega_a_8), .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(mult_m_0_pp_1_9), 
          .S1(mult_m_0_pp_1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(501[11] 504[22])
    defparam mult_m_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_3.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_3.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C mult_m_0_mult_2_4 (.A0(mult_m_0_mult_2_4_n0), .B0(scuba_vhi), 
          .C0(mult_m_0_mult_2_4_n2), .D0(scuba_vhi), .A1(rega_a_9), .B1(regb_b_3), 
          .C1(scuba_vlo), .D1(regb_b_2), .CIN(mco_7), .COUT(mfco_1), 
          .S0(mult_m_0_pp_1_11), .S1(mult_m_0_pp_1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(514[11] 517[23])
    defparam mult_m_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam mult_m_0_mult_2_4.INJECT1_0 = "NO";
    defparam mult_m_0_mult_2_4.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t13 (.A(rega_a_0), .B(regb_b_0), .Z(mult_m_0_pp_0_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/mult_m/mult_m.v(126[10:68])
    ND2 ND2_t12 (.A(rega_a_9), .B(regb_b_0), .Z(mult_m_0_mult_0_4_n3)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t9 (.A(rega_a_1), .B(regb_b_3), .Z(mult_m_0_mult_2_0_n1)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

