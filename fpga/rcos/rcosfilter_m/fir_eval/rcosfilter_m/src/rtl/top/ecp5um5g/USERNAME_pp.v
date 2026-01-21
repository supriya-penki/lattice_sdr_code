#include <orcapp_head>

`define ORCAPP_DEVICETYPE

`timescale 1ns/100ps

module ORCAPP_USERNAME (
               rstn,
            #ifdef ORCAPP_PORTCE
               ce,
            #endif
            #ifdef ORCAPP_PORTSR
               sr,
            #endif
               clk,
            #ifdef ORCAPP_MULTICHANNEL
               ibstart,
            #endif
               inpvalid,
            
            #ifdef ORCAPP_HIGHSPEED
               iin,
               qin,
            #else
               din,
               #ifdef ORCAPP_VARINTERP
                  ifactor,
                  factorset,
               #endif
               #ifdef ORCAPP_VARDECIM
                  dfactor,
                  factorset,
               #endif
            #endif
            
            #ifdef ORCAPP_VARCOEFF
               coeffset,
               coeffwe,
               coeffin,
            #endif

            #ifdef ORCAPP_MULTICHANNEL
               obstart,
            #endif
               outvalid,
               rfi,
            #ifdef ORCAPP_HIGHSPEED
               iout,
               qout
            #else
               dout
            #endif
        );

   input                    rstn ;
#ifdef ORCAPP_PORTCE
   input                    ce ;
#endif
#ifdef ORCAPP_PORTSR
   input                    sr;
#endif
   input                    clk ;
#ifdef ORCAPP_MULTICHANNEL
   input                    ibstart ;
#endif
   input                    inpvalid ;
#ifdef ORCAPP_HIGHSPEED
   input [ORCAPP_INWIDTH-1:0]          iin ;
   input [ORCAPP_INWIDTH-1:0]          qin ;
#else
   input [ORCAPP_INWIDTH-1:0]          din ;
	#ifdef ORCAPP_VARINTERP
	   input [ORCAPP_IFACTORWIDTH-1:0]    ifactor ;
	   input                    factorset ;
	#endif
	#ifdef ORCAPP_VARDECIM
	   input [ORCAPP_DFACTORWIDTH-1:0]    dfactor ;
	   input                    factorset ;
	#endif
#endif
#ifdef ORCAPP_VARCOEFF
   input                    coeffset ;
   input                    coeffwe ;
   input [ORCAPP_CINWIDTH-1:0]        coeffin ;
#endif

   output                   rfi ;
#ifdef ORCAPP_MULTICHANNEL
   output                   obstart ;
#endif
   output                   outvalid ;

#ifdef ORCAPP_HIGHSPEED
   output[ORCAPP_OWIDTH-1:0]          iout ;
   output[ORCAPP_OWIDTH-1:0]          qout ;
#else
   output[ORCAPP_OWIDTH-1:0]          dout ;
#endif

fir_core #(.FIRNAME        (ORCAPP_FIRNAME),
           .FIRTYPE        (ORCAPP_FIRTYPE),
           .DINPOINTS      (ORCAPP_DINPOINTS),
           .CTYPE          (ORCAPP_CTYPE),
           .CWIDTH         (ORCAPP_CWIDTH),
           .CPOINTS        (ORCAPP_CPOINTS),
           .DOUTWIDTH      (ORCAPP_DOUTWIDTH),
           .DOUTPOINTS     (ORCAPP_DOUTPOINTS),
           #ifdef ORCAPP_ECP3_CAS
           .RNDPAT         (ORCAPP_RNDPAT),
           .MASKPAT        (ORCAPP_MASKPAT),
           .MCPAT          (ORCAPP_MCPAT),
           .MASK01         (ORCAPP_MASK01),
           #endif
           .IFACTOR        (ORCAPP_IFACTOR),
           .DFACTOR        (ORCAPP_DFACTOR),
           .DMEMTYPE       (ORCAPP_DMEMTYPE),
           .CMEMTYPE       (ORCAPP_CMEMTYPE),
           .OMEMTYPE       (ORCAPP_OMEMTYPE),
           .REORDER        (ORCAPP_REORDER),
           .COEFFSETS      (ORCAPP_COEFFSETS),
           .NEGATIVESYM    (ORCAPP_NEGATIVESYM),
           .LSB_METHOD     (ORCAPP_LSB_METHOD),
           .MSB_METHOD     (ORCAPP_MSB_METHOD),
           #ifdef ORCAPP_HIGHSPEED
           .DTYPE        (ORCAPP_DINTYPE),
           .DWIDTH         (ORCAPP_DINWIDTH),
           .NUMTAP         (ORCAPP_NUM_TAP),
           .TDMFACTOR      (ORCAPP_MULT_FACTOR), 
           .LINELENGTH     (ORCAPP_LINE_LENGTH), 
           .NUMCHAN        (ORCAPP_NUM_CHAN),
           .VARCOEFF       (ORCAPP_VAR_COEFF),
           .SHIGHSPEED     (ORCAPP_SHIGHSPEED),
           .DHIGHSPEED     (ORCAPP_DHIGHSPEED),
           .CSYMMETRY      (ORCAPP_CSTRUCTURE),
           .DEVICE         (ORCAPP_DEVICE)
           #else
           .DINTYPE        (ORCAPP_DINTYPE),
           .DINWIDTH       (ORCAPP_DINWIDTH),
           .NUM_TAP        (ORCAPP_NUM_TAP),
           .NUM_M          (ORCAPP_NUM_M),
           #ifdef ORCAPP_ECP3_CAS 
           .MULT_FACTOR    (ORCAPP_MULT_FACTOR), 
           .LINE_LENGTH    (ORCAPP_LINE_LENGTH), 
           #endif
           .NUM_CHAN       (ORCAPP_NUM_CHAN),
           .IMEMTYPE       (ORCAPP_IMEMTYPE),
           .VAR_INTERP     (ORCAPP_VAR_INTERP),
           .VAR_DECIM      (ORCAPP_VAR_DECIM),
           .VAR_COEFF      (ORCAPP_VAR_COEFF),
           .TOTAL_COEFF    (ORCAPP_TOTAL_COEFF),
           .CSTRUCTURE     (ORCAPP_CSTRUCTURE),
           .HALFBAND       (ORCAPP_HALFBAND),
           .OPTIMIZE       (ORCAPP_OPTIMIZE),
           .DEVICE         (ORCAPP_DEVICE),
           .PART           (ORCAPP_PART),
           .STARTLSB       (ORCAPP_STARTLSB)
           #endif
           )
u1_core (
           .rstn(rstn),
        #ifdef ORCAPP_PORTCE
           .ce(ce),
        #else
           .ce(1'b1),
        #endif
        #ifdef ORCAPP_PORTSR
           .sr(sr),
        #else
           .sr(1'b0),
        #endif
           .clk(clk),
        #ifdef ORCAPP_MULTICHANNEL
           .ibstart(ibstart),
        #else
           .ibstart(1'b0),
        #endif
           .inpvalid(inpvalid),
        #ifdef ORCAPP_HIGHSPEED
           .iin(iin),
           .qin(qin),
        #else
           .din(din),
           //#ifdef ORCAPP_VARINTERP
        	 //  .ifactor(ifactor), 
        	 //  .factorset(factorset),
        	 //#endif
        	 //#ifdef ORCAPP_VARDECIM
        	 //  .dfactor(dfactor), 
        		// .factorset(factorset), 
        	 //#endif
        	 
        	 
           #ifdef ORCAPP_VARINTERP
        	   .ifactor(ifactor),
        	 #else
        	   .ifactor(),  
        	 #endif
        	 #ifdef ORCAPP_VARDECIM
        	   .dfactor(dfactor), 
        	 #else
        	   .dfactor(), 
        	 #endif
        	 #ifdef ORCAPP_VARINTERP
              .factorset(factorset),
           #else
           #ifdef ORCAPP_VARDECIM
              .factorset(factorset),
           #else
              .factorset(1'b0),
           #endif
         #endif
        #endif
        
        #ifdef ORCAPP_VARCOEFF
           .coeffset(coeffset),
           .coeffwe(coeffwe),
           .coeffin(coeffin),
        #else
           .coeffset(1'b0),
           .coeffwe(1'b0),
           .coeffin(),
        #endif
           
           .rfi(rfi),
        #ifdef ORCAPP_MULTICHANNEL
           .obstart(obstart),
        #else
           .obstart(),
        #endif
           .outvalid(outvalid),
        
        #ifdef ORCAPP_HIGHSPEED
           .iout(iout),
           .qout(qout)
        #else
           .dout(dout)
        #endif
    );

endmodule
