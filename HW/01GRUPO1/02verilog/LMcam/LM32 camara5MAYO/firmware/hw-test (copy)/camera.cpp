#include "camera.h"
#include "soc-hw.h"


void camera::cam_tomar(uint32_t take)
{
	cam_takepicture(take);

};


char32_t camera::cam_leer(uint32_t lee)
{	
	cam_leer(lee);
	char t=cam_read();
	return t;
}; 

void camera::cam_rst(uint32_t wrst, uint32_t rrst)
{
	cam_resetwr  (wrst);
	cam_resetrd (rrst);
};
