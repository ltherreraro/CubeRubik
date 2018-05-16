module wb_camara_TB;
  reg clk=0;
 reg rst;
reg href;
reg vsync;
reg pclk;
reg [31:0] wb_adr_i;
reg [31:0] wb_dat_i;
reg wb_we_i;
reg wb_cyc_i;
reg wb_stb_i;
reg wb_sel_i;

 
wb_camara uut(.clk(clk), .rst(rst), .href(href), .vsync(vsync), .pclk(pclk), .wb_adr_i(wb_adr_i), .wb_dat_i(wb_dat_i), .wb_we_i(wb_we_i), .wb_cyc_i(wb_cyc_i), .wb_stb_i(wb_stb_i), .wb_sel_i(wb_sel_i));

always #1 clk = ~clk;

initial begin
rst=1;
wb_dat_i=2'b01;
wb_adr_i[3:2]=2'b01;
#40
rst=0;
#10
wb_stb_i=1;
wb_cyc_i=1;
wb_we_i=0;
#30
wb_we_i=1;


end


//always clk = #1 ~clk;

initial begin: TEST_CASE
     $dumpfile("wb_camara_TB.vcd");
     $dumpvars(-1, uut);
     #(1000000) $finish;
   end

endmodule //
