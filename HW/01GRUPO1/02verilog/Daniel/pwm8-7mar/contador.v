module contador 
( 	input 		clk,
	input		enable, 
	output 	reg	[31:0] adr,
	output	reg	cs,
	output	reg	wr,
	output	reg	rd, 
	output reg [31:0]	d_in
);
	
reg [31:0] d1;
reg [31:0] d2;
reg [31:0] d3;
reg [31:0] d4;
reg [31:0] d5;
reg [31:0] d6;

reg e;
reg [31:0] t;
reg [31:0] d;
initial e<=1;
initial d<=230000;
initial t<=2000000;
initial d1<=0;
initial d2<=4;
initial d3<=8;
initial d4<=12;
initial d5<=16;
initial d6<=20;
reg [8:0] count;
initial count <=0;


always @(posedge  clk)
begin
	if (enable) 
	begin
		if(count<24)
		begin
			adr<=d3;
			cs<=1;
			wr<=1;
			rd<=0;
			d_in<=d;
			count<=count+1;
			if(count<20)
			begin
				adr<=d2;
				cs<=1;
				wr<=1;
				rd<=0;
				d_in<=t;
				count<=count+1;
				if(count<16)
				begin
					adr<=d1;
					cs<=1;
					wr<=1;
					rd<=0;
					d_in<=e;
					count<=count+1;
					if(count<12)
					begin
						adr<=d6;
						cs<=1;
						wr<=1;
						rd<=0;
						d_in<=d;
						count<=count+1;
						if(count<8)
							begin
								adr<=d5;
								cs<=1;
								wr<=1;
								rd<=0;
								d_in<=t;
								count<=count+1;
							if(count<4)
								begin
									adr<=d4;
									cs<=1;
									wr<=1;
									rd<=0;
									d_in<=e;
									count<=count+1;

								end
							end

					end
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
