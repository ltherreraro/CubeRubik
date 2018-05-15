#include "soc-hw.h"

int main(){

uint32_t rdOn=1;
uint32_t rdOff=0;
uint32_t wrOn=1;
uint32_t wrOff=0;
uint32_t resetOn=1;
uint32_t resetOff=0;


 
cam_takepicture(wrOn);
nsleep(3000000); 
cam_takepicture(wrOff);
nsleep(3000000); 
cam_leer(rdOn);
nsleep(3000000);
cam_leer(rdOff);
nsleep(3000000);
cam_resetwr (resetOn);
nsleep(3000000);
cam_resetwr (resetOff);
nsleep(3000000);
cam_resetrd(resetOn);
nsleep(3000000);
cam_resetrd(resetOff);


}


