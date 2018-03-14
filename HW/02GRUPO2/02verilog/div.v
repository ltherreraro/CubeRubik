module div(clk,reset, capture, href, vsync, pclk, pwdn, xclk, data_in, data_out1, empty, full, rst);
parameter div=1;
parameter tope=614;
input reset;
input rst;
input clk;
input capture;
input href;
input vsync;
input pclk;
input [7:0] data_in;
output [7:0] data_out1;
output reg pwdn;
output reg xclk;
output empty;
output full;
reg wr=0;
reg rd=0;
wire [7:0] data_out;
integer count=0;

fifo ut(.clk(clk), .reset(reset),.rd(rd), .wr(wr), .data_in(data_in), .data_out(data_out),.empty(empty), .full(full));

assign data_out1=data_out;
integer cn=0;

always@ (posedge clk)
begin
	if(reset)
	begin
		count<=0;
		xclk<=0;
	end
	else if(capture)
	begin
		pwdn<=0;	
		if(count==tope)
		begin
			xclk<=~xclk;
			count<=0;
		end
		else
			count<=count+1;
	end
	else
	begin
		count<=0;
		xclk<=0;
	end
end



always@ (posedge clk)
begin
	if(reset)
	begin
	wr<=0;
	pwdn<=1;
	cn<=0;
	end
	else if(capture)
	begin
		pwdn<=0;
		if(~vsync)
			if(href)
				if(~pclk)
					begin
					wr<=1;
					if(cn==tope)
						begin
						cn<=0;
						pwdn<=1;
						end
					else
						cn<=cn+1;
						
					end
				else
					wr<=0;

			else
				wr<=0;
		else	
			wr<=0;
			
	end

	else
	begin
	wr<=0;
	pwdn<=1;
	cn<=0;
	end	
		

	

end

parameter T=50;
integer cnt=0;

always@ (posedge clk)
begin
	if(reset)
	begin	
		rd<=0;
		cnt<=0;
	end
	else if(capture)
	begin
		if(cnt==T)
		begin
			rd<=~rd;
			cnt<=0;
		end
		else
			cnt<=cnt+1;
	end
	else
	begin
		cnt<=0;
		rd<=0;
	end

end





endmodule

