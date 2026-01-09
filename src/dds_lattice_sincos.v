module dds_lattice_sincos #(
    parameter integer PHASE_W = 24,   // accumulator width
    parameter integer THETA_W = 10,    // sincos table theta width (3..10)
    parameter integer AMP_W   = 8      // amplitude width (match your carry_* width)
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire [PHASE_W-1:0]     phase_inc,
    output wire signed [AMP_W-1:0] sin_out,
    output wire signed [AMP_W-1:0] cos_out,
	output wire [THETA_W-1:0]theta
);

    reg [PHASE_W-1:0] phase_acc;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            phase_acc <= {PHASE_W{1'b0}};
        else
            phase_acc <= phase_acc + phase_inc;
    end

    //wire [THETA_W-1:0] theta = phase_acc[PHASE_W-1 -: THETA_W];
	assign theta = phase_acc[PHASE_W-1 -: THETA_W];

    // Replace "sin_cos_table_inst" with the *actual module name*
    // produced by Lattice (from the .sbx/.v wrapper).

  sincos_m __ (.Clock( clk), .ClkEn( 1'b1), .Reset(~rst_n ), .Theta( theta), .Sine(sin_out ), 
    .Cosine( cos_out));

endmodule
