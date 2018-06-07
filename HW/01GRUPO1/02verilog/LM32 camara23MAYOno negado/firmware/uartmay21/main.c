
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
		if(com==0xF0)
		{
		comando.uart_putchar(0xF0);//TOMAR
		camara.cam_tomar(on);		
		}
		if(com==0xF1)
		{
		comando.uart_putchar(0xF1);//DEJA DE TOMAR
		camara.cam_tomar(off);		
		}
		if(com==0xc0)
		{
		comando.uart_putchar(0xc0);//OE
		camara.cam_ver1(on);		
		}
		if(com==0xc1)
		{
		comando.uart_putchar(0xc1);
		camara.cam_ver1(off);		
		}
		if(com==0xc2)
		{
		comando.uart_putchar(0xc2);
		camara.cam_rst(off,off);		
		}
		if(com==0xc3)
		{
		comando.uart_putchar(0xc3);
		camara.cam_rst(on,on);		
		}
		if(com==0XFE)
		{		
		comando.uart_putchar(0XFE);//RCK
		camara.cam_ver(on);
		int i=0;
		while(i<24000)
		{
			dato=camara.cam_dato();
			comando.uart_putchar(dato);
			i=i+1;		
		}		
		}
		if(com==0XFF)
		{
		comando.uart_putchar(0XFF);	
		camara.cam_ver(off);
				
		}
								
		
   }		
	

}



