module wb_camara(clk, rst, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, wb_stb_i, wb_ack_o, wb_dat_o, xvclk,pwdn,resetb, );


   parameter gpio_io_width = 8;

   parameter gpio_dir_reset_val = 0;
   parameter gpio_o_reset_val = 0;
   
   
   parameter wb_dat_width = 32;
   parameter wb_adr_width = 32; // 2^32 bytes addressable
   
   input clk;
   input rst;
   //WishBone Interface
   input [wb_adr_width-1:0] wb_adr_i;
   input [wb_dat_width-1:0] wb_dat_i;
   input 		    wb_we_i;
   input 		    wb_cyc_i;
   input 		    wb_stb_i;
   
   output reg [wb_dat_width-1:0] wb_dat_o; // constantly sampling gpio in bus
   output 		 wb_ack_o;
      
   //I/O PORT
   inout [gpio_io_width-1:0] gpio_io;
   //Interupt


   // Internal registers
   reg [gpio_io_width-1:0]   gpio_dir;

   reg [gpio_io_width-1:0]   gpio_o;

   wire [gpio_io_width-1:0]  gpio_i; 
   
//Wisbone logical Interface

   







endmodule

