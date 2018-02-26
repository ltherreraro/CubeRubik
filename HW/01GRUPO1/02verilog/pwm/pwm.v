module pwm ( 	input 		clk, 
		output  reg	pwm0,pwm1,pwm2,pwm3,pwm4,pwm5,pwm5,pwm6,pwm7,
		input [31:0] 	T0,T1,T2,T3,T4,T5,T6,T7,
		input [31:0] 	D0,D1,D2,D3,D4,D5,D6,D7, 
		input 		E0,E1,E2,E3,E4,E5,E6,E7 
		
);

//Enable negado para todos

initial countT<=0;
initial countD<=0;


reg [31:0] countT;
reg [31:0] countD;


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
			
	end	
end
always @(posedge  clk)
begin
	if (~NE1) 
	begin
	pwm1<=0;
	end
	else 
	begin
		if (countT==T1)
		begin
			pwm1 <=~pwm1;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm1==1)
			begin
		 			if (countD==D1)
					begin
					pwm1 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end
always @(posedge  clk)
begin
	if (~NE2) 
	begin
	pwm2<=0;
	end
	else 
	begin
		if (countT==T2)
		begin
			pwm2 <=~pwm2;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm2==1)
			begin
		 			if (countD==D2)
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
end
always @(posedge  clk)
begin
	if (~NE3) 
	begin
	pwm3<=0;
	end
	else 
	begin
		if (countT==T3)
		begin
			pwm3<=~pwm3;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm3==1)
			begin
		 			if (countD==D3)
					begin
					pwm3 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end
always @(posedge  clk)
begin
	if (~NE4) 
	begin
	pwm4<=0;
	end
	else 
	begin
		if (countT==T4)
		begin
			pwm4<=~pwm4;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm4==1)
			begin
		 			if (countD==D4)
					begin
					pwm4 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end
always @(posedge  clk)
begin
	if (~NE5) 
	begin
	pwm5<=0;
	end
	else 
	begin
		if (countT==T5)
		begin
			pwm5<=~pwm5;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm5==1)
			begin
		 			if (countD==D5)
					begin
					pwm5 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end
always @(posedge  clk)
begin
	if (~NE6) 
	begin
	pwm6<=0;
	end
	else 
	begin
		if (countT==T6)
		begin
			pwm6<=~pwm6;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm6==1)
			begin
		 			if (countD==D6)
					begin
					pwm6 <=0;
					countD<=0;
					end
					else 
					begin
					countD<=countD +1;
					end	
			end		
			
	end	
end
always @(posedge  clk)
begin
	if (~NE7) 
	begin
	pwm7<=0;
	end
	else 
	begin
		if (countT==T7)
		begin
			pwm7<=~pwm7;
			countT<=0;
					
		end
		else 
		begin
			countT<=countT +1;
		end
	if (pwm7==1)
			begin
		 			if (countD==D7)
					begin
					pwm7 <=0;
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
