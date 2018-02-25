module pwm (input clk, output reg pwmout,input [31:0] T, input [31:0] D, input reset, output reg ledres);

initial ledres<=0;
initial done<=0;
initial pwmout<=0;
initial count<=0;

reg [31:0] count;

always @(posedge  clk)
begin
	if (reset) 
	begin
	ledres<=1;
	pwmout<=0;
	end
	else 
	begin
		if (count<T)
			begin
			pwmout <=0;
			count<=count +1;
				if (count<D)
				begin
				pwmout <=1;
				end
			end
		else 
		begin
		pwmout <=1;
		count<=0;
		end		
	end	
end

endmodule
