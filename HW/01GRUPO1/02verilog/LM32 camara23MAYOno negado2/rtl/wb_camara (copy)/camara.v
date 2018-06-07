module camara #(parameter   fi     = 50000000, parameter   fs	= 115200)
(input clk, input [7:0] din, input reset, input takepicture,input leer,input leer1, output reg led, input href, input resetrd, input resetwr,input vsync, output reg we, output reg rdclk,output  reg [7:0] dout, output reg oe, output reg wrst, output reg rrst);


initial count<= fi/fs;
initial led<=0;
reg [31:0] count;
reg count2;
initial<=0;


always@(*)
begin

	if(reset)
	begin
	//count1<=0;
	we<=1;
	end
	else 
	begin	
		if(takepicture==1)
		begin

				if(vsync==0)
				begin
					if(count2==0)
					begin					
					we<=0;
					count2<=1;
					end
					
				end
				else
				begin
					we<=1;
				end


		end
		else
		begin
			we<=1;
			count2<=0;
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
	if(leer1)	
	begin
		oe<=0;
		if (rdclk==1)
		begin
			dout<=din;
		end
	end
	else
	begin
		oe<=1;
	end
end


endmodule
