module div(clk,reset, capture, href, vsync, pclk, pwdn, xclk, data_in, data_out1, empty, full, rst);
parameter D=5;
input reset;
input rst;
input clk;
input capture;
input href;
input vsync;
input pclk;
input [7:0] data_in;
output [9:0] data_out1;
output pwdn;
output reg xclk;
output empty;
output full;

wire wr;
reg rd=0;
wire [9:0] data_out;
integer count=0;

wire [9:0] datasave;


assign wr=~pclk;
assign datasave={vsync,href,data_in[7:0]};

fifo ut(.reset(reset),.rd(rd), .wr(wr), .datasave(datasave), .data_out(data_out),.empty(empty), .full(full), .pclk(pclk));

assign data_out1=data_out;
integer cn=0;

assign pwdn=~capture;

always@ (posedge clk)
begin
	if(reset)
	begin
		count<=0;
		xclk<=0;
	end
	else if(capture)
	begin	
		if(count==D)
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





parameter T=25;
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

