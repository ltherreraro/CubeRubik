//`timescale 1 ns / 100 ps

module camara_TB;

reg clk=0;
reg capture;
reg Href; 
reg Vsyn;
wire Pclk; 
reg [7:0]data;
reg rst;
reg rd;
reg en_div;
wire reset;
wire Xclk;
wire PWDN;
wire data_out;


camara uut(.rd(rd), .capture(capture), .clk(clk), .Href(Href), .Vsyn(Vsyn), .data(data), .Pclk(Pclk), .rst(rst), .reset(reset), .Xclk(Xclk), .PWDN(PWDN), .en_div(en_div));

always #1 clk = ~clk;

initial begin
en_div=0; rd=0; #5;
en_div=1; rst=0; #5;
rst=1; #10;
rst=0; capture=1; Href=0; Vsyn=1; data= 8'b0;#10;
Vsyn=0; Href=1; data=8'b00000001; #10;
Href=0; data=8'b00000010; #10;
Href=1; data=8'b00000100; #10;
Href=0; data=8'b00001000; #10;
Href=1; data=8'b00010000; #10;
Href=0; data=8'b00100000; #10;
Href=1; data=8'b01000000; #10;
Href=0; Vsyn=1; data =8'b0; #10;
Vsyn=0; capture=0; 
end


initial begin: TEST_CASE
     $dumpfile("camara_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
end

endmodule 
