module pwm_servo7(input clk,
input enable,
input reset,
input [31:0] d,
input [31:0] t,
output reg pwm
);

reg [31:0] cnt_d;
reg [31:0] cnt_t;

initial begin
 pwm <= 0;
 cnt_d <= 0;
 cnt_t <=0;
end

always @(posedge clk) begin
    if (reset) begin
        pwm <= 0;
        cnt_d <= 0;
        cnt_t <=0;
    end
    else if (enable) begin
        if (cnt_d < d) begin
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
            pwm<=0;
        end
    end
end
endmodule
        
