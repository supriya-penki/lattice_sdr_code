`timescale 1ns/1ps

module QPSK_modulator(
    input  wire        ser_data,
    input  wire        clk,
    input  wire        enable,
    input  wire        rst_n,

    output wire signed [13:0] I_out,
    output wire signed [13:0] Q_out,
    output reg        start,
    output wire        symDone,
	output wire        [1:0]I,
	output wire       [1:0]Q,
	output  switch,
    output wire signed [11:0] carry_sin_s,
    output wire signed [11:0] carry_cos_s,
	output wire [9:0]theta
);

    // ------------------------------------------------------------
    // start pulse (1 clk when enable rises)
    // ------------------------------------------------------------
    reg enable_d;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)  begin
			enable_d <= 1'b0;
			start <= 1'b0;
			end
        else   begin
			enable_d <= enable;
					start<=1'b1;
				end
    end

    // ------------------------------------------------------------
    // IQ split (2-bit bipolar)
    // ------------------------------------------------------------
    //wire [1:0] I;
   // wire [1:0] Q;
	
    iq_div #(
        .BIT_SAMPLE(8'd4)     // NOTE: 4 per BIT => 8 per QPSK symbol
    ) iq_div_inst (
        .clk     (clk),
        .rst_n   (rst_n),
        .enable  (enable),
        .ser_i   (ser_data),
        .I       (I),
        .Q       (Q),
        .symDone (symDone),// we need it i this module as this modulae determines when we need the nxt bit from the packetgenerator
		.iq_switch(switch)
    );

    // ------------------------------------------------------------
    // FIR inputs: sign-extend 2-bit (-1/+1) into 4-bit signed
    // I=2'b01 => 4'b0001, I=2'b11 => 4'b1111
    // ------------------------------------------------------------
    wire signed [3:0] I_fir_in = {{2{I[1]}}, I};
    wire signed [3:0] Q_fir_in = {{2{Q[1]}}, Q};

    //wire signed [25:0] I_filtered;
    //wire signed [25:0] Q_filtered;
	
	rcos I_inst (.rcosfilter_m_din(I_fir_in), .rcosfilter_m_dout(I_out), .rcosfilter_m_clk(clk), 
     .rcosfilter_m_inpvalid(enable), .rcosfilter_m_outvalid(), .rcosfilter_m_rfi(), 
     .rcosfilter_m_rstn(rst_n));
	 
	 
	rcos Q_inst (.rcosfilter_m_din(Q_fir_in), .rcosfilter_m_dout(Q_out), .rcosfilter_m_clk(clk), 
     .rcosfilter_m_inpvalid(enable), .rcosfilter_m_outvalid(), .rcosfilter_m_rfi(), 
     .rcosfilter_m_rstn(rst_n));



    /*FIRfilter rcosfilter_I (
        .rcosfilter_m_clk      (clk),
        .rcosfilter_m_rstn     (rst_n),
        .rcosfilter_m_din      (I_fir_in),
        .rcosfilter_m_inpvalid (enable),   // was 1'b1; better gate by enable
        .rcosfilter_m_dout     (I_filtered),
        .rcosfilter_m_outvalid (),
        .rcosfilter_m_rfi      ()
    ); */

    /*FIRfilter rcosfilter_Q (
        .rcosfilter_m_clk      (clk),
        .rcosfilter_m_rstn     (rst_n),
        .rcosfilter_m_din      (Q_fir_in),
        .rcosfilter_m_inpvalid (enable),
        .rcosfilter_m_dout     (Q_filtered),
        .rcosfilter_m_outvalid (),
        .rcosfilter_m_rfi      ()
    );*/

    // ------------------------------------------------------------
    // DDS (signed 8-bit sin/cos)
    // ------------------------------------------------------------
    //wire signed [7:0] carry_sin_s;
    //wire signed [7:0] carry_cos_s;

    //dds_lattice_sincos #(
    //    .PHASE_W(24),
    //    .THETA_W(10),
    //    .AMP_W  (12)
    //) dds0 (
    //    .clk      (clk),
    //    .rst_n    (rst_n),
     //   .phase_inc(24'h0CCCCC),
     //   .sin_out  (carry_sin_s),
    //    .cos_out  (carry_cos_s),
	//	.theta (theta)
   // );

    // ------------------------------------------------------------
    // Scaling into your multiplier IP:
    // - You used DataA = I_filtered[25:16] (10-bit)
    // - You used DataB = carrier[4:0] (5-bit)  <-- BAD (LSBs)
    // Use carrier MSBs: [7:3] to keep sign + meaningful amplitude
    // ------------------------------------------------------------
   // wire signed [9:0] I_A = I_filtered[25:16];
    //wire signed [9:0] Q_A = Q_filtered[25:16];
	
	//wire signed [9:0] I_A = {{8{I[1]}}, I};  // sign-extend 2-bit to 10-bit
	//wire signed [9:0] Q_A = {{8{Q[1]}}, Q};


    //wire signed [11:0] COS_B = {{4{carry_cos_s[7]}},carry_cos_s};
   // wire signed [11:0] SIN_B = {{4{carry_sin_s[7]}},carry_sin_s};

    // IMPORTANT: QPSK passband is typically:  I*cos  +  Q*sin  (or I*cos - Q*sin depending convention)
    // Vivado ref used I*cos and Q*sin then ADD. Here you want separate outputs:


	//multiplier_12_2_m I_inst (.Clock(clk ), .ClkEn( enable), .Aclr( ~rst_n), .DataA( I), 
    //.DataB(carry_cos_s ), .Result( I_out));
	
	//multiplier_12_2_m Q_inst (.Clock(clk ), .ClkEn( enable), .Aclr( ~rst_n), .DataA( Q), 
    //.DataB(carry_sin_s ), .Result( Q_out));
	//assign I_out ={{12{I[1]}}, I}; //14 bits = signextend(12) + 2 bits of I 
	//assign Q_out = {{12{Q[1]}}, Q};

endmodule
