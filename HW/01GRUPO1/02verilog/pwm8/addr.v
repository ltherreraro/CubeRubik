module addr (clk , d_in , cs , addr , rd , wr, d_out,  pwm0, pwm1/*, pwm2 , pwm3 , pwm4, pwm5, pwm6, pwm7*/);
  
  input clk;
  input [31:0]d_in;
  input cs;
  input [7:0]addr; //6bits
  input rd;
  input wr;
  output reg [31:0]d_out;
  output pwm0, pwm1/*, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7*/;

//------------------------------------ regs and wires-------------------------------

reg [6:0] s; 	//selector mux_4  and demux_4
reg E0,E1,E2,E3,E4,E5,E6,E7;
reg [31:0] D0,D1,D2,D3,D4,D5,D6,D7;
reg [31:0] T0,T1,T2,T3,T4,T5,T6,T7;



always @(*) begin//----address_decoder------------------
case (addr)
8'h0:begin s = (cs && wr) ? 6'b000001 : 6'b000000 ;end //E0enable 	0	S=1
8'h4:begin s = (cs && wr) ? 6'b000010 : 6'b000000 ;end //T0		4       S=2
8'h8:begin s = (cs && wr) ? 6'b000011 : 6'b000000 ;end //D0		8	S=3		
8'hC:begin s = (cs && wr) ? 6'b000100 : 6'b000000 ;end //E1enable 	12	S=4
8'h10:begin s = (cs && wr) ? 6'b000101 : 6'b000000 ;end //T1		16	S=5
8'h14:begin s = (cs && wr) ? 6'b000110 : 6'b000000 ;end //D1		20	S=6
8'h18:begin s = (cs && wr) ? 6'b000111 : 6'b000000 ;end //E2enable	24	S=7
8'h1C:begin s = (cs && wr) ? 6'b001000 : 6'b000000 ;end //T2		28	S=8	
8'h20:begin s = (cs && wr) ? 6'b001001 : 6'b000000 ;end //D2		32	S=9
8'h24:begin s = (cs && wr) ? 6'b001010 : 6'b000000 ;end //E3enable	36	S=10
8'h28:begin s = (cs && wr) ? 6'b001011 : 6'b000000 ;end //T3		40	S=11
8'h2C:begin s = (cs && wr) ? 6'b001100 : 6'b000000 ;end //D3		44	S=12
8'h30:begin s = (cs && wr) ? 6'b001101 : 6'b000000 ;end //E4enable	48	S=13
8'h34:begin s = (cs && wr) ? 6'b001110 : 6'b000000 ;end //T4		62	S=14
8'h38:begin s = (cs && wr) ? 6'b001111 : 6'b000000 ;end //D4		66	S=15
8'h3C:begin s = (cs && wr) ? 6'b010000 : 6'b000000 ;end //E5enable	60	S=16
8'h40:begin s = (cs && wr) ? 6'b010001 : 6'b000000 ;end //T5		64	S=17
8'h44:begin s = (cs && wr) ? 6'b010010 : 6'b000000 ;end //D5		68	S=18
8'h48:begin s = (cs && wr) ? 6'b010011 : 6'b000000 ;end //E6enable	72	S=19
8'h4C:begin s = (cs && wr) ? 6'b010100 : 6'b000000 ;end //T6		76	S=20
8'h50:begin s = (cs && wr) ? 6'b010101 : 6'b000000 ;end //D6		80	S=21
8'h54:begin s = (cs && wr) ? 6'b010110 : 6'b000000 ;end //E7enable	84	S=22
8'h58:begin s = (cs && wr) ? 6'b010111 : 6'b000000 ;end //T7		88	S=23
8'h5c:begin s = (cs && wr) ? 6'b011000 : 6'b000000 ;end //D7		92	S=24
8'h60: begin s = (cs && rd) ? 6'b000010 : 6'b000000 ;end //E0enable 	0	S=2

default:begin s=6'b000000 ; end
endcase
end//-----------------address_decoder--------------------





always @(negedge clk) begin//-------------------- demux


if (s==1) 
begin
    E0<=d_in[1:0];
end
else if (s==2) 
begin
    T0<=d_in[31:0];
end
else if (s==3) 
begin
    D0<=d_in[31:0];
end
else if (s==4) 
begin
    E1<=d_in[1:0];
end
else if (s==5) 
begin
    T1<=d_in[31:0];
end
else if (s==6) 
begin
    D1<=d_in[31:0];
end
else if (s==7) 
begin
    E2<=d_in[31:0];
end
else if (s==8) 
begin
    T2<=d_in[31:0];
end
else if (s==9) 
begin
    D2<=d_in[31:0];
end
else if (s==10) 
begin
    E3<=d_in[1:0];
end
else if (s==11) 
begin
    T3<=d_in[31:0];
end
else if (s==12) 
begin
    D3<=d_in[31:0];
end
else if (s==13) 
begin
    E4<=d_in[1:0];
end
else if (s==14) 
begin
    T4<=d_in[31:0];
end
else if (s==15) 
begin
    D4<=d_in[31:0];
end
else if (s==16) 
begin
    E5<=d_in[31:0];
end
else if (s==17) 
begin
    T5<=d_in[31:0];
end
else if (s==18) 
begin
    D5<=d_in[31:0];
end
else if (s==19) 
begin
    E6<=d_in[1:0];
end
else if (s==20) 
begin
    T6<=d_in[31:0];
end
else if (s==21) 
begin
    D6<=d_in[31:0];
end
else if (s==22) 
begin
    E7<=d_in[31:0];
end
else if (s==23) 
begin
    T7<=d_in[31:0];
end
else if (s==24) 
begin
    D7<=d_in[31:0];
end

end



always @(negedge clk) begin//-----------------------mux:  Saber en que esta el sistema
case (s)
6'b000010: d_out[31:0]= E0;	

default: d_out=0;
endcase
end//----------------------------------------------mux_4*/

								

endmodule
