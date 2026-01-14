/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module divided_pll
//
module divided_pll (pll_24m_CLKI, pll_24m_CLKOP) /* synthesis sbp_module=true */ ;
    input pll_24m_CLKI;
    output pll_24m_CLKOP;
    
    
    pll_24m pll_24m_inst (.CLKI(pll_24m_CLKI), .CLKOP(pll_24m_CLKOP));
    
endmodule

