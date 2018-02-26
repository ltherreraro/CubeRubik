module pwm_TB;

reg clk=0;
reg [31:0] T;
reg [31:0] D;
pwm uut(.clk(clk),.T(T),.D(D));

always #1 clk = ~clk;

initial begin
#40;
T=50; 
#40;
D=20;   
end



initial begin: TEST_CASE
     $dumpfile("pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
