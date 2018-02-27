module pwm #(
              parameter  D     = 20 //D
  )( 		input 		clk, 
		output reg	pwm,
		//input [31:0] 	D, 
		input 		reset, 
		output reg 	leden,
		output 		led,
		input 		enable
);
reg [8:0] countD;
wire pwm1;

div_freq div(.clk(clk),. clkout(pwm1),.reset(reset),.led(led));

initial leden<=0;
initial countD<=0;


always @(posedge  clk)
begin
	if (~enable) 
	begin
	leden<=0;
	pwm<=0;
	end
	else 
	begin
	leden<=1;
		if (pwm1==1)
		begin
			if (countD==D)
			begin
			pwm<=0;
			countD<=0;
			end
			else 
			begin
			countD<=countD +1;
			end	
		end		
		else 
		begin
		pwm<=0;
		end	
	end	
end

endmodule
