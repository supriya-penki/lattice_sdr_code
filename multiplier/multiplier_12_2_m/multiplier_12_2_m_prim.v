// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Fri Jan 09 17:03:38 2026
//
// Verilog Description of module multiplier_12_2_m
//

module multiplier_12_2_m (Clock, ClkEn, Aclr, DataA, DataB, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(8[8:25])
    input Clock;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(9[16:21])
    input ClkEn;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(10[16:21])
    input Aclr;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(11[16:20])
    input [1:0]DataA;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(12[22:27])
    input [11:0]DataB;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(13[23:28])
    output [13:0]Result;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(14[24:30])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(9[16:21])
    
    wire multiplier_12_2_m_0_pp_0_0, regb_b_0, rego_o_0, rego_o_1, p_L1_1, 
        rego_o_2, p_L1_2, rego_o_3, p_L1_3, rego_o_4, p_L1_4, rego_o_5, 
        p_L1_5, rego_o_6, p_L1_6, rego_o_7, p_L1_7, rego_o_8, p_L1_8, 
        rego_o_9, p_L1_9, rego_o_10, p_L1_10, rego_o_11, p_L1_11, 
        rego_o_12, p_L1_12, rego_o_13, p_L1_13, scuba_vlo, multiplier_12_2_m_0_cin_lr, 
        regb_b_2, multiplier_12_2_m_0_mult_0_0_n1, regb_b_1, multiplier_12_2_m_0_mult_0_0_n0, 
        mco, regb_b_4, multiplier_12_2_m_0_mult_0_1_n1, regb_b_3, multiplier_12_2_m_0_mult_0_1_n0, 
        mco_1, regb_b_6, multiplier_12_2_m_0_mult_0_2_n1, regb_b_5, 
        multiplier_12_2_m_0_mult_0_2_n0, mco_2, regb_b_8, multiplier_12_2_m_0_mult_0_3_n1, 
        regb_b_7, multiplier_12_2_m_0_mult_0_3_n0, mco_3, regb_b_10, 
        multiplier_12_2_m_0_mult_0_4_n1, regb_b_9, multiplier_12_2_m_0_mult_0_4_n0, 
        mfco, mco_4, rega_a_1, rega_a_0, scuba_vhi, multiplier_12_2_m_0_mult_0_5_n3, 
        regb_b_11, multiplier_12_2_m_0_mult_0_5_n0;
    
    ND2 ND2_t10 (.A(regb_b_0), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t9 (.A(regb_b_3), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t8 (.A(regb_b_2), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_1_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t7 (.A(regb_b_5), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t6 (.A(regb_b_4), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_2_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t5 (.A(regb_b_7), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t4 (.A(regb_b_6), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_3_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t3 (.A(regb_b_9), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t2 (.A(regb_b_8), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_4_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t1 (.A(regb_b_11), .B(rega_a_0), .Z(multiplier_12_2_m_0_mult_0_5_n3)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t0 (.A(regb_b_10), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_5_n0)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_41 (.D(DataA[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(120[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(DataA[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(123[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(DataB[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(126[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(DataB[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(129[13:82])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(DataB[2]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(132[13:82])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(DataB[3]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(135[13:82])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(DataB[4]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(138[13:82])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(DataB[5]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(141[13:82])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(DataB[6]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(144[13:82])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(DataB[7]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(147[13:82])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(DataB[8]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(150[13:82])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(DataB[9]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(153[13:82])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(DataB[10]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(156[13:84])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(DataB[11]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(159[13:84])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(rego_o_0), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(162[13:83])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(rego_o_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(165[13:83])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(rego_o_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(168[13:83])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(rego_o_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(171[13:83])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(rego_o_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(174[13:83])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(rego_o_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(177[13:83])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(rego_o_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(180[13:83])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(rego_o_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(183[13:83])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(rego_o_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(186[13:83])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(rego_o_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(189[13:83])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(rego_o_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(192[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(rego_o_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(195[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(rego_o_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[12])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(198[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(rego_o_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[13])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(201[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(multiplier_12_2_m_0_pp_0_0), .SP(ClkEn), .CK(Clock), 
            .CD(Aclr), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(204[13:80])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(p_L1_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(207[13:80])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(p_L1_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(210[13:80])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(p_L1_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(213[13:80])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(p_L1_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(216[13:79])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(p_L1_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(219[13:79])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(p_L1_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(222[13:79])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(p_L1_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(225[13:79])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(p_L1_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(228[13:79])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(p_L1_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(231[13:79])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(p_L1_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(234[13:81])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(p_L1_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(237[13:81])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(p_L1_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(240[13:81])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(p_L1_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), .Q(rego_o_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(243[13:81])
    defparam FF_0.GSR = "ENABLED";
    CCU2C multiplier_12_2_m_0_cin_lr_add (.A0(scuba_vhi), .B0(scuba_vhi), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(multiplier_12_2_m_0_cin_lr)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(250[11] 252[97])
    defparam multiplier_12_2_m_0_cin_lr_add.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_cin_lr_add.INJECT1_1 = "NO";
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C multiplier_12_2_m_0_Cadd_0_6 (.A0(scuba_vhi), .B0(scuba_vlo), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(mfco), .S0(p_L1_13)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(260[11] 263[24])
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_0 (.A0(multiplier_12_2_m_0_mult_0_0_n0), 
          .B0(scuba_vhi), .C0(regb_b_1), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_0_n1), 
          .B1(scuba_vhi), .C1(regb_b_2), .D1(rega_a_0), .CIN(multiplier_12_2_m_0_cin_lr), 
          .COUT(mco), .S0(p_L1_1), .S1(p_L1_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(269[11] 273[20])
    defparam multiplier_12_2_m_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_1 (.A0(multiplier_12_2_m_0_mult_0_1_n0), 
          .B0(scuba_vhi), .C0(regb_b_3), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_1_n1), 
          .B1(scuba_vhi), .C1(regb_b_4), .D1(rega_a_0), .CIN(mco), .COUT(mco_1), 
          .S0(p_L1_3), .S1(p_L1_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(279[11] 283[22])
    defparam multiplier_12_2_m_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_2 (.A0(multiplier_12_2_m_0_mult_0_2_n0), 
          .B0(scuba_vhi), .C0(regb_b_5), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_2_n1), 
          .B1(scuba_vhi), .C1(regb_b_6), .D1(rega_a_0), .CIN(mco_1), 
          .COUT(mco_2), .S0(p_L1_5), .S1(p_L1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(289[11] 293[22])
    defparam multiplier_12_2_m_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_3 (.A0(multiplier_12_2_m_0_mult_0_3_n0), 
          .B0(scuba_vhi), .C0(regb_b_7), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_3_n1), 
          .B1(scuba_vhi), .C1(regb_b_8), .D1(rega_a_0), .CIN(mco_2), 
          .COUT(mco_3), .S0(p_L1_7), .S1(p_L1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(299[11] 303[22])
    defparam multiplier_12_2_m_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C multiplier_12_2_m_0_mult_0_4 (.A0(multiplier_12_2_m_0_mult_0_4_n0), 
          .B0(scuba_vhi), .C0(regb_b_9), .D0(rega_a_0), .A1(multiplier_12_2_m_0_mult_0_4_n1), 
          .B1(scuba_vhi), .C1(regb_b_10), .D1(rega_a_0), .CIN(mco_3), 
          .COUT(mco_4), .S0(p_L1_9), .S1(p_L1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(309[11] 313[22])
    defparam multiplier_12_2_m_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    CCU2C multiplier_12_2_m_0_mult_0_5 (.A0(multiplier_12_2_m_0_mult_0_5_n0), 
          .B0(scuba_vhi), .C0(regb_b_11), .D0(rega_a_0), .A1(regb_b_11), 
          .B1(rega_a_1), .C1(multiplier_12_2_m_0_mult_0_5_n3), .D1(scuba_vhi), 
          .CIN(mco_4), .COUT(mfco), .S0(p_L1_11), .S1(p_L1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(321[11] 324[55])
    defparam multiplier_12_2_m_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_0 = "NO";
    defparam multiplier_12_2_m_0_mult_0_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t12 (.A(regb_b_0), .B(rega_a_0), .Z(multiplier_12_2_m_0_pp_0_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/multiplier/multiplier_12_2_m/multiplier_12_2_m.v(94[10:79])
    ND2 ND2_t11 (.A(regb_b_1), .B(rega_a_1), .Z(multiplier_12_2_m_0_mult_0_0_n1)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

