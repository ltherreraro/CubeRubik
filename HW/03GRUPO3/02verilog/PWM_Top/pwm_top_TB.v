//`timescale 1 ns/100 ps

module pwm_top_TB;
    reg clk=0;
    reg res=0;
    reg rd;
    reg wr;
    reg [31:0] data_in;
    reg [31:0] addr;

pwm_top uut(.clk(clk), .res(res), .rd(rd), .wr(wr), .data_in(data_in), .addr(addr));

always #1 clk = ~clk;

initial begin
wr=1'b1;
#10;
addr= 32'h08;
#10;
data_in=2000;
#10;
addr= 32'h04;
#10
data_in=130;
#10
addr= 32'h00;
#10
data_in=1;
#10000;
addr= 32'h5C;
#10;
data_in=2000;
#10;
addr= 32'h58;
#10;
data_in=50;
#10;
addr= 32'h54;
#10;
data_in=1;
#10000;
res=1;
end


initial begin: TEST_CASE
     $dumpfile("pwm_top_TB.vcd");
     $dumpvars(-1, uut);
     #(100000) $finish;
   


end
endmodule
