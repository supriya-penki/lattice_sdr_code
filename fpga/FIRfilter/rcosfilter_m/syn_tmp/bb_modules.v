`timescale 100 ps/100 ps
module rcosfilter_m_core (
  rstn,
  clk,
  inpvalid,
  din,
  outvalid,
  rfi,
  dout
)
;
input rstn ;
input clk ;
input inpvalid ;
input [3:0] din ;
output outvalid ;
output rfi ;
output [25:0] dout ;
endmodule /* rcosfilter_m_core */

