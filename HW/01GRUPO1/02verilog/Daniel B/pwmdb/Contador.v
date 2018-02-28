module Contador(
input clkf,
input rst,
input ena,
output [3:0] countout  // vector de 4 bits el countout(3) es el MSB y countout(0) es el LSB
);

reg [3:0] count;
always @(posedge clkf)   
begin: COUNTER             // Inicio del contador.             
if (rst ==1'b1)begin
count <= 4'b0000;
end
else if (ena == 1'b1)begin
count <= count + 1'b1;
end
end // Fin del bloque COUNTER
assign countout = count;
endmodule
