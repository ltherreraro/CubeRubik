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

dind=c*1000;

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





