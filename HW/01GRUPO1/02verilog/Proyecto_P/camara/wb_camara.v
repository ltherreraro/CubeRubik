module wb_cam(clk, rst, xclk, href, vsync, pclk,/* sio_c, sio_d, pwdn, reset, strobe,*/ wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o);

parameter wb_dat_width = 32;
parameter wb_adr_width = 32; // 2^32 bytes addressable

//Señales Fpga   
input 				clk;
input 				rst;
//señales externas
output 				xclk;
input 				href;
input				vsync;
input				pclk;
input 	[5:0] 			din;			
//output			sio_c;
//output			sio_d;
//output			pwdn;
//output			reset;
//input				strobe;	
//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		    		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output reg		    		wb_ack_o;
//señales que se tienen que quitar
input 				reset1;
output				empty;
output				full;
output				led;
//señales camara fifo
reg 				rd;
wire  [7:0] 			dout;



//definicion lectura y escritura
wire wb_rd = wb_stb_i & wb_cyc_i & ~wb_we_i; 
wire wb_wr = wb_stb_i & wb_cyc_i &  wb_we_i;

camara cm(.clk(clk), .reset(rst),.href(href),.vsync(vsync), .din(din), .empty(empty), .full(full), .dout(dout), .rd(rd), .led(led), .pclk(pclk), .xvclk(xclk));

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
						2'b01:	wb_dat_o[31:22]<=dout;
				  		default: wb_dat_o <= 32'b0; 
				 	endcase
			end
		       

			else if (wb_wr & ~wb_ack_o ) 
			begin  
			   	wb_ack_o <= 1;                          	//ciclo escritura
				     	case(wb_adr_i[3:2])
					     2'b01: rd   <= wb_dat_i[1:0];
					endcase
			end
     	end        
end  


endmodule

