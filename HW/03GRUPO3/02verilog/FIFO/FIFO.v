module FIFO
  (input  rst, Pclk, 
    input  rd, wr,
    input  [9:0] data_in,
    output reg [9:0] data_out, 
    output reg empty, 
    output reg full);
 
    parameter depth = (1 << adr_width);  //preguntar....................................
    parameter adr_width = 16; 

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
       else begin
    	   case ({wr, rd})
    		 2'b01: // read
    		    if (~empty) begin //not empty
                   data_out<= array_reg[r_ptr];
    		       r_ptr <= r_ptr + 1;
    		       full <= 1'b0;
    		       if (r_ptr==w_ptr)
    		           empty <= 1'b1; //-------------- ESTE SI FUNCIONA
    		    end
    		 2'b10: // write
    		    if (~full) begin // not full
                   array_reg[w_ptr] <= data_in;
    		       w_ptr <= w_ptr + 1;
    		       empty <= 1'b0;
    		       if (w_ptr==r_ptr)
    		          full <= 1'b0; //-----------------NO ESTA FUNCIONANA EL FULL SE ASIGANA EN 1 AUN SI LA POSICION DE LECTURA NO ES LA MISMA QUE LA DE ESCRITURA
    		    end
    		 2'b11: // write and read
    		    begin
    		       w_ptr <= w_ptr + 1;
    		       r_ptr <= r_ptr + 1;
    		    end
    	   endcase
        end
    end
endmodule
