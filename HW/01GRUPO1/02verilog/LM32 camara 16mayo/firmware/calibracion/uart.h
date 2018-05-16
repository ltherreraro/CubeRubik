#ifndef UART_H
#define UART_H
class uart{
public:
void uart_init();
void uart_putchar(char c);
void uart_putstr(char *str);
char uart_getchar();
int uart_getint();
private:

char c;
char *str;
};
#endif
