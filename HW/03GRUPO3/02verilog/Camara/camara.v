module camara (input capture, //buttom
               input clk, 
               input Href, 
               input Vsyn, 
               input Pclk, 
               input [7:0]data,
               input rst,     //buttom rst         
               output reset,
               output Xclk, 
               output PWDN, 
               //output [9:0] data_out,
               output frame_done);

reg rd;
reg wr;
reg [9:0]data_in;
reg frame_done=0;
reg [20:0]counter;
wire empty;
wire full;


assign PWDN = ~capture;

assign reset = rst;

div_frec div( .Xclk(Xclk), .rst(rst), .clk_in(clk_in));

FIFO fif(.data_in(data_in), .Pclk(Pclk), .empty(empty), .full(full), .rd(rd), . wr(wr));

initial begin
    rd=0;
    wr=0;
    counter=0;
end



always @(posedge Pclk) begin
    if (rst)begin    
         frame_done=0;
         rd=0;
         wr=0;        
    end
    else  if (PWDN)begin
         data_in <= {data,Href,Vsyn};
         wr<=1; 
         counter<=counter+1;
         if (counter<799681)begin             
            frame_done=1;
            wr=~wr;
         end 
    end                  
end      
endmodule
