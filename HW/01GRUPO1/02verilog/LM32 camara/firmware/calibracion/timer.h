#ifndef TIMER_H
#define TIMER_H

#define TIMER_EN     0x08    // Enable Timer
#define TIMER_AR     0x04    // Auto-Reload
#define TIMER_IRQEN  0x02    // IRQ Enable
#define TIMER_TRIG   0x01    // Triggered (reset when writing to TCR)
#define FCPU      50000000
class timer{
	public:
	void nsleep(int nsec);
	private:
	int nsec;	
};


#endif
