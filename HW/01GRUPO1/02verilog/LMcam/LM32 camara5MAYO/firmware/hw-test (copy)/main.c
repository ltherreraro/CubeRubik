//#include "soc-hw.h"
#include "camera.h"
#include "timer.h"
#include "pwm.h"
#include "uart.h"

int main()
{	


	camera cam;
	timer tiempo;

	cam.cam_tomar(1);
	tiempo.nsleep(3000000);
	cam.cam_tomar(0);
	tiempo.nsleep(3000000);
	cam.cam_tomar(1);
	tiempo.nsleep(3000000);
	cam.cam_tomar(0);
	tiempo.nsleep(3000000);
	cam.cam_leer(1);
	tiempo.nsleep(3000000);
	cam.cam_leer(0);
	tiempo.nsleep(3000000);
	cam.cam_leer(1);
	tiempo.nsleep(3000000);
	cam.cam_leer(0);
	tiempo.nsleep(3000000);
	

			
		

}


