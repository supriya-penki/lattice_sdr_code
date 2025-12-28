`include "bleDefines.v"
`include "radioDefines.v"


`define	VCC	1'b1

module top_module (
input		top_clk,
input       rxd09,
//input		top_rst_n,

output			serial_iq, /* synthesis IO_TYPES="LVDS*/
output			serial_clk, /* synthesis IO_TYPES="LVDS*/

  output  reg   LED,
  output  reg   LED1,
  output  reg   LED2,
  output  reg   LED3,
  output  reg   LED4,
  output  reg   LED5,
  output  reg   LED6,
  output  reg   LED7

//input			sim_clk,
//input			sim_lock
);

/*reg [25:0] cnt1;
always@(posedge top_clk)begin
	cnt1 <= cnt1 +1'b1;
	LED4 <= cnt1[25];
end*/

/*reg [25:0] cnt;
always@(posedge serial_iq)begin
	cnt <= cnt +1'b1;
	LED <= cnt[25];
end */



reg [21:0] cnt2;
always@(posedge clkDivider_clko)begin
	cnt2 <= cnt2 +1'b1;
	LED <= cnt2[21];
end


/*always@(*)begin
	LED1 <= IQSerializer_start;
	end*/


//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
//parameter [0:0] VCC = 1'b1;

//wire			top_clk_buff;
wire			pll_clki;
wire			pll_clko;
wire			pll_lock;

wire			clkDivider_lock;
wire			clkDivider_clko;

wire				fskModule_symVal;
wire [`SinSize-1:0]	fskModule_I;
wire [`SinSize-1:0]	fskModule_Q;
wire				fskModule_symDone;
wire				fskModule_start;

wire [`ILength-1:0] IQSerializer_I;
wire [`QLength-1:0]	IQSerializer_Q;
wire 				IQSerializer_start;


//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
//assign	top_rst_n = clockDivider_clkLock;
assign	osc_en = 1'b1;
assign 	pll_clki = top_clk;

//assign IQSerializer_I = {fskModule_I, 1'b0};
//assign IQSerializer_Q = {fskModule_Q, 1'b0};


//--------------------------------------------------------------------
// State
//--------------------------------------------------------------------
//LED
/*always @(*) begin
	if (clkDivider_lock == VSS) begin
		LED = 1'b0;
	end else begin
		LED = 1'b1;
	end
end*/

always@(*) begin
	 LED1<= 1'b1;
	 LED2 <= 1'b1;
	 LED3 <=1'b1;
	 LED4 <=1'b1;
	 LED5 <=1'b1;
	 LED6 <=1'b1; 
     LED7 <=1'b1;
end


//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
/*pll_64M my_pll_instance(
	.SEL	(1'b1),
	.CLKI	(1'b0), 
	.CLKI2	(pll_clki),
	.RST	(~top_rst_n),
	.CLKOP	(pll_clko),
	.LOCK	(pll_lock)
);*/

clockDivider clockDivider_0(
	.clk      (top_clk),
	.pll_lock (1'b1),
	.clkOut   (clkDivider_clko),
	.clkLock  (clkDivider_lock) 
);

/* ######################################################
Use these two for fix pre-loaded packet.
###################################################### */
packetCounter counter_0(
	.clk       (clkDivider_clko),
	.clkLock   (clkDivider_lock),
	.countDone (counter_0_countDone) 
);

packetGenerator packetGen_0(
	.rst_n(counter_0_countDone),
	.clk(clkDivider_clko),
	.symDone(fskModule_symDone),
	.start(fskModule_start),
	.symVal(fskModule_symVal)
);



FSKModulator fskModule_0(
	.clk(clkDivider_clko),
	.rst_n(clkDivider_lock),
	.enable(fskModule_start),
	.symVal(fskModule_symVal),
	.FSK_I(fskModule_I),
	.FSK_Q(fskModule_Q),
	.symDone(fskModule_symDone),
	.start(IQSerializer_start)
);

assign IQSerializer_I = 14'b00000000000000;
assign IQSerializer_Q = 14'b11111111111111;


IQSerializer IQSerializer_0(
	.clk(top_clk),
	.start(IQSerializer_start),
	.I(IQSerializer_I),
	.Q(IQSerializer_Q),
	.serial_N(serial_iq),
	.serial(),
	.serial_clk(serial_clk)
);


endmodule