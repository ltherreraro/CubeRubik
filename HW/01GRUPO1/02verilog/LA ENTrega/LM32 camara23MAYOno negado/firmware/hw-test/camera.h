#ifndef CAMERA_H
#define CAMERA_H

typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit
typedef unsigned short int uint16_t; //16 bits
typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

class camera{
	public:
	void cam_tomar(int take);
	void cam_ver(int ver);
	char cam_dato();
	void cam_rst(int datwrst, int datrrst);
	private:
	int take;
	int ver;
	int datwrst;
	int datrrst;	
};


#endif
