module wb_camara(clk, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o, pwm0, pwm1, pwm2, pwm3, pwm4, pmw5, pwm6, pwm7);

parameter wb_dat_width = 32;
parameter wb_adr_width = 32; // 2^32 bytes 

//Señales Fpga   
input 				clk;
//señales externas
output  			pwm0;
output  			pwm1;
output  			pwm2;
output  			pwm3;
output  			pwm4;
output  			pwm5;
output  			pwm6;
output  			pwm7;

//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		    		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output 		    		wb_ack_o;

//definicion pwm
wire d_in;
wire rd;
wire wr;
wire d_out;
wire d_in;


//definicion lectura y escritura
wire wb_rd = wb_stb_i & wb_cyc_i & ~wb_we_i; 
wire wb_wr = wb_stb_i & wb_cyc_i &  wb_we_i;

periferico_pwm pwm_p(clk , d_in , addr , rd , wr, d_out,  pwm0, pwm1, pwm2 , pwm3 , pwm4, pwm5, pwm6, pwm7);

always @(posedge clk)
begin
	if (rst)
	begin
		ack <= 0;			         		// reset
	end
     	else 
	begin 
		ack<=0;
			if (wb_rd & ~ack) 
			begin            				//ciclo lectura
				ack<=1;
				 	case(wb_adr_i[3:2]) 
						2'b00:
						begin  
						    	wb_dat_o[31:0]<=dout;
						    	
					 	end
				  		default: wb_dat_o <= 32'b0; 
				 	endcase
			end
		       

			else if (wb_wr & ~ack ) 
			begin  
			   	ack <= 1;                          	//ciclo escritura
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

