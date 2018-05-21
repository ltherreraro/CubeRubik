//----------------------------------------------------------------------------

module FIFO_TB;

// (input  rst, Pclk, input  rd, wr, input  [dat_width-1:0] data_in, output [dat_width-1:0] data_out, output empty, output full);

//
//----------------------------------------------------------------------------
reg Pclk=0;
reg rst;
reg rd=0;
reg wr=0;
reg [9:0] data_in;
//----------------------------------------------------------------------------
// Device Under Test 
//------------------------------------------------------------------

FIFO  uut(.rst(rst),.Pclk(Pclk),.data_in(data_in),.wr(wr),.rd(rd), . data_out(data_out), .empty(empty), .full(full));

always #1 Pclk <= ~Pclk;

/* Clocking device */
initial begin
rst <=1;
#50;
rst<=0;
data_in=1111111111;  #50;
wr <= ~wr;#5; 
wr <= ~wr;#5;  
data_in=1010101010;  #50; 
wr <= ~wr;#5; 
wr <= ~wr;#5; 
data_in=1111100000;  #50;  
wr <= ~wr;#5; 
wr <= ~wr;#5; 
rd <= ~rd;#10;
end

initial begin: TEST_CASE
     $dumpfile("FIFO_TB.vcd");
     $dumpvars(-1, uut);
     #(20000) $finish;
   end

endmodule //
