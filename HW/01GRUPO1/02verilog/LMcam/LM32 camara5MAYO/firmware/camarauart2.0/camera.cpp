#include "camera.h"
#include "soc-hw.h"


void camera::cam_tomar(int take)
{
	cam_takepicture(take);

};

void camera::cam_leer(int lee)
{	
	cam_leer(lee);
	
};
char camera::cam_dato()
{	
	char t=cam_read();
	return t;
}

void camera::cam_rst(int wrst, int rrst)
{
	cam_resetwr  (wrst);
	cam_resetrd (rrst);
};
