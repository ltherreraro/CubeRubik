

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
		//comando.uart_putchar(com);
		if(com=='c')
		{
		//	comando.uart_putchar(0xC0);//TOMAR
			camara.cam_tomar(off);
			tiempo.nsleep(30000);
			camara.cam_tomar(on);		
		}
		if(com=='d')//VER-ENVIAR
		{
			camara.cam_ver1(on);//OE		
			//comando.uart_putchar(0XC1);
			camara.cam_ver(on);//RCK
			int i=0;
				while(i<614400)
				{
					dato=camara.cam_dato();
					comando.uart_putchar(dato);
					i=i+1;		
				}
			camara.cam_ver1(off);//OE		
			//comando.uart_putchar(0XFE);
			camara.cam_ver(off);//RCK				
		}
		if(com==0xC2)//RESET
		{
			//comando.uart_putchar(0xc2);
			camara.cam_rst(on,on);
			tiempo.nsleep(3000);
			camara.cam_rst(off,off);		
		}
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
	if(com==0xA0)
	{
		comando.uart_putchar(0xA0);//instruccion R	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x04), 0x10, true);//mover
		}
	}
	if(com==0xA1)
	{
		comando.uart_putchar(0xA1);//instruccion R'	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x04), 0x11, true);//mover
		}
	}
	if(com==0xA2)
	{
		comando.uart_putchar(0xA2);//instruccion F	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x03), 0x10, true);//mover
		}
	}
	if(com==0xA3)
	{
		comando.uart_putchar(0xA3);//instruccion F'	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x03), 0x11, true);//mover
		}
	}
	if(com==0xA4)
	{
		comando.uart_putchar(0xA4);//instruccion L	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x02), 0x10, true);//mover
		}
	}
	if(com==0xA5)
	{
		comando.uart_putchar(0xA5);//instruccion L'	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x02), 0x11, true);//mover
		}
	}
	if(com==0xA6)
	{
		comando.uart_putchar(0xA6);//instruccion B	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x01), 0x10, true);//mover
		}
	}
	if(com==0xA7)
	{
		comando.uart_putchar(0xA7);//instruccion B'	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x01), 0x11, true);//mover
		}
	}
	/*if(com==0xA8)
	{
		comando.uart_putchar(0xA8);//instruccion M	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x02), 0x10, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x04), 0x11, true);//mover
		}
	}
	/*if(com==0xA9)
	{
		comando.uart_putchar(0xA9);//instruccion S	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x01), 0x10, true);//mover
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x11, true);//mover
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x13, true);//mover salir
			motor.pwm_sel(motor.brazo(0x04), 0x13, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//mover			
		}
	}
	/*	if(com==0xAA)
	{
		comando.uart_putchar(0xAA);//instruccion U	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x02), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x04), 0x13, true);//salir
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x11, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x10, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x04), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x03), 0x13, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x03), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x04), 0x10, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x10, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x11, true);//
			tiempo.nsleep(30000);								
		}
	}
	if(com==0xAB)
	{
		comando.uart_putchar(0xAB);//instruccion U	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x02), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x04), 0x13, true);//salir
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x11, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x10, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x04), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x03), 0x13, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x12, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x03), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x10, true);//mover
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x10, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x11, true);//
			tiempo.nsleep(30000);								
		}
	}
	if(com==0xAC)
	{
		comando.uart_putchar(0xAC);//instruccion E	
		com=comando.uart_getchar();
		
		if(com==0xF0)
		{		
			motor.pwm_sel(motor.brazo(0x01), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x03), 0x13, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x04), 0x10, true);//mover
			motor.pwm_sel(motor.brazo(0x02), 0x11, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x03), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x04), 0x13, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x12, true);//mover
			motor.pwm_sel(motor.brazo(0x04), 0x12, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x02), 0x14, true);//entrar
			motor.pwm_sel(motor.brazo(0x04), 0x14, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x11, true);//mover
			motor.pwm_sel(motor.brazo(0x03), 0x10, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x01), 0x13, true);//salir
			motor.pwm_sel(motor.brazo(0x03), 0x13, true);//
			tiempo.nsleep(30000);
			motor.pwm_sel(motor.brazo(0x04), 0x11, true);//mover
			motor.pwm_sel(motor.brazo(0x02), 0x10, true);//
			tiempo.nsleep(30000);								
		}
	}*/
								
		
   }		
	

}
