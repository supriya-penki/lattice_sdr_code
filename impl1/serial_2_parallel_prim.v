// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Dec 27 05:26:07 2025
//
// Verilog Description of module serial_2_parallel
//

module serial_2_parallel (clk, rst, start, serial_in, data_flag, parallel_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(3[8:25])
    input clk;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(4[9:12])
    input rst;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(5[9:12])
    input start;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(6[9:14])
    input serial_in;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(7[9:18])
    input data_flag;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(8[9:18])
    output [3:0]parallel_data;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(9[17:30])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(4[9:12])
    
    wire VCC_net, rst_c, start_c, serial_in_c, n15, parallel_data_c_3, 
        parallel_data_c_2, parallel_data_c_1, parallel_data_c_0;
    wire [3:0]shift_reg;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(18[13:22])
    wire [1:0]bit_cnt;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(19[13:20])
    wire [1:0]state;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(21[13:18])
    
    wire clk_c_enable_9, next_state_1__N_13_c_1, clk_c_enable_6, n262, 
        n492, n484, n488, n474, n477, n471, clk_c_enable_2, n523, 
        n1, n7, n527, n522, n526, n496, n525, n468, n521, 
        n520, n528, n519, GND_net, n499, n9;
    
    LUT4 i1_2_lut_rep_12 (.A(rst_c), .B(shift_reg[2]), .Z(n522)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i1_2_lut_rep_12.init = 16'h8888;
    VLO i400 (.Z(GND_net));
    OB parallel_data_pad_3 (.I(parallel_data_c_3), .O(parallel_data[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(9[17:30])
    FD1S3IX state__i1 (.D(n499), .CK(clk_c), .CD(n262), .Q(state[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam state__i1.GSR = "ENABLED";
    FD1P3AX shift_reg__i0 (.D(n471), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(shift_reg[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam shift_reg__i0.GSR = "ENABLED";
    FD1P3IX state__i0 (.D(n1), .SP(clk_c_enable_2), .CD(n523), .CK(clk_c), 
            .Q(state[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam state__i0.GSR = "ENABLED";
    FD1S3IX bit_cnt_88__i0 (.D(n15), .CK(clk_c), .CD(n523), .Q(bit_cnt[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(69[7:46])
    defparam bit_cnt_88__i0.GSR = "ENABLED";
    OB parallel_data_pad_2 (.I(parallel_data_c_2), .O(parallel_data[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(9[17:30])
    LUT4 i144_1_lut (.A(next_state_1__N_13_c_1), .Z(n262)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(8[9:18])
    defparam i144_1_lut.init = 16'h5555;
    OB parallel_data_pad_1 (.I(parallel_data_c_1), .O(parallel_data[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(9[17:30])
    OB parallel_data_pad_0 (.I(parallel_data_c_0), .O(parallel_data[0]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(9[17:30])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(4[9:12])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(5[9:12])
    IB start_pad (.I(start), .O(start_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(6[9:14])
    IB serial_in_pad (.I(serial_in), .O(serial_in_c));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(7[9:18])
    IB next_state_1__N_13_pad_1 (.I(data_flag), .O(next_state_1__N_13_c_1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(8[9:18])
    FD1P3AX data_reg__i2 (.D(n484), .SP(clk_c_enable_6), .CK(clk_c), .Q(parallel_data_c_1));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam data_reg__i2.GSR = "ENABLED";
    FD1P3AX data_reg__i3 (.D(n488), .SP(clk_c_enable_6), .CK(clk_c), .Q(parallel_data_c_2));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam data_reg__i3.GSR = "ENABLED";
    FD1P3AX data_reg__i1 (.D(n492), .SP(clk_c_enable_6), .CK(clk_c), .Q(parallel_data_c_0));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam data_reg__i1.GSR = "ENABLED";
    FD1P3AX data_reg__i4 (.D(n496), .SP(clk_c_enable_6), .CK(clk_c), .Q(parallel_data_c_3));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam data_reg__i4.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i5_3_lut_4_lut (.A(bit_cnt[1]), .B(state[0]), .C(n520), .D(n9), 
         .Z(n484)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i5_3_lut_4_lut.init = 16'h8000;
    FD1P3AX shift_reg__i1 (.D(n474), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(shift_reg[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam shift_reg__i1.GSR = "ENABLED";
    FD1P3AX shift_reg__i2 (.D(n468), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(shift_reg[2]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam shift_reg__i2.GSR = "ENABLED";
    FD1P3AX shift_reg__i3 (.D(n477), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(shift_reg[3]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam shift_reg__i3.GSR = "ENABLED";
    FD1S3IX bit_cnt_88__i1 (.D(n527), .CK(clk_c), .CD(n523), .Q(bit_cnt[1]));   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(69[7:46])
    defparam bit_cnt_88__i1.GSR = "ENABLED";
    LUT4 i5_3_lut_4_lut_adj_1 (.A(bit_cnt[1]), .B(state[0]), .C(n522), 
         .D(n9), .Z(n488)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i5_3_lut_4_lut_adj_1.init = 16'h8000;
    LUT4 i4_4_lut (.A(n7), .B(state[1]), .C(rst_c), .D(serial_in_c), 
         .Z(n471)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i2_2_lut (.A(next_state_1__N_13_c_1), .B(state[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i312_4_lut_else_4_lut (.A(bit_cnt[1]), .B(state[1]), .C(state[0]), 
         .D(start_c), .Z(n525)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(69[7:46])
    defparam i312_4_lut_else_4_lut.init = 16'ha8aa;
    LUT4 i1_4_lut_4_lut (.A(rst_c), .B(n9), .C(n528), .D(n519), .Z(clk_c_enable_6)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(5[9:12])
    defparam i1_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i1_2_lut_rep_11 (.A(rst_c), .B(shift_reg[0]), .Z(n521)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i1_2_lut_rep_11.init = 16'h8888;
    LUT4 i97_1_lut_rep_14 (.A(state[1]), .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i97_1_lut_rep_14.init = 16'h5555;
    LUT4 i304_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(start_c), 
         .D(bit_cnt[0]), .Z(n15)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam i304_3_lut_4_lut_4_lut.init = 16'h6788;
    LUT4 i4_3_lut_4_lut_4_lut (.A(state[1]), .B(n7), .C(shift_reg[2]), 
         .D(rst_c), .Z(n477)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i4_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i5_3_lut_4_lut_adj_2 (.A(bit_cnt[1]), .B(state[0]), .C(n521), 
         .D(n9), .Z(n492)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i5_3_lut_4_lut_adj_2.init = 16'h8000;
    LUT4 i1_2_lut_rep_10 (.A(rst_c), .B(shift_reg[1]), .Z(n520)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i1_2_lut_rep_10.init = 16'h8888;
    LUT4 i4_3_lut_4_lut_4_lut_adj_3 (.A(state[1]), .B(n7), .C(shift_reg[1]), 
         .D(rst_c), .Z(n468)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i4_3_lut_4_lut_4_lut_adj_3.init = 16'h4000;
    LUT4 i94_1_lut_rep_13 (.A(rst_c), .Z(n523)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(5[9:12])
    defparam i94_1_lut_rep_13.init = 16'h5555;
    LUT4 i2_3_lut (.A(state[1]), .B(rst_c), .C(state[0]), .Z(n499)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i4_3_lut_4_lut_4_lut_adj_4 (.A(state[1]), .B(n7), .C(shift_reg[0]), 
         .D(rst_c), .Z(n474)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i4_3_lut_4_lut_4_lut_adj_4.init = 16'h4000;
    LUT4 i1_2_lut (.A(state[0]), .B(start_c), .Z(n1)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3_2_lut (.A(bit_cnt[0]), .B(state[1]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_rep_9 (.A(bit_cnt[1]), .B(state[0]), .Z(n519)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i2_2_lut_rep_9.init = 16'h8888;
    LUT4 i1_3_lut_rep_15 (.A(state[0]), .B(state[1]), .C(start_c), .Z(n528)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_rep_15.init = 16'h1010;
    LUT4 i1_4_lut (.A(n7), .B(n528), .C(rst_c), .D(state[1]), .Z(clk_c_enable_9)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(5[9:12])
    defparam i1_4_lut.init = 16'hcfef;
    LUT4 i5_4_lut (.A(n9), .B(rst_c), .C(n519), .D(shift_reg[3]), .Z(n496)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(54[10] 71[6])
    defparam i5_4_lut.init = 16'h8000;
    PFUMX i398 (.BLUT(n525), .ALUT(n526), .C0(bit_cnt[0]), .Z(n527));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i312_4_lut_then_4_lut (.A(bit_cnt[1]), .B(state[1]), .C(state[0]), 
         .D(start_c), .Z(n526)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A !(B (C)))) */ ;   // c:/users/sna/documents/fpga_code/lattice_sdr_code/src/serial_2_parallel.v(69[7:46])
    defparam i312_4_lut_then_4_lut.init = 16'h686a;
    VHI i2 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

