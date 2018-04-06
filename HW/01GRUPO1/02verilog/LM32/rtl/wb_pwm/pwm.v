module pwm (clk, pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7, T0, T1, T2, T3, T4, T5, T6, T7, D0, D1, D2, D3, D4, D5, D6, D7, E0, E1, E2, E3, E4, E5, E6, E7);

		input 		clk;
		output 	reg	pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7;
		input  [31:0] 	T0, T1, T2, T3, T4, T5, T6, T7;
		input  [31:0] 	D0, D1, D2, D3, D4, D5, D6, D7; 
		input 	E0, E1, E2, E3, E4, E5, E6, E7;

reg [31:0] countT;
reg [31:0] countD;
reg [31:0] countT1;
reg [31:0] countD1;
reg [31:0] countT2;
reg [31:0] countD2;
reg [31:0] countT3;
reg [31:0] countD3;
reg [31:0] countT4;
reg [31:0] countD4;
reg [31:0] countT5;
reg [31:0] countD5;
reg [31:0] countT6;
reg [31:0] countD6;
reg [31:0] countT7;
reg [31:0] countD7;

initial countT<=0;//e0
initial  countD<=0;

initial  countT1<=0; //e1
initial countD1<=0;

initial  countT2<=0;//e2
initial  countD2<=0;

initial  countT3<=0;//e3
initial countD3<=0;

initial countT4<=0;//e4
initial countD4<=0;

initial countT5<=0;//e5
initial countD5<=0;

initial countT6<=0;//e6
initial countD6<=0;

initial countT7<=0;//e7
initial countD7<=0;

initial pwm0<=0;
initial pwm1<=0;
initial pwm2<=0;
initial pwm3<=0;
initial pwm4<=0;
initial pwm5<=0;
initial pwm6<=0;
initial pwm7<=0;





always @(posedge  clk)
begin
	if (E0==1) 
	begin
	countT<=0;
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
	else 
	begin
	countT<=0;	
	pwm0<=0;		
	end//e0

	if (E1==1) 
	begin
	countT1<=0;
	if (countT1==T1)
		begin
			pwm1 <=~pwm1;
			countT1<=0;
			
					
		end
		else 
		begin
			countT1<=countT1 +1;
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
	end
	else 
	begin
	countT1<=0;	
	pwm1<=0;		
	end//e1
	
	if (E2==1) 
	begin
	countT2<=0;
	if (countT2==T2)
		begin
			pwm2 <=~pwm2;
			countT2<=0;
			
					
		end
		else 
		begin
			countT2<=countT2 +1;
		end
		if (pwm2==1)
			begin
		 			if (countT2==D2)
					begin
					pwm2 <=0;
					countD2<=0;
					end
					else 
					begin
					countD2<=countD2 +1;
					end	
			end
	end
	else 
	begin
	countT2<=0;	
	pwm2<=0;		
	end//e2
	
	if (E3==1) 
	begin
	countT3<=0;
	if (countT3==T3)
		begin
			pwm3 <=~pwm3;
			countT3<=0;
			
					
		end
		else 
		begin
			countT3<=countT3 +1;
		end
		if (pwm3==1)
			begin
		 			if (countD3==D3)
					begin
					pwm3 <=0;
					countD3<=0;
					end
					else 
					begin
					countD3<=countD3 +1;
					end	
			end
	end
	else 
	begin
	countT3<=0;	
	pwm3<=0;		
	end//e3

	if (E4==1) 
	begin
	countT4<=0;
	if (countT4==T4)
		begin
			pwm4 <=~pwm4;
			countT4<=0;
			
					
		end
		else 
		begin
			countT4<=countT4 +1;
		end
		if (pwm4==1)
			begin
		 			if (countD4==D4)
					begin
					pwm4 <=0;
					countD4<=0;
					end
					else 
					begin
					countD4<=countD4 +1;
					end	
			end
	end
	else 
	begin
	countT4<=0;	
	pwm4<=0;		
	end//e4

	if (E5==1) 
	begin
	countT5<=0;
	if (countT5==T5)
		begin
			pwm5 <=~pwm5;
			countT5<=0;
			
					
		end
		else 
		begin
			countT5<=countT5 +1;
		end
		if (pwm5==1)
			begin
		 			if (countD5==D5)
					begin
					pwm5 <=0;
					countD5<=0;
					end
					else 
					begin
					countD5<=countD5 +1;
					end	
			end
	end
	else 
	begin
	countT5<=0;	
	pwm5<=0;		
	end//e5

	if (E6==1) 
	begin
	countT6<=0;
	if (countT6==T6)
		begin
			pwm6 <=~pwm6;
			countT6<=0;
			
					
		end
		else 
		begin
			countT6<=countT6 +1;
		end
		if (pwm6==1)
			begin
		 			if (countD6==D6)
					begin
					pwm6 <=0;
					countD6<=0;
					end
					else 
					begin
					countD6<=countD6 +1;
					end	
			end
	end
	else 
	begin
	countT6<=0;	
	pwm6<=0;		
	end//e6

	if (E7==1) 
	begin
	countT7<=0;
	if (countT7==T7)
		begin
			pwm7 <=~pwm7;
			countT7<=0;
			
					
		end
		else 
		begin
			countT7<=countT7 +1;
		end
		if (pwm7==1)
			begin
		 			if (countD7==D7)
					begin
					pwm7 <=0;
					countD7<=0;
					end
					else 
					begin
					countD7<=countD7 +1;
					end	
			end
	end
	else 
	begin
	countT7<=0;	
	pwm7<=0;		
	end//e7


	
end//del always


endmodule
