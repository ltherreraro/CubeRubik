module camara #(parameter   fi     = 50000000, parameter   fs	= 50000000)
(input clk, input [7:0] din, input reset, input takepicture,input leer,output reg led, input href, input resetrd, input resetwr,input vsync, output reg we, output reg rdclk,output  reg [7:0] dout, output reg oe, output reg wrst, output reg rrst);


initial count<= fi/fs;
initial led<=0;
reg [31:0] count;

reg [1:0] count1=0;



always@(*)
begin

	if(reset)
	begin
	count1<=0;
	we<=1;
	end
	else 
	begin	
		if(takepicture==1)
		begin
			if (count1==0)
			begin
			count1<=1;
				if(vsync==0)
				begin
					we<=0;
				end
				else
				begin
					we<=1;
				end
			end


		end
	
	end
end



always @(posedge  clk)
begin
	if (reset==0) begin
	led=0;
		if(leer==1)
		begin	
		
			if (count==0)
			begin
				
				 rdclk <=~rdclk;
				
				count <= fi/fs;
				if (rdclk==1)
				begin
					dout<=din;
				end
			end	
			else begin
			count <=count-1;
			end
		end
		else
		begin
		
		
		rdclk<=0;
		end
	end
	else begin
	led=1;
		count <= fi/fs;
		rdclk <=0;
	end	
end

always@(*)
begin
	if(resetwr)
	begin
		wrst<=1;
	end
	else
	begin
		wrst<=0;
	end
	if(resetrd)
	begin
		rrst<=1;
	end
	else
	begin
		rrst<=0;
	end
	if(leer)	
	begin
		oe<=0;
	end
	else
	begin
		oe<=1;
	end
end


endmodule
