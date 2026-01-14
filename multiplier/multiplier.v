/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module multiplier
//
module multiplier (mult_m_DataA, mult_m_DataB, mult_m_Result, multiplier_12_2_m_DataA, 
            multiplier_12_2_m_DataB, multiplier_12_2_m_Result, mult_m_Aclr, 
            mult_m_ClkEn, mult_m_Clock, multiplier_12_2_m_Aclr, multiplier_12_2_m_ClkEn, 
            multiplier_12_2_m_Clock) /* synthesis sbp_module=true */ ;
    input [9:0]mult_m_DataA;
    input [3:0]mult_m_DataB;
    output [13:0]mult_m_Result;
    input [1:0]multiplier_12_2_m_DataA;
    input [11:0]multiplier_12_2_m_DataB;
    output [13:0]multiplier_12_2_m_Result;
    input mult_m_Aclr;
    input mult_m_ClkEn;
    input mult_m_Clock;
    input multiplier_12_2_m_Aclr;
    input multiplier_12_2_m_ClkEn;
    input multiplier_12_2_m_Clock;
    
    
    mult_m mult_m_inst (.DataA({mult_m_DataA}), .DataB({mult_m_DataB}), 
           .Result({mult_m_Result}), .Aclr(mult_m_Aclr), .ClkEn(mult_m_ClkEn), 
           .Clock(mult_m_Clock));
    multiplier_12_2_m multiplier_12_2_m_inst (.DataA({multiplier_12_2_m_DataA}), 
            .DataB({multiplier_12_2_m_DataB}), .Result({multiplier_12_2_m_Result}), 
            .Aclr(multiplier_12_2_m_Aclr), .ClkEn(multiplier_12_2_m_ClkEn), 
            .Clock(multiplier_12_2_m_Clock));
    
endmodule

