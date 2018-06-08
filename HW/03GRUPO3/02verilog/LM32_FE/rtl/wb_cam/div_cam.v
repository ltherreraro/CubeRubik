module div_cam(input clk, input en_div, output reg Xclk);

reg [31:0] count;


initial begin
Xclk=0;
end

always @(posedge  clk)
begin
    if (~en_div)
    begin
        count<=1;
        Xclk<=0;
    end
    else
    begin
		if (count==2)
        begin
			Xclk <=~Xclk;
			count <= 1;
	    end	
        else begin
            count <= count +1;
        end
    end
end
endmodule
