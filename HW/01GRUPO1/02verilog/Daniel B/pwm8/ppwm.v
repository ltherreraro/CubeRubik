module ppwm (input clk ,input enable ,output pwm0,output pwm1 /*,output pwm2 ,output pwm3 ,output pwm4,output pwm5,output pwm6,output pwm7 */,output wr, output done);

wire [7:0] addr;
wire cs;
wire rd;
wire wr;
wire [31:0] d_out;
wire [31:0] d_in;
  
addr add(.clk(clk),.d_in(d_in),.cs(cs),.addr(addr),.rd(rd),.wr(wr),.d_out(d_out),.pwm0(pwm0),.pwm1(pwm1)/*,.pwm2(pwm2),.pwm3(pwm3),.pwm4(pwm4),.pwm5(pwm5),.pwm6(pwm6),.pwm7(pwm7)*/,.done(done));

contador con(.clk(clk),.enable(enable),.adr(addr),.cs(cs),.wr(wr),.rd(rd),.d_in(d_in));



endmodule
