//`timescale 1 ns / 100 ps

module camara_TB;

reg clk=0;
reg capture;
//reg data[7:0];
reg Href; 
reg Vsyn;
wire Pclk; //////////////////////////////////lo cambie 
reg [7:0]data;
reg rst;
reg en_div;
wire reset;
wire Xclk;
wire PWDN;
wire frame_done;
wire data_out;

parameter tck=6;

camara uut(.capture(capture), .clk(clk), .Href(Href), .Vsyn(Vsyn), .data(data), .Pclk(Pclk), .rst(rst), .reset(reset), .Xclk(Xclk), .PWDN(PWDN), .frame_done(frame_done), .en_div(en_div));

always #1 clk = ~clk;

initial begin
en_div=0;
#200;
en_div=1;
rst=0; 
#1000;
rst=1;
#2000;
rst=0;
capture=1;
Href=1;
Vsyn=1;
data= 8'b0;
#3000;
Href=0;
Vsyn=0;
data=8'b1;
#3000;
capture=0;
#3000;
end


initial begin: TEST_CASE
     $dumpfile("camara_TB.vcd");
     $dumpvars(-1, uut);
     #(20000) $finish;
   end

endmodule 
