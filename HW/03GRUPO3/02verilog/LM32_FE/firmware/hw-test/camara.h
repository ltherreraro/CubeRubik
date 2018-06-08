#ifndef CAMARA_H
#define CAMARA_H
#include "soc-hw.h"

class camara{
    public:
        void camRead (int vrd);
        char camData ();      
        void camCapture (int vcapture);
    private:
        int rd1;
        int capture;
};

#endif

