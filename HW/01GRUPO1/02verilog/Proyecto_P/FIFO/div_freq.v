module div_freq #(
              parameter   fi     = 50000000,        //<- fFPGA/2=fi  
              parameter   fs	 = 36000000    ,    //<- flckout=fs
parameter   fi1     = 50000000,        //<- fFPGA/2=fi  
              parameter   fs1	 = 360000  ,      //<- flckout=fs
parameter   fi2     = 50000000,        //<- fFPGA/2=fi  
              parameter   fs2	 = 36000       //<- flckout=fs
  )(input clk, output reg clkout,output reg clkout1,output reg clkout2,input reset, input reset1, input reset2, output reg led, output reg led1, output reg led2);


//clkout1(href),.clkout2(vsync)

initial clkout=0;
initial clkout1=0;
initial clkout2=0;

initial led=0;
initial led1=0;
initial led2=0;

reg [31:0] count;
initial count<= fi/fs;

reg [31:0] count1;
initial count1<= fi1/fs1;

reg [31:0] count2;
initial count2<= fi2/fs2;

always @(posedge  clk)
begin
	if (reset) begin
	led=1;
		
		if (count==0)begin
			clkout <=~clkout;
			count <= fi/fs;
		end	
		else begin
		count <=count-1;
		end

	end
	else begin
	led=0;
		count <= fi/fs;
		clkout <=0;
	end	
end

always @(posedge  clk)
begin
	if (reset1) begin
	led1=1;
		
		if (count1==0)begin
			clkout1 <=~clkout1;
			count1 <= fi1/fs1;
		end	
		else begin
		count1 <=count1-1;
		end

	end
	else begin
	led1=0;
		count1 <= fi1/fs1;
		clkout1 <=0;
	end	
end

always @(posedge  clk)
begin
	if (reset2) begin
	led2=1;
		
		if (count2==0)begin
			clkout2 <=~clkout2;
			count2 <= fi2/fs2;
		end	
		else begin
		count2 <=count2-1;
		end

	end
	else begin
	led2=0;
		count2 <= fi2/fs2;
		clkout2 <=0;
	end	
end

endmodule
