//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"
#include "uart.h"


int main()
{	
	char com;
	
	uart comando;
	pwm motor;
	timer tiempo;


	
   while(1)
   {
		com=comando.uart_getchar();
		comando.uart_putchar(com);
		
	
	if(com==0xFD)
	{
		comando.uart_putchar(0x03);//mover un motor	
		char b=comando.uart_getchar();
		char c=comando.uart_getchar();
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			comando.uart_putchar(b); //seleccion brazo
			comando.uart_putchar(c);//seleciona motor
			motor.pwm_sel(motor.brazo(b), c, true);//mover
		}
	}

   }


}


