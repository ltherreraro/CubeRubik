module datos (clock,d_in, enable);

input clock;
output reg [8:0] d_in;
input enable;
reg [8:0] count;

initial count<=0; 
initial d_in<=0;
always @(posedge  clock)
begin

	if (enable)

	begin

		if (count==2)
		begin
		d_in<=8'h0A;
		end
		else
		begin
		count<=count+1;
		end
		
		if (count==4)
		begin
		d_in<=8'h0C ;
		end
		else
		begin
		count<=count+1;		
		end		

		if (count==6)
		begin
		d_in<=8'h0E ;
		count<=0;
		end
		else
		begin
		count<=count+1;
		end	


	
	end
end
endmodule
