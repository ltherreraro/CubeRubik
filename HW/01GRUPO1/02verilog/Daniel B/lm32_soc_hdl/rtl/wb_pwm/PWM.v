module PWM(input clk,input [7:0] t,input [7:0] d,input enable,output reg pwm);
parameter F 50000000;
parameter TDESEADO= 0.000001;
parameter CDESEADO = TDESEADO*F;	
	
	

reg [5:0] CONTADORUNIDAD = 0;
reg [14:0] CONTADORPERIODO = 0;


always @(posedge clk) begin
	
	if(enable == 1)begin
		if(CONTADOR == CDESEADO) begin
			CONTADORUNIDAD = 0;
			if(CONTADORPERIODO >= (t) begin // se cuaenta period us
				CONTADORPERIODO = 0;
			end 
			else 
			begin
				CONTADORPERIODO = CONTADORPERIODO + 1;
			end
		
		end 
		else 
		begin
			CONTADORUNIDAD = CONTADORUNIDAD + 1;
		end
	end
	
end

always @(posedge clk) begin
	
	if(enable == 1)begin
		if(CONTDORPERIODO <= d)begin
			pwm = 1;
		end else begin
			pwm = 0;
		end
	end
	
end



endmodule
