//-----------------------------------------------------------------------------
//
// Title       : FSKModulator_tb
// Design      : ble_tx_sim
// Author      : Aldec, Inc
// Company     : Aldec, Inc
//
//-----------------------------------------------------------------------------
//
// File        : FSKModulator_tb.v
// Generated   : Mon Apr 15 18:14:18 2019
// From        : c:\work\tinysdr_fpga_ble_tx\ble_tx_sim\src\TestBench\FSKModulator_tb_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
module qpsk_tb;

wire top_rst = 1'b1;
	
GSR GSR_INST (.GSR(top_rst));
PUR PUR_INST (.PUR(1'b1));

parameter SYSCLK_PERIOD = 250000;

//Parameters declaration: 
/*defparam UUT.VSS = 1'b0;
parameter VSS = 1'b0;
defparam UUT.VCC = 1'b1;
parameter VCC = 1'b1;*/

//Internal signals declarations:
reg clk;
reg rst;
reg enb;
reg symVal;
wire signed [13:0]FSK_I;
wire signed [13:0]FSK_Q;
wire iq_start;

wire  fskDone;
integer fsk_file_I;
integer fsk_file_Q;


initial clk = 1'b0;
always #(SYSCLK_PERIOD / 2.0) clk =~clk;


reg clkLock ;
initial begin
	clkLock = 1'b0;
	#(20*SYSCLK_PERIOD);
	clkLock = 1'b1;
	end 
	
	
wire counter_0_countDone_test;
wire qpsk_symDone;
wire qpsk_start;
wire qpsk_ser_data;
	
packetCounter counter_0(
	.clk       (clk),
	.clkLock   (clkLock),
	// Outputs
	.countDone (counter_0_countDone_test) 
);

packetGenerator packetGen_1(
	.rst(counter_0_countDone_test),
	.clk(clk),
	.symDone(qpsk_symDone),
	.start(qpsk_start),
	.symVal(qpsk_ser_data)
);


wire [1:0]I_out;
wire [1:0]Q_out;
wire iq_switch;
wire [25:0]I_filt;
wire [25:0]Q_filt;
wire [7:0] carry_sin_s;
wire [7:0] carry_cos_s;
wire [9:0] theta;

// Unit Under Test port map
QPSK_modulator UUT (
		.clk(clk),
		.rst_n(counter_0_countDone_test),
		.enable(qpsk_start),
		.ser_data(qpsk_ser_data),
		.I_out(FSK_I),
		.Q_out(FSK_Q),
		.symDone(qpsk_symDone),
		.start(),
		.I(I_out),
		.Q(Q_out),
		.switch(iq_switch),
	.carry_sin_s(carry_sin_s),
	.carry_cos_s(carry_cos_s),
	.theta(theta)
);


	/*FSKModulator UUT (
		.clk(clk),
		.rst_n(counter_0_countDone_test),
		.enable(qpsk_start),
		.symVal(qpsk_ser_data),
		.FSK_I(FSK_I),
		.FSK_Q(FSK_Q),
		.symDone(qpsk_symDone),
		.start()

); */



initial	begin
	$monitor($realtime,,"ps %h %h %h %h %h ",clk,rst,symVal,FSK_I,FSK_Q);
	
	fsk_file_I = $fopen("fsk_file_I.txt", "w");
	fsk_file_Q = $fopen("fsk_file_Q.txt", "w");
	
	clk = 1'b0;
	rst = 1'b0;
	enb = 1'b0;
	symVal = 1'd1;
	#(10 * SYSCLK_PERIOD)
	rst = 1'b1;
	enb = 1'b1;
end

integer ii;
integer loop;
initial begin
	wait(rst);
	loop = 1;
	ii = 0;
	while(loop) begin
		@(posedge clk) begin
			$fwrite(fsk_file_I, "%d\n", $signed(carry_sin_s));
        	$fwrite(fsk_file_Q, "%d\n", $signed(carry_cos_s));
			ii = ii + 1;
			if (ii==1023)
				loop = 0;
		end	
	end
	$finish;
end

endmodule