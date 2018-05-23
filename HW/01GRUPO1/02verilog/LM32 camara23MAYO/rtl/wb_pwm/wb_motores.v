module wb_motores(clk, rst, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o, pwm0, pwm1, pwm2, pwm3, pwm4, pwm5, pwm6, pwm7);

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


//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		 [ 3:0]		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output 		    		wb_ack_o;

//definicion pwm

reg rd;
reg wr;
wire [31:0] d_out;
reg [31:0] d_in;
reg [7:0] addr;


periferico_pwm pwm_p(.clk(clk) , .d_in(d_in) , .addr(addr) , .rd(rd) , .wr(wr), .d_out(d_out),  .pwm0(pwm0), .pwm1(pwm1), .pwm2(pwm2) , .pwm3(pwm3) , .pwm4(pwm4), .pwm5(pwm5), .pwm6(pwm6), .pwm7(pwm7));
//definicion lectura y escritura

wire wb_rd = wb_stb_i & wb_cyc_i & ~wb_we_i;
wire wb_wr = wb_stb_i & wb_cyc_i &  wb_we_i;

reg  ack;

assign wb_ack_o       = wb_stb_i & wb_cyc_i & ack;



always @(posedge clk)
begin
	if (rst) begin
		wb_dat_o[31:0] <= 32'b0;
		ack    <= 0;
	end else begin
		
		ack    <= 0;

		if (wb_rd & ~ack) begin
			ack <= 1;

			case (wb_adr_i[7:0])
			'h00: begin
				wb_dat_o[7:0] <= d_out;
			end
			
			default: begin
				wb_dat_o[7:0] <= 8'b0;
			end
			endcase
		end else if (wb_wr & ~ack ) begin
			ack <= 1;

			case (wb_adr_i[7:0])
			'h04: rd   <= wb_dat_i;
			'h08: addr   <= wb_dat_i;
			'h0c: wr   <= wb_dat_i;
			'h10: d_in   <= wb_dat_i;
			endcase
		end
	end
end

endmodule

