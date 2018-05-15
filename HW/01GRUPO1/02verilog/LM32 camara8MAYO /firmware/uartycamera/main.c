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
	camera foto;

   while(1)
   {
	
		com=comando.uart_getchar();	
		comando.uart_putchar(com);
		if(com==0xF0)
		{
		comando.uart_putchar(0xAA);
			foto.tomar(0);		
			foto.tomar(1);
		}
		if(com=0XF1)
		{		
		dato=foto.leer(1);
		comando.uart_putchar(dato);
		comando.uart_putchar(0XBB);
		}
		if(com=0XF2)
		{	
		dato=foto.leer(0);
		comando.uart_putchar(dato);
		comando.uart_putchar(0XCC);		
		}
								
		
   }		
	

}

