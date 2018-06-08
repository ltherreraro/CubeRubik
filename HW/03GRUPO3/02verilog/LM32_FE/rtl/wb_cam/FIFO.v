module FIFO
  (input  rst, Pclk,
    input  rd, wr,
    input  [9:0] data_in,
    output reg [9:0] data_out, 
    output reg empty, 
    output reg full);
 
    parameter depth = (1 << adr_width);     parameter adr_width = 18; 

  reg [9:0] array_reg [depth-1:0]; 
  reg [adr_width-1:0] w_ptr;
  reg [adr_width-1:0] r_ptr;

    always @(posedge Pclk) begin
       if (rst) begin
            full <= 0;
            empty <= 1;
            w_ptr <= 0;
            r_ptr <= 0;
       end
       else if (~full && wr) begin // not full
            array_reg[w_ptr] <= data_in;
    		w_ptr <= w_ptr + 1;
    		empty <= 1'b0;
    		if (w_ptr==18'b1)begin
    		    full <= 1'b1; 
    		end
       end
       else if (~empty && rd) begin //not empty
            data_out<= array_reg[r_ptr];
    		r_ptr <= r_ptr + 1;
            full <= 1'b0;
    		if (r_ptr==w_ptr)begin
    		    empty <= 1'b1; 
                r_ptr<=0;
                w_ptr<=0;
    		end
       end
    end
endmodule
