//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"
#include "uart.h"


int main()
{

   while(1)
   {
	char com;
	char lista[4];
	int i=0;
	uart comando;
	pwm motor;
	timer tiempo;

		com=comando.uart_getchar();
		comando.uart_putchar(com);
		lista[i]=com;
		
	
	if(com=0xFF)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0xF0)
	{
		lista[i]=com;
		i=0;			
	}
	if(com=0xFE)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x10)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x11)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x12)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x13)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x14)
	{
		lista[i]=com;
		i=i+1;			
	}
	if(com=0x01)
	{
		lista[i]=com;
		i=i+1;			
	}

	if(com=0x02)
	{
		lista[i]=com;
		i=i+1;			
	}

	if(com=0x03)
	{
		lista[i]=com;
		i=i+1;			
	}

	if(com=0x04)
	{
		lista[i]=com;
		i=i+1;			
	}
	if((lista[0]==0xFF)&&(lista[0]==0xFE))
	{
		motor.pwm_sel(motor.brazo(1), 4, true);
		motor.pwm_sel(motor.brazo(2), 4, true);
		motor.pwm_sel(motor.brazo(3), 4, true);
		motor.pwm_sel(motor.brazo(4), 4, true);

	} 

   }


}


