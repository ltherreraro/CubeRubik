#include "pwm.h"
#include "soc-hw.h"

void pwm::pwm_sel(int b, int c, bool en){

uint8_t Rd=0;
uint8_t Wr=1;
uint32_t dint=1000;
uint32_t dind;

uint32_t e=b*12;
uint32_t d=e+8;
uint32_t t=e+4;

if(c==1){
dind=35;
}
if(c==2){
dind=130;
}
if(c==3){
dind=230;
}
if(c==4){
dind=35;
e=e+48;
d=e+8;
t=e+4;
}
if(c==5){
dind=230;
e=e+48;
d=e+8;
t=e+4;
}

/*
switch (c)
{
	case 1:
	dind=35;
	e=b*12;
	d=e+8;
	t=e+4;
	break;
	case 2:
	dind=130;
	e=b*12;
	d=e+8;
	t=e+4;
	break;
	case 3:
	dind=230;
	e=b*12;
	d=e+8;
	t=e+4;
	break;
	case 4:
	dind=35;
	e=b*12;
	d=e+8;
	t=e+4;
	break;
	case 5:
	dind=230;
	e=b*12;
	d=e+8;
	t=e+4;
	break;
}
*/
/*
int e [8]={0, 12, 24, 36, 48, 60, 72, 84};
int t [8]={4, 16, 28, 40, 52, 64, 76, 88};
int d [8]={8, 20, 32, 44, 56, 68, 80, 92};
*/
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





