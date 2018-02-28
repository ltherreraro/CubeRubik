//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:54 02/21/2018 
// Design Name: 
// Module Name:    pwm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm(
		input clk_frec
		input clk
		input duty [7:0]
		output pwm_out
);
 reg [15:0] cnt;
 
always @(clk)begin
cnt <= cnt + 1;
end

if(duty < cnt 
always
always 	

endmodule
