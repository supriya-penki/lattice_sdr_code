
`define DEVICE_ECP4U

`timescale 1ns/100ps

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

   output[14-1:0]          dout ;

rcosfilter_m_core u1_rcosfilter_m (
               .rstn(rstn),
               .clk(clk),
               .inpvalid(inpvalid),
           .din(din),
               
               .rfi(rfi),
               .outvalid(outvalid),
           .dout(dout)
    );

endmodule
