module contador 
( 	input 		clk,
	input		enable, 
	output 	reg	[31:0] adr,
	output	reg	cs,
	output	reg	wr,
	output	reg	rd, 
	output reg	d_in
);
	
reg [31:0] d1;
reg [31:0] d2;
reg [31:0] d3;
reg e;
reg [31:0] t;
reg [31:0] d;

initial d1<=0;
initial d2<=4;
initial d3<=8;
reg [8:0] count;
initial count <=0;


always @(posedge  clk)
begin
	if (enable) 
	begin
		if(count<12)
		begin
			adr<=d3;
			cs<=1;
			wr<=1;
			rd<=0;
			d<=100;
			count<=count+1;
			if(count<8)
			begin
				adr<=d2;
				cs<=1;
				wr<=1;
				rd<=0;
				t<=1000;
				count<=count+1;
				if(count<4)
				begin
					adr<=d1;
					cs<=1;
					wr<=1;
					rd<=0;
					e<=1;
					count<=count+1;
				end
			end
		end
		else
		begin
			count<=0;
		end
	end
end
endmodule
