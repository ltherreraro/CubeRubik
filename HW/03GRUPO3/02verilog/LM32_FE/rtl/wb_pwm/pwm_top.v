//`timescale 1ns/1ps

module pwm_top (
    input clk,
    input res,
    input rd,
    input wr,
    input [31:0] data_in,
    input [31:0] addr,
    output pwm7,
    output pwm6,
    output pwm5,
    output pwm4,
    output pwm3,
    output pwm2,
    output pwm1,
    output pwm0,
    output reg [31:0] data_out
);

//Memory Map Register
reg e0;
reg [31:0] d0;
reg [31:0] t0;
reg e1;
reg [31:0] d1;
reg [31:0] t1;
reg e2;
reg [31:0] d2;
reg [31:0] t2;
reg e3;
reg [31:0] d3;
reg [31:0] t3;
reg e4;
reg [31:0] d4;
reg [31:0] t4;
reg e5;
reg [31:0] d5;
reg [31:0] t5;
reg e6;
reg [31:0] d6;
reg [31:0] t6;
reg e7;
reg [31:0] d7;
reg [31:0] t7;

//PWM modules instances

pwm_servo0 servo0 (.enable(e0), .clk(clk), .reset(res), .d(d0), .t(t0), .pwm(pwm0));
pwm_servo1 servo1 (.enable(e1), .clk(clk), .reset(res), .d(d1), .t(t1), .pwm(pwm1));
pwm_servo2 servo2 (.enable(e2), .clk(clk), .reset(res), .d(d2), .t(t2), .pwm(pwm2));
pwm_servo3 servo3 (.enable(e3), .clk(clk), .reset(res), .d(d3), .t(t3), .pwm(pwm3));
pwm_servo4 servo4 (.enable(e4), .clk(clk), .reset(res), .d(d4), .t(t4), .pwm(pwm4));
pwm_servo5 servo5 (.enable(e5), .clk(clk), .reset(res), .d(d5), .t(t5), .pwm(pwm5));
pwm_servo6 servo6 (.enable(e6), .clk(clk), .reset(res), .d(d6), .t(t6), .pwm(pwm6));
pwm_servo7 servo7 (.enable(e7), .clk(clk), .reset(res), .d(d7), .t(t7), .pwm(pwm7));

//Demux 1 to 21

always @(posedge clk)begin
    if(res)begin
    data_out<=32'b0;
    end
    else if(wr)begin  
        case(addr)
        16'h00: begin 
        e0 <= data_in;
        end
    
        16'h04: begin 
        d0 <= data_in;
        end
    
        16'h08: begin 
        t0 <= data_in;
        end
    
        16'h0C: begin 
        e1 <= data_in;
        end
    
        16'h10: begin 
        d1 <= data_in;
        end
    
        16'h14: begin 
        t1 <= data_in;
        end
    
        16'h18: begin 
        e2 <= data_in;
        end
    
        16'h1C: begin 
        d2 <= data_in;
        end
    
        16'h20: begin 
        t2 <= data_in;
        end
    
        16'h24: begin 
        e3 <= data_in;
        end
    
        16'h28: begin 
        d3 <= data_in;
        end
    
        16'h2C: begin 
        t3 <= data_in;
        end
    
        16'h30: begin 
        e4 <= data_in;
        end
    
        16'h34: begin 
        d4 <= data_in;
        end
    
        16'h38: begin 
        t4 <= data_in;
        end
    
        16'h3C: begin 
        e5 = data_in;
        end
    
    
        16'h40: begin 
        d5 <= data_in;
        end
    
        16'h44: begin 
        t5 <= data_in;
        end
    
        16'h48: begin 
        e6 <= data_in;
        end
    
        16'h4C: begin 
        d6 <= data_in;
        end
     
        16'h50: begin 
        t6 <= data_in;
        end
    
        16'h54: begin 
        e7 <= data_in;
        end
    
        16'h58: begin 
        d7 <= data_in;
        end
    
        16'h5C: begin 
        t7 <= data_in;
        end
    
     endcase
    end
    else if (rd)begin
     case(addr)
        16'h00: begin 
        data_out <= e0;
        end
    
        16'h04: begin 
        data_out <= d0;
        end
    
        16'h08: begin 
        data_out <= t0;
        end
    
        16'h0C: begin 
        data_out <= e1;
        end
    
        16'h10: begin 
        data_out <= d1;
        end
    
        16'h14: begin 
        data_out <= t1;
        end
    
        16'h18: begin 
        data_out <= e2;
        end
    
        16'h1C: begin 
        data_out <= d2;
        end
    
        16'h20: begin 
        data_out <= t2;
        end
    
        16'h24: begin 
        data_out <= e3;
        end
    
        16'h28: begin 
        data_out <= d3;
        end
    
        16'h2C: begin 
        data_out <= t3;
        end
    
        16'h30: begin 
        data_out <= e4;
        end
    
        16'h34: begin 
        data_out <= d4;
        end
    
        16'h38: begin 
        data_out <= t4;
        end
    
        16'h3C: begin 
        data_out <= e5;
        end
    
    
        16'h40: begin 
        data_out <= d5;
        end
    
        16'h44: begin 
        data_out <= t5;
        end
    
        16'h48: begin 
        data_out <= e6;
        end
    
        16'h4C: begin 
        data_out <= d6 ;
        end
    
        16'h50: begin 
        data_out <= t6 ;
        end
    
        16'h54: begin 
        data_out <= e7 ;
        end
    
        16'h58: begin 
        data_out <= d7;
        end
    
        16'h5C: begin 
        data_out <= t7;
        end
    
      endcase
    end
end 
endmodule

