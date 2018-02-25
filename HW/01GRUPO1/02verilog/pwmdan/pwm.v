module pwm (
	input clk,
	input reg [31:0] D, 
	input reg [31:0] T,	
	output reg pwm
);


reg [31:0] frecin ;
reg [31:0] dutypos;
reg [31:0] dutyneg;

initial dutypos=D;
initial dutyneg=100-D;


div_freq df(.clk(clk),.T(T),.pwm(frecin));




always @(posedge  frecin)
begin 
	if(dutypos>0) begin
		pwm<=1'b1;
		dutypor<=dutypos-1;
	end
	else 
	if(dutyneg>0)begin
		pwm<=1'b0;
		dutyneg<=dutyneg-1;
	end
	else
	begin
		dutypos<=D;
		dutyneg<=100-D;
	end
end
 


endmodule
