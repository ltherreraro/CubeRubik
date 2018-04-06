module WB_PWM (input clk,input reset,input wb_stb,input wb_cyc,input wb_we,input [31:0] wb_addr,input [3:0] wb_sel,input [31:0] wb_din,output wb_ack,output reg  [31:0] wb_dout,output [7:0] pwm);

initial wb_dout[31:8] <= 24'b0;
reg        WRITE;
reg        READ;
reg  [7:0] DIN;
reg  [6:0] ADDR;
wire [7:0] DOUT;
reg  ACK = 0;
wire wb_rd = wb_stb & wb_cyc & ~wb_we;
wire wb_wr = wb_stb & wb_cyc &  wb_we;

assign wb_ack = wb_stb & wb_cyc & ACK;

PWM pwm(.clk(clk),.reset(reset),.read(READ),.write(WRITE),.din(DIN),.addr(ADDR),.dout(DOUT),.pwm(pwm));

always @(posedge clk)
begin
	if (reset) 
	 begin
		wb_dout[31:8] <= 24'b0;
		ACK <= 0;
	end 
	else 
       	 begin
		
//--LECTURA
		if (wb_rd & ~ACK) begin
			ACK <= 1;
			READ <= 1;
			ADDR <= wb_addr;
			wb_dout[7:0] <= DOUT;

		end 
//--ESCRITURA
		else 
		if (wb_wr & ~ack ) 
		begin
			ACK <= 1;
			WRITE <= 1;
			ADDR <= wb_addr;
			DIN <= wb_din[7:0];

		end 
		else 
		begin
			READ <= 0;
			WRITE <= 0;
		end
	end
end


endmodule
