//`timescale 1 ns/100 ps

module pwm_top_TB;
    reg clk=1;
    reg res=0;
    reg rd=0;
    reg wr=0;
    reg [31:0] data_in;
    reg [31:0] addr;

pwm_top uut(.clk(clk), .res(res), .rd(rd), .wr(wr), .data_in(data_in), .addr(addr));

always #1 clk = ~clk;

initial begin
wr=1;
addr= 32'h24;
data_in=1;
addr= 32'h28;
data_in=150000;
addr= 32'h2C
data_in=2000000;
#3000
res=1;

#5000;

end


initial begin: TEST_CASE
     $dumpfile("pwm_top_TB.vcd");
     $dumpvars(-1, uut);
     #(30000) $finish;
   


end
endmodule
