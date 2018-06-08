//#include "soc-hw.h"
#include "clase_pwm.h"
#include "clase_timer.h"
#include "clase_uart.h"
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
                arm.setMov(0X01,0X13); //D
                arm.setMov(0X02,0X13); //D
                arm.setMov(0X03,0X13); //D
                arm.setMov(0X04,0X13); //D
                arm.setMov(0X01,0X12); //C 
                arm.setMov(0X02,0X12); //C 
                arm.setMov(0X03,0X12); //C
                arm.setMov(0X04,0X12); //C
            }
        }  
        else if (comando==0xFE){      //Init----AT
            comando=uart.uart_getchar();
            if(comando==0xF0){ 
                arm.setMov(0X01,0X12); //C
                arm.setMov(0X02,0X12); //C  
                arm.setMov(0X03,0X12); //C
                arm.setMov(0X04,0X12); //C
                arm.setMov(0X01,0X14); //A
                arm.setMov(0X02,0X14); //A
                arm.setMov(0X03,0X14); //A
                arm.setMov(0X04,0X14); //A
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
 
