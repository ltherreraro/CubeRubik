#include "soc-hw.h"
uint8_t Re=0;
void pwm_sel(int sel, int T, int D){
uint8_t R=0;
uint8_t W=1;
uint32_t on=1;
uint32_t off=0;
uint32_t dint=T;
uint32_t dind=D;

uint32_t ae=0;uint32_t at=4;uint32_t ad=8;
uint32_t ae1=12;uint32_t at1=16;uint32_t ad1=20;
uint32_t ae2=24;uint32_t at2=28;uint32_t ad2=32;
uint32_t ae3=36;uint32_t at3=40;uint32_t ad3=44;
uint32_t ae4=48;uint32_t at4=52;uint32_t ad4=56;
uint32_t ae5=60;uint32_t at5=64;uint32_t ad5=68;
uint32_t ae6=72;uint32_t at6=76;uint32_t ad6=80;
uint32_t ae7=84;uint32_t at7=88;uint32_t ad7=102;
if (sel==0){
pwm_wr(W); pwm_rd(R);

pwm_addr(at); pwm_din(dint);

pwm_addr(ad); pwm_din(dind);

pwm_addr(ae); pwm_din(on);

}

if (sel==1){
pwm_wr(W);pwm_rd(R);

pwm_addr(at1);pwm_din(dint);

pwm_addr(ad1);pwm_din(dind);

pwm_addr(ae1);pwm_din(on);

}

if (sel==2){
pwm_wr(W);pwm_rd(R);

pwm_addr(at2);pwm_din(dint);

pwm_addr(ad2);pwm_din(dind);

pwm_addr(ae2);pwm_din(on);

}
if (sel==3){
pwm_wr(W);pwm_rd(R);

pwm_addr(at3);pwm_din(dint);

pwm_addr(ad3);pwm_din(dind);

pwm_addr(ae3);pwm_din(on);

}
if (sel==4){
pwm_wr(W);pwm_rd(R);

pwm_addr(at4);pwm_din(dint);

pwm_addr(ad4);pwm_din(dind);

pwm_addr(ae4);pwm_din(on);

}
if (sel==5){
pwm_wr(W);pwm_rd(R);

pwm_addr(at5);pwm_din(dint);

pwm_addr(ad5);pwm_din(dind);

pwm_addr(ae5);pwm_din(on);

}
if (sel==6){
pwm_wr(W);pwm_rd(R);

pwm_addr(at6);pwm_din(dint);

pwm_addr(ad6);pwm_din(dind);

pwm_addr(ae6);pwm_din(on);

}
if (sel==7){
pwm_wr(W);pwm_rd(R);

pwm_addr(at7);pwm_din(dint);

pwm_addr(ad7);pwm_din(dind);

pwm_addr(ae7);pwm_din(on);

}
}

int main(){

pwm_sel(0, 10, 2);
pwm_sel(1, 1000000, 130000);
nsleep(3000000);
pwm_sel(0, 1000000, 35000);
pwm_sel(1, 1000000, 35000);
nsleep(3000000);
pwm_sel(0, 1000000, 200000);
pwm_sel(1, 1000000, 130000);
nsleep(3000000);
pwm_sel(0, 1000000, 35000);
pwm_sel(1, 1000000, 35000);
nsleep(3000000);
pwm_sel(0, 1000000, 200000);
pwm_sel(1, 1000000, 130000);
nsleep(3000000);
pwm_sel(0, 1000000, 35000);
pwm_sel(1, 1000000, 35000);
nsleep(3000000); 

 	
}


