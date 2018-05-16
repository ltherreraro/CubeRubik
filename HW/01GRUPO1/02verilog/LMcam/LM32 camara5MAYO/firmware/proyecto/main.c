//#include "soc-hw.h"/*
#include "timer.h"
#include "pwm.h"


int main(){

pwm motor;
timer tiempo;
motor.pwm_sel(motor.brazo(1), 4, true);
motor.pwm_sel(motor.brazo(2), 4, true);
motor.pwm_sel(motor.brazo(3), 4, true);
motor.pwm_sel(motor.brazo(4), 4, true);
tiempo.nsleep(3000000);
motor.pwm_sel(motor.brazo(1), 5, true);
motor.pwm_sel(motor.brazo(2), 5, true);
motor.pwm_sel(motor.brazo(3), 5, true);
motor.pwm_sel(motor.brazo(4), 5, true);
tiempo.nsleep(3000000);
motor.pwm_sel(motor.brazo(1), 1, true);
motor.pwm_sel(motor.brazo(2), 2, true);
motor.pwm_sel(motor.brazo(3), 1, true);
motor.pwm_sel(motor.brazo(4), 2, true);
tiempo.nsleep(3000000);
motor.pwm_sel(motor.brazo(1), 2, true);
motor.pwm_sel(motor.brazo(2), 1, true);
motor.pwm_sel(motor.brazo(3), 2, true);
motor.pwm_sel(motor.brazo(4), 1, true);
tiempo.nsleep(3000000);
motor.pwm_sel(motor.brazo(1), 3, true);
motor.pwm_sel(motor.brazo(2), 2, true);
motor.pwm_sel(motor.brazo(3), 3, true);
motor.pwm_sel(motor.brazo(4), 2, true);
tiempo.nsleep(3000000);
motor.pwm_sel(motor.brazo(1), 4, true);
motor.pwm_sel(motor.brazo(2), 4, true);
motor.pwm_sel(motor.brazo(3), 4, true);
motor.pwm_sel(motor.brazo(4), 4, true);
tiempo.nsleep(3000000);

}


