#include "soc-hw.h"
#include "pwm.h"


int main(){

pwm motor;
motor.pwm_sel(0, 'R');
motor.pwm_sel(1, 'L' );
nsleep(30000);
//motor.nsleep(3000000);
/*motor.pwm_sel(0, 'C');
motor.pwm_sel(1, 'C');
motor.nsleep(3000000);
motor.pwm_sel(0, 'R');
motor.pwm_sel(1, 'L' );
motor.nsleep(3000000);
motor.pwm_sel(0, 'C');
motor.pwm_sel(1, 'C');
motor.nsleep(3000000);
motor.pwm_sel(0, 'R');
motor.pwm_sel(1, 'L' );
motor.nsleep(3000000);
motor.pwm_sel(0, 'C');
motor.pwm_sel(1, 'C');
motor.nsleep(3000000);
*/

}


