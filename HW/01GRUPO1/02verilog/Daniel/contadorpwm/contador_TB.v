module contador_TB;

reg clk=0;
reg enable;


contador uut(.clk(clk),.enable(enable));

always #1 clk = ~clk;


initial begin
enable=0;
#40;
enable=1;  
end


initial begin: TEST_CASE
     $dumpfile("contador_TB.vcd");
     $dumpvars(-1, uut);
     #(10000000) $finish;
   end

endmodule 
