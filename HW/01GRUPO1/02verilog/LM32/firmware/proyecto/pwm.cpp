#include "pwm.h"
#include "soc-hw.h"

void pwm::pwm_sel(int b, int c, bool en){

uint8_t Rd=0;
uint8_t Wr=1;
uint32_t dint=1000000;
uint32_t dind;

uint32_t e=b*12;
uint32_t d=e+8;
uint32_t t=e+4;

//0 -> 1500 us 
//90 -> 2500 us
//180 ->500us

if(c==1){
dind=35000;
}
if(c==2){
dind=130000;
}
if(c==3){
dind=240000;
}
if(c==4){
dind=35000;
e=e+48;
d=e+8;
t=e+4;
}
if(c==5){
dind=250000;
e=e+48;
d=e+8;
t=e+4;
}

pwm_wr(Wr); pwm_rd(Rd);
pwm_addr(t); pwm_din(dint);

pwm_addr(d); pwm_din(dind);

pwm_addr(e); pwm_din(en);


};

int pwm::brazo(int d){
int m;
if(d==1){m=0;}
if(d==2){m=1;}
if(d==3){m=2;}
if(d==4){m=3;}
return m;
};





