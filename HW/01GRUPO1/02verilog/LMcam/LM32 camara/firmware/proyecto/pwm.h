#ifndef PWM_H
#define PWM_H

//#include "soc-hw.h"
/*
typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit

typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit
/*
typedef struct{
	volatile uint32_t ae;
 	volatile uint32_t at;
	volatile uint32_t ad;
	volatile uint32_t ae1;
 	volatile uint32_t at1;
	volatile uint32_t ad1;
	volatile uint32_t ae2;
 	volatile uint32_t at2;
	volatile uint32_t ad2;
	volatile uint32_t ae3;
 	volatile uint32_t at3;
	volatile uint32_t ad3;
	volatile uint32_t ae4;
 	volatile uint32_t at4;
	volatile uint32_t ad4;
	volatile uint32_t ae5;
 	volatile uint32_t at5;
	volatile uint32_t ad5;
	volatile uint32_t ae6;
 	volatile uint32_t at6;
	volatile uint32_t ad6;
	volatile uint32_t ae7;
 	volatile uint32_t at7;
	volatile uint32_t ad7;
} pwm_x;

*/

class pwm{
	public:
	void pwm_sel(int b, int c, bool en);
	int brazo(int d);
	private:
	int b;
	int d;
	bool en;
	int c;
};


#endif
