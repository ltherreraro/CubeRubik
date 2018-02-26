module pwm(en, clk, t0, t1, t2, t3, t4, t5, t6, t7, d0, d1, d2, d3, d4, d5, d6, d7, pwm);
input [7:0] en;
input clk;
output reg [7:0] pwm;



input [31:0] t0;
input [31:0] d0;
reg [31:0] count0;
reg [31:0] cound0;



always@ (posedge clk)
begin
	if(en[0])
	begin
		if(count0==(100*(t0-d0)))
			begin
			pwm[0]<=1;
			if(cound0==100*d0)
				begin
				count0<=0;
				cound0<=0;
				pwm[0]<=0;
				end
			else
				begin
				cound0<=cound0+1;
				pwm[0]<=1;
				end
			end
		else
			begin
			count0<=count0+1;
			end
		
	
	end

	else
	begin
		cound0<=0;
		count0<=0;
		pwm[0]<=0;
	end

end

input [31:0] t1;
input [31:0] d1;
reg [31:0] count1;
reg [31:0] cound1;


always@ (posedge clk)
begin
	if(en[1])
	begin
		if(count1==100*(t1-d1))
			begin
			pwm[1]<=1;
			if(cound1==100*d1)
				begin
				count1<=0;
				cound1<=0;
				pwm[1]<=0;
				end
			else
				begin
				cound1<=cound1+1;
				pwm[1]<=1;
				end
			end
		else
			begin
			count1<=count1+1;
			end
		
	
	end

	else
	begin
		cound1<=0;
		count1<=0;
		pwm[1]<=0;
	end

end

input [31:0] t2;
input [31:0] d2;
reg [31:0] count2;
reg [31:0] cound2;

always@ (posedge clk)
begin
	if(en[2])
	begin
		if(count2==100*(t2-d2))
			begin
			pwm[2]<=1;
			if(cound2==100*d2)
				begin
				count2<=0;
				cound2<=0;
				pwm[2]<=0;
				end
			else
				begin
				cound2<=cound2+1;
				pwm[2]<=1;
				end
			end
		else
			begin
			count2<=count2+1;
			end
		
	
	end

	else
	begin
		cound2<=0;
		count2<=0;
		pwm[2]<=0;
	end

end




input [31:0] t3;
input [31:0] d3;
reg [31:0] count3;
reg [31:0] cound3;


always@ (posedge clk)
begin
	if(en[3])
	begin
		if(count3==100*(t3-d3))
			begin
			pwm[3]<=1;
			if(cound3==100*d3)
				begin
				count3<=0;
				cound3<=0;
				pwm[3]<=0;
				end
			else
				begin
				cound3<=cound3+1;
				pwm[3]<=1;
				end
			end
		else
			begin
			count3<=count3+1;
			end
		
	
	end

	else
	begin
		cound3<=0;
		count3<=0;
		pwm[3]<=0;
	end

end



input [31:0] t4;
input [31:0] d4;
reg [31:0] count4;
reg [31:0] cound4;


always@ (posedge clk)
begin
	if(en[4])
	begin
		if(count4==100*(t4-d4))
			begin
			pwm[4]<=1;
			if(cound4==100*d4)
				begin
				count4<=0;
				cound4<=0;
				pwm[4]<=0;
				end
			else
				begin
				cound4<=cound4+1;
				pwm[4]<=1;
				end
			end
		else
			begin
			count4<=count4+1;
			end
		
	
	end

	else
	begin
		cound4<=0;
		count4<=0;
		pwm[4]<=0;
	end

end


input [31:0] t5;
input [31:0] d5;
reg [31:0] count5;
reg [31:0] cound5;


always@ (posedge clk)
begin
	if(en[5])
	begin
		if(count5==100*(t5-d5))
			begin
			pwm[5]<=1;
			if(cound5==100*d5)
				begin
				count5<=0;
				cound5<=0;
				pwm[5]<=0;
				end
			else
				begin
				cound5<=cound5+1;
				pwm[5]<=1;
				end
			end
		else
			begin
			count5<=count5+1;
			end
		
	
	end

	else
	begin
		cound5<=0;
		count5<=0;
		pwm[5]<=0;
	end

end



input [31:0] t6;
input [31:0] d6;
reg [31:0] count6;
reg [31:0] cound6;


always@ (posedge clk)
begin
	if(en[6])
	begin
		if(count6==100*(t6-d6))
			begin
			pwm[6]<=1;
			if(cound6==100*d6)
				begin
				count6<=0;
				cound6<=0;
				pwm[6]<=0;
				end
			else
				begin
				cound6<=cound6+1;
				pwm[6]<=1;
				end
			end
		else
			begin
			count6<=count6+1;
			end
		
	
	end

	else
	begin
		cound6<=0;
		count6<=0;
		pwm[6]<=0;
	end

end


input [31:0] t7;
input [31:0] d7;
reg [31:0] count7;
reg [31:0] cound7;


always@ (posedge clk)
begin
	if(en[7])
	begin
		if(count7==100*(t7-d7))
			begin
			pwm[7]<=1;
			if(cound7==100*d7)
				begin
				count7<=0;
				cound7<=0;
				pwm[7]<=0;
				end
			else
				begin
				cound7<=cound7+1;
				pwm[7]<=1;
				end
			end
		else
			begin
			count7<=count7+1;
			end
		
	
	end

	else
	begin
		cound7<=0;
		count7<=0;
		pwm[7]<=0;
	end

end











endmodule
