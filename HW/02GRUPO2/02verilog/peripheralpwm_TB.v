`timescale 1ns / 1ns
module peripheralpwm_TB;
reg clk;
reg reset;
reg [31:0] datain;
reg [15:0] addr;
wire [31:0] dataout;
reg r;
reg w;
wire [7:0] pwm;

peripheralpwm uut(.clk(clk), .reset(reset), .datain(datain), .dataout(dataout), .addr(addr), .pwm(pwm),.r(r),.w(w));


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
#10;
reset=0;
#10;
w=1;
addr=16'h0004;
datain=100;
#10;
addr=16'h0008;
datain=110;
#10;
addr=16'h000C;
datain=200;
#10;
addr=16'h0010;
datain=180;
#10;
addr=16'h0014;
datain=150;
#10;
addr=16'h0018;
datain=230;
#10;
addr=16'h001C;
datain=90;
#10;
addr=16'h0020;
datain=170;
#10;
addr=16'h0024;
datain=50;
#10;
addr=16'h0028;
datain=40;
#10;
addr=16'h002C;
datain=20;
#10;
addr=16'h0030;
datain=25;
#10;
addr=16'h0034;
datain=80;
#10;
addr=16'h0038;
datain=10;
#10;
addr=16'h003C;
datain=30;
#10;
addr=16'h0040;
datain=60;
#10;
addr=16'h0000;
datain=32'hFF;
#10;
r=1;
w=0;
#10;
addr=16'h0044;
end




initial begin: TEST_CASE	
     $dumpfile("peripheralpwm_TB.vcd");
     $dumpvars(-1, uut);
     #(500000) $finish;
   end	

endmodule
