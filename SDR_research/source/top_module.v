/////////////////////// MySDR Project ////////////////////////`timescale 1ns / 1ns
module top_level(
  input clk,
  input rst,
  input start,
  
  //spi
 /* input			top_spi_mosi,
  output reg	top_spi_miso,
  input			top_spi_sclk,
  input			top_spi_cs, */
  
  //clock output???
  output		osc_en,
  output		serial_clk, /* synthesis IO_TYPES="LVDS*/
  output reg    LED,
  
  
  output  [19:0]  mixed_output /* IQ signal output */
  );
  
////////////////////////////////////////  
  /* tiny SDR stuff */
  assign osc_en = 1'b1;
  assign 	pll_clki = clk;
  assign serial_clk = pll_clki;
  
 /* using this clock to drive the output */
 pll_64M my_pll_instance(
	.SEL	(1'b1),
	.CLKI	(1'b0), 
	.CLKI2	(pll_clki),
	.RST	(~top_rst_n),
	.CLKOP	(pll_clko),
	.LOCK	(pll_lock)
);

  /*	SPI	and SPI CTRL	*/
 
 //////////////////////////////////////
  

	// Outputs
	wire [3:0] parallel_data;
	wire       serial_in;
	wire       data_flag;
	wire [15:0]  sin, cos;
	integer  mixed_out;

	// DUT
	data_generator dat_gen(
	   .clk(pll_clko),
	   .rst(rst),
	   .enable(start),
	   .serial_in(serial_in),
	   .data_flag(data_flag)
	   );
	serial_2_parallel dut (
		.clk(pll_clko), 
		.rst(rst), 
		.start(start), 
		.serial_in(serial_in),
		.data_flag(data_flag),
		.parallel_data(parallel_data)
	);
	local_oscillator lo(
	   .clk(pll_clko),
	   .rst(rst),
	   .start(start),
	   .sin(sin),
	   .cos(cos)
	   );
	modulator md(
      .clk(pll_clko),
      .rst(rst),
      .start(start),
      .parallel_data(parallel_data),
      .sin(sin),
      .cos(cos),
      .mixed_output(mixed_output)
      );
endmodule

