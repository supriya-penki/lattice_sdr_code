/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module rcos
//
module rcos (rcosfilter_m_din, rcosfilter_m_dout, rcosfilter_m_clk, rcosfilter_m_inpvalid, 
            rcosfilter_m_outvalid, rcosfilter_m_rfi, rcosfilter_m_rstn) /* synthesis sbp_module=true */ ;
    input [3:0]rcosfilter_m_din;
    output [13:0]rcosfilter_m_dout;
    input rcosfilter_m_clk;
    input rcosfilter_m_inpvalid;
    output rcosfilter_m_outvalid;
    output rcosfilter_m_rfi;
    input rcosfilter_m_rstn;
    
    
    rcosfilter_m rcosfilter_m_inst (.din({rcosfilter_m_din}), .dout({rcosfilter_m_dout}), 
            .clk(rcosfilter_m_clk), .inpvalid(rcosfilter_m_inpvalid), .outvalid(rcosfilter_m_outvalid), 
            .rfi(rcosfilter_m_rfi), .rstn(rcosfilter_m_rstn));
    
endmodule

