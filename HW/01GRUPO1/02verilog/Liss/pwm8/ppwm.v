module ppwm (input clk ,input enable ,output pwm0,output pwm1 /*,output pwm2 ,output pwm3 ,output pwm4,output pwm5,output pwm6,output pwm7 */);

wire [7:0] addr;
wire cs;
wire rd;
wire wr;
wire [31:0] d_out;
wire [31:0] d_in;
  
addr add(.clk(clk),.d_in(d_in),.cs(cs),.addr(addr),.rd(rd),.wr(wr),.d_out(d_out),.pwm0(pwm0),.pwm1(pwm1)/*,.pwm2(pwm2),.pwm3(pwm3),.pwm4(pwm4),.pwm5(pwm5),.pwm6(pwm6),.pwm7(pwm7)*/);

contador con(.clk(clk),.enable(enable),.adr(addr),.cs(cs),.wr(wr),.rd(rd),.d_in(d_in));

pwm pw(.clk(clk), .T0(T0), .D0(D0),.pwm0(pwm0), .T1(T1), .D1(D1),.pwm1(pwm1), .T2(T2), .D2(D2),./*pwm2(pwm2), .*/T3(T3), .D3(D3)/*,.pwm3(pwm3)*/, .T4(T4), .D4(D4)/*,.pwm4(pwm4)*/, .T5(T5), .D5(D5)/*,.pwm5(pwm5)*/, .T6(T6), .D6(D6)/*,.pwm6(pwm6)*/, .T7(T7), .D7(D7)/*,.pwm7(pwm7)*/,.E0(E0),.E1(E1),.E2(E2),.E3(E3),.E4(E4),.E5(E5),.E6(E6),.E7(E7));

endmodule
