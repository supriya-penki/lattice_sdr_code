`include "bleDefines.v"
`include "radioDefines.v"

module top_module (
	//clk_in,
	top_clk,
	top_rst,
	serial_iq,
	serial_clk,
	LED,
	LED1,
	LED2,
	LED3,
	LED4,
	LED5,
	LED6,
	LED7
);
//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input	top_clk;
input	top_rst;

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output reg 		LED;
output reg 		LED1;
output reg 		LED2;
output reg 		LED3;
output reg 		LED4;
output reg 		LED5;
output reg 		LED6;
output reg 		LED7;

output			serial_iq /* synthesis IO_TYPES="LVDS*/;
output			serial_clk /* synthesis IO_TYPES="LVDS*/;

// Nets
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;

wire			pll_clko;
wire			pll_lock;


wire			clockDivider_clkLock;
wire			clockDivider_clk_4M;

wire			counter_0_countDone;


wire				fskModule_symVal;
wire [`SinSize-1:0]	fskModule_I;
wire [`SinSize-1:0]	fskModule_Q;
wire				fskModule_symDone;
wire				fskModule_start;

wire [`ILength-1:0] IQSerializer_I;
wire [`QLength-1:0]	IQSerializer_Q;
wire 				IQSerializer_start;

wire pll_clko_1;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------

assign IQSerializer_I = {fskModule_I, 1'b0};
assign IQSerializer_Q = {fskModule_Q, 1'b0};




//assign IQSerializer_I = {13'd4095, 1'b0};
//assign IQSerializer_Q = {13'd4095, 1'b0};


//assign IQSerializer_I = {13'b1010101010101, 1'b0};
//assign IQSerializer_Q = {13'b1010101010101, 1'b0};

//-------------------------------------------------------------------
// State
//-------------------------------------------------------------------
always@(*)
	begin
	LED7 <= pll_lock;
	LED4 <= top_rst;
	end
	
	
	always@(*)begin
		//LED<=1'b1;
		LED1<=1'b1;
		LED2<=1'b1;
		LED3<=1'b1;
		//LED4<=1'b1;
		LED5<=1'b1;
		LED6<=1'b1;
		//LED7<=1'b1;
	end
	
reg [25:0] cnt1;
always@(posedge pll_clko)begin
	cnt1 <= cnt1 +1'b1;
	LED <= cnt1[25];
end



//-------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//need to use 32 mhz ckock definit



pll_24m my_instance_1 (.CLKI( top_clk), .CLKOP(pll_clko_1 ));
pll_24_64m my_instance_2 (.CLKI(pll_clko_1 ), .RST(~top_rst ), .CLKOP( pll_clko), .LOCK(pll_lock ));


clockDivider clockDivider_0(
	.clk      (pll_clko),
	.pll_lock (pll_lock),
	.clkOut   (clockDivider_clk_4M),
	.clkLock  (clockDivider_clkLock) 
);

packetCounter counter_0(
	.clk       (clockDivider_clk_4M),
	.clkLock   (clockDivider_clkLock),
	// Outputs
	.countDone (counter_0_countDone) 
);

packetGenerator packetGen_1(
	.rst(counter_0_countDone),
	.clk(clockDivider_clk_4M),
	.symDone(fskModule_symDone),
	.start(fskModule_start),
	.symVal(fskModule_symVal)
);

FSKModulator fskModule_1(
	.clk(clockDivider_clk_4M),
	.rst(counter_0_countDone),
	.enable(fskModule_start),
	.symVal(fskModule_symVal),
	.FSK_I(fskModule_I),
	.FSK_Q(fskModule_Q),
	.symDone(fskModule_symDone),
	.start(IQSerializer_start)
);


IQSerializer IQSerializer_1(
	.clk(pll_clko),
	.start(IQSerializer_start),
	.I(IQSerializer_I),
	.Q(IQSerializer_Q),
	.serial_N(),
	.serial(serial_iq),
	.serial_clk(serial_clk)
);

endmodule