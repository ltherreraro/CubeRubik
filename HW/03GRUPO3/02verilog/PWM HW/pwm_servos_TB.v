//`timescale 1 ns/100 ps

module pwm_servos_TB;
reg clk = 0;
reg reset=0;
reg [1:0] in;

pwm_servos uut(.clk(clk), .reset(reset), .in(in));

always #1 clk = ~clk;

initial begin
reset=1; 
#100;
reset=0;
in=1;
#50000

reset=1;
#50;
reset=0;
in=0;
#15000;
in=2;
end


initial begin: TEST_CASE
     $dumpfile("pwm_servos_TB.vcd");
     $dumpvars(-1, uut);
     #(3000000) $finish;
   


end
endmodule
