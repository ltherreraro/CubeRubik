#ifndef SPIKEHW_H
#define SPIKEHW_H

#define PROMSTART 0x00000000
#define RAMSTART  0x00000800
#define RAMSIZE   0x400
#define RAMEND    (RAMSTART + RAMSIZE)

#define RAM_START 0x40000000
#define RAM_SIZE  0x04000000

#define FCPU      50000000

#define UART_RXBUFSIZE 32


/****************************************************************************
 * Types
 */
typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit
typedef unsigned short int uint16_t; //16 bits
typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

/****************************************************************************
 * Interrupt handling
 */
typedef void(*isr_ptr_t)(void);

void     irq_enable();
void     irq_disable();
void     irq_set_mask(uint32_t mask);
uint32_t irq_get_mak();

void     isr_init();
void     isr_register(int irq, isr_ptr_t isr);
void     isr_unregister(int irq);

/****************************************************************************
 * General Stuff
 */
void     halt();
void     jump(uint32_t addr);
/***************************************************************************
 * PWM
 */
#define RD     0x04    // 
#define ADDR     0x08   // 
#define WR  0x0c    // 
#define D_IN   0x10    // 

typedef struct {
   volatile uint32_t d_out;
   volatile uint8_t rd;
   volatile uint32_t addr;
   volatile uint8_t wr;
   volatile uint32_t d_in;
  
} pwm_t;
uint32_t pwm_read();
void pwm_rd(uint8_t vrd);
void pwm_addr(uint32_t vaddr);
void pwm_wr(uint8_t vwr);
void pwm_din(uint32_t vd_in);
/***************************************************************************
 * camara
 */
#define RD     0x04    // 
#define ADDR     0x08   // 
#define WR  0x0c    // 
#define D_IN   0x10    // 

typedef struct {
   volatile uint32_t d_out;
   volatile uint8_t takepicture;
   volatile uint32_t leer;
   volatile uint8_t resetwr;
   volatile uint32_t resetrd;
   volatile uint8_t leer1;
  
} cam_t;

uint32_t cam_read();
void cam_takepicture (uint8_t vtakepicture);
void cam_leer(uint32_t vleer);
void cam_resetwr  (uint8_t vresetwr);
void cam_resetrd(uint32_t vresetrd);
void cam_leer1(uint8_t vleer1);
/****************************************************************************
 * Timer
 */
#define TIMER_EN     0x08    // Enable Timer
#define TIMER_AR     0x04    // Auto-Reload
#define TIMER_IRQEN  0x02    // IRQ Enable
#define TIMER_TRIG   0x01    // Triggered (reset when writing to TCR)


typedef struct {
	volatile uint32_t tcr0;
	volatile uint32_t compare0;
	volatile uint32_t counter0;
	volatile uint32_t tcr1;
	volatile uint32_t compare1;
	volatile uint32_t counter1;
} timer_t;

void msleep(uint32_t msec);
void nsleep(uint32_t nsec);

void prueba();
void tic_init();


/***************************************************************************
 * GPIO0
 */
 
typedef struct {
	volatile uint32_t rd;
	volatile uint32_t wr;
	volatile uint32_t dir;
} gpio_t;

void gpio_config_dir(uint32_t vdir);
void gpio_write(uint32_t vpins);
uint32_t gpio_read();

/***************************************************************************
 * UART0
 */
#define UART_DR   0x01                    // RX Data Ready
#define UART_ERR  0x02                    // RX Error
#define UART_BUSY 0x10                    // TX Busy

typedef struct {
   volatile uint32_t ucr;
   volatile uint32_t rxtx;
} uart_t;

void uart_init();
void uart_putchar(char c);
void uart_putstr(char *str);
char uart_getchar();

/***************************************************************************
 * SPI0
 */

typedef struct {
   volatile uint32_t rxtx;
   volatile uint32_t run;
   volatile uint32_t cs;
   volatile uint32_t nop2;
   volatile uint32_t divisor;
} spi_t;

void spi_init();
void spi_putchar(char c);
char spi_getchar();


/***************************************************************************


/***************************************************************************
 * I2C0
 */
#define I2C_TIP 0x02
typedef struct {
   volatile uint8_t prerl;
   volatile uint8_t prerh;
   volatile uint8_t ctr;
   volatile uint8_t TxRx;
   volatile uint8_t crsr;
} i2c_t;

void i2c_init();
void i2c_putchar(char c);
char i2c_getchar();


/***************************************************************************




 * Pointer to actual components
 */
extern timer_t  *timer0;
extern uart_t   *uart0; 
extern gpio_t   *gpio0; 
extern uint32_t *sram0; 
extern pwm_t    *pwm; 
extern cam_t    *cam; 

#endif // SPIKEHW_H
