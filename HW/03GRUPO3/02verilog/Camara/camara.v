module camara (input enable,input clk, output rst, output Xclk, output PWDN, input Href, input Vsyn, input Pclk, input data[7:0], output reset, output rd, output wr)

reg rd;
reg wr;
reg [9:0]data_in;
reg frame_done=0;
wire empty;
wire full;

assign rst=reset;

div_frec div( .Xclk(Xclk) .rst(rst) .clk_in(clk_in))

fifo (.data_in(data_in), .Pclk(Pclk), .rst(rst), .Href(Href), .Vsyn(Vsyn), .empty(empty), .full(full), .rd(rd))

initial begin
PWDN=1;
rd=0;
wr=0;
end

parameter STATE_ON      = 2'b00;
parameter STATE_SAVE	= 2'b01;
parameter STATE_OFF     = 2'b11;
parameter [20:0]counter= 20'b0;

reg [1:0] state = STATE_OFF;


always (posedge Pclk) begin
    if (reset)begin    
         PWDN=1;
         frame_done=0;
         rd=0;
         wr=0;        
    end
    begin case (state)
        STATE_ON begin
            if (enable) begin
            PWDN=0;
            state<=STATE_SAVE;
            end        
        end     
        STATE_SAVE begin
            wr=1; 
            data_in<={data,Href,Vsyn};
            counter<=counter+1;
            if (counter=799680)begin             
               state<=STATE_OFF;
            end 
        end            
        STATE_OFF begin 
            PWDN=1;
            wr=~wr;
            frame_done=1;            
       end        
   end      
end
endmodule
