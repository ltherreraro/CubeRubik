#ifndef UART_H
#define UART_H



typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit

typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

typedef struct {
   volatile uint32_t ucr;
   volatile uint32_t rxtx;
} uart_t;

class uart{


	private:
	char c;
	char str;

	public:
	uart();
	void putchar(char c);
	void putstr(char *str);
	char getchar();



};


extern uart_t   *uart0; 

#endif
