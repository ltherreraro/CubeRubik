module pwm_servos3 (
input enable,
input clk,
input res,
input [31:0] d,
input [31:0] t,
output reg pwm
);

reg [31:0] cnt_d;
reg [31:0] cnt_t;



//For 100MHz clk 100000 pulses = 1 ms


always @(posedge clk) begin
    if (res) begin
        pwm <= 0;
        cnt_d <= 0;
        cnt_t <=0;
      end
    else if (enable)begin
        if (cnt_d < d) begin
            cnt_d <= cnt_d + 32'd1;
            cnt_t <=0;
            pwm <=1;
        end 
        else if (cnt_t < (t-d)) begin
            cnt_t <= cnt_t + 32'd1;
            pwm <= 0;
        end
        else begin
            cnt_d <= 0;
            cnt_t <=0;
        end
    end
end


endmodule
        
