#include "pwm.h"
#include "soc-hw.h"



void pwm::pwm_sel(int sel, char letra, bool en){

uint8_t Rd=0;
uint8_t Wr=1;
uint32_t dint=1000;
uint32_t dind;


if (letra == 'R'){
dind=35;
}
if (letra == 'C'){
dind=130;
}
if (letra == 'L'){
dind=230;
}

/*
uint32_t ae=0;uint32_t at=4;uint32_t ad=8;
uint32_t ae1=12;uint32_t at1=16;uint32_t ad1=20;
uint32_t ae2=24;uint32_t at2=28;uint32_t ad2=32;
uint32_t ae3=36;uint32_t at3=40;uint32_t ad3=44;
uint32_t ae4=48;uint32_t at4=52;uint32_t ad4=56;
uint32_t ae5=60;uint32_t at5=64;uint32_t ad5=68;
uint32_t ae6=72;uint32_t at6=76;uint32_t ad6=80;
uint32_t ae7=84;uint32_t at7=88;uint32_t ad7=92;
*/

uint32_t e [8]={0, 12, 24, 36, 48, 60, 72, 84};
uint32_t t [8]={4, 16, 28, 40, 52, 64, 76, 88};
uint32_t d [8]={8, 20, 32, 44, 56, 68, 80, 92};

pwm_wr(Wr); pwm_rd(Rd);
pwm_addr(t[sel]); pwm_din(dint);

pwm_addr(d[sel]); pwm_din(dind);

pwm_addr(e[sel]); pwm_din(en);

/*
if (sel==0){
pwm_wr(Wr); pwm_rd(Rd);

pwm_addr(at); pwm_din(dint);

pwm_addr(ad); pwm_din(dind);

pwm_addr(ae); pwm_din(en);

}

if (sel==1){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at1);pwm_din(dint);

pwm_addr(ad1);pwm_din(dind);

pwm_addr(ae1);pwm_din(en);

}

if (sel==2){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at2);pwm_din(dint);

pwm_addr(ad2);pwm_din(dind);

pwm_addr(ae2);pwm_din(en);

}
if (sel==3){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at3);pwm_din(dint);

pwm_addr(ad3);pwm_din(dind);

pwm_addr(ae3);pwm_din(en);

}
if (sel==4){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at4);pwm_din(dint);

pwm_addr(ad4);pwm_din(dind);

pwm_addr(ae4);pwm_din(en);

}
if (sel==5){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at5);pwm_din(dint);

pwm_addr(ad5);pwm_din(dind);

pwm_addr(ae5);pwm_din(en);

}
if (sel==6){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at6);pwm_din(dint);

pwm_addr(ad6);pwm_din(dind);

pwm_addr(ae6);pwm_din(en);

}
if (sel==7){
pwm_wr(Wr);pwm_rd(Rd);

pwm_addr(at7);pwm_din(dint);

pwm_addr(ad7);pwm_din(dind);

pwm_addr(ae7);pwm_din(en);

}
*/
};
