
module divisor_freq( input clk, output clkf );
//divisor freq
parameter CK = 50_000_000;
localparam num = $clog2(CK);
reg [num-1:0] divcounter = 0;

always @(posedge clk)
  if (divcounter == CK - 1) 
    divcounter <= 0;
  else 
    divcounter <= divcounter + 1;
    
//-- Sacar el bit mas significativo por clk_out
assign clkf = divcounter[num-1];
endmodule
