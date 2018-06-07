#include "camera.h"
#include "soc-hw.h"


void camera::cam_tomar(int take)
{
	cam_takepicture(take);

};

void camera::cam_ver(int ver)
{	
	cam_leer(ver);
}; 

void camera::cam_ver1(int ver1)
{	
	cam_leer1(ver1);
}; 

char camera::cam_dato()
{	
	return cam_read();
}; 

void camera::cam_rst(int datwrst, int datrrst)
{
	cam_resetwr  (datwrst);
	cam_resetrd (datrrst);
};
