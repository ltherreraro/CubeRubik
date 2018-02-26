module peripheral_bt(clk , d_in , cs , addr , rd , wr, d_out,  pwm0,pwm1,pwm2,pwm3,pwm4,pwm5,pwm6,pwm7);
  
  input clk;
  input [31:0]d_in;
  input cs;
  input [3:0]addr; 
  input rd;
  input wr;
  output reg [31:0]d_out;
  output pwm0, pwm1,pwm2,pwm3,pwm4,pwm5,pwm6,pwm7;

//------------------------------------ regs and wires-------------------------------

reg [6:0] s; 	//selector mux_4  and demux_4
wire E0,E1,E2,E3,E4,E5,E6,E7;
wire [31:0] D0,D1,D2,D3,D4,D5,D6,D7;
wire [31:0] T0,T1,T2,T3,T4,T5,T6,T7;

pwm pwm(.clk(clk), .T0(T0), .D0(D0),.pwm0(pwm0), .T1(T1), .D1(D1),.pwm1(pwm1), .T2(T2), .D2(D2),.pwm2(pwm2), .T3(T3), .D3(D3),.pwm3(pwm3), .T4(T4), .D4(D4),.pwm4(pwm4), .T5(T5), .D5(D5),.pwm5(pwm5), .T6(T6), .D6(D6),.pwm6(pwm6), .T7(T7), .D7(D7),.pwm7(pwm7));


always @(*) begin//----address_decoder------------------
case (addr)
4'h0:begin s = (cs && wr) ? 6'b000001 : 6'b000000 ;end //E0enable 	0	S=1
4'h4:begin s = (cs && wr) ? 6'b000010 : 6'b000000 ;end //T0		4       S=2
4'h8:begin s = (cs && wr) ? 6'b000011 : 6'b000000 ;end //D0		8	S=3		
4'hC:begin s = (cs && wr) ? 6'b000100 : 6'b000000 ;end //E1enable 	12	S=4
4'h10:begin s = (cs && wr) ? 6'b000101 : 6'b000000 ;end //T1		16	S=5
4'h14:begin s = (cs && wr) ? 6'b000110 : 6'b000000 ;end //D1		20	S=6
4'h18:begin s = (cs && wr) ? 6'b000111 : 6'b000000 ;end //E2enable	24	S=7
4'h1C:begin s = (cs && wr) ? 6'b001000 : 6'b000000 ;end //T2		28	S=8	
4'h20:begin s = (cs && wr) ? 6'b001001 : 6'b000000 ;end //D2		32	S=9
4'h24:begin s = (cs && wr) ? 6'b001010 : 6'b000000 ;end //E3enable	36	S=10
4'h28:begin s = (cs && wr) ? 6'b001011 : 6'b000000 ;end //T3		40	S=11
4'h2C:begin s = (cs && wr) ? 6'b001100 : 6'b000000 ;end //D3		44	S=12
4'h30:begin s = (cs && wr) ? 6'b001101 : 6'b000000 ;end //E4enable	48	S=13
4'h34:begin s = (cs && wr) ? 6'b001110 : 6'b000000 ;end //T4		62	S=14
4'h38:begin s = (cs && wr) ? 6'b001111 : 6'b000000 ;end //D4		66	S=15
4'h3C:begin s = (cs && wr) ? 6'b010000 : 6'b000000 ;end //E6enable	60	S=16
4'h40:begin s = (cs && wr) ? 6'b010001 : 6'b000000 ;end //T6		64	S=17
4'h44:begin s = (cs && wr) ? 6'b010010 : 6'b000000 ;end //D6		68	S=18
4'h48:begin s = (cs && wr) ? 6'b010011 : 6'b000000 ;end //E6enable	72	S=19
4'h5C:begin s = (cs && wr) ? 6'b010100 : 6'b000000 ;end //T6		76	S=20
4'h50:begin s = (cs && wr) ? 6'b010101 : 6'b000000 ;end //D6		80	S=21
4'h54:begin s = (cs && wr) ? 6'b010110 : 6'b000000 ;end //E7enable	84	S=22
4'h58:begin s = (cs && wr) ? 6'b010111 : 6'b000000 ;end //T7		88	S=23
4'h6c:begin s = (cs && wr) ? 6'b011000 : 6'b000000 ;end //D7		92	S=24
default:begin s=6'b000000 ; end
endcase
end//-----------------address_decoder--------------------





always @(negedge clk) begin//-------------------- demux


if (s[1]==1) 
begin
    E0<=d_in[1:0];
end
else if (s[2]==1) 
begin
    T0<=d_in[31:0];
end
else if (s[3]==1) 
begin
    D0<=d_in[1:0];
end
else if (s[4]==1) 
begin
    E1<=d_in[1:0];
end
else if (s[5]==1) 
begin
    T1<=d_in[31:0];
end
else if (s[6]==1) 
begin
    D1<=d_in[1:0];
end
else if (s[7]==1) 
begin
    E2<=d_in[31:0];
end
else if (s[8]==1) 
begin
    T2<=d_in[31:0];
end
else if (s[9]==1) 
begin
    D2<=d_in[1:0];
end
else if (s[10]==1) 
begin
    E3<=d_in[1:0];
end
else if (s[11]==1) 
begin
    T3<=d_in[31:0];
end
else if (s[12]==1) 
begin
    D3<=d_in[1:0];
end
else if (s[13]==1) 
begin
    E4<=d_in[1:0];
end
else if (s[14]==1) 
begin
    T4<=d_in[31:0];
end
else if (s[15]==1) 
begin
    D4<=d_in[1:0];
end
else if (s[16]==1) 
begin
    E5<=d_in[31:0];
end
else if (s[17]==1) 
begin
    T5<=d_in[31:0];
end
else if (s[18]==1) 
begin
    D5<=d_in[1:0];
end
else if (s[19]==1) 
begin
    E6<=d_in[1:0];
end
else if (s[20]==1) 
begin
    T6<=d_in[31:0];
end
else if (s[21]==1) 
begin
    D6<=d_in[1:0];
end
else if (s[22]==1) 
begin
    E7<=d_in[1:0];
end
else if (s[23]==1) 
begin
    T7<=d_in[31:0];
end
else if (s[24]==1) 
begin
    D7<=d_in[1:0];
end

end



/*always @(negedge clk) begin//-----------------------mux:  Saber en que esta el sistema
case (s)
5'b00010: d_out[0]= uart_done;	
5'b00100: d_out[0]= uart_avail;
5'b01000: d_out[0]= uart_busy;	
5'b10000: d_out[7:0] = dout_uart;

default: d_out=0;
endcase
end//----------------------------------------------mux_4*/

								

endmodule
