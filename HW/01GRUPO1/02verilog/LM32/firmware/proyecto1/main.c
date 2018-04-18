//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"
#include "uart.h"


int main(){

pwm motor;
uart captura;
char l;
char letra [8];
/*
char a='0xFF';
char b='F';
char c='F';
char d='0';

captura.uart_putchar('F');
captura.uart_putchar('b');
captura.uart_putchar(c);
captura.uart_putchar(d);
*/

l=captura.uart_getchar();
captura.uart_putchar(l);

for(int i=0; i<8; i++)
{
letra[i]=captura.uart_getchar();
}

if (letra[1]=='F' && letra[2]=='F'&&letra[3]=='F'&&letra[4]=='F')
{

motor.pwm_sel(motor.brazo(1), 4, true);
motor.pwm_sel(motor.brazo(2), 4, true);
motor.pwm_sel(motor.brazo(3), 4, true);
motor.pwm_sel(motor.brazo(4), 4, true);

}


}


