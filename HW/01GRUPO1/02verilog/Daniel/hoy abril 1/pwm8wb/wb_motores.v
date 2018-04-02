module wb_motores(clk, rst, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o, pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7, dout);

parameter wb_dat_width = 32;
parameter wb_adr_width = 32; // 2^32 bytes 

//Señales Fpga   
input 				clk;
input				rst;
//señales externas
output  			pwm0;
output  			pwm1;
output  			pwm2;
output  			pwm3;
output  			pwm4;
output  			pwm5;
output  			pwm6;
output  			pwm7;
output reg [31:0]		dout;

//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		    		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output 	reg	    		wb_ack_o;

//definicion pwm

reg rd;
reg wr;

reg [31:0] d_in;
reg [7:0] addr;

//definicion lectura y escritura
wire wb_rd = wb_stb_i & wb_cyc_i & ~wb_we_i; 
wire wb_wr = wb_stb_i & wb_cyc_i &  wb_we_i;

periferico_pwm pwm_p(.clk(clk) , .d_in(d_in) , .addr(addr) , .rd(rd) , .wr(wr), .d_out(d_out),  .pwm0(pwm0), .pwm1(pwm1), .pwm2(pwm2) , .pwm3(pwm3) , .pwm4(pwm4), .pwm5(pwm5), .pwm6(pwm6), .pwm7(pwm7));

always @(posedge clk)
begin
	if (rst)
	begin
		wb_ack_o <= 0;			         		// reset
	end
     	else 
	begin 
		wb_ack_o<=0;
			if (wb_rd & ~wb_ack_o) 
			begin            				//ciclo lectura
				wb_ack_o<=1;
				 	case(wb_adr_i[3:2]) 
						2'b00:
						begin  
						    	wb_dat_o[31:0]<=dout;
						    	
					 	end
				  		default: wb_dat_o <= 32'b0; 
				 	endcase
			end
		       

			else if (wb_wr & ~wb_ack_o ) 
			begin  
			   	wb_ack_o <= 1;                          	//ciclo escritura
				     	case(wb_adr_i[4:2])
					    	3'b001: rd   <= wb_dat_i[1:0];
					    	3'b010: addr   <= wb_dat_i[7:0];
						3'b100: wr   <= wb_dat_i[1:0];
						3'b011: d_in   <= wb_dat_i[1:0];
					endcase
			end
     	end        
end  
endmodule

