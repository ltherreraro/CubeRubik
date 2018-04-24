#include "soc-hw.h" 
#include "servos.h"
#include "timer.h"
#include "uart.h"







int main(){


	servo s;
	uart u;
	timer t;
	
	
	char comando;


	
	while(1){



	comando=u.getchar();
	if(comando==0xFF){
		comando=u.getchar();
		if(comando==0x00){
			comando=u.getchar();
			if(comando==0x00){
			comando=u.getchar();
				if(comando==0xF0)
				s.c(0xFF0000F0);

			}
			}
			}
	else if(comando==0xFE){
		comando=u.getchar();
		if(comando==0x00){
			comando=u.getchar();
			if(comando==0x00){
			comando=u.getchar();
				if(comando==0xF0)
				s.c(0xFE0000F0);

			}
			}
			}




//brazo1
	else if(comando==0xFD){
		comando=u.getchar();
		if(comando==0x01){
			comando=u.getchar();
			if(comando==0x10){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0110F0);
			}
			}
			else if(comando==0x11){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0111F0);


			}
			}			
			else if(comando==0x12){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0112F0);

			}
			}
			else if(comando==0x13){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0113F0);

			}
			}
			else if(comando==0x14){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0114F0);

			}
			}
			}// fin brazo 1
		else if(comando==0x02){
			comando=u.getchar();
			if(comando==0x10){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0210F0);
			}
			}
			else if(comando==0x11){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0211F0);


			}
			}			
			else if(comando==0x12){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0212F0);

			}
			}
			else if(comando==0x13){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0213F0);

			}
			}
			else if(comando==0x14){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0214F0);

			}
			}
			}// fin brazo 2
			
		else if(comando==0x03){
			comando=u.getchar();
			if(comando==0x10){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0310F0);
			}
			}
			else if(comando==0x11){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0311F0);


			}
			}			
			else if(comando==0x12){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0312F0);

			}
			}
			else if(comando==0x13){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0313F0);

			}
			}
			else if(comando==0x14){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0314F0);

			}
			}
			}// fin brazo 3
		else if(comando==0x04){
			comando=u.getchar();
			if(comando==0x10){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0410F0);
			}
			}
			else if(comando==0x11){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0411F0);


			}
			}			
			else if(comando==0x12){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0412F0);

			}
			}
			else if(comando==0x13){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0413F0);

			}
			}
			else if(comando==0x14){
			comando=u.getchar();
				if(comando==0xF0){
				s.c(0xFD0414F0);

			}
			}
			}// fin brazo 4




			}//fin else if






			}//while


	

}//fin
	



			

 



	
	



