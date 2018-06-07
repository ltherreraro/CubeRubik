module periferico_pwm (clk , d_in , addr , rd , wr, d_out,  pwm0, pwm1, pwm2 , pwm3 , pwm4, pwm5, pwm6, pwm7);

  
  input clk;
  input [31:0]d_in;
  input [7:0]addr; //6bits
  input rd;
  input wr;
  output reg [31:0]d_out;
  output pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7;

//------------------------------------ regs and wires-------------------------------

reg E0,E1,E2,E3,E4,E5,E6,E7;
reg [31:0] D0,D1,D2,D3,D4,D5,D6,D7;
reg [31:0] T0,T1,T2,T3,T4,T5,T6,T7;

pwm pw(.clk(clk), .T0(T0), .D0(D0),.pwm0(pwm0), .T1(T1), .D1(D1),.pwm1(pwm1), .T2(T2), .D2(D2),.pwm2(pwm2), .T3(T3), .D3(D3),.pwm3(pwm3), .T4(T4), .D4(D4),.pwm4(pwm4), .T5(T5), .D5(D5),.pwm5(pwm5), .T6(T6), .D6(D6),.pwm6(pwm6), .T7(T7), .D7(D7),.pwm7(pwm7),.E0(E0),.E1(E1),.E2(E2),.E3(E3),.E4(E4),.E5(E5),.E6(E6),.E7(E7));




always @(negedge clk) begin//-------------------- demux
if(wr==1 && rd==0)
begin
if (addr==8'h0) 
begin
    E0<=d_in[1:0];
end
else if (addr==8'h4) 
begin
    T0<=d_in[31:0];
end
else if (addr==8'h8) 
begin
    D0<=d_in[31:0];
end
else if (addr==8'hC) 
begin
    E1<=d_in[1:0];
end
else if (addr==8'h10) 
begin
    T1<=d_in[31:0];
end
else if (addr==8'h14) 
begin
    D1<=d_in[31:0];
end
else if (addr==8'h18) 
begin
    E2<=d_in[31:0];
end
else if (addr==8'h1C) 
begin
    T2<=d_in[31:0];
end
else if (addr==8'h20) 
begin
    D2<=d_in[31:0];
end
else if (addr==8'h24) 
begin
    E3<=d_in[1:0];
end
else if (addr==8'h28) 
begin
    T3<=d_in[31:0];
end
else if (addr==8'h2C) 
begin
    D3<=d_in[31:0];
end
else if (addr==8'h30) 
begin
    E4<=d_in[1:0];
end
else if (addr==8'h34) 
begin
    T4<=d_in[31:0];
end
else if (addr==8'h38) 
begin
    D4<=d_in[31:0];
end
else if (addr==8'h3C) 
begin
    E5<=d_in[31:0];
end
else if (addr==8'h40) 
begin
    T5<=d_in[31:0];
end
else if (addr==8'h44) 
begin
    D5<=d_in[31:0];
end
else if (addr==8'h48) 
begin
    E6<=d_in[1:0];
end
else if (addr==8'h4C) 
begin
    T6<=d_in[31:0];
end
else if (addr==8'h50) 
begin
    D6<=d_in[31:0];
end
else if (addr==8'h54) 
begin
    E7<=d_in[31:0];
end
else if (addr==8'h58) 
begin
    T7<=d_in[31:0];
end
else if (addr==8'h5c) 
begin
    D7<=d_in[31:0];
end
end
else
if(wr==0 && rd==1)
begin
if (addr==8'h0) 
begin
    d_out[31:0]<=E0;
end
else if (addr==8'h4) 
begin
    d_out[31:0]<=T0;
end
else if (addr==8'h8) 
begin
    d_out[31:0]<=D0;
end
else if (addr==8'hC) 
begin
    d_out[31:0]<=E1;
end
else if (addr==8'h10) 
begin
    d_out[31:0]<=T1;
end
else if (addr==8'h14) 
begin
    d_out[31:0]<=D1;
end
else if (addr==8'h18) 
begin
    d_out[31:0]<=E2;
end
else if (addr==8'h1C) 
begin
    d_out[31:0]<=T2;
end
else if (addr==8'h20) 
begin
    d_out[31:0]<=D2;
end
else if (addr==8'h24) 
begin
    d_out[31:0]<=E3;
end
else if (addr==8'h28) 
begin
    d_out[31:0]<=T3;
end
else if (addr==8'h2C) 
begin
    d_out[31:0]<=D3;
end
else if (addr==8'h30) 
begin
    d_out[31:0]<=E4;
end
else if (addr==8'h34) 
begin
    d_out[31:0]<=T4;
end
else if (addr==8'h38) 
begin
    d_out[31:0]<=D4;
end
else if (addr==8'h3C) 
begin
    d_out[31:0]<=E5;
end
else if (addr==8'h40) 
begin
    d_out[31:0]<=T5;
end
else if (addr==8'h44) 
begin
    d_out[31:0]<=D5;
end
else if (addr==8'h48) 
begin
    d_out[31:0]<=E6;
end
else if (addr==8'h4C) 
begin
    d_out[31:0]<=T6;
end
else if (addr==8'h50) 
begin
    d_out[31:0]<=D6;
end
else if (addr==8'h54) 
begin
    d_out[31:0]<=E7;
end
else if (addr==8'h58) 
begin
    d_out[31:0]<=T7;
end
else if (addr==8'h5C) 
begin
    d_out[31:0]<=D7;
end
end



end


		

endmodule
