`timescale 1ns/1ps
module dds_tb;

  reg clk = 1'b0;
  reg rst_n = 1'b0;
  reg top_rst = 1'b1;
  GSR GSR_INST (.GSR(top_rst));
PUR PUR_INST (.PUR(1'b1));

  wire signed [7:0] sin_out;
  wire signed [7:0] cos_out;
  wire [9:0]theta;

  dds_lattice_sincos #(
    .PHASE_W(24),
    .THETA_W(10),
    .AMP_W(8)
  ) dut (
    .clk(clk),
    .rst_n(rst_n),
    .phase_inc(24'h0CCCCC),
    .sin_out(sin_out),
    .cos_out(cos_out),
	.theta(theta)
  );

  // 100 MHz clock for test (doesn't matter)
  always #5 clk = ~clk;

  initial begin
    // release reset
    #20 rst_n = 1'b1;

    // run a bit
    #500 $finish;
  end

endmodule
