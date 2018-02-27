module pwm_TB;

reg clk=0;
reg reset;
reg enable;

pwm uut(.clk(clk),.reset(reset),.enable(enable));

always #1 clk = ~clk;

initial begin
  
end

initial begin
reset=1;
#40;
reset=0;  
enable=1;
end


initial begin: TEST_CASE
     $dumpfile("pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
