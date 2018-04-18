//#include "soc-hw.h"
#include "pwm.h"
#include "timer.h"



int main(){

pwm motor;
timer tiempo;
motor.pwm_sel(motor.brazo(1), 1, true);
motor.pwm_sel(1, 2, true);
motor.pwm_sel(2, 3, true);
motor.pwm_sel(3, 1, true);
motor.pwm_sel(0, 4, true);
motor.pwm_sel(1, 5, true);
motor.pwm_sel(2, 4, true);
motor.pwm_sel(3, 5, true);
//tiempo.nsleep(300000);
/*motor.pwm_sel(12, 'R' , true);
motor.pwm_sel(24, 'L' , true);
tiempo.nsleep(300000);/*
motor.pwm_sel(3, 'R' , true);
motor.pwm_sel(4, 'L' , true);
tiempo.nsleep(300000);
motor.pwm_sel(4, 'R' , true);
motor.pwm_sel(3, 'L' , true);
tiempo.nsleep(300000);
motor.pwm_sel(6, 'R' , true);
motor.pwm_sel(5, 'L' , true);
tiempo.nsleep(300000);
motor.pwm_sel(5, 'R' , true);
motor.pwm_sel(6, 'L' , true);
tiempo.nsleep(300000);
motor.pwm_sel(7, 'R' , true);
motor.pwm_sel(8, 'L' , true);
tiempo.nsleep(300000);
motor.pwm_sel(8, 'R' , true);
motor.pwm_sel(7, 'L' , true);
tiempo.nsleep(300000);
*/

}


