module peripheralpwm(clk, reset, datain, dataout, addr, pwm,r,w);
input [31:0] datain;
input [31:0] addr;
output reg [15:0] dataout;
input clk;
input reset;
input r;
input w;
output [7:0] pwm;


reg [7:0] en;
reg [31:0] t0;
reg [31:0] t1;
reg [31:0] t2;
reg [31:0] t3;
reg [31:0] t4;
reg [31:0] t5;
reg [31:0] t6;
reg [31:0] t7;
reg [31:0] d0;
reg [31:0] d1;
reg [31:0] d2;
reg [31:0] d3;
reg [31:0] d4;
reg [31:0] d5;
reg [31:0] d6;
reg [31:0] d7;


pwm u(.en(en), .clk(clk), .t0(t0), .t1(t1), .t2(t2), .t3(t3), .t4(t4), .t5(t5), .t6(t6), .t7(t7), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .d6(d6), .d7(d7), .pwm(pwm));

always@ (posedge clk)

	if(reset)
	begin
		en<=0;
		t0<=0;
		t1<=0;
		t2<=0;
		t3<=0;
		t4<=0;
		t5<=0;
		t6<=0;
		t7<=0;
		d0<=0;
		d1<=0;
		d2<=0;
		d3<=0;
		d4<=0;
		d5<=0;
		d6<=0;
		d7<=0;
		dataout<=0;	
	end
	else if(w)
	begin
		case(addr)
		16'h0000: en<=datain;
		16'h0004: t0<=datain;
		16'h0008: t1<=datain;
		16'h000C: t2<=datain;
		16'h0010: t3<=datain;
		16'h0014: t4<=datain;
		16'h0018: t5<=datain;
		16'h001C: t6<=datain;
		16'h0020: t7<=datain;
		16'h0024: d0<=datain;
		16'h0028: d1<=datain;
		16'h002C: d2<=datain;
		16'h0030: d3<=datain;
		16'h0034: d4<=datain;
		16'h0038: d5<=datain;
		16'h003C: d6<=datain;
		16'h0040: d7<=datain;
		endcase
	end

	else if(r)
	begin
		case(addr)
		16'h0044: dataout<=pwm;
		endcase
	end


endmodule
