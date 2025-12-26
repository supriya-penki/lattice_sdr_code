// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Aug 06 23:07:22 2025
//
// Verilog Description of module top
//

module top (leds, pushbutton) /* synthesis syn_module_defined=1 */ ;   // c:/lscc/lattice_projects/top.v(1[8:11])
    output [7:0]leds;   // c:/lscc/lattice_projects/top.v(3[20:24])
    input pushbutton;   // c:/lscc/lattice_projects/top.v(4[13:23])
    
    
    wire leds_c_c, GND_net, VCC_net;
    
    OB leds_pad_0 (.I(leds_c_c), .O(leds[0]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    VLO i24 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    IB leds_c_pad (.I(pushbutton), .O(leds_c_c));   // c:/lscc/lattice_projects/top.v(4[13:23])
    OB leds_pad_1 (.I(leds_c_c), .O(leds[1]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_2 (.I(leds_c_c), .O(leds[2]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_3 (.I(leds_c_c), .O(leds[3]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_4 (.I(leds_c_c), .O(leds[4]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_5 (.I(leds_c_c), .O(leds[5]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_6 (.I(leds_c_c), .O(leds[6]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    OB leds_pad_7 (.I(leds_c_c), .O(leds[7]));   // c:/lscc/lattice_projects/top.v(3[20:24])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i25 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

