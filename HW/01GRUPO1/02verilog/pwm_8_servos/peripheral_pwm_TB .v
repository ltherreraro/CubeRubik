module peripheral_pwm_TB;

reg clk=0;
reg [31:0] d_in;
reg rd;
reg wr;
reg [3:0]addr;
reg cs;

peripheral_pwm pwm uut(.clk(clk),.wr(wr),.rd(rd),.addr(addr),.d_in(d_in),.cs(cs));

always #1 clk = ~clk;

initial begin
 
end


initial begin: TEST_CASE
     $dumpfile("peripheral_pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
