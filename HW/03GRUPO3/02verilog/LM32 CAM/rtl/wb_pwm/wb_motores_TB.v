module wb_motores_TB;

reg clk=0;
reg rst;
reg [31:0] wb_adr_i;
reg [31:0] wb_dat_i;
reg wb_we_i;
reg wb_cyc_i;
reg wb_stb_i;
reg wb_sel_i;

wb_motores uut(.clk(clk), .wb_adr_i(wb_adr_i), .wb_dat_i(wb_dat_i), .wb_we_i(wb_we_i), .wb_cyc_i(wb_cyc_i), .wb_stb_i(wb_stb_i), .wb_sel_i(wb_sel_i));

always #1 clk = ~clk;

initial begin
rst=1;
wb_dat_i=2'b01;
wb_adr_i=8;
#40
rst=0;
#10
wb_stb_i=1;
wb_cyc_i=1;
wb_we_i=0;
#30
wb_we_i=1;



end


initial begin: TEST_CASE
     $dumpfile("wb_motores_TB.vcd");
     $dumpvars(-1, uut);
     #(100000) $finish;
   end

endmodule 
