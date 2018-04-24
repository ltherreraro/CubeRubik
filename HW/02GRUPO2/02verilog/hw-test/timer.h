#ifndef TIMER_H
#define TIMER_H



typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit

typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

typedef struct {
	volatile uint32_t tcr0;
	volatile uint32_t compare0;
	volatile uint32_t counter0;
	volatile uint32_t tcr1;
	volatile uint32_t compare1;
	volatile uint32_t counter1;
} timer_t;

class timer{


	private:
	int msec;
	int nsec;

	public:
	timer();
	void msleep(int);
	void nsleep(int);



};


extern timer_t  *timer0;

#endif
