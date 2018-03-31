module datos (clock,d_in, enable,leden);

input clock;
output reg [7:0] d_in;
input enable;
reg [7:0] count;
output reg leden;

initial count<=0; 
initial d_in<=0;
initial leden<=0;
always @(posedge  clock)
begin

	if (enable)

	begin
	leden<=1;

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
