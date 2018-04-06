module PWM8(input clk,input reset,input read,input write,intput [7:0] din,input [6:0] addr,output reg [7:0] dout,output [7:0] pwm);
		
reg [7:0] T0 = 0;
reg [7:0] T1 = 0;
reg [7:0] T2 = 0;
reg [7:0] T3 = 0;
reg [7:0] T4 = 0;
reg [7:0] T5 = 0;
reg [7:0] T6 = 0;
reg [7:0] T7 = 0;

reg [7:0] D0 = 0;
reg [7:0] D1 = 0;
reg [7:0] D2 = 0;
reg [7:0] D3 = 0;
reg [7:0] D4 = 0;
reg [7:0] D5 = 0;
reg [7:0] D6 = 0;
reg [7:0] D7 = 0;

reg ENABLE0 = 0;
reg ENABLE1 = 0;
reg ENABLE2 = 0;
reg ENABLE3 = 0;
reg ENABLE4 = 0;
reg ENABLE5 = 0;
reg ENABLE6 = 0;
reg ENABLE7 = 0;

	
PWM pwm0(.clk(clk), .t(T0), .d(D0), .pwm(pwm[0]), .enable(ENABLE0));
PWM pwm1(.clk(clk), .t(T1), .d(D1), .pwm(pwm[1]), .enable(ENABLE1));
PWM pwm2(.clk(clk), .t(T2), .d(D2), .pwm(pwm[2]), .enable(ENABLE2));
PWM pwm3(.clk(clk), .t(T3), .d(D3), .pwm(pwm[3]), .enable(ENABLE3));
PWM pwm4(.clk(clk), .t(T4), .d(D4), .pwm(pwm[4]), .enable(ENABLE4));
PWM pwm5(.clk(clk), .t(T5), .d(D5), .pwm(pwm[5]), .enable(ENABLE5));
PWM pwm6(.clk(clk), .t(T6), .d(D6), .pwm(pwm[6]), .enable(ENABLE6));
PWM pwm7(.clk(clk), .t(T7), .d(D7), .pwm(pwm[7]), .enable(ENABLE7));

	
	always @(posedge clk) begin

		if (reset) begin
			T0 = 0;
			T1 = 0;
			T2 = 0;
			T3 = 0;
			T4 = 0;
			T5 = 0;
			T6 = 0;
			T7 = 0;

			D0 = 0;
			D1 = 0;
			D2 = 0;
			D3 = 0;
			D4 = 0;
			D5 = 0;
			D6 = 0;
			D7 = 0;

			ENABLE0 = 0;
			ENABLE1 = 0;
			ENABLE2 = 0;
			ENABLE3 = 0;
			ENABLE4 = 0;
			ENABLE5 = 0;
			ENABLE6 = 0;
			ENABLE7 = 0;
		end
	
		if(write == 1) begin
		
			
			
			case(addr)
				7'h00: ENABLE0 = din;
				7'h04: T0 = din;
				7'h08: D0 = din;
				
				7'h0c: ENABLE1 = din;
				7'h10: T1 = din;
				7'h14: D1 = din;
				
				7'h18: ENABLE2 = din;
				7'h1c: T2 = din;
				7'h20: D2 = din;
				
				7'h24: ENABLE3 = din;
				7'h28: T3 = din;
				7'h2c: D3 = din;
				
				7'h30: ENABLE4 = din;
				7'h34: T4 = din;
				7'h38: D4 = din;
				
				7'h3c: ENABLE5 = din;
				7'h40: T5 = din;
				7'h44: D5 = din;
				
				7'h48: ENABLE6 = din;
				7'h4c: T6 = din;
				7'h50: D6 = din;
				
				7'h54: ENABLE7 = din;
				7'h58: T7 = din;
				7'h5c: D7 = din;
				
			default
				
				
			endcase
		end
		
		if(read == 1) begin
			
			case(addr)
				7'h00: dout = ENABLE0;
				7'h04: dout = T0;
				7'h08: dout = D0;
				
				7'h0c: dout = ENABLE1;
				7'h10: dout = T1;
				7'h14: dout = D1;
				
				7'h18: dout = ENABLE2;
				7'h1c: dout = T2;
				7'h20: dout = D2;
				
				7'h24: dout = ENABLE3;
				7'h28: dout = T3;
				7'h2c: dout = D3;
				,
				7'h30: dout = ENABLE4;
				7'h34: dout = T4;
				7'h38: dout = D4;
				
				7'h3c: dout = ENABLE5;
				7'h40: dout = T5;
				7'h44: dout = D5;
				
				7'h48: dout = ENABLE6;
				7'h4c: dout = T6;
				7'h50: dout = D6;
				
				7'h54: dout = ENABLE7;
				7'h58: dout = T7;
				7'h5c: dout = D7;
				
			
			endcase
		end
		
	end


endmodule
