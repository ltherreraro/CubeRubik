module pwm_TB;

reg clk=0;
reg reset;
reg [31:0] T;
reg [31:0] D;

pwm uut(.clk(clk),.reset(reset),.T(T),.D(D));

always #1 clk = ~clk;

initial begin
#40;
T=40; 
#40;
D=15;   
end

initial begin
reset=1;
#40;
reset=0;  
end


initial begin: TEST_CASE
     $dumpfile("pwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
