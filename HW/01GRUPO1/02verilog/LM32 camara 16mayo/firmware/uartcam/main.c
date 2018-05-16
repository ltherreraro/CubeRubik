
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
		comando.uart_putchar(0xF0);
			camara.cam_tomar(on);	
		dato=camara.cam_dato();
		comando.uart_putchar(dato);	
		}
		if(com==0xF1)
		{
		comando.uart_putchar(0xF1);
		camara.cam_tomar(off);
		dato=camara.cam_dato();
		comando.uart_putchar(dato);		
		}
		if(com==0XFE)
		{		
		comando.uart_putchar(0XFE);
		camara.cam_ver(on);
		dato=camara.cam_dato();
		comando.uart_putchar(dato);
				
		}
		if(com==0XFF)
		{
		comando.uart_putchar(0XFF);	
		camara.cam_ver(off);
				
		}
								
		
   }		
	

}



