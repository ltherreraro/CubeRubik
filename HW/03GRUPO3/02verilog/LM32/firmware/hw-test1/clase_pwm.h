#ifndef CLASE_PWM_H
#define CLASE_PWM_H
#include "soc-hw.h"


class clase_pwm{
	public:
	void pwm_setMov (int b, int com);
	private:
	int b;
	int com;
    
    uint32_t pwm_read();    
    void pwm_rd(uint8_t vrd);
    void pwm_addr(uint32_t vaddr);
    void pwm_wr(uint8_t vwr);
    void pwm_din(uint32_t vd_in);


	
};




#endif
