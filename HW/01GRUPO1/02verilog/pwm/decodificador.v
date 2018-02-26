module peripheral_bt(clk, cs , addr , rd , wr,s);
  
  input clk;
  input cs;
  input [3:0]addr; 
  input rd;
  input wr;
  output reg [6:0] s; //selector




always @(*) begin//----address_decoder------------------
case (addr)
4'h0:begin s = (cs && wr) ? 6'b000001 : 6'b000000 ;end //E0enable 	0
4'h4:begin s = (cs && wr) ? 6'b000010 : 6'b000000 ;end //T0		4
4'h8:begin s = (cs && wr) ? 6'b000100 : 6'b000000 ;end //D0		8
4'hC:begin s = (cs && wr) ? 6'b001000 : 6'b000000 ;end //E1enable 	12	
4'h10:begin s = (cs && wr) ? 6'b010000 : 6'b000000 ;end //T1		16	
4'h14:begin s = (cs && wr) ? 6'b011110 : 6'b000000 ;end //D1		20
4'h18:begin s = (cs && wr) ? 6'b011100 : 6'b000000 ;end //E2enable	24
4'h1C:begin s = (cs && wr) ? 6'b011000 : 6'b000000 ;end //T2		28	
4'h20:begin s = (cs && wr) ? 6'b001110 : 6'b000000 ;end //D2		32
4'h24:begin s = (cs && wr) ? 6'b001010 : 6'b000000 ;end //E3enable	36
4'h28:begin s = (cs && wr) ? 6'b011111 : 6'b000000 ;end //T3		40
4'h2C:begin s = (cs && wr) ? 6'b001111 : 6'b000000 ;end //D3		44
4'h30:begin s = (cs && wr) ? 6'b000110 : 6'b000000 ;end //E4enable	48
4'h34:begin s = (cs && wr) ? 6'b001100 : 6'b000000 ;end //T4		62
4'h38:begin s = (cs && wr) ? 6'b011010 : 6'b000000 ;end //D4		66
4'h3C:begin s = (cs && wr) ? 6'b010101 : 6'b000000 ;end //E6enable	60
4'h40:begin s = (cs && wr) ? 6'b011011 : 6'b000000 ;end //T6		64
4'h44:begin s = (cs && wr) ? 6'b000101 : 6'b000000 ;end //D6		68
4'h48:begin s = (cs && wr) ? 6'b001101 : 6'b000000 ;end //E6enable	72
4'h5C:begin s = (cs && wr) ? 6'b100110 : 6'b000000 ;end //T6		76
4'h50:begin s = (cs && wr) ? 6'b100101 : 6'b000000 ;end //D6		80
4'h54:begin s = (cs && wr) ? 6'b101000 : 6'b000000 ;end //E7enable	84
4'h58:begin s = (cs && wr) ? 6'b100010 : 6'b000000 ;end //T7		88
4'h6c:begin s = (cs && wr) ? 6'b100100 : 6'b000000 ;end //D7		92
default:begin s=6'b000000 ; end
endcase
end//-----------------address_decoder--------------------


endmodule
