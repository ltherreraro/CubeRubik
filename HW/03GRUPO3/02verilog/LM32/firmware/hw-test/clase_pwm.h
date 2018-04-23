#ifndef CLASE_PWM_H
#define CLASE_PWM_H
#include "soc-hw.h"


class clase_pwm{
	public:
	void setMov (char b, char com);
	private:
	int b;
	int com;
    uint32_t pwm_read();
    void Left (int at, int ad, int ae);
    void Center (int at, int ad, int ae);
    void Right (int at, int ad, int ae);
    void Take (int at, int ad, int ae);
    void Leave (int at, int ad, int ae);    
    void pwm_rd(uint8_t vrd);
    void pwm_addr(uint32_t vaddr);
    void pwm_wr(uint8_t vwr);
    void pwm_din(uint32_t vd_in);


	
};




#endif
