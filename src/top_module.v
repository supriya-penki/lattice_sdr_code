/////////////////////// MySDR Project ////////////////////////`timescale 1ns / 1ns

`include "defines.v"


module top_level(
  input clk,
  //input rst, // i can map this pin to a certain i/o pin in the spreadsheet view and connect the pin on the board
  //input start,
  
  //spi
 /* input			top_spi_mosi,
  output reg	top_spi_miso,
  input			top_spi_sclk,
  input			top_spi_cs, */
  
  //clock output??
  //output		osc_en,
  output		serial_clk, /* synthesis IO_TYPES="LVDS*/
  output  reg   LED,
  output  serial_iq /* synthesis IO_TYPES="LVDS*/
  );
  
  
  wire rst;
  assign rst = 1'b1;
////////////////////////////////////////  
  /* tiny SDR stuff */
  //assign osc_en = 1'b1;
  assign pll_clki = clk;
  reg start;
  
  always@ (posedge clk)
	  begin
		  if(rst ==1'b0)
			  begin
			  start <= 1'b0;
			  end
		  else 
			  begin
				  start <= 1'b1;
			  end
		end
  
  
  //--------------------------------------------------------------------
// State
//--------------------------------------------------------------------

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
	
	
	
	
	// wires
	wire [3:0] parallel_data;
	wire       serial_in;
	wire       data_flag;
	wire [`SinSize-1:0]  sin, cos;
	
	wire [`IQ_length-1:0] IQSerializer_I;
    wire [`IQ_length-1:0]	IQSerializer_Q;
   
    wire [`SinSize-1:0]	IQ_modI;
    wire [`SinSize-1:0]	IQ_modQ;
	
	integer  mixed_out;
	wire			clkDivider_lock;
	wire			clkDivider_clko;



   //LED
	always @(*) begin
		if (clkDivider_lock == 1'b0) begin
			LED = 1'b0;
		end else begin
			LED = 1'b1;
		end
	end


	
	//////////// constant assignments /////////////////
	assign IQSerializer_I = {IQ_modI, 1'b0};
	assign IQSerializer_Q = {IQ_modQ, 1'b0};

	// DUT
	data_generator dat_gen(
	   .clk(clkDivider_clko),
	   .rst(rst),
	   .enable(start),
	   .serial_in(serial_in),
	   .data_flag(data_flag)
	   );
	serial_2_parallel dut (
		.clk(clkDivider_clko), 
		.rst(rst), 
		.start(start), 
		.serial_in(serial_in),
		.data_flag(data_flag),
		.parallel_data(parallel_data)
	);
	local_oscillator lo(
	   .clk(clkDivider_clko),
	   .rst(rst),
	   .start(start),
	   .sin(sin),
	   .cos(cos)
	   );
	modulator md(
      .clk(clkDivider_clko),
      .rst(clkDivider_lock),
      .start(start),
      .parallel_data(parallel_data),
      .sin(sin),
      .cos(cos),
	  .I_out(IQ_modI),
	  .Q_out(IQ_modQ)
      //.mixed_output(mixed_output)
      );
	  
	  
	 clockDivider clockDivider_0(
	.clk      (pll_clko),
	.pll_lock (pll_lock),
	.clkOut   (clkDivider_clko),
	.clkLock  (clkDivider_lock) 
   );
	  
	  //// tiny sdr ////
	  IQSerializer IQSerializer_0(
	.clk(pll_clko),
	.start(IQSerializer_start),
	.I(IQSerializer_I),
	.Q(IQSerializer_Q),
	.serial_N(serial_iq),
	.serial_clk(serial_clk)
);
endmodule

