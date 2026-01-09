/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module creating_nco
//
module creating_nco (sincos_m_Cosine, sincos_m_Sine, sincos_m_Theta, sincos_m_ClkEn, 
            sincos_m_Clock, sincos_m_Reset) /* synthesis sbp_module=true */ ;
    output [7:0]sincos_m_Cosine;
    output [7:0]sincos_m_Sine;
    input [9:0]sincos_m_Theta;
    input sincos_m_ClkEn;
    input sincos_m_Clock;
    input sincos_m_Reset;
    
    
    sincos_m sincos_m_inst (.Cosine({sincos_m_Cosine}), .Sine({sincos_m_Sine}), 
            .Theta({sincos_m_Theta}), .ClkEn(sincos_m_ClkEn), .Clock(sincos_m_Clock), 
            .Reset(sincos_m_Reset));
    
endmodule

