/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module creating_nco
//
module creating_nco (SinCos_Module_Cosine, SinCos_Module_Sine, SinCos_Module_Theta, 
            sincos_m_Cosine, sincos_m_Sine, sincos_m_Theta, SinCos_Module_ClkEn, 
            SinCos_Module_Clock, SinCos_Module_Reset, sincos_m_ClkEn, 
            sincos_m_Clock, sincos_m_Reset) /* synthesis sbp_module=true */ ;
    output [11:0]SinCos_Module_Cosine;
    output [11:0]SinCos_Module_Sine;
    input [9:0]SinCos_Module_Theta;
    output [7:0]sincos_m_Cosine;
    output [7:0]sincos_m_Sine;
    input [9:0]sincos_m_Theta;
    input SinCos_Module_ClkEn;
    input SinCos_Module_Clock;
    input SinCos_Module_Reset;
    input sincos_m_ClkEn;
    input sincos_m_Clock;
    input sincos_m_Reset;
    
    
    SinCos_Module SinCos_Module_inst (.Cosine({SinCos_Module_Cosine}), .Sine({SinCos_Module_Sine}), 
            .Theta({SinCos_Module_Theta}), .ClkEn(SinCos_Module_ClkEn), 
            .Clock(SinCos_Module_Clock), .Reset(SinCos_Module_Reset));
    sincos_m sincos_m_inst (.Cosine({sincos_m_Cosine}), .Sine({sincos_m_Sine}), 
            .Theta({sincos_m_Theta}), .ClkEn(sincos_m_ClkEn), .Clock(sincos_m_Clock), 
            .Reset(sincos_m_Reset));
    
endmodule

