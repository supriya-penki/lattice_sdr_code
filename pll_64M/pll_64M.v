/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module pll_64m
//
module pll_64m (pll_64_CLKI, pll_64_CLKOP, pll_64_LOCK, pll_64_RST, 
            pll_64_new_CLKI, pll_64_new_CLKOP, pll_64_new_LOCK, pll_64_new_RST, 
            pll_try_CLKI, pll_try_CLKOP) /* synthesis sbp_module=true */ ;
    input pll_64_CLKI;
    output pll_64_CLKOP;
    output pll_64_LOCK;
    input pll_64_RST;
    input pll_64_new_CLKI;
    output pll_64_new_CLKOP;
    output pll_64_new_LOCK;
    input pll_64_new_RST;
    input pll_try_CLKI;
    output pll_try_CLKOP;
    
    
    pll_64 pll_64_inst (.CLKI(pll_64_CLKI), .CLKOP(pll_64_CLKOP), .LOCK(pll_64_LOCK), 
           .RST(pll_64_RST));
    pll_64_new pll_64_new_inst (.CLKI(pll_64_new_CLKI), .CLKOP(pll_64_new_CLKOP), 
            .LOCK(pll_64_new_LOCK), .RST(pll_64_new_RST));
    pll_try pll_try_inst (.CLKI(pll_try_CLKI), .CLKOP(pll_try_CLKOP));
    
endmodule

