module camara (input href, input vsync, input clk, input pclk, output wen, input [7:0]din, output [7:0] dout);

always @(posedge  clk)
begin
	if(href=1 && vsync=0)
	begin
		wen=1;
	end
	else wen=0;
end
always @(posedge  clk)
begin
	if(href=1 && vsync=0)
	begin
		dout[7:0]<=din[7:0];
	end
end

endmodule
