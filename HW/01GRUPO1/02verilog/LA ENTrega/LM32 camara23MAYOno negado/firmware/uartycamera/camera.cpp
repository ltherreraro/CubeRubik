#include "camera.h"
#include "soc-hw.h"


void camera::tomar(int take)
{
tomarfoto(take);
};


char32_t camera::leer(int lee)
{
char32_t c=leerfoto(lee);
return c;
}; 
