#include "servos.h"

pwm_t   *pwm0 = (pwm_t *)  0x60000000;

#define T 20000
#define LEFT 1100
#define RIGHT 2100
#define CENTER 1500

typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit

typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

servo::servo(){

};

void servo::c(uint32_t cm){
	if(cm==0xFF0000F0){
		pwm0->t0=T;
		pwm0->t1=T;
		pwm0->t2=T;
		pwm0->t3=T;
		pwm0->t4=T;
		pwm0->t5=T;
		pwm0->t6=T;
		pwm0->t7=T;
		pwm0->d0=RIGHT;
		pwm0->d1=RIGHT;
		pwm0->d2=RIGHT;
		pwm0->d3=RIGHT;
		pwm0->d4=RIGHT;
		pwm0->d5=RIGHT;
		pwm0->d6=RIGHT;
		pwm0->d7=RIGHT;
		pwm0->en0=0x01;
		pwm0->en1=0x01;
		pwm0->en2=0x01;
		pwm0->en3=0x01;
		pwm0->en4=0x01;
		pwm0->en5=0x01;
		pwm0->en6=0x01;
		pwm0->en7=0x01;
		}
	else if(cm==0xFE0000F0){
		pwm0->t4=T;
		pwm0->t5=T;
		pwm0->t6=T;
		pwm0->t7=T;
		pwm0->d4=LEFT;
		pwm0->d5=LEFT;
		pwm0->d6=LEFT;
		pwm0->d7=LEFT;
		pwm0->en4=0x01;
		pwm0->en5=0x01;
		pwm0->en6=0x01;
		pwm0->en7=0x01;
		}
//brazo 1
	else if(cm==0xFD0110F0){
		pwm0->t0=T;
		pwm0->t4=0;
		pwm0->d0=RIGHT;
		pwm0->d4=0;
		pwm0->en0=0x01;
		pwm0->en4=0x01;
		}
	else if(cm==0xFD0111F0){
		pwm0->t0=T;
		pwm0->t4=0;
		pwm0->d0=LEFT;
		pwm0->d4=0;
		pwm0->en0=0x01;
		pwm0->en4=0x01;
		}
	else if(cm==0xFD0112F0){
		pwm0->t0=T;
		pwm0->t4=0;
		pwm0->d0=CENTER;
		pwm0->d4=0;
		pwm0->en0=0x01;
		pwm0->en4=0x01;
		}
	else if(cm==0xFD0113F0){
		pwm0->t0=0;
		pwm0->t4=T;
		pwm0->d0=0;
		pwm0->d4=LEFT;
		pwm0->en0=0x01;
		pwm0->en4=0x01;
		}
	else if(cm==0xFD0114F0){
		pwm0->t0=0;
		pwm0->t4=T;
		pwm0->d0=0;
		pwm0->d4=RIGHT;
		pwm0->en0=0x01;
		pwm0->en4=0x01;
		}

//brazo 2
	else if(cm==0xFD0210F0){
		pwm0->t1=T;
		pwm0->t5=0;
		pwm0->d1=RIGHT;
		pwm0->d5=0;
		pwm0->en1=0x01;
		pwm0->en5=0x01;
		}
	else if(cm==0xFD0211F0){
		pwm0->t1=T;
		pwm0->t5=0;
		pwm0->d1=LEFT;
		pwm0->d5=0;
		pwm0->en1=0x01;
		pwm0->en5=0x01;
		}
	else if(cm==0xFD0212F0){
		pwm0->t1=T;
		pwm0->t5=0;
		pwm0->d1=CENTER;
		pwm0->d5=0;
		pwm0->en1=0x01;
		pwm0->en5=0x01;
		}
	else if(cm==0xFD0213F0){
		pwm0->t1=0;
		pwm0->t5=T;
		pwm0->d1=0;
		pwm0->d5=LEFT;
		pwm0->en1=0x01;
		pwm0->en5=0x01;
		}
	else if(cm==0xFD0214F0){
		pwm0->t1=0;
		pwm0->t5=T;
		pwm0->d1=0;
		pwm0->d5=RIGHT;
		pwm0->en1=0x01;
		pwm0->en5=0x01;
		}

//brazo 3
	else if(cm==0xFD0310F0){
		pwm0->t2=T;
		pwm0->t6=0;
		pwm0->d2=RIGHT;
		pwm0->d6=0;
		pwm0->en2=0x01;
		pwm0->en6=0x01;
		}
	else if(cm==0xFD0311F0){
		pwm0->t2=T;
		pwm0->t6=0;
		pwm0->d2=LEFT;
		pwm0->d6=0;
		pwm0->en2=0x01;
		pwm0->en6=0x01;
		}
	else if(cm==0xFD0312F0){
		pwm0->t2=T;
		pwm0->t6=0;
		pwm0->d2=CENTER;
		pwm0->d6=0;
		pwm0->en2=0x01;
		pwm0->en6=0x01;
		}
	else if(cm==0xFD0313F0){
		pwm0->t2=0;
		pwm0->t6=T;
		pwm0->d2=0;
		pwm0->d6=LEFT
		pwm0->en2=0x01;
		pwm0->en6=0x01;
		}
	else if(cm==0xFD0314F0){
		pwm0->t2=0;
		pwm0->t6=T;
		pwm0->d2=0;
		pwm0->d6=RIGHT;;
		pwm0->en2=0x01;
		pwm0->en6=0x01;
		}

//brazo 4
	else if(cm==0xFD0410F0){
		pwm0->t3=T;
		pwm0->t7=0;
		pwm0->d3=RIGHT;
		pwm0->d7=0;
		pwm0->en3=0x01;
		pwm0->en7=0x01;
		}
	else if(cm==0xFD0411F0){
		pwm0->t3=T;
		pwm0->t7=0;
		pwm0->d3=LEFT;
		pwm0->d7=0;
		pwm0->en3=0x01;
		pwm0->en7=0x01;
		}
	else if(cm==0xFD0412F0){
		pwm0->t3=T;
		pwm0->t7=0;
		pwm0->d3=CENTER;
		pwm0->d7=0;
		pwm0->en3=0x01;
		pwm0->en7=0x01;
		}
	else if(cm==0xFD0413F0){
		pwm0->t3=0;
		pwm0->t7=T;
		pwm0->d3=0;
		pwm0->d7=LEFT;
		pwm0->en3=0x01;
		pwm0->en7=0x01;
		}
	else if(cm==0xFD0414F0){
		pwm0->t3=0;
		pwm0->t7=T;
		pwm0->d3=0;
		pwm0->d7=RIGHT;
		pwm0->en3=0x01;
		pwm0->en7=0x01;
		}
	else{
		pwm0->en0=0;
		pwm0->en1=0;
		pwm0->en2=0;
		pwm0->en3=0;
		pwm0->en4=0;
		pwm0->en5=0;
		pwm0->en6=0;
		pwm0->en7=0;
		}
	

}
