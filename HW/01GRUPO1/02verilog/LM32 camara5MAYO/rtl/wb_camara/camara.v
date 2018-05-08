module camara #(parameter   fi     = 50000000, parameter   fs	= 50000000)
(input clk, input [7:0] din, input reset, input takepicture,input leer,output reg led, input href, input vsync, output reg we, output reg rdclk,output  reg [7:0] dout);


initial count<= fi/fs;
initial led<=0;
reg [31:0] count;
reg cont=0;
reg habilitador=0;



always@(vsync)
begin
	if(takepicture==1)
	begin
	
		if(vsync==0)
		begin
			if (cont==0)
			begin
				habilitador<=1;
				cont<=1;
			end
		end
		else
		begin
		habilitador<=0;
		end


	end
	if(takepicture==0)
	begin
		cont<=0;
	end
end
//condicion we 
always@(*)
begin

	
	if(habilitador==1)
       	begin 
		if(href==1)
		begin
			we<=1;
		end
		else
		begin
			we<=0;
		end
	end
end




//lectura rclk

always @(posedge  clk)
begin
	if (reset==0) begin
	led=1;
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
	led=0;
		count <= fi/fs;
		rdclk <=0;
	end	
end
always@(posedge rdclk)
begin
dout<=din;
end
endmodule
