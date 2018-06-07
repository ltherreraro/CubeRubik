#ifndef PWM_H
#define PWM_H


class pwm{
	public:
	void pwm_sel(int b, char c, bool en);
	int brazo(char d);
	private:
	int b;
	char d;
	bool en;
	char c;
};


#endif
