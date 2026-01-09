`timescale 1ns / 1ps
module iq_div
    #(parameter BIT_SAMPLE = 8'd4  // samples per symbol/bit
    )
    
    (
        input wire          clk     ,
        input wire          rst_n   ,
        input wire          ser_i   ,
		input enable,
        
        output reg [1:0]   I       , 
        output reg [1:0]   Q		  ,
		output reg iq_switch,
		output reg symDone
    );
    
   
    
    //counter to count the samples per bit registered
    reg [7:0]   cnt_sample  ;
    
    //reg         iq_switch   ;  // 0 indicates Q data and 1 indicates i data , from the input datastream

    reg         I_bit_temp      ; // to store the temp bits of I/Q data when the other one is not a legit data
	reg 		I_bit_temp2 	;
    reg         Q_bit_temp      ;
    
    reg         I_bit       ;
    reg         Q_bit       ;
    
    
    
    //cnt_sample
    always @ (negedge clk or negedge rst_n) begin
        if((rst_n == 1'b0) ||(enable == 1'b0)) begin
            cnt_sample <= 8'hFF;
			symDone <= 1'b0;
        end else begin
			if(cnt_sample == (BIT_SAMPLE - 8'd1)) begin
				cnt_sample <= 8'd0;
			end else begin
				cnt_sample <= cnt_sample + 8'd1;
			end
		
		// asserting the symDone
			if(cnt_sample + 8'd2 == BIT_SAMPLE )begin
				symDone <= 1'b1;
			end else begin
				symDone <= 1'b0;
			end
		end
    end
	

    
    //iq_switch
    always @ (negedge clk or negedge rst_n) begin
       if ((rst_n == 1'b0) || (enable == 1'b0)) begin
            iq_switch <= 1'b1;  
        end else if(cnt_sample == (BIT_SAMPLE - 8'd1)) begin // when all the samples have been collected from the last bit
            iq_switch <= ~iq_switch;
        end else begin
            iq_switch <= iq_switch;
        end
    end
    
    //I_bit  Q_bit
    always @ (negedge clk or negedge rst_n) begin
        if ((rst_n == 1'b0) || (enable == 1'b0)) begin
            I_bit <= 1'b0;
            Q_bit <= 1'b0;
            I_bit_temp <= 1'b0;
            Q_bit_temp <= 1'b0;
			I_bit_temp2<= 1'b0;
        end else begin
            case(iq_switch) 
                1'b0: begin 
                    I_bit <= I_bit;
                    Q_bit <= Q_bit;
                    Q_bit_temp <= ser_i;
                    I_bit_temp <= I_bit_temp2;
                    
                end
                1'b1: begin
                    Q_bit <= Q_bit_temp;
                    I_bit <= I_bit_temp;
                    I_bit_temp2 <= ser_i;
                    Q_bit_temp <= Q_bit_temp;
                end             
            endcase
        end
    end
    
    
	// 2 bits per i/Q data because of the signed/bipolar output, like NRZ (-1 , +1 ) to have pi/4 QPSK modulation type
   // assign I = (I_bit == 1'b0)? 2'b11:2'b01; 
   // assign Q = (Q_bit == 1'b0)? 2'b11:2'b01; 
   always @(*) begin
    if (!rst_n || !enable) begin
        I = 2'b11;
        Q = 2'b11;
    end else begin
        I = (I_bit == 1'b0) ? 2'b11 : 2'b01;
        Q = (Q_bit == 1'b0) ? 2'b11 : 2'b01;
    end
end
    
    
    
endmodule