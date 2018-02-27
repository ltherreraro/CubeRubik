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

div_freq div(.clk(clk),. clkout(pwm),.reset(reset),.led(led));

initial leden<=0;

initial countD<=0;

reg [8:0] countD;
//reg pwm1;
//reg pwm2;
//assign pwm2=pwm1;
//assign pwm=pwm1;


always @(posedge  pwm)
begin
	if (countD==D)
	begin
		pwm2 <=0;
		countD<=0;
	end
	else 
		begin
		countD<=countD +1;
		end	
	end		
			
	
end

endmodule
