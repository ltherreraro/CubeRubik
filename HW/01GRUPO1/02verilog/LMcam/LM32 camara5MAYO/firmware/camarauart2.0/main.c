//#include "soc-hw.h"
#include "camera.h"
#include "timer.h"
#include "pwm.h"
#include "uart.h"

int main()
{	

	uart com;
	camera cam;
	timer tiempo;
	char p;
	while(1)
	{
		p=com.uart_getchar();
		if(p== 0xFD)
		{
			com.uart_putchar(0xFD);
			cam.cam_tomar(1);	
		}
		

		if(p== 0xFE)
		{
			com.uart_putchar(0xFE);
			cam.cam_tomar(0);	
		}
		
		if(p== 0x0A)
		{
			com.uart_putchar(0x0A);
			cam.cam_leer(1);
			cam.cam_dato();	
		}
			
		if(p== 0x0B)
		{
			com.uart_putchar(0x0B);
			cam.cam_leer(0);
			cam.cam_dato();	
		}

	}
	
	

			
		

}


