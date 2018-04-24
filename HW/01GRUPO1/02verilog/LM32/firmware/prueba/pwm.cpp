#include "pwm.h"
#include "soc-hw.h"

void pwm::pwm_sel(int b, char c, bool en){

uint8_t Rd=0;
uint8_t Wr=1;
uint32_t dint=1000000;
uint32_t dind;

uint32_t e=b*12;
uint32_t d=e+8;
uint32_t t=e+4;


for (int i=35000; i<200000; i=i+1000)
{
	if(c==0x15)
	{
		dind=i;
		
		uart_putchar(i);
		nsleep(3000000);
	}

}



if(c==0x11){
dind=35000;
}
if(c==0x12){
dind=120000;
}
if(c==0x10){
dind=200000;
}
if(c==0x13){
dind=180000;
e=e+48;
d=e+8;
t=e+4;
}
if(c==0x14){
dind=100000;
e=e+48;
d=e+8;
t=e+4;
}

pwm_wr(Wr); pwm_rd(Rd);
pwm_addr(t); pwm_din(dint);

pwm_addr(d); pwm_din(dind);

pwm_addr(e); pwm_din(en);


};

int pwm::brazo(char d){
int m;
if(d==0x01){m=0;}
if(d==0x02){m=1;}
if(d==0x03){m=2;}
if(d==0x04){m=3;}
return m;
};





