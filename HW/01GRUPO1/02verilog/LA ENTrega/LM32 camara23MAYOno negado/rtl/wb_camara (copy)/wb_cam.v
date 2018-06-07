module wb_cam (clk, rst, rdclk, href, vsync, we, oe, wrst, rrst, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o,din, led);



parameter wb_dat_width = 32;
parameter wb_adr_width = 32; // 2^32 bytes addressable

//Señales Fpga   
input 				clk;
input 				rst;
//señales externas
output				rdclk;
output 				we;
output 				oe;
output 				wrst;
output 				rrst;
input 				href;
input				vsync;
input 	[7:0] 			din;
			
//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		    		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output 		    		wb_ack_o;
//señales que se tienen que quitar
output				led;
//señales camara fifo
reg 				leer;
reg				leer1;
wire  [7:0] 			d_out;
reg 				takepicture;
reg 				resetrd;
reg				resetwr;




camara cm(.clk(clk), .reset(rst),.href(href),.vsync(vsync), .rdclk(rdclk), .we(we), .dout(d_out), .leer(leer),.leer1(leer1), .led(led),.takepicture(takepicture),.resetwr(resetwr),.resetrd(resetrd),.din(din),.oe(oe), .wrst(wrst), .rrst(rrst));

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
			'h04: takepicture   <= wb_dat_i;
			'h08: leer   <= wb_dat_i;
			'h0C: resetwr   <= wb_dat_i;
			'h10: resetrd   <= wb_dat_i;
			'h14: leer1	<=wb_dat_i;
			endcase
		end
	end
end


endmodule

