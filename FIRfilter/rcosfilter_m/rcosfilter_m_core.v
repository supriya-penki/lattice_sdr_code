
`define DEVICE_ECP4U

`timescale 1ns/100ps

module rcosfilter_m_core (
               rstn,
               clk,
               inpvalid,
            
               din,
            

               outvalid,
               rfi,
               dout
        );

   input                    rstn ;
   input                    clk ;
   input                    inpvalid ;
   input [4-1:0]          din ;

   output                   rfi ;
   output                   outvalid ;

   output[26-1:0]          dout ;

fir_core #(.FIRNAME        ("rcosfilter_m"),
           .FIRTYPE        ("Singlerate"),
           .DINPOINTS      (0),
           .CTYPE          ("Signed"),
           .CWIDTH         (16),
           .CPOINTS        (0),
           .DOUTWIDTH      (26),
           .DOUTPOINTS     (0),
           .RNDPAT         ("0x00000000000000"),
           .MASKPAT        ("0x00000000000000"),
           .MCPAT          ("0x00000000000000"),
           .MASK01         ("0x00000000000000"),
           .IFACTOR        (1),
           .DFACTOR        (1),
           .DMEMTYPE       ("EBR"),
           .CMEMTYPE       ("EBR"),
           .OMEMTYPE       ("EBR"),
           .REORDER        (0),
           .COEFFSETS      (1),
           .NEGATIVESYM    (0),
           .LSB_METHOD     ("Truncation"),
           .MSB_METHOD     ("Saturation"),
           .DINTYPE        ("Signed"),
           .DINWIDTH       (4),
           .NUM_TAP        (41),
           .NUM_M          (41),
           .MULT_FACTOR    (1), 
           .LINE_LENGTH    (10), 
           .NUM_CHAN       (1),
           .IMEMTYPE       ("EBR"),
           .VAR_INTERP     (0),
           .VAR_DECIM      (0),
           .VAR_COEFF      (0),
           .TOTAL_COEFF    (41),
           .CSTRUCTURE     ("Non-symmetric"),
           .HALFBAND       (0),
           .OPTIMIZE       ("Area"),
           .DEVICE         ("ECP4U"),
           .PART           ("Other"),
           .STARTLSB       (0)
           )
u1_core (
           .rstn(rstn),
           .ce(1'b1),
           .sr(1'b0),
           .clk(clk),
           .ibstart(1'b0),
           .inpvalid(inpvalid),
           .din(din),
           //#ifdef ORCAPP_VARINTERP
        	 //  .ifactor(ifactor), 
        	 //  .factorset(factorset),
        	 //#endif
        	 //#ifdef ORCAPP_VARDECIM
        	 //  .dfactor(dfactor), 
        		// .factorset(factorset), 
        	 //#endif
        	 
        	 
        	   .ifactor(),  
        	   .dfactor(), 
              .factorset(1'b0),
        
           .coeffset(1'b0),
           .coeffwe(1'b0),
           .coeffin(),
           
           .rfi(rfi),
           .obstart(),
           .outvalid(outvalid),
        
           .dout(dout)
    );

endmodule
