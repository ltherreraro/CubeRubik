module camara_TB;

  reg clk=0;
 reg reset;
reg href;
reg vsync;
reg rd;
reg [5:0] din;

camara uut(.clk(clk),  .reset(reset), .href(href), .vsync(vsync), .din(din), .rd(rd));

always #1 clk = ~clk;

initial begin
reset=0;
rd=0;
#40;
reset=1;
#10;
href=1;
vsync=0;
din=7;
#20;
din=9;
rd=1;
#3;
rd=0;
din=5;
#3;
rd=1;
#3;
rd=0;
#3;rd=1;
#3;
rd=0;
#3;rd=1;
#3;
rd=0;

end


always clk = #1 ~clk;

initial begin: TEST_CASE
     $dumpfile("camara_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule //
