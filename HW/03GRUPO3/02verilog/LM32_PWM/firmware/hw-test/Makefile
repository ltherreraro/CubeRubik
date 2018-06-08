LM32_CC=lm32-elf-gcc
LM32_CCP=lm32-elf-g++
LM32_LD=lm32-elf-ld
LM32_OBJCOPY=lm32-elf-objcopy
LM32_OBJDUMP=lm32-elf-objdump

SREC2VRAM ?= ../../tools/srec2vram/srec2vram
VRAMFILE=image.ram

CFLAGS=-MMD -O2 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled -msign-extend-enabled  -mmultiply-enabled -mdivide-enabled 
LDFLAGS=-nostdlib -nodefaultlibs -Tlinker.ld 
SEGMENTS = -j .text -j .rodata -j .data

all: image.srec $(VRAMFILE) 

crt0ram.o: crt0ram.S
	$(LM32_CC) $(CFLAGS) -c crt0ram.S

main.o: main.c
	$(LM32_CCP) $(CFLAGS) -c main.c

soc-hw.o: soc-hw.c
	$(LM32_CC) $(CFLAGS) -c soc-hw.c 

clase_pwm.o: clase_pwm.cpp
	$(LM32_CCP) $(CFLAGS) -c clase_pwm.cpp 

clase_timer.o: clase_timer.cpp
	$(LM32_CCP) $(CFLAGS) -c clase_timer.cpp 

clase_uart.o: clase_uart.cpp
	$(LM32_CCP) $(CFLAGS) -c clase_uart.cpp 

image: crt0ram.o main.o soc-hw.o clase_pwm.o clase_timer.o clase_uart.o
	$(LM32_LD) $(LDFLAGS) -Map image.map -N -o image crt0ram.o main.o soc-hw.o clase_pwm.o clase_timer.o clase_uart.o

image.lst: image
	$(LM32_OBJDUMP) -h -S $< > $@

image.srec: image.lst
	$(LM32_OBJCOPY) $(SEGMENTS) -O srec image image.srec

$(VRAMFILE): image.srec
	$(SREC2VRAM) image.srec 0x00000000 0x2000 > $(VRAMFILE)

clean:
	rm -f image image.lst image.bin image.srec image.map  *.o *.d *.ram

DEPS := $(wildcard *.d)
ifneq ($(DEPS),)
include $(DEPS)
endif

