//#include "soc-hw.h"
#include "clase_pwm.h"
#include "clase_timer.h"
#include "clase_uart.h"
#include "camara.h"



int main () {

    camara cam;
    clase_uart uart;
//    clase_pwm arm;

    char comando;
    char datos;

    int a=1;

        
    while (1){
        int i=0;        
        comando=uart.uart_getchar();
        uart.uart_putchar(comando);       
        if (comando==0XC){
            cam.camCapture(a);
                while (i<307200){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }    
        }        
}   }



/*
//******************************Datos Camara Uart***********************************

int main () {

    camara cam;
    clase_uart uart;
    clase_pwm arm;

    char comando;
    char datos;

    int a=1;

        
    while (1){
        int i=0;        
        comando=uart.uart_getchar();
        uart.uart_putchar(comando);       
        if (comando==0XFC){
            cam.camCapture(a);
            comando=uart.uart_getchar();
            uart.uart_putchar(comando);       
            if (comando==0xF0){
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }    
            }
        }        
        else if (comando==0xFF){      //Home----DT
            comando=uart.uart_getchar();
            if(comando==0xF0){            
                arm.setMov(0X01,0X13); //D
                arm.setMov(0X02,0X13); //D
                arm.setMov(0X03,0X13); //D
                arm.setMov(0X04,0X13); //D
                arm.setMov(0X01,0X10); //C 
                arm.setMov(0X02,0X12); //C 
                arm.setMov(0X03,0X11); //C
                arm.setMov(0X04,0X12); //C
            }
        }  
        else if (comando==0xFE){      //Init----AT
            comando=uart.uart_getchar();
            if(comando==0xF0){ 
                arm.setMov(0X01,0X10); //C
                arm.setMov(0X02,0X12); //C  
                arm.setMov(0X03,0X11); //C
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


/*
//******************************FOTO CARAS CUBO*************************************

int main () {

    clase_pwm arm;
    camara cam;
    clase_uart uart;


    char comando;
    char datos;

    int a=1;

        
    while (1){
        int i=0;        
        comando=uart.uart_getchar();
        uart.uart_putchar(comando);       
        if (comando==0XFB){            
            comando=uart.uart_getchar();
            uart.uart_putchar(comando);       
            if (comando==0xF0){
                arm.setMov(0X01,0X10); 
                arm.setMov(0X03,0X10);
                arm.setMov(0X01,0X14);
                arm.setMov(0X03,0X14);
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }    
                arm.setMov(0X01,0X12); 
                arm.setMov(0X03,0X12);
                arm.setMov(0X01,0X13);
                arm.setMov(0X01,0X10);
                arm.setMov(0X01,0X14);
                arm.setMov(0X03,0X13);
                arm.setMov(0X03,0X10);
                arm.setMov(0X03,0X14);
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 } 
                arm.setMov(0X01,0X12); 
                arm.setMov(0X03,0X12);
                arm.setMov(0X01,0X13);
                arm.setMov(0X01,0X10);
                arm.setMov(0X01,0X14);
                arm.setMov(0X03,0X13);
                arm.setMov(0X03,0X10);
                arm.setMov(0X03,0X14);             
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }   
                arm.setMov(0X01,0X12); 
                arm.setMov(0X03,0X12);
                arm.setMov(0X01,0X13);
                arm.setMov(0X01,0X10);
                arm.setMov(0X01,0X14);
                arm.setMov(0X03,0X13);
                arm.setMov(0X03,0X10);
                arm.setMov(0X03,0X14);             
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }        
                arm.setMov(0X02,0X12); 
                arm.setMov(0X04,0X12);
                arm.setMov(0X02,0X14);
                arm.setMov(0X04,0X14);
                arm.setMov(0X01,0X13);
                arm.setMov(0X03,0X13);
                arm.setMov(0X02,0X10);
                arm.setMov(0X04,0X10);             
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }   
                arm.setMov(0X02,0X11); 
                arm.setMov(0X04,0X11);            
                cam.camCapture(a);        
                while (i<153600){
                    cam.camRead(a);
                    datos=cam.camData();
                    uart.uart_putchar(datos);                       
                    i=i+1;               
                 }   

            }
        }
    }//cierra while
}//cierra main
*/


/******************************prueba wb_cam***********************************

int main () {

int a=1;

camara cam;
clase_timer time;

cam.camStart(a);
time.nsleep(3);
cam.camCapture(a);
time.nsleep(3);
cam.camRead(a);
time.nsleep(3);
int b=cam.camData();


}//cierra main
*/

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
 
