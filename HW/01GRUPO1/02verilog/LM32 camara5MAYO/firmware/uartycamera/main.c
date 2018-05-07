//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"
#include "uart.h"
#include "camera.h"


int main()
{	
	char com;
	uart comando;
	pwm motor;
	timer tiempo;
	camera foto;

   while(1)
   {

	com=comando.uart_getchar();	
if(com==0xF0)
	{
		comando.uart_putchar(com);
		foto.tomar(0x01);		
		comando.uart_putchar(foto.leer());
		comando.uart_putchar(0x1C);
						
	}
		
   }		
	

}

