module slave (xvclk,pwdn,resetb,led,enable);

input xvclk;
output reg pwdn;
output reg resetb;
output reg led;
input enable;

initial led<=0;
initial pwdn<=1;
initial resetb<=0;

initial countD<=0;
initial countP<=0;
initial count<=0;
reg [31:0] countP;
reg [31:0] countD;
reg [10:0] count;


always @(posedge  xvclk)
begin
	if (enable) 
	begin
	led<=1;
		if (countP==1190)
		begin
		pwdn<=~pwdn;
		countP<=0;
		end
		else
		begin
		countP<=countP+1;
		end
		
		if(pwdn==0)
		begin
		pwdn<=1;
		end

		if(countD==79968/*0*/)
		begin
		resetb<=~resetb;
		countD<=0;
		end
		else 
		begin
		countD<=countD+1;
		end

		if(resetb==1)
		begin
			if (count==476/*0*/)
			begin
			resetb<=0;
			count<=0;
			end
			else count<=count+1;
		end	
	end
	else 			
	begin
	led<=0;
	end		
end


endmodule
