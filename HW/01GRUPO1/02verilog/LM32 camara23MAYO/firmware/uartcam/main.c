

//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"
#include "uart.h"
#include "camera.h"


int main()
{	
	char com;
	char dato;
	uart comando;
	pwm motor;
	timer tiempo;
	camera camara;
	int on=1;
	int off=0;

   while(1)
   {
	
		com=comando.uart_getchar();	
		comando.uart_putchar(com);
		if(com==0xC0)
		{
			comando.uart_putchar(0xC0);//TOMAR
			camara.cam_tomar(off);
			tiempo.nsleep(30000);
			camara.cam_tomar(on);		
		}
		if(com==0XC1)//VER-ENVIAR
		{
			camara.cam_ver1(on);//OE		
			comando.uart_putchar(0XC1);
			camara.cam_ver(on);//RCK
			int i=0;
				while(i<320128)
				{
					dato=camara.cam_dato();
					comando.uart_putchar(dato);
					i=i+1;		
				}
			camara.cam_ver1(off);//OE		
			comando.uart_putchar(0XFE);
			camara.cam_ver(off);//RCK				
		}
		if(com==0xC2)//RESET
		{
			comando.uart_putchar(0xc2);
			camara.cam_rst(on,on);
			tiempo.nsleep(3000);
			comando.uart_putchar(0xc2);
			camara.cam_rst(off,off);		
		}
								
		
   }		
	

}
