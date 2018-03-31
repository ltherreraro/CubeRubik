module slave_mode (clk,reset,led1,xvclk,pwdn,resetb,led,enable);

output xvclk;
output pwdn;
output resetb;
output led;
input enable;
input clk;
input reset;
output led1;




div_freq div(.clk(clk),.clkout(xvclk),.reset(reset),.led(led1));
slave sl(.xvclk(xvclk),.pwdn(pwdn),.resetb(resetb),.led(led),.enable(enable));
endmodule
