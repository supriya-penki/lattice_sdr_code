/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module divided_pll_2
//
module divided_pll_2 (pll_24_64m_CLKI, pll_24_64m_CLKOP, pll_24_64m_LOCK, 
            pll_24_64m_RST) /* synthesis sbp_module=true */ ;
    input pll_24_64m_CLKI;
    output pll_24_64m_CLKOP;
    output pll_24_64m_LOCK;
    input pll_24_64m_RST;
    
    
    pll_24_64m pll_24_64m_inst (.CLKI(pll_24_64m_CLKI), .CLKOP(pll_24_64m_CLKOP), 
            .LOCK(pll_24_64m_LOCK), .RST(pll_24_64m_RST));
    
endmodule

