`timescale 1ns / 1ns

module div_TB;
reg clk;
reg reset;
reg capture;
reg href;
reg vsync;
reg pclk;
wire pwdn;
reg [7:0] data_in;
wire rst;

wire full;
wire empty;
wire xclk;


div uut(.clk(clk),.reset(reset), .capture(capture), .href(href), .vsync(vsync), .pclk(pclk), .pwdn(pwdn), .xclk(xclk), .data_in(data_in), .empty(empty), .full(full), .rst(rst));

always
begin
clk=0;
#5;
clk=1;
#5;
end


initial
begin
reset=1;
capture=0;
vsync=1;
href=0;
pclk=0;
data_in=0;
#10
reset=0;
capture=1;

end


always
begin
if(capture)
begin
pclk=0;
#10;
pclk=1;
#10;
end
end

always@ (posedge clk)
begin
if(capture)
data_in=data_in+1;

end


initial begin: TEST_CASE	
     $dumpfile("div_TB.vcd");
     $dumpvars(-1, uut);
     #(50000) $finish;
   end

endmodule
