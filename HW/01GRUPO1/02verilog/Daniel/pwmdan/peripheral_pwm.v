module peripheral_bt(clk , rst , d_in , cs , addr , rd , wr, d_out,  pwmout);
  
  input clk;
  input rst;
  input [31:0]d_in;
  input cs;
  input [3:0]addr; 
  input rd;
  input wr;
  output reg [31:0]d_out;
  output pwmout;

//------------------------------------ regs and wires-------------------------------

reg [5:0] s; 	//selector mux_4  and demux_4

wire ledres;  // out_led
wire [31:0] D;
wire [31:0] T;

pwm pwm(.clk(clk), .reset(rst), .T(T), .D(D), .ledres(ledres), .pwmout(pwmout));


always @(*) begin//----address_decoder------------------
case (addr)
4'h0:begin s = (cs && wr) ? 5'b00001 : 5'b00000 ;end //T
4'h2:begin s = (cs && wr) ? 5'b00010 : 5'b00000 ;end //D
4'h4:begin s = (cs && wr) ? 5'b00100 : 5'b00000 ;end //
4'h6:begin s = (cs && wr) ? 5'b01000 : 5'b00000 ;end //
4'h8:begin s = (cs && rd) ? 5'b10000 : 5'b00000 ;end //ledres
default:begin s=5'b00000 ; end
endcase
end//-----------------address_decoder--------------------





always @(negedge clk) begin//-------------------- escritura de registros


if (s[0]==1) begin
    din_uart<=d_in[7:0];
    uart_enable=1;
end
else begin
    if (uart_busy)
        uart_enable=0;
end
end



always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
case (s)
5'b00010: d_out[0]= uart_done;	
5'b00100: d_out[0]= uart_avail;
5'b01000: d_out[0]= uart_busy;	
5'b10000: d_out[7:0] = dout_uart;

default: d_out=0;
endcase
end//----------------------------------------------mux_4

								

endmodule
