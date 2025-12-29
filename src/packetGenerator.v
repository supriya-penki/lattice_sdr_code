`include "bleDefines.v"

module packetGenerator(
rst_n,
clk,
symDone,
start,
symVal
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input 	clk;
input	rst_n;
input 	symDone;

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output reg	symVal;
output reg	start;

//--------------------------------------------------------------------
// Net
//--------------------------------------------------------------------
parameter [0:0] VSS = 1'b0;
parameter [0:0] VCC = 1'b1;
//--------------------------------------------------------------------
// Assignments
//--------------------------------------------------------------------
reg [3:0]				current_state;
reg [3:0]				next_state;
reg [7:0]	symCounter;
parameter [`percision-1:0] maxSize = `percision'd255;
reg 		next_symVal;

//data
wire	data;

//state
parameter [3:0] state_init=4'd0, state_tx=4'd1, state_done=4'd2, state_wait=4'd3;

always @(posedge clk) begin
if (rst_n == VSS) begin
current_state	<= state_init;
end else begin
current_state	<= next_state;
end
end

always @(negedge clk) begin
if (rst_n == VSS) begin
symVal			<= VSS;
end else begin
//this inversion is required
symVal			<= ~next_symVal;
end
end

always @(*) begin
if (rst_n == VSS) begin
next_state	= state_init;
start		= VSS;
next_symVal	= VSS;
end else begin
case (current_state)
state_init: begin
next_state	= state_tx;
start		= VCC;
next_symVal	= data;
end
state_tx: begin
start		= VCC;
next_symVal	= data;


			if (symDone) begin
				if (symCounter < maxSize) begin
					next_state	= state_tx;
				end else begin
					next_state	= state_wait;
				end
			end else begin
				next_state	= state_tx;
			end
		end
		state_wait: begin
			start		= VCC;
			next_state	= state_done;
			next_symVal	= next_symVal;
		end
		state_done: begin
			start		= VSS;
			next_state	= state_init;
			next_symVal	= next_symVal;
		end
		default: begin
			start		= VSS;
			next_state	= state_init;
			next_symVal	= next_symVal;
		end
	endcase
end


end

//counter
always @(posedge clk) begin
if (rst_n == VSS) begin
symCounter	<= 8'd0;
end else begin
if (symDone) begin
if (current_state == state_tx) begin
symCounter	<= symCounter + 8'd1;
end else begin
symCounter	<= 8'd0;
end
end else begin
symCounter	<= symCounter;
end
end
end

// i have commented thiis out to keep the hardcoded data below
ble_packet ble_packet_0(
.addr(symCounter),
.data(data)
);

endmodule
