module FIFO
  (input  rst, Pclk, 
    input  rd, wr,
    input  [9:0] data_in,
    output [9:0] data_out, 
    output empty, 
    output full);
 
    parameter depth = (1 << adr_width);
    parameter adr_width = 16; 

  reg [9:0] array_reg [depth-1:0]; 
  reg [adr_width-1:0] w_ptr_reg, w_ptr_next;
  reg [adr_width-1:0] r_ptr_reg, r_ptr_next;
  reg full_reg, empty_reg, full_next, empty_next;

   assign data_out = array_reg[r_ptr_reg];

   assign full = full_reg;
   assign empty = empty_reg;

    always @(posedge Pclk) begin
       if (rst) begin
            w_ptr_reg <= 0;
            r_ptr_reg <= 0;
            full_reg <= 1'b0;
            empty_reg <= 1'b1;
       end
       else begin
            w_ptr_reg <= w_ptr_next;
            r_ptr_reg <= r_ptr_next;
            full_reg <= full_next;
            empty_reg <= empty_next;
       end
      full_next = full_reg;
	  empty_next = empty_reg;
	   case ({wr, rd})
		 2'b01: // read
		    if (~empty_reg) begin //not empty
		       r_ptr_next = r_ptr_reg + 1;
		       full_next = 1'b0;
		       if (r_ptr_next==w_ptr_reg)
		           empty_next = 1'b1;
		    end
		 2'b10: // write
		    if (~full_reg) begin // not full
               array_reg[w_ptr_reg] = data_in;
		       w_ptr_next = w_ptr_reg + 1;
		       empty_next = 1'b0;
		       if (w_ptr_next==r_ptr_reg)
		          full_next = 1'b1;
		    end
		 2'b11: // write and read
		    begin
		       w_ptr_next =  w_ptr_reg + 1;
		       r_ptr_next = r_ptr_reg + 1;
		    end
	   endcase
    end
endmodule
