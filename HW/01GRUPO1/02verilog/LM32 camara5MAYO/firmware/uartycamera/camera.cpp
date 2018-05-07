#include "camera.h"
#include "soc-hw.h"


void camera::tomar(char take)
{
tomarfoto(take);
};


char32_t camera::leer()
{
leerfoto();
}; 
