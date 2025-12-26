module top (leds, pushbutton);

	output wire [7:0] leds;
	input wire pushbutton;

	
	
	slow_counter counter(.enable(pushbutton), .output_byte(leds));

endmodule



module slow_counter (  enable, output_byte);
	
	input wire enable;

	output reg [7:0] output_byte;
	
		
	initial
	begin
		output_byte = 8'b00000000;
	end
	
 always @(enable) begin
        if (enable)
            output_byte = 8'b11111111;
        else
            output_byte = 8'b00000000;
    end
	
endmodule
