module pwm_servos (input clk,
input reset,
input [1:0] in,
output reg pwm
);


reg [31:0] d;
reg [31:0] cnt_d;
reg [31:0] cnt_t;

parameter t = 2000000;

initial begin
 pwm <= 0;
 cnt_d <= 0;
 cnt_t <=0;
end

always @(posedge clk) begin
case (in)
    2'b00: begin
    d = 130000;
    end
    
    2'b01: begin
    d = 230000;
    end

    2'b10: begin
    d = 50000;
    end  
  endcase
end



//For 100MHz clk 100000 pulses = 1 ms



always @(posedge clk) begin
    if (~reset) begin
        pwm <= 0;
        cnt_d <= 0;
        cnt_t <=0;
      end
     else if (cnt_d < d) begin
        cnt_d <= cnt_d +1;
        cnt_t <=0;
        pwm <=1;
     end 
    else if (cnt_t < (t-d)) begin
        cnt_t <= cnt_t + 1;
        pwm <= 0;
    end
    else begin
        cnt_d <= 0;
        cnt_t <=0;
    end
end


endmodule
        
