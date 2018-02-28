module pwm_TB;

reg clk=0;
reg reset;


pwm uut(.clk(clk),.reset(reset));

always #1 clk = ~clk;


initial begin
reset=1;
#40;
reset=0;  
end


initial begin: TEST_CASE
     $dumpfile("pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(10000000) $finish;
   end

endmodule 
