#ifndef CAMERA_H
#define CAMERA_H

typedef unsigned int  uint32_t;    // 32 Bit
typedef signed   int   int32_t;    // 32 Bit
typedef unsigned short int uint16_t; //16 bits
typedef unsigned char  uint8_t;    // 8 Bit
typedef signed   char   int8_t;    // 8 Bit

class camera{
	public:
	void cam_tomar(uint32_t take);
	char32_t cam_leer(uint32_t lee);
	void cam_rst(uint32_t wrst, uint32_t rrst);
	private:
	uint32_t take;
	uint32_t lee;
	uint32_t wrst;
	uint32_t rrst;	
};


#endif
