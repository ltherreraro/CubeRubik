module slave_mode_TB;

  reg clk=0;
 reg reset;
reg enable;

slave_mode uut(.clk(clk), .reset(reset),.enable(enable));
always #1 clk = ~clk;

initial begin
reset=0; enable=0;
#40;
reset=1;  enable=1;
end


always clk = #1 ~clk;

initial begin: TEST_CASE
     $dumpfile("slave_mode_TB.vcd");
     $dumpvars(-1, uut);
     #(2000000) $finish;
   end

endmodule //
