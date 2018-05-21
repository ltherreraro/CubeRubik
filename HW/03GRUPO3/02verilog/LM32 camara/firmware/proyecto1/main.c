#include "soc-hw.h"
/*#include "pwm.h"
#include "timer.h"
#include "uart.h"*/


int main()
{	

int rdon=1;
int rdoff=0;

cam_rd(rdon);
nsleep(30);
cam_rd(rdoff);
nsleep(30);
cam_rd(rdon);
nsleep(30);
cam_rd(rdoff);
nsleep(30);
cam_rd(rdon);
nsleep(30);
cam_rd(rdoff);
nsleep(30);
cam_rd(rdon);
nsleep(30);
cam_rd(rdoff);
nsleep(30);
cam_rd(rdon);
nsleep(30);
cam_rd(rdoff);
nsleep(30);

	/*char com;
	
	uart comando;
	pwm motor;
	timer tiempo;


	
   while(1)
   {
		com=comando.uart_getchar();
		comando.uart_putchar(com);
		
		
	
	if(com==0xFF)
	{
		com=comando.uart_getchar();
		if(com==0xF0)
		{		
			comando.uart_putchar(0x01);//home
			motor.pwm_sel(motor.brazo(0x01), 0x13, true);//motores inferiores hacia afuera
			motor.pwm_sel(motor.brazo(0x02), 0x13, true);//''
			motor.pwm_sel(motor.brazo(0x03), 0x13, true);//''
			motor.pwm_sel(motor.brazo(0x04), 0x13, true);//''
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//Brazo 1 D
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//Brazo 2 C
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//Brazo 3 D
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//Brazo 4 C
		}				
	}
	if(com==0xFE)
	{
		com=comando.uart_getchar();
		if(com==0xF0)
		{		
			comando.uart_putchar(0x02);//init
			motor.pwm_sel(motor.brazo(0x01), 0x14, true);//motores inferiores hacia adentro (cubo)
			motor.pwm_sel(motor.brazo(0x02), 0x14, true);//''
			motor.pwm_sel(motor.brazo(0x03), 0x14, true);//''
			motor.pwm_sel(motor.brazo(0x04), 0x14, true);//''
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//brazo 1 D 
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//brazo 2 C
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//brazo 3 D
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//brazo 4 C
		}			
	}
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
*/

}


