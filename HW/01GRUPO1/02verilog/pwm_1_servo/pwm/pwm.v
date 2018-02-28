module pwm #(
parameter T=1000000,
parameter D=30000
)

( 	input 		clk, 
		output  reg	pwm,
		//input [31:0] 	T,
		//input [31:0] 	D, 
		input 		reset, 
		output reg 	ledres
);

initial ledres<=0;
initial countT<=0;
initial countD<=0;


reg [31:0] countT;
reg [31:0] countD;


always @(posedge  clk)
begin
	if (reset) 
	begin
	ledres<=1;
	pwm<=0;
	end
	else 
	begin
		if (countT==T)
		begin
			pwm <=~pwm;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm==1)
			begin
		 			if (countD==D)
					begin
					pwm <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end

endmodule
