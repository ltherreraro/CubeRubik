#ifndef SERVOS_H
#define SERVOS_H



typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit

typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

typedef struct{
	volatile uint32_t en0;
	volatile uint32_t en1;
	volatile uint32_t en2;
	volatile uint32_t en3;
	volatile uint32_t en4;
	volatile uint32_t en5;
	volatile uint32_t en6;
	volatile uint32_t en7;
	volatile uint32_t t0;
	volatile uint32_t t1;
            volatile uint32_t t2;
	volatile uint32_t t3;
	volatile uint32_t t4;
	volatile uint32_t t5;
	volatile uint32_t t6;
	volatile uint32_t t7;
	volatile uint32_t d0;
	volatile uint32_t d1;
	volatile uint32_t d2;
	volatile uint32_t d3;
	volatile uint32_t d4;
	volatile uint32_t d5;
	volatile uint32_t d6;
	volatile uint32_t d7;
	volatile uint8_t pwm;
	
	
} pwm_t;

class servo{


	private:
	uint32_t cm;

	

	public:
	servo();
	void c(uint32_t);








};



extern pwm_t *pwm0;

#endif
