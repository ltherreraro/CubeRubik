//#include "soc-hw.h"
#include "camera.h"
#include "timer.h"
#include "pwm.h"
#include "uart.h"

int main()
{	
int on=1;
int off=0;

	camera cam;
	timer tiempo;

	cam.cam_tomar(on);
	tiempo.nsleep(3000000);
	cam.cam_tomar(off);
	tiempo.nsleep(3000000);
	cam.cam_tomar(on);
	tiempo.nsleep(3000000);
	cam.cam_tomar(off);
	tiempo.nsleep(3000000);
	cam.cam_ver(on);
	tiempo.nsleep(3000000);
	cam.cam_ver(off);
	tiempo.nsleep(3000000);
	cam.cam_ver(on);
	tiempo.nsleep(3000000);
	cam.cam_ver(off);
	tiempo.nsleep(3000000);
	

			
		

}


