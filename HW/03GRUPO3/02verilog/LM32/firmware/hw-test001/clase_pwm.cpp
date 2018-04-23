#include "clase_pwm.h"
#include "soc-hw.h"
//#define T 20000


void clase_pwm::setMov(int b, int com){

uint8_t R=0;
uint8_t W=1;
uint32_t on=1;
uint32_t off=0;
uint32_t dint=2000000;
uint32_t dind=0;

//Address

uint32_t ae0=0;     uint32_t ad0=4;     uint32_t at0=8;
uint32_t ae1=12;    uint32_t ad1=16;    uint32_t at1=20;
uint32_t ae2=24;    uint32_t ad2=28;    uint32_t at2=32;
uint32_t ae3=36;    uint32_t ad3=40;    uint32_t at3=44;
uint32_t ae4=48;    uint32_t ad4=52;    uint32_t at4=56;
uint32_t ae5=60;    uint32_t ad5=64;    uint32_t at5=68;
uint32_t ae6=72;    uint32_t ad6=76;    uint32_t at6=80;
uint32_t ae7=84;    uint32_t ad7=88;    uint32_t at7=92;

//Arm Selection


if (b == 1){      //Arm 1 -> Servos 0 (RLC) & 1(DA)
    
    if (com == 10){  //L servo 0
        dind = 50000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at0);
        pwm_din(dint);
        pwm_addr(ad0); 
        pwm_din(dind);
        pwm_addr(ae0);
        pwm_din(on);
    }

    if (com == 11){ //C servo 0
        dind = 125000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at0);
        pwm_din(dint);
        pwm_addr(ad0);
        pwm_din(dind);
        pwm_addr(ae0);
        pwm_din(on);
    }

    if (com == 12){ //R servo 0 
        dind = 215000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at0);
        pwm_din(dint);
        pwm_addr(ad0);
        pwm_din(dind);
        pwm_addr(ae0);
        pwm_din(on);
    }

    if (com == 13){ //D servo1
        dind = 180000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at1);
        pwm_din(dint);
        pwm_addr(ad1);
        pwm_din(dind);
        pwm_addr(ae1);
        pwm_din(on);        
    }

    if (com == 14){ //A servo 1
        dind = 100000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at1);
        pwm_din(dint);
        pwm_addr(ad1);
        pwm_din(dind);
        pwm_addr(ae1);
        pwm_din(on);
    }


}



if (b == 2){      //Arm 2 -> Servos 2 (RLC) & 3(DA)
    
    if (com == 10){ //L
        dind = 50000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at2);
        pwm_din(dint);
        pwm_addr(ad2);
        pwm_din(dind);
        pwm_addr(ae2);
        pwm_din(on);
    }

    if (com == 11){ //C
        dind = 125000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at2);
        pwm_din(dint);
        pwm_addr(ad2);
        pwm_din(dind);
        pwm_addr(ae2);
        pwm_din(on);
    }

    if (com == 12){ //R
        dind = 215000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at2);
        pwm_din(dint);
        pwm_addr(ad2);
        pwm_din(dind);
        pwm_addr(ae2);
        pwm_din(on);
    }

    if (com == 13){ //A
        dind = 180000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at3);
        pwm_din(dint);
        pwm_addr(ad3);
        pwm_din(dind);
        pwm_addr(ae3);
        pwm_din(on);
    }

    if (com == 14){ //D
        dind = 100000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at3);
        pwm_din(dint);
        pwm_addr(ad3);
        pwm_din(dind);
        pwm_addr(ae3);
        pwm_din(on);
    }


}



if (b == 3){      //Arm 3 -> Servos 4 (RLC) & 5(DA)
    
    if (com == 10){ //L
        dind = 50000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at4);
        pwm_din(dint);
        pwm_addr(ad4);
        pwm_din(dind);
        pwm_addr(ae4);
        pwm_din(on);
    }

    if (com == 11){ //C
        dind = 125000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at4);
        pwm_din(dint);
        pwm_addr(ad4);
        pwm_din(dind);
        pwm_addr(ae4);
        pwm_din(on);
    }

    if (com == 12){ //R
        dind = 215000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at4);
        pwm_din(dint);
        pwm_addr(ad4);
        pwm_din(dind);
        pwm_addr(ae4);
        pwm_din(on);
    }

    if (com == 13){ //A
        dind = 180000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at5);
        pwm_din(dint);
        pwm_addr(ad5);
        pwm_din(dind);
        pwm_addr(ae5);
        pwm_din(on);
    }

    if (com == 14){ //D
        dind = 100000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at5);
        pwm_din(dint);
        pwm_addr(ad5);
        pwm_din(dind);
        pwm_addr(ae5);
        pwm_din(on);
    }


}


if (b == 4){      //Arm 4 -> Servos 6 (RLC) & 7(DA)
    
    if (com == 10){ //L
        dind = 50000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at6);
        pwm_din(dint);
        pwm_addr(ad6);
        pwm_din(dind);
        pwm_addr(ae6);
        pwm_din(on);
    }

    if (com == 11){ //C
        dind = 125000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at6);
        pwm_din(dint);
        pwm_addr(ad6);
        pwm_din(dind);
        pwm_addr(ae6);
        pwm_din(on);
    }

    if (com == 12){ //R
        dind = 215000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at6);
        pwm_din(dint);
        pwm_addr(ad6);
        pwm_din(dind);
        pwm_addr(ae6);
        pwm_din(on);
    }

    if (com == 13){ //A
        dind = 180000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at7);
        pwm_din(dint);
        pwm_addr(ad7);
        pwm_din(dind);
        pwm_addr(ae7);
        pwm_din(on);
    }

    if (com == 14){ //D
        dind = 100000;        
        pwm_wr(W);
        pwm_rd(R);
        pwm_addr(at7);
        pwm_din(dint);
        pwm_addr(ad7);
        pwm_din(dind);
        pwm_addr(ae7);
        pwm_din(on);
    }


}

};
uint32_t clase_pwm::pwm_read(){	//escribe en el pin
	return pwm -> d_out;
}
void clase_pwm:: pwm_rd(uint8_t vrd){
pwm -> rd = vrd;
}
void clase_pwm:: pwm_addr(uint32_t vaddr){
pwm -> addr = vaddr;
}
void clase_pwm:: pwm_wr(uint8_t vwr){
pwm -> wr = vwr;
}
void clase_pwm:: pwm_din(uint32_t vd_in){
pwm -> d_in = vd_in;
}





