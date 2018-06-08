#include "clase_pwm.h"
#include "soc-hw.h"

void clase_pwm::setMov(char b, char com){


//Address

    uint32_t ae0=0;     uint32_t ad0=4;     uint32_t at0=8;
    uint32_t ae1=12;    uint32_t ad1=16;    uint32_t at1=20;
    uint32_t ae2=24;    uint32_t ad2=28;    uint32_t at2=32;
    uint32_t ae3=36;    uint32_t ad3=40;    uint32_t at3=44;
    uint32_t ae4=48;    uint32_t ad4=52;    uint32_t at4=56;
    uint32_t ae5=60;    uint32_t ad5=64;    uint32_t at5=68;
    uint32_t ae6=72;    uint32_t ad6=76;    uint32_t at6=80;
    uint32_t ae7=84;    uint32_t ad7=88;    uint32_t at7=92;    

//selección escritura

    pwm_wr(1);
    pwm_rd(0);

//Arm Selection

    if (b == 0x01){        //Arm 1 -> Servo 0 (RLC) & 1(DA)
        if (com==0x10){           //S0
            Right(at0,ad0,ae0);            
        }
        else if(com==0x11){       //S0
            Left(at0,ad0,ae0);
        }
        else if(com==0x12){       //S0
            Center(at0,ad0,ae0);
        }
        else if(com==0x13){       //S1
            Leave(at1,ad1,ae1);
        }
        else if(com==0x14){       //S1
            Take(at1,ad1,ae1);
        }            
    }
    if (b == 0x02){        //Arm 2 -> Servo 2 (RLC) & 3(DA)
        if (com==0x10){           //S2
            Right(at2,ad2,ae2);            
        }
        else if(com==0x11){       //S2
            Left(at2,ad2,ae2);
        }
        else if(com==0x12){       //S2
            Center(at2,ad2,ae2);
        }
        else if(com==0x13){       //S3
            Leave(at3,ad3,ae3);
        }
        else if(com==0x14){       //S3
            Take(at3,ad3,ae3);
        }            
    }
    if (b == 0x03){        //Arm 3 -> Servo 4 (RLC) & 5(DA)
        if (com==0x10){           //S4
            Right(at4,ad4,ae4);            
        }
        else if(com==0x11){       //S4
            Left(at4,ad4,ae4);
        }
        else if(com==0x12){       //S4
            Center(at4,ad4,ae4);
        }
        else if(com==0x13){       //S5
            Leave(at5,ad5,ae5);
        }
        else if(com==0x14){       //S5
            Take(at5,ad5,ae5);
        }            
    }
    if (b == 0x04){        //Arm 4 -> Servo 6 (RLC) & 7(DA)
        if (com==0x10){           //S6
            Right(at6,ad6,ae6);            
        }
        else if(com==0x11){       //S6
            Left(at6,ad6,ae6);
        }
        else if(com==0x12){       //S6
            Center(at6,ad6,ae6);
        }
        else if(com==0x13){       //S7
            Leave(at7,ad7,ae7);
        }
        else if(com==0x14){       //S7
            Take(at7,ad7,ae7);
        }            
    }
} //cierra setMov

void clase_pwm::Left(int at, int ad, int ae){
    uint32_t dint=2000000;
    uint32_t dind=60000;
    pwm_addr(at);
    pwm_din(dint);
    pwm_addr(ad); 
    pwm_din(dind);
    pwm_addr(ae);
    pwm_din(1);
}

void clase_pwm::Center(int at, int ad, int ae){
    uint32_t dint=2000000;
    uint32_t dind=130000;
    pwm_addr(at);
    pwm_din(dint);
    pwm_addr(ad); 
    pwm_din(dind);
    pwm_addr(ae);
    pwm_din(1);
}

void clase_pwm::Right(int at, int ad, int ae){
    uint32_t dint=2000000;
    uint32_t dind=225000;
    pwm_addr(at);
    pwm_din(dint);
    pwm_addr(ad); 
    pwm_din(dind);
    pwm_addr(ae);
    pwm_din(1);
}

void clase_pwm::Leave(int at, int ad, int ae){
    uint32_t dint=2000000;
    uint32_t dind=240000;
    pwm_addr(at);
    pwm_din(dint);
    pwm_addr(ad); 
    pwm_din(dind);
    pwm_addr(ae);
    pwm_din(1);
}

void clase_pwm::Take(int at, int ad, int ae){
    uint32_t dint=2000000;
    uint32_t dind=100000;
    pwm_addr(at);
    pwm_din(dint);
    pwm_addr(ad); 
    pwm_din(dind);
    pwm_addr(ae);
    pwm_din(1);
}


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





