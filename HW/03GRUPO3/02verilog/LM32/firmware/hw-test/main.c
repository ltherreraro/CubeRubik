#include "clase_pwm.h"
//#include "soc-hw.h"
#include "clase_timer.h"
#include "clase_uart.h"



int main(){
char a;
clase_uart caption;
a=caption.uart_getchar();
caption.uart_putchar(a);
}



        /*******PRUEBA BRAZOS 1 Y 2********************
int main(){

    clase_pwm arm;
    clase_timer tim;
    arm.pwm_setMov(1,13);
    tim.nsleep(3000000);
    arm.pwm_setMov(1,14);
    tim.nsleep(3000000);
    arm.pwm_setMov(1,10);
    tim.nsleep(3000000);
    arm.pwm_setMov(1,12);
    tim.nsleep(3000000);
    arm.pwm_setMov(2,13);
    tim.nsleep(3000000);
    arm.pwm_setMov(2,14);
    tim.nsleep(3000000);
    arm.pwm_setMov(1,10);   
    tim.nsleep(3000000);    
    arm.pwm_setMov(1,11);    
    tim.nsleep(3000000);
    arm.pwm_setMov(1,12);
    tim.nsleep(3000000);
    arm.pwm_setMov(2,10);
    tim.nsleep(3000000);
    arm.pwm_setMov(2,11); 
    tim.nsleep(3000000);
    arm.pwm_setMov(2,12);
}
        ****************FIN PRUEBA************************/
 


/*
int main(){
clase_pwm arm;
char (buffer[0:3]);
temp=0;
i=0;
while(temp!=0 && i <3)
{
temp=uart_getchar();
buffer[i]=com
i++
}
arm.pwm_comando(com);
}

*/
