`timescale 1ns / 1ns


module testbench;
	
	reg pushbutton;
	wire [7:0] leds;
	
	
	
	
 top uut(.leds(leds), .pushbutton(pushbutton));
 
 	

	initial begin
    pushbutton = 0;
    #10;
    pushbutton = 1;
    #10;
    pushbutton = 0;
    #10;
    $finish;
end

endmodule
