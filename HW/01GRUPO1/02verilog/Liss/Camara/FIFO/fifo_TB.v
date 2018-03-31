//----------------------------------------------------------------------------
`timescale 1 ns / 100 ps

module fifo_TB;

parameter tck              = 3;       // clock period in ns
//----------------------------------------------------------------------------
reg clk;
reg rst;

reg rd,href,vsync;
reg [8:0] data_in;

//----------------------------------------------------------------------------
// Device Under Test 
//------------------------------------------------------------------

fifo  uut(.reset(rst),.clock(clk),.rd(rd),.href(href),.vsync(vsync),.din(data_in));

/* Clocking device */
initial begin
	clk <= 0;
	rst <=1;
	#(2*tck) rst=0;
	rd <=0;
	href<=0;
	vsync<=0;
end

always #(tck/2) clk <= ~clk;

always #(tck)
begin
href<=~href;#30;
end

always #(tck)
begin
vsync<=~vsync;#300;
end

initial begin
#4;
data_in="h"; #2;
data_in="o"; #2;
data_in="l"; #2;
data_in="a"; #2;
data_in=" "; #2;
data_in="m"; #2;
data_in="u"; #2;
data_in="n"; #2;
data_in="d"; #2;
data_in="o"; #2; 
data_in="."; #2;
data_in="2"; #2;
data_in="3"; #2;
data_in="4"; #2; 
data_in="5"; #2; 
data_in="6"; #2; 
data_in="7"; #2; 
data_in="8"; #2; 
data_in="9"; #2; 
data_in="0"; #2;

rd=0; #2;
rd=1; #2;
rd=0; #2;
rd=1; #2;
rd=0; #2;
rd=1; #2;
rd=0; #2;
end

initial begin: TEST_CASE
     $dumpfile("fifo_TB.vcd");
     $dumpvars(-1, uut);
     #(200000) $finish;
   end

endmodule //
