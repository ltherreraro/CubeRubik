module wb_cam (clk, rst, Xclk, Href, Vsyn, Pclk, PWDN, reset, data, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i,wb_sel_i, wb_dat_o, wb_ack_o);

parameter wb_dat_width = 32;
parameter wb_adr_width = 32; // 2^32 bytes addressable

//Señales Fpga   
input 				clk;
input 				rst;
output 				Xclk;
input 				Href;
input				Vsyn;
input				Pclk;
input 	[7:0] 	    data;			
//output			sio_c;
//output			sio_d;
output			    PWDN;
output  			reset;
//input				strobe;	
//señales WishBone 
input [wb_adr_width-1:0]	wb_adr_i;
input [wb_dat_width-1:0] 	wb_dat_i;
input 		    		wb_we_i;
input 		    		wb_cyc_i;
input 		    		wb_stb_i;
input 		    		wb_sel_i;   
output reg [wb_dat_width-1:0] 	wb_dat_o; 
output 		    		wb_ack_o;
//señales camara fifo
reg 				rd;
reg                 capture;
wire  [7:0] 	    data_out;

//definicion lectura y escritura

camara cm(.clk(clk), .rst(rst), .capture(capture), .rd(rd), .Href(Href),.Vsyn(Vsyn), .data(data), .data_out(data_out), .Pclk(Pclk), .Xclk(Xclk), .reset(reset), .PWDN(PWDN));

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
			8'h00: begin
				wb_dat_o[9:0] <= data_out;
			end
			
			default: begin
				wb_dat_o[9:0] <= 10'b0;
			end
			endcase
		end else if (wb_wr & ~ack ) begin
			ack <= 1;

			case (wb_adr_i[7:0])
			8'h04: rd   <= wb_dat_i;
            8'h08: capture <= wb_dat_i;
			endcase
		end
	end
end


endmodule

