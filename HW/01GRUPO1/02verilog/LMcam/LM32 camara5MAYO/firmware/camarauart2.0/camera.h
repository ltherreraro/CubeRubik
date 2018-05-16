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
	void cam_leer(int lee);
	char cam_dato();
	void cam_rst(int wrst, int rrst);
	private:
	int take;
	int lee;
	int wrst;
	int rrst;	
};


#endif
