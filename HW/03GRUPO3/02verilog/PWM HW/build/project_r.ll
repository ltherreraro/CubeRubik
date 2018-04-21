Revision 3
; Created by bitgen P.20131013 at Thu Apr 19 18:01:09 2018
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit  1213411 0x0000051f   1411 Block=SLICE_X12Y122 Latch=AQ Net=cnt_t<9>
Bit  1213414 0x0000051f   1414 Block=SLICE_X12Y122 Latch=AMUX Net=pwm_glue_set
Bit  1213430 0x0000051f   1430 Block=SLICE_X12Y122 Latch=BMUX Net=cnt_t<0>
Bit  1213436 0x0000051f   1436 Block=SLICE_X12Y122 Latch=BQ Net=cnt_t<10>
Bit  1213441 0x0000051f   1441 Block=SLICE_X12Y122 Latch=CQ Net=cnt_t<12>
Bit  1213449 0x0000051f   1449 Block=SLICE_X12Y122 Latch=CMUX Net=cnt_t<11>
Bit  1213459 0x0000051f   1459 Block=SLICE_X12Y122 Latch=DMUX Net=cnt_t<13>
Bit  1213466 0x0000051f   1466 Block=SLICE_X12Y122 Latch=DQ Net=cnt_t<14>
Bit  1213500 0x0000051f   1500 Block=SLICE_X12Y123 Latch=BQ Net=pwm_OBUF
Bit  1329446 0x0000059f   1094 Block=SLICE_X14Y117 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<0>
Bit  1329462 0x0000059f   1110 Block=SLICE_X14Y117 Latch=BMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<1>
Bit  1329481 0x0000059f   1129 Block=SLICE_X14Y117 Latch=CMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<2>
Bit  1329491 0x0000059f   1139 Block=SLICE_X14Y117 Latch=DMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<3>
Bit  1329508 0x0000059f   1156 Block=SLICE_X15Y118 Latch=AQ Net=cnt_t<3>
Bit  1329509 0x0000059f   1157 Block=SLICE_X15Y118 Latch=AMUX Net=cnt_t<2>
Bit  1329510 0x0000059f   1158 Block=SLICE_X14Y118 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<4>
Bit  1329526 0x0000059f   1174 Block=SLICE_X14Y118 Latch=BMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<5>
Bit  1329527 0x0000059f   1175 Block=SLICE_X15Y118 Latch=BMUX Net=cnt_t<4>
Bit  1329533 0x0000059f   1181 Block=SLICE_X15Y118 Latch=BQ Net=cnt_t<5>
Bit  1329538 0x0000059f   1186 Block=SLICE_X15Y118 Latch=CQ Net=cnt_t<6>
Bit  1329545 0x0000059f   1193 Block=SLICE_X14Y118 Latch=CMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<6>
Bit  1329546 0x0000059f   1194 Block=SLICE_X15Y118 Latch=CMUX Net=cnt_t<17>
Bit  1329555 0x0000059f   1203 Block=SLICE_X14Y118 Latch=DMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<7>
Bit  1329556 0x0000059f   1204 Block=SLICE_X15Y118 Latch=DMUX Net=cnt_t<7>
Bit  1329563 0x0000059f   1211 Block=SLICE_X15Y118 Latch=DQ Net=cnt_t<8>
Bit  1329574 0x0000059f   1222 Block=SLICE_X14Y119 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<8>
Bit  1329590 0x0000059f   1238 Block=SLICE_X14Y119 Latch=BMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<9>
Bit  1329609 0x0000059f   1257 Block=SLICE_X14Y119 Latch=CMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<10>
Bit  1329619 0x0000059f   1267 Block=SLICE_X14Y119 Latch=DMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<11>
Bit  1329638 0x0000059f   1286 Block=SLICE_X14Y120 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<12>
Bit  1329654 0x0000059f   1302 Block=SLICE_X14Y120 Latch=BMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<13>
Bit  1329673 0x0000059f   1321 Block=SLICE_X14Y120 Latch=CMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<14>
Bit  1329683 0x0000059f   1331 Block=SLICE_X14Y120 Latch=DMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<15>
Bit  1329702 0x0000059f   1350 Block=SLICE_X14Y121 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<16>
Bit  1329718 0x0000059f   1366 Block=SLICE_X14Y121 Latch=BMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<17>
Bit  1329737 0x0000059f   1385 Block=SLICE_X14Y121 Latch=CMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<18>
Bit  1329747 0x0000059f   1395 Block=SLICE_X14Y121 Latch=DMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<19>
Bit  1329766 0x0000059f   1414 Block=SLICE_X14Y122 Latch=AMUX Net=cnt_t[31]_GND_1_o_add_8_OUT<20>
Bit  2240531 0x0000099f    755 Block=SLICE_X28Y111 Latch=DMUX Net=Mcompar_cnt_t[31]_GND_1_o_LessThan_8_o_cy<15>
Bit  2241059 0x0000099f   1283 Block=SLICE_X28Y120 Latch=AQ Net=cnt_t<16>
Bit  2241062 0x0000099f   1286 Block=SLICE_X28Y120 Latch=AMUX Net=cnt_t<15>
Bit  2241078 0x0000099f   1302 Block=SLICE_X28Y120 Latch=BMUX Net=cnt_t<18>
Bit  2241084 0x0000099f   1308 Block=SLICE_X28Y120 Latch=BQ Net=cnt_t<19>
Bit  2241089 0x0000099f   1313 Block=SLICE_X28Y120 Latch=CQ Net=cnt_t<20>
Bit  2241097 0x0000099f   1321 Block=SLICE_X28Y120 Latch=CMUX Net=cnt_t<1>
Bit  2356198 0x00000a1f     70 Block=SLICE_X30Y101 Latch=AMUX Net=GND_1_o_d[31]_sub_7_OUT<5>
Bit  2472550 0x00000a9f     70 Block=SLICE_X32Y101 Latch=AMUX Net=GND_1_o_d[31]_sub_7_OUT<7>
Bit  2472566 0x00000a9f     86 Block=SLICE_X32Y101 Latch=BMUX Net=GND_1_o_d[31]_sub_7_OUT<8>
Bit  2472585 0x00000a9f    105 Block=SLICE_X32Y101 Latch=CMUX Net=GND_1_o_d[31]_sub_7_OUT<9>
Bit  2705190 0x00000b9f      6 Block=SLICE_X36Y100 Latch=AMUX Net=GND_1_o_d[31]_sub_7_OUT<15>
Bit  2705206 0x00000b9f     22 Block=SLICE_X36Y100 Latch=BMUX Net=GND_1_o_d[31]_sub_7_OUT<16>
Bit  2705225 0x00000b9f     41 Block=SLICE_X36Y100 Latch=CMUX Net=GND_1_o_d[31]_sub_7_OUT<17>
Bit  2705235 0x00000b9f     51 Block=SLICE_X36Y100 Latch=DMUX Net=GND_1_o_d[31]_sub_7_OUT<18>
Bit 14626147 0x0040099f   1347 Block=SLICE_X28Y71 Latch=AQ Net=cnt_d<0>
Bit 14626172 0x0040099f   1372 Block=SLICE_X28Y71 Latch=BQ Net=cnt_d<1>
Bit 14626177 0x0040099f   1377 Block=SLICE_X28Y71 Latch=CQ Net=cnt_d<2>
Bit 14626202 0x0040099f   1402 Block=SLICE_X28Y71 Latch=DQ Net=cnt_d<3>
Bit 14626211 0x0040099f   1411 Block=SLICE_X28Y72 Latch=AQ Net=cnt_d<4>
Bit 14626236 0x0040099f   1436 Block=SLICE_X28Y72 Latch=BQ Net=cnt_d<5>
Bit 14626241 0x0040099f   1441 Block=SLICE_X28Y72 Latch=CQ Net=cnt_d<6>
Bit 14626266 0x0040099f   1466 Block=SLICE_X28Y72 Latch=DQ Net=cnt_d<7>
Bit 14626275 0x0040099f   1475 Block=SLICE_X28Y73 Latch=AQ Net=cnt_d<8>
Bit 14626300 0x0040099f   1500 Block=SLICE_X28Y73 Latch=BQ Net=cnt_d<9>
Bit 14626305 0x0040099f   1505 Block=SLICE_X28Y73 Latch=CQ Net=cnt_d<10>
Bit 14626330 0x0040099f   1530 Block=SLICE_X28Y73 Latch=DQ Net=cnt_d<11>
Bit 14626339 0x0040099f   1539 Block=SLICE_X28Y74 Latch=AQ Net=cnt_d<12>
Bit 14626364 0x0040099f   1564 Block=SLICE_X28Y74 Latch=BQ Net=cnt_d<13>
Bit 14626369 0x0040099f   1569 Block=SLICE_X28Y74 Latch=CQ Net=cnt_d<14>
Bit 14626394 0x0040099f   1594 Block=SLICE_X28Y74 Latch=DQ Net=cnt_d<15>
Bit 14626435 0x0040099f   1635 Block=SLICE_X28Y75 Latch=AQ Net=cnt_d<16>
Bit 14626460 0x0040099f   1660 Block=SLICE_X28Y75 Latch=BQ Net=cnt_d<17>
Bit 14626867 0x0040099f   2067 Block=SLICE_X28Y81 Latch=DMUX Net=Mcompar_cnt_d[31]_d[31]_LessThan_5_o_cy<15>
Bit 15093382 0x00400b9f   3174 Block=SLICE_X36Y99 Latch=AMUX Net=GND_1_o_d[31]_sub_7_OUT<11>
Bit 15093398 0x00400b9f   3190 Block=SLICE_X36Y99 Latch=BMUX Net=GND_1_o_d[31]_sub_7_OUT<12>
Bit 15093417 0x00400b9f   3209 Block=SLICE_X36Y99 Latch=CMUX Net=GND_1_o_d[31]_sub_7_OUT<13>
Bit 15093427 0x00400b9f   3219 Block=SLICE_X36Y99 Latch=DMUX Net=GND_1_o_d[31]_sub_7_OUT<14>
Bit 15209476 0x00400c1f   2916 Block=SLICE_X39Y95 Latch=AQ Net=d<5>
Bit 15209477 0x00400c1f   2917 Block=SLICE_X39Y95 Latch=AMUX Net=d<8>
Bit 15209501 0x00400c1f   2941 Block=SLICE_X39Y95 Latch=BQ Net=d<7>
Bit 15209506 0x00400c1f   2946 Block=SLICE_X39Y95 Latch=CQ Net=d<16>
