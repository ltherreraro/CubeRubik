//`timescale 1 ns / 100 ps

module camara_TB;


reg clk=0;
reg capture;
reg Href;
reg Vsyn;
reg Pclk;
reg data[7:0];
reg reset;

reg counter[7:0] = 8'b0;


camara cam(capture, clk, Href, Vsyn, Pclk, data[7:0],reset);

always #1 clk = ~clk;

initial begin

capture=1;
#2000


end

always @(posedge Xclk)begin
    counter= counter+1;
        if (counter<6)begin 
            Pclk <= ~Pclk;
            counter=0;
        end
end

initial begin: TEST_CASE
     $dumpfile("camara_TB.vcd");
     $dumpvars(-1, uut);
     #(200000) $finish;
   end

endmodule //
