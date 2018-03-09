module ppwm_TB;

reg clk=0;
reg [31:0] d_in;
reg rd;
reg wr;
reg [7:0]addr;
reg cs;

ppwm uut(.clk(clk),.wr(wr),.rd(rd),.addr(addr),.d_in(d_in),.cs(cs));

always #1 clk = ~clk;

initial begin
 d_in = 16'd01; addr = 8'h0; cs=1; rd=0; wr=1;
#10;
 d_in = 16'd20; addr = 8'h4; cs=1; rd=0; wr=1;
#10;
 d_in = 16'd3; addr = 8'h8; cs=1; rd=0; wr=1;
#20;
 d_in = 16'd2; addr = 8'h0; cs=1; rd=1; wr=0;	

end


initial begin: TEST_CASE
     $dumpfile("ppwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
