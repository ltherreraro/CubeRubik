module periferico_pwm_TB;

reg clk=0;
reg [31:0] d_in;
reg [7:0] addr;
reg rd;
reg wr;

periferico_pwm uut(.clk(clk),.d_in(d_in),.addr(addr),.rd(rd),.wr(wr));

always #1 clk = ~clk;

initial begin
d_in=1; addr=8'h0; wr=1; rd=0;
#5
d_in=200; addr=8'h4; wr=1; rd=0;
#5
d_in=10; addr=8'h8; wr=1;rd=0;
#5
d_in=1; addr=8'hC; wr=1; rd=0;
#5
d_in=200; addr=8'h10; wr=1; rd=0;
#5
d_in=10; addr=8'h14; wr=1;rd=0;
#5
wr=0; rd=1;addr=8'h4;


end


initial begin: TEST_CASE
     $dumpfile("periferico_pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(100000) $finish;
   end

endmodule 
