module rcosfilter_m (
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

endmodule
