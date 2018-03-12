//----------------------------------------------------------------------------
`timescale 1 ns / 100 ps

module fifo_TB;

parameter tck              = 3;       // clock period in ns
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
reg rs,rs1,rs2;
reg clk;
reg rst;
reg rd;
/*reg [1:0] data_in;*/
reg enable;
//----------------------------------------------------------------------------
// Device Under Test 
//------------------------------------------------------------------

fifo  uut(.reset(rst),.clk(clk)/*,.din(data_in)*/,.rs(rs),.rs1(rs1),.rs2(rs2),.rd(rd),.enable(enable));


/* Clocking device */
initial begin
	
	clk <= 0;
	rst <=1;
#2;
	rst<=0;
	rs1 <=1;
rs <=1;
rs2 <=1;
enable <=1;
rd<=0;
	#(2*tck) rst=0;
#10000;
enable<=0;
#10000;

rs1 <=0;
rs2 <=0;
rd=0; 	 
#2000;
rd=1;
#2000;
rd=0;
#2000;
rd=1;
#2000;
rd=0;
#2000;
rd=1;
#2000;
rd=0;
#2000;
rd=1;
#2000;
rd=0;	
end

always #(tck/2) clk <= ~clk;


/*initial begin
#4;
data_in=1; #200; 

data_in=1;  #200; 
data_in=1;   #200; 
data_in=1;  #200; 
data_in=1;   #200; 
data_in=1;  #200; 
data_in=1;   #200; 

data_in=0;  #200; 
data_in=0;   #200; 
data_in=0;   #200; 
data_in=0;   #200; 
data_in=0; #200; 

data_in=1;   #200; 
data_in=1;   #200; 
data_in=1;   #200; 
data_in=1;  #200; 
data_in=1;  #200; 
rs2=0;
rs1=0;
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200;
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200;
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200;
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200; 
rd <= ~rd;#200;    

end*/

initial begin: TEST_CASE
     $dumpfile("fifo_TB.vcd");
     $dumpvars(-1, uut);
     #(200000) $finish;
   end

endmodule //
