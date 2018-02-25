module div_freq #
(
              parameter   fi     = 50000000,  
)
(
	input clk,
	input reg [31:0] T, 	
	output reg pwm
);


reg [31:0] fs;
initial fs=100/T
reg [31:0] count;
initial count<= fi/fs;


always @(posedge  clk)
begin
	if (count==0)begin
			clkout <=~clkout;
			count <= fi/fs;
		end	
		else begin
		count <=count-1;
		end
		
end


endmodule
