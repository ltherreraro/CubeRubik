#include "camara.h"
#include "soc-hw.h"

void camara:: camCapture(int vcapture){
    cam -> capture = vcapture;
}

void camara::camRead (int vrd){
    cam -> rd1 = vrd;
}

char camara::camData(){	
	return cam -> data_out;
}
