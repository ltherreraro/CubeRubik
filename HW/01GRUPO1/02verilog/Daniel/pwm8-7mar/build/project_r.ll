Revision 3
; Created by bitgen P.20131013 at Wed Mar  7 14:30:07 2018
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
Bit   335043 0x0000011f   2147 Block=SLICE_X0Y133 Latch=AQ Net=add/pw/countD1<0>
Bit   335068 0x0000011f   2172 Block=SLICE_X0Y133 Latch=BQ Net=add/pw/countD1<1>
Bit   335073 0x0000011f   2177 Block=SLICE_X0Y133 Latch=CQ Net=add/pw/countD1<2>
Bit   335098 0x0000011f   2202 Block=SLICE_X0Y133 Latch=DQ Net=add/pw/countD1<3>
Bit   335107 0x0000011f   2211 Block=SLICE_X0Y134 Latch=AQ Net=add/pw/countD1<4>
Bit   335132 0x0000011f   2236 Block=SLICE_X0Y134 Latch=BQ Net=add/pw/countD1<5>
Bit   335137 0x0000011f   2241 Block=SLICE_X0Y134 Latch=CQ Net=add/pw/countD1<6>
Bit   335162 0x0000011f   2266 Block=SLICE_X0Y134 Latch=DQ Net=add/pw/countD1<7>
Bit   335171 0x0000011f   2275 Block=SLICE_X0Y135 Latch=AQ Net=add/pw/countD1<8>
Bit   335196 0x0000011f   2300 Block=SLICE_X0Y135 Latch=BQ Net=add/pw/countD1<9>
Bit   335201 0x0000011f   2305 Block=SLICE_X0Y135 Latch=CQ Net=add/pw/countD1<10>
Bit   335226 0x0000011f   2330 Block=SLICE_X0Y135 Latch=DQ Net=add/pw/countD1<11>
Bit   335235 0x0000011f   2339 Block=SLICE_X0Y136 Latch=AQ Net=add/pw/countD1<12>
Bit   335260 0x0000011f   2364 Block=SLICE_X0Y136 Latch=BQ Net=add/pw/countD1<13>
Bit   335265 0x0000011f   2369 Block=SLICE_X0Y136 Latch=CQ Net=add/pw/countD1<14>
Bit   335290 0x0000011f   2394 Block=SLICE_X0Y136 Latch=DQ Net=add/pw/countD1<15>
Bit   335299 0x0000011f   2403 Block=SLICE_X0Y137 Latch=AQ Net=add/pw/countD1<16>
Bit   335319 0x0000011f   2423 Block=SLICE_X1Y137 Latch=BMUX Net=add/pw/pwm0_rstpot
Bit   335324 0x0000011f   2428 Block=SLICE_X0Y137 Latch=BQ Net=add/pw/countD1<17>
Bit   335325 0x0000011f   2429 Block=SLICE_X1Y137 Latch=BQ Net=add/pw/pwm0
Bit   335329 0x0000011f   2433 Block=SLICE_X0Y137 Latch=CQ Net=add/pw/countD1<18>
Bit   335354 0x0000011f   2458 Block=SLICE_X0Y137 Latch=DQ Net=add/pw/countD1<19>
Bit   335363 0x0000011f   2467 Block=SLICE_X0Y138 Latch=AQ Net=add/pw/countD1<20>
Bit   335388 0x0000011f   2492 Block=SLICE_X0Y138 Latch=BQ Net=add/pw/countD1<21>
Bit   335393 0x0000011f   2497 Block=SLICE_X0Y138 Latch=CQ Net=add/pw/countD1<22>
Bit   335418 0x0000011f   2522 Block=SLICE_X0Y138 Latch=DQ Net=add/pw/countD1<23>
Bit   335427 0x0000011f   2531 Block=SLICE_X0Y139 Latch=AQ Net=add/pw/countD1<24>
Bit   335452 0x0000011f   2556 Block=SLICE_X0Y139 Latch=BQ Net=add/pw/countD1<25>
Bit   335457 0x0000011f   2561 Block=SLICE_X0Y139 Latch=CQ Net=add/pw/countD1<26>
Bit   335482 0x0000011f   2586 Block=SLICE_X0Y139 Latch=DQ Net=add/pw/countD1<27>
Bit   335491 0x0000011f   2595 Block=SLICE_X0Y140 Latch=AQ Net=add/pw/countD1<28>
Bit   335516 0x0000011f   2620 Block=SLICE_X0Y140 Latch=BQ Net=add/pw/countD1<29>
Bit   335521 0x0000011f   2625 Block=SLICE_X0Y140 Latch=CQ Net=add/pw/countD1<30>
Bit   335546 0x0000011f   2650 Block=SLICE_X0Y140 Latch=DQ Net=add/pw/countD1<31>
Bit   451331 0x0000019f   2083 Block=SLICE_X2Y132 Latch=AQ Net=add/pw/countD<0>
Bit   451356 0x0000019f   2108 Block=SLICE_X2Y132 Latch=BQ Net=add/pw/countD<1>
Bit   451361 0x0000019f   2113 Block=SLICE_X2Y132 Latch=CQ Net=add/pw/countD<2>
Bit   451386 0x0000019f   2138 Block=SLICE_X2Y132 Latch=DQ Net=add/pw/countD<3>
Bit   451395 0x0000019f   2147 Block=SLICE_X2Y133 Latch=AQ Net=add/pw/countD<4>
Bit   451420 0x0000019f   2172 Block=SLICE_X2Y133 Latch=BQ Net=add/pw/countD<5>
Bit   451425 0x0000019f   2177 Block=SLICE_X2Y133 Latch=CQ Net=add/pw/countD<6>
Bit   451450 0x0000019f   2202 Block=SLICE_X2Y133 Latch=DQ Net=add/pw/countD<7>
Bit   451459 0x0000019f   2211 Block=SLICE_X2Y134 Latch=AQ Net=add/pw/countD<8>
Bit   451484 0x0000019f   2236 Block=SLICE_X2Y134 Latch=BQ Net=add/pw/countD<9>
Bit   451489 0x0000019f   2241 Block=SLICE_X2Y134 Latch=CQ Net=add/pw/countD<10>
Bit   451514 0x0000019f   2266 Block=SLICE_X2Y134 Latch=DQ Net=add/pw/countD<11>
Bit   451523 0x0000019f   2275 Block=SLICE_X2Y135 Latch=AQ Net=add/pw/countD<12>
Bit   451548 0x0000019f   2300 Block=SLICE_X2Y135 Latch=BQ Net=add/pw/countD<13>
Bit   451553 0x0000019f   2305 Block=SLICE_X2Y135 Latch=CQ Net=add/pw/countD<14>
Bit   451578 0x0000019f   2330 Block=SLICE_X2Y135 Latch=DQ Net=add/pw/countD<15>
Bit   451587 0x0000019f   2339 Block=SLICE_X2Y136 Latch=AQ Net=add/pw/countD<16>
Bit   451612 0x0000019f   2364 Block=SLICE_X2Y136 Latch=BQ Net=add/pw/countD<17>
Bit   451617 0x0000019f   2369 Block=SLICE_X2Y136 Latch=CQ Net=add/pw/countD<18>
Bit   451642 0x0000019f   2394 Block=SLICE_X2Y136 Latch=DQ Net=add/pw/countD<19>
Bit   451651 0x0000019f   2403 Block=SLICE_X2Y137 Latch=AQ Net=add/pw/countD<20>
Bit   451676 0x0000019f   2428 Block=SLICE_X2Y137 Latch=BQ Net=add/pw/countD<21>
Bit   451681 0x0000019f   2433 Block=SLICE_X2Y137 Latch=CQ Net=add/pw/countD<22>
Bit   451690 0x0000019f   2442 Block=SLICE_X3Y137 Latch=CMUX Net=add/pw/countD[31]_D0[31]_equal_6_o
Bit   451706 0x0000019f   2458 Block=SLICE_X2Y137 Latch=DQ Net=add/pw/countD<23>
Bit   451715 0x0000019f   2467 Block=SLICE_X2Y138 Latch=AQ Net=add/pw/countD<24>
Bit   451740 0x0000019f   2492 Block=SLICE_X2Y138 Latch=BQ Net=add/pw/countD<25>
Bit   451745 0x0000019f   2497 Block=SLICE_X2Y138 Latch=CQ Net=add/pw/countD<26>
Bit   451770 0x0000019f   2522 Block=SLICE_X2Y138 Latch=DQ Net=add/pw/countD<27>
Bit   451779 0x0000019f   2531 Block=SLICE_X2Y139 Latch=AQ Net=add/pw/countD<28>
Bit   451804 0x0000019f   2556 Block=SLICE_X2Y139 Latch=BQ Net=add/pw/countD<29>
Bit   451809 0x0000019f   2561 Block=SLICE_X2Y139 Latch=CQ Net=add/pw/countD<30>
Bit   451828 0x0000019f   2580 Block=SLICE_X3Y139 Latch=DMUX Net=add/pw/pwm1_rstpot
Bit   451834 0x0000019f   2586 Block=SLICE_X2Y139 Latch=DQ Net=add/pw/countD<31>
Bit   451835 0x0000019f   2587 Block=SLICE_X3Y139 Latch=DQ Net=add/pw/pwm1
Bit   567811 0x0000021f   2211 Block=SLICE_X4Y134 Latch=AQ Net=add/D1<0>
Bit   567812 0x0000021f   2212 Block=SLICE_X5Y134 Latch=AQ Net=add/D0<0>
Bit   567836 0x0000021f   2236 Block=SLICE_X4Y134 Latch=BQ Net=add/D1<16>
Bit   567837 0x0000021f   2237 Block=SLICE_X5Y134 Latch=BQ Net=add/D0<16>
Bit   567841 0x0000021f   2241 Block=SLICE_X4Y134 Latch=CQ Net=add/D1<17>
Bit   567842 0x0000021f   2242 Block=SLICE_X5Y134 Latch=CQ Net=add/D0<17>
Bit   567866 0x0000021f   2266 Block=SLICE_X4Y134 Latch=DQ Net=add/D1<20>
Bit   567867 0x0000021f   2267 Block=SLICE_X5Y134 Latch=DQ Net=add/D0<20>
Bit   568041 0x0000021f   2441 Block=SLICE_X4Y137 Latch=CMUX Net=add/pw/countD1[31]_D1[31]_equal_16_o
Bit   683844 0x0000029f   1892 Block=SLICE_X7Y129 Latch=AQ Net=add/pw/countT<0>
Bit   683869 0x0000029f   1917 Block=SLICE_X7Y129 Latch=BQ Net=add/pw/countT<1>
Bit   683874 0x0000029f   1922 Block=SLICE_X7Y129 Latch=CQ Net=add/pw/countT<2>
Bit   683899 0x0000029f   1947 Block=SLICE_X7Y129 Latch=DQ Net=add/pw/countT<3>
Bit   683907 0x0000029f   1955 Block=SLICE_X6Y130 Latch=AQ Net=add/T0<0>
Bit   683908 0x0000029f   1956 Block=SLICE_X7Y130 Latch=AQ Net=add/pw/countT<4>
Bit   683932 0x0000029f   1980 Block=SLICE_X6Y130 Latch=BQ Net=add/T0<16>
Bit   683933 0x0000029f   1981 Block=SLICE_X7Y130 Latch=BQ Net=add/pw/countT<5>
Bit   683937 0x0000029f   1985 Block=SLICE_X6Y130 Latch=CQ Net=add/T0<17>
Bit   683938 0x0000029f   1986 Block=SLICE_X7Y130 Latch=CQ Net=add/pw/countT<6>
Bit   683962 0x0000029f   2010 Block=SLICE_X6Y130 Latch=DQ Net=add/T0<20>
Bit   683963 0x0000029f   2011 Block=SLICE_X7Y130 Latch=DQ Net=add/pw/countT<7>
Bit   683972 0x0000029f   2020 Block=SLICE_X7Y131 Latch=AQ Net=add/pw/countT<8>
Bit   683997 0x0000029f   2045 Block=SLICE_X7Y131 Latch=BQ Net=add/pw/countT<9>
Bit   684002 0x0000029f   2050 Block=SLICE_X7Y131 Latch=CQ Net=add/pw/countT<10>
Bit   684027 0x0000029f   2075 Block=SLICE_X7Y131 Latch=DQ Net=add/pw/countT<11>
Bit   684036 0x0000029f   2084 Block=SLICE_X7Y132 Latch=AQ Net=add/pw/countT<12>
Bit   684061 0x0000029f   2109 Block=SLICE_X7Y132 Latch=BQ Net=add/pw/countT<13>
Bit   684066 0x0000029f   2114 Block=SLICE_X7Y132 Latch=CQ Net=add/pw/countT<14>
Bit   684091 0x0000029f   2139 Block=SLICE_X7Y132 Latch=DQ Net=add/pw/countT<15>
Bit   684100 0x0000029f   2148 Block=SLICE_X7Y133 Latch=AQ Net=add/pw/countT<16>
Bit   684125 0x0000029f   2173 Block=SLICE_X7Y133 Latch=BQ Net=add/pw/countT<17>
Bit   684130 0x0000029f   2178 Block=SLICE_X7Y133 Latch=CQ Net=add/pw/countT<18>
Bit   684137 0x0000029f   2185 Block=SLICE_X6Y133 Latch=CMUX Net=add/pw/countT[31]_T0[31]_equal_2_o
Bit   684155 0x0000029f   2203 Block=SLICE_X7Y133 Latch=DQ Net=add/pw/countT<19>
Bit   684164 0x0000029f   2212 Block=SLICE_X7Y134 Latch=AQ Net=add/pw/countT<20>
Bit   684189 0x0000029f   2237 Block=SLICE_X7Y134 Latch=BQ Net=add/pw/countT<21>
Bit   684194 0x0000029f   2242 Block=SLICE_X7Y134 Latch=CQ Net=add/pw/countT<22>
Bit   684219 0x0000029f   2267 Block=SLICE_X7Y134 Latch=DQ Net=add/pw/countT<23>
Bit   684228 0x0000029f   2276 Block=SLICE_X7Y135 Latch=AQ Net=add/pw/countT<24>
Bit   684246 0x0000029f   2294 Block=SLICE_X6Y135 Latch=BMUX Net=add/pw/_n0082
Bit   684253 0x0000029f   2301 Block=SLICE_X7Y135 Latch=BQ Net=add/pw/countT<25>
Bit   684258 0x0000029f   2306 Block=SLICE_X7Y135 Latch=CQ Net=add/pw/countT<26>
Bit   684283 0x0000029f   2331 Block=SLICE_X7Y135 Latch=DQ Net=add/pw/countT<27>
Bit   684292 0x0000029f   2340 Block=SLICE_X7Y136 Latch=AQ Net=add/pw/countT<28>
Bit   684317 0x0000029f   2365 Block=SLICE_X7Y136 Latch=BQ Net=add/pw/countT<29>
Bit   684322 0x0000029f   2370 Block=SLICE_X7Y136 Latch=CQ Net=add/pw/countT<30>
Bit   684347 0x0000029f   2395 Block=SLICE_X7Y136 Latch=DQ Net=add/pw/countT<31>
Bit  1007043 0x0000041f   1891 Block=SLICE_X10Y129 Latch=AQ Net=add/E0
Bit  1007045 0x0000041f   1893 Block=SLICE_X11Y129 Latch=AMUX Net=add/_n1184_inv
Bit  1007068 0x0000041f   1916 Block=SLICE_X10Y129 Latch=BQ Net=add/E1
Bit  1007092 0x0000041f   1940 Block=SLICE_X11Y129 Latch=DMUX Net=add/_n1216_inv
Bit  1007107 0x0000041f   1955 Block=SLICE_X10Y130 Latch=AQ Net=add/pw/countT1<0>
Bit  1007108 0x0000041f   1956 Block=SLICE_X11Y130 Latch=AQ Net=add/T1<0>
Bit  1007132 0x0000041f   1980 Block=SLICE_X10Y130 Latch=BQ Net=add/pw/countT1<1>
Bit  1007137 0x0000041f   1985 Block=SLICE_X10Y130 Latch=CQ Net=add/pw/countT1<2>
Bit  1007162 0x0000041f   2010 Block=SLICE_X10Y130 Latch=DQ Net=add/pw/countT1<3>
Bit  1007171 0x0000041f   2019 Block=SLICE_X10Y131 Latch=AQ Net=add/pw/countT1<4>
Bit  1007196 0x0000041f   2044 Block=SLICE_X10Y131 Latch=BQ Net=add/pw/countT1<5>
Bit  1007201 0x0000041f   2049 Block=SLICE_X10Y131 Latch=CQ Net=add/pw/countT1<6>
Bit  1007210 0x0000041f   2058 Block=SLICE_X11Y131 Latch=CMUX Net=add/T1<20>
Bit  1007220 0x0000041f   2068 Block=SLICE_X11Y131 Latch=DMUX Net=add/T1<16>
Bit  1007226 0x0000041f   2074 Block=SLICE_X10Y131 Latch=DQ Net=add/pw/countT1<7>
Bit  1007227 0x0000041f   2075 Block=SLICE_X11Y131 Latch=DQ Net=add/T1<17>
Bit  1007235 0x0000041f   2083 Block=SLICE_X10Y132 Latch=AQ Net=add/pw/countT1<8>
Bit  1007260 0x0000041f   2108 Block=SLICE_X10Y132 Latch=BQ Net=add/pw/countT1<9>
Bit  1007265 0x0000041f   2113 Block=SLICE_X10Y132 Latch=CQ Net=add/pw/countT1<10>
Bit  1007290 0x0000041f   2138 Block=SLICE_X10Y132 Latch=DQ Net=add/pw/countT1<11>
Bit  1007299 0x0000041f   2147 Block=SLICE_X10Y133 Latch=AQ Net=add/pw/countT1<12>
Bit  1007324 0x0000041f   2172 Block=SLICE_X10Y133 Latch=BQ Net=add/pw/countT1<13>
Bit  1007329 0x0000041f   2177 Block=SLICE_X10Y133 Latch=CQ Net=add/pw/countT1<14>
Bit  1007354 0x0000041f   2202 Block=SLICE_X10Y133 Latch=DQ Net=add/pw/countT1<15>
Bit  1007363 0x0000041f   2211 Block=SLICE_X10Y134 Latch=AQ Net=add/pw/countT1<16>
Bit  1007388 0x0000041f   2236 Block=SLICE_X10Y134 Latch=BQ Net=add/pw/countT1<17>
Bit  1007393 0x0000041f   2241 Block=SLICE_X10Y134 Latch=CQ Net=add/pw/countT1<18>
Bit  1007402 0x0000041f   2250 Block=SLICE_X11Y134 Latch=CMUX Net=add/pw/countT1[31]_T1[31]_equal_12_o
Bit  1007418 0x0000041f   2266 Block=SLICE_X10Y134 Latch=DQ Net=add/pw/countT1<19>
Bit  1007427 0x0000041f   2275 Block=SLICE_X10Y135 Latch=AQ Net=add/pw/countT1<20>
Bit  1007452 0x0000041f   2300 Block=SLICE_X10Y135 Latch=BQ Net=add/pw/countT1<21>
Bit  1007457 0x0000041f   2305 Block=SLICE_X10Y135 Latch=CQ Net=add/pw/countT1<22>
Bit  1007482 0x0000041f   2330 Block=SLICE_X10Y135 Latch=DQ Net=add/pw/countT1<23>
Bit  1007491 0x0000041f   2339 Block=SLICE_X10Y136 Latch=AQ Net=add/pw/countT1<24>
Bit  1007493 0x0000041f   2341 Block=SLICE_X11Y136 Latch=AMUX Net=add/pw/_n0086
Bit  1007516 0x0000041f   2364 Block=SLICE_X10Y136 Latch=BQ Net=add/pw/countT1<25>
Bit  1007521 0x0000041f   2369 Block=SLICE_X10Y136 Latch=CQ Net=add/pw/countT1<26>
Bit  1007546 0x0000041f   2394 Block=SLICE_X10Y136 Latch=DQ Net=add/pw/countT1<27>
Bit  1007555 0x0000041f   2403 Block=SLICE_X10Y137 Latch=AQ Net=add/pw/countT1<28>
Bit  1007580 0x0000041f   2428 Block=SLICE_X10Y137 Latch=BQ Net=add/pw/countT1<29>
Bit  1007585 0x0000041f   2433 Block=SLICE_X10Y137 Latch=CQ Net=add/pw/countT1<30>
Bit  1007610 0x0000041f   2458 Block=SLICE_X10Y137 Latch=DQ Net=add/pw/countT1<31>
Bit  1329635 0x0000059f   1283 Block=SLICE_X14Y120 Latch=AQ Net=con/d_in<4>
Bit  1329636 0x0000059f   1284 Block=SLICE_X15Y120 Latch=AQ Net=con/adr<2>
Bit  1329637 0x0000059f   1285 Block=SLICE_X15Y120 Latch=AMUX Net=con/adr<4>
Bit  1329638 0x0000059f   1286 Block=SLICE_X14Y120 Latch=AMUX Net=con/d_in<7>
Bit  1329660 0x0000059f   1308 Block=SLICE_X14Y120 Latch=BQ Net=con/d_in<15>
Bit  2240996 0x0000099f   1220 Block=SLICE_X29Y119 Latch=AQ Net=con/count<0>
Bit  2240998 0x0000099f   1222 Block=SLICE_X28Y119 Latch=AMUX Net=con/_n00842
Bit  2241021 0x0000099f   1245 Block=SLICE_X29Y119 Latch=BQ Net=con/count<1>
Bit  2241026 0x0000099f   1250 Block=SLICE_X29Y119 Latch=CQ Net=con/count<2>
Bit  2241051 0x0000099f   1275 Block=SLICE_X29Y119 Latch=DQ Net=con/count<3>
Bit  2241059 0x0000099f   1283 Block=SLICE_X28Y120 Latch=AQ Net=con/adr<3>
Bit  2241060 0x0000099f   1284 Block=SLICE_X29Y120 Latch=AQ Net=con/count<4>
