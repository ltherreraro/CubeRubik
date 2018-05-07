module div_frec(input clk_in, input reset, output reg Xclk);

reg [31:0] count;

initial begin
Xclk=0;
end

always @(posedge  clk_in)
begin
    if (reset)
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
