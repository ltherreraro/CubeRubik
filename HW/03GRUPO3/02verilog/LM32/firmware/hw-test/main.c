//#include "soc-hw.h"
#include "clase_pwm.h"
#include "clase_timer.h"
#include "clase_uart.h"
//*****************************comandos camara************************

int main(){
    clase 



}

//*******************************************************************/


//******************************comandos por UART**********************************

int main(){

    clase_pwm arm;
    clase_uart uart;

    char comando;
 
    while (1){
        comando=uart.uart_getchar();
        uart.uart_putchar(comando);
           
        if (comando==0xFF){      //Home----DT
            comando=uart.uart_getchar();
            if(comando==0xF0){            
                arm.setMov(1,13); //D
                arm.setMov(2,13); //D
                arm.setMov(3,13); //D
                arm.setMov(4,13); //D
            }
        }  
        else if (comando==0xFE){      //Init----AT
            comando=uart.uart_getchar();
            if(comando==0xF0){ 
                arm.setMov(1,10); //R
                arm.setMov(2,12); //C  
                arm.setMov(3,11); //L
                arm.setMov(4,12); //C
                arm.setMov(1,14); //A
                arm.setMov(2,14); //A
                arm.setMov(3,14); //A
                arm.setMov(4,14); //A
            }
        }
        else if (comando==0XFD){
            char b=uart.uart_getchar(); //brazo
                char c=uart.uart_getchar();  //movimiento
                    comando=uart.uart_getchar();          
                    if(comando==0xF0){ 
                        arm.setMov(b,c); // (brazo,movimiento)
                    }
        }
    }//cierra while
} //cierra main   

//*************************************************************************************/
    
/*****************PRUEBA UART RXTX************************
int main(){
char a;
clase_timer time;
clase_uart caption;
while (1){
    a=caption.uart_getchar();
    caption.uart_putchar(a);
}
}
************************************************************/


        /*******PRUEBA BRAZOS 1 Y 2********************
int main(){

    clase_pwm arm;
    clase_timer time;
    arm.setMov(1,13);
    time.nsleep(3000000);
    arm.setMov(1,14);
    time.nsleep(3000000);
    arm.setMov(1,10);
    time.nsleep(3000000);
    arm.setMov(1,11);
    time.nsleep(3000000);
    arm.setMov(2,13);
    time.nsleep(3000000);
    arm.setMov(2,14);
    time.nsleep(3000000);
    arm.setMov(1,10);   
    time.nsleep(3000000);    
    arm.setMov(1,12);    
    time.nsleep(3000000);
    arm.setMov(1,11);
    time.nsleep(3000000);
    arm.setMov(2,10);
    time.nsleep(3000000);
    arm.setMov(2,12); 
    time.nsleep(3000000);
    arm.setMov(2,11);
}
       / ****************FIN PRUEBA************************/
 
