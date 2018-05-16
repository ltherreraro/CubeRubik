//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
`timescale 1 s / 1 ps

module system_tb;

//----------------------------------------------------------------------------
// Parameter (may differ for physical synthesis)
//----------------------------------------------------------------------------
parameter tck              = 20;       // clock period in ns
parameter uart_baud_rate   = 1152000;  // uart baud rate for simulation 

parameter clk_freq = 1000000000 / tck; // Frequenzy in HZ
//----------------------------------------------------------------------------
//
//----------------------------------------------------------------------------
reg        clk;
reg        rst;
wire       led;

//----------------------------------------------------------------------------
// UART STUFF (testbench uart, simulating a comm. partner)
//----------------------------------------------------------------------------
reg         uart_rxd;
wire         uart_txd;

//----------------------------------------------------------------------------
// Device Under Test 
//----------------------------------------------------------------------------
system #(
	.clk_freq(           clk_freq         ),
	.uart_baud_rate(     uart_baud_rate   )
) dut  (
	.clk(          clk    ),
	// Debug
	.rst(          rst    ),
	.led(          led    ),
	// Uart
	.uart_rxd(  uart_rxd  ),
	.uart_txd(  uart_txd  )
);

/* Clocking device */
initial         clk <= 0;
always #(tck/2) clk <= ~clk;

/*initial
begin
uart_txd<=1;
#4;
initial
begin
#200;
uart_rxd<=1'b0;
#200;
uart_rxd<=1'b0;
#200;
uart_rxd<=1'b0;
#200;
uart_rxd<=1'b0;

#tck;
uart_rxd<=1'b0;
#tck;
uart_rxd<=1'b0;
#tck;
#tck;
uart_rxd<=1'b0;

#tck;
uart_rxd<=1'b0;
#tck;
uart_rxd<=1'b1;
#tck;
uart_rxd<=1'b0;
#800;
uart_rxd<=1'b1;
#800;
uart_rxd<=1'b1;
#800;
uart_rxd<=1'b1;
#800;
uart_rxd<=1'b1;
#800;
uart_rxd<=1'b0;
#800;
uart_rxd<=1'b0;
#800;
uart_rxd<=1'b0;
#800;
uart_rxd<=1'b0;
#6000;
uart_rxd<=1'b1;
end
*/
/* Simulation setup */
initial begin



	$dumpfile("system_tb.vcd");
	//$monitor("%b,%b,%b,%b",clk,rst,uart_txd,uart_rxd);
	$dumpvars(-1, dut);
	//$dumpvars(-1,clk,rst,uart_txd);
	// reset
	#0  rst <= 0;
	#40 rst <= 1;

	#(tck*20000) $finish;
end



endmodule
