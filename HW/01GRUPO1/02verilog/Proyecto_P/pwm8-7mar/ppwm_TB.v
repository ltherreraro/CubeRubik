module ppwm_TB;

reg clk=0;
reg enable;

ppwm uut(.clk(clk),.enable(enable));

always #1 clk = ~clk;

initial begin
enable=1;	

end


initial begin: TEST_CASE
     $dumpfile("ppwm_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule 
