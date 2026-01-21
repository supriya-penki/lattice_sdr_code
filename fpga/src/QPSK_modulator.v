`timescale 1ns/1ps

module QPSK_modulator(
    input  wire        ser_data,
    input  wire        clk,
    input  wire        enable,
    input  wire        rst_n,

    output wire signed [13:0] I_out,
    output wire signed [13:0] Q_out,
    output reg        start,
    output wire        symDone
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
    wire [1:0] I;
    wire [1:0] Q;
	
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

	wire signed [1:0] I_s = I;
	wire signed [1:0] Q_s = Q;

	localparam integer SCALE = 12;

	assign I_out = $signed(I_s) <<< SCALE; // making i 14 bits signed value
	assign Q_out = $signed(Q_s) <<< SCALE;


endmodule
