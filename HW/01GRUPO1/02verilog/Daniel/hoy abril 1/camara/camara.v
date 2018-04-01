module camara (input clk, input reset, input reset1, input href, input vsync, input [5:0] din, output empty,  output full, output [7:0] dout,  input rd, output led, input pclk, output xvclk);

wire pclk;
wire pclk1;
assign pclk1=pclk;
div_freq div(.clk(clk), .reset(reset), .led(led), .clkout(xvclk));
fifo fifo(.pclk(pclk1), .reset(reset1), .href(href), .vsync(vsync), .din(din), .empty(empty), .full(full), .dout(dout), .rd(rd));





endmodule
