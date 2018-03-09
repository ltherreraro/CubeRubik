module pwm (clk, pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7, T0, T1, T2, T3, T4, T5, T6, T7, D0, D1, D2, D3, D4, D5, D6, D7, E0, E1, E2, E3, E4, E5, E6, E7);

		input 		clk;
		output 	reg	pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7;
		input  [31:0] 	T0, T1, T2, T3, T4, T5, T6, T7;
		input  [31:0] 	D0, D1, D2, D3, D4, D5, D6, D7; 
		input 	E0, E1, E2, E3, E4, E5, E6, E7;


initial countT<=0;
initial countD<=0;
initial countT1<=0;
initial countD1<=0;
initial pwm0<=0;
initial pwm1<=0;
initial pwm2<=0;
initial pwm3<=0;
initial pwm4<=0;
initial pwm5<=0;
initial pwm6<=0;
initial pwm7<=0;


reg [31:0] countT;
reg [31:0] countD;
reg [31:0] countT1;
reg [31:0] countD1;


always @(posedge  clk)
begin
	if (~E0) 
	begin
	
	pwm0<=0;
	end
	else 
	begin
		if (countT==T0)
		begin
			pwm0 <=~pwm0;
			countT<=0;
			
					
		end
		else 
		begin
			countT<=countT +1;
		end
		if (pwm0==1)
			begin
		 			if (countD==D0)
					begin
					pwm0 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end//e0
	if (~E1) 
	begin
	
	pwm1<=0;
	end
	else 
	begin
		if (countT1==T1)
		begin
			pwm1 <=~pwm1;
			countT1<=0;
			
					
		end
		else 
		begin
			countT1<=countT1+1;
		end
		if (pwm1==1)
			begin
		 			if (countD1==D1)
					begin
					pwm1 <=0;
					countD1<=0;
					end
					else 
					begin
					countD1<=countD1 +1;
					end	
			end		
			
	end//e1


	
end//del always


endmodule
