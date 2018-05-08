module camara (input capture, //buttom
               input clk, 
               input Href, 
               input Vsyn, 
               input Pclk,
               input [7:0]data,
               input rst,     //buttom rst    
               input en_div,    
               output reset,
               output Xclk, 
               output PWDN, 
               //output [9:0]data_out,
               output frame_done);

reg rd;
reg wr;
reg [9:0]data_in;
reg frame_done=0;
reg [20:0]counter;
wire empty;
wire full;
wire [9:0]data_out;


assign PWDN = ~capture;

assign reset = rst;  // _________________________lo cmabie a negado 
//assign Pclk = Xclk;---------------- para gtk wave

div_frec div( .Xclk(Xclk), .en_div(en_div), .clk(clk)); 

FIFO fif(.data_in(data_in), .Pclk(Pclk), .empty(empty), .full(full), .rd(rd), .wr(wr), .data_out(data_out), .rst(rst));



always @(posedge Pclk) begin
    if (rst)begin    
         frame_done=0;
         rd<=0;
         wr<=0; 
        counter<=0;       
    end
    else if (~PWDN)begin
         data_in <= {data,Href,Vsyn}; //---------------------------si esta asiganado data_in 
         wr<=1; //---------------------------no esta asignando 1 en escritura
         counter<=counter+1; //-----------------------------si esta contando
         if (counter<799681)begin             
            frame_done=1;
            wr<=0;
         end
    end     
    else if (~empty)begin
        rd<=1;
    end
end      
endmodule
