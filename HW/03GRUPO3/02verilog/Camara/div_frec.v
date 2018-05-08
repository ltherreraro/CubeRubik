module div_frec(input clk, input en_div, output reg Xclk);

reg [31:0] count;
wire rst;

assign rst = ~en_div;

initial begin
Xclk=0;
end

always @(posedge  clk)
begin
    if (rst)
    begin
        count<=1;
        Xclk<=0;
    end
    else
    begin
		if (count==5)
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
