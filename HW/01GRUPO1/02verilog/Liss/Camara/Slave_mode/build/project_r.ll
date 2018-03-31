Revision 3
; Created by bitgen P.20131013 at Mon Mar 12 20:17:36 2018
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
Bit  2821862 0x00000c1f    326 Block=SLICE_X38Y105 Latch=AMUX Net=Result<0>
Bit  2821878 0x00000c1f    342 Block=SLICE_X38Y105 Latch=BMUX Net=Result<1>
Bit  2821889 0x00000c1f    353 Block=SLICE_X38Y105 Latch=CQ Net=div/clkout
Bit  2821914 0x00000c1f    378 Block=SLICE_X38Y105 Latch=DQ Net=div/count<1>
Bit  2821915 0x00000c1f    379 Block=SLICE_X39Y105 Latch=DQ Net=div/count<0>
Bit  2937891 0x00000c9f      3 Block=SLICE_X40Y100 Latch=AQ Net=sl/pwdn
Bit  3170595 0x00000d9f      3 Block=SLICE_X44Y100 Latch=AQ Net=sl/countP<24>
Bit  3170620 0x00000d9f     28 Block=SLICE_X44Y100 Latch=BQ Net=sl/countP<25>
Bit  3170625 0x00000d9f     33 Block=SLICE_X44Y100 Latch=CQ Net=sl/countP<26>
Bit  3170650 0x00000d9f     58 Block=SLICE_X44Y100 Latch=DQ Net=sl/countP<27>
Bit  3170659 0x00000d9f     67 Block=SLICE_X44Y101 Latch=AQ Net=sl/countP<28>
Bit  3170684 0x00000d9f     92 Block=SLICE_X44Y101 Latch=BQ Net=sl/countP<29>
Bit  3170689 0x00000d9f     97 Block=SLICE_X44Y101 Latch=CQ Net=sl/countP<30>
Bit  3170714 0x00000d9f    122 Block=SLICE_X44Y101 Latch=DQ Net=sl/countP<31>
Bit 15208963 0x00400c1f   2403 Block=SLICE_X38Y87 Latch=AQ Net=sl/count<0>
Bit 15208988 0x00400c1f   2428 Block=SLICE_X38Y87 Latch=BQ Net=sl/count<1>
Bit 15208993 0x00400c1f   2433 Block=SLICE_X38Y87 Latch=CQ Net=sl/count<2>
Bit 15209018 0x00400c1f   2458 Block=SLICE_X38Y87 Latch=DQ Net=sl/count<3>
Bit 15209027 0x00400c1f   2467 Block=SLICE_X38Y88 Latch=AQ Net=sl/count<4>
Bit 15209052 0x00400c1f   2492 Block=SLICE_X38Y88 Latch=BQ Net=sl/count<5>
Bit 15209057 0x00400c1f   2497 Block=SLICE_X38Y88 Latch=CQ Net=sl/count<6>
Bit 15209066 0x00400c1f   2506 Block=SLICE_X39Y88 Latch=CMUX Net=sl/resetb
Bit 15209076 0x00400c1f   2516 Block=SLICE_X39Y88 Latch=DMUX Net=sl/resetb_rstpot1
Bit 15209082 0x00400c1f   2522 Block=SLICE_X38Y88 Latch=DQ Net=sl/count<7>
Bit 15209091 0x00400c1f   2531 Block=SLICE_X38Y89 Latch=AQ Net=sl/count<8>
Bit 15209116 0x00400c1f   2556 Block=SLICE_X38Y89 Latch=BQ Net=sl/count<9>
Bit 15209121 0x00400c1f   2561 Block=SLICE_X38Y89 Latch=CQ Net=sl/count<10>
Bit 15325428 0x00400c9f   2516 Block=SLICE_X41Y88 Latch=DMUX Net=N3
Bit 15441412 0x00400d1f   2148 Block=SLICE_X43Y83 Latch=AQ Net=sl/countD<0>
Bit 15441437 0x00400d1f   2173 Block=SLICE_X43Y83 Latch=BQ Net=sl/countD<1>
Bit 15441442 0x00400d1f   2178 Block=SLICE_X43Y83 Latch=CQ Net=sl/countD<2>
Bit 15441467 0x00400d1f   2203 Block=SLICE_X43Y83 Latch=DQ Net=sl/countD<3>
Bit 15441476 0x00400d1f   2212 Block=SLICE_X43Y84 Latch=AQ Net=sl/countD<4>
Bit 15441501 0x00400d1f   2237 Block=SLICE_X43Y84 Latch=BQ Net=sl/countD<5>
Bit 15441506 0x00400d1f   2242 Block=SLICE_X43Y84 Latch=CQ Net=sl/countD<6>
Bit 15441531 0x00400d1f   2267 Block=SLICE_X43Y84 Latch=DQ Net=sl/countD<7>
Bit 15441540 0x00400d1f   2276 Block=SLICE_X43Y85 Latch=AQ Net=sl/countD<8>
Bit 15441565 0x00400d1f   2301 Block=SLICE_X43Y85 Latch=BQ Net=sl/countD<9>
Bit 15441570 0x00400d1f   2306 Block=SLICE_X43Y85 Latch=CQ Net=sl/countD<10>
Bit 15441595 0x00400d1f   2331 Block=SLICE_X43Y85 Latch=DQ Net=sl/countD<11>
Bit 15441604 0x00400d1f   2340 Block=SLICE_X43Y86 Latch=AQ Net=sl/countD<12>
Bit 15441629 0x00400d1f   2365 Block=SLICE_X43Y86 Latch=BQ Net=sl/countD<13>
Bit 15441634 0x00400d1f   2370 Block=SLICE_X43Y86 Latch=CQ Net=sl/countD<14>
Bit 15441659 0x00400d1f   2395 Block=SLICE_X43Y86 Latch=DQ Net=sl/countD<15>
Bit 15441668 0x00400d1f   2404 Block=SLICE_X43Y87 Latch=AQ Net=sl/countD<16>
Bit 15441693 0x00400d1f   2429 Block=SLICE_X43Y87 Latch=BQ Net=sl/countD<17>
Bit 15441698 0x00400d1f   2434 Block=SLICE_X43Y87 Latch=CQ Net=sl/countD<18>
Bit 15441723 0x00400d1f   2459 Block=SLICE_X43Y87 Latch=DQ Net=sl/countD<19>
Bit 15441732 0x00400d1f   2468 Block=SLICE_X43Y88 Latch=AQ Net=sl/countD<20>
Bit 15441757 0x00400d1f   2493 Block=SLICE_X43Y88 Latch=BQ Net=sl/countD<21>
Bit 15441762 0x00400d1f   2498 Block=SLICE_X43Y88 Latch=CQ Net=sl/countD<22>
Bit 15441787 0x00400d1f   2523 Block=SLICE_X43Y88 Latch=DQ Net=sl/countD<23>
Bit 15441796 0x00400d1f   2532 Block=SLICE_X43Y89 Latch=AQ Net=sl/countD<24>
Bit 15441821 0x00400d1f   2557 Block=SLICE_X43Y89 Latch=BQ Net=sl/countD<25>
Bit 15441826 0x00400d1f   2562 Block=SLICE_X43Y89 Latch=CQ Net=sl/countD<26>
Bit 15441851 0x00400d1f   2587 Block=SLICE_X43Y89 Latch=DQ Net=sl/countD<27>
Bit 15441860 0x00400d1f   2596 Block=SLICE_X43Y90 Latch=AQ Net=sl/countD<28>
Bit 15441885 0x00400d1f   2621 Block=SLICE_X43Y90 Latch=BQ Net=sl/countD<29>
Bit 15441890 0x00400d1f   2626 Block=SLICE_X43Y90 Latch=CQ Net=sl/countD<30>
Bit 15441915 0x00400d1f   2651 Block=SLICE_X43Y90 Latch=DQ Net=sl/countD<31>
Bit 15558467 0x00400d9f   2851 Block=SLICE_X44Y94 Latch=AQ Net=sl/countP<0>
Bit 15558492 0x00400d9f   2876 Block=SLICE_X44Y94 Latch=BQ Net=sl/countP<1>
Bit 15558497 0x00400d9f   2881 Block=SLICE_X44Y94 Latch=CQ Net=sl/countP<2>
Bit 15558522 0x00400d9f   2906 Block=SLICE_X44Y94 Latch=DQ Net=sl/countP<3>
Bit 15558531 0x00400d9f   2915 Block=SLICE_X44Y95 Latch=AQ Net=sl/countP<4>
Bit 15558556 0x00400d9f   2940 Block=SLICE_X44Y95 Latch=BQ Net=sl/countP<5>
Bit 15558561 0x00400d9f   2945 Block=SLICE_X44Y95 Latch=CQ Net=sl/countP<6>
Bit 15558586 0x00400d9f   2970 Block=SLICE_X44Y95 Latch=DQ Net=sl/countP<7>
Bit 15558595 0x00400d9f   2979 Block=SLICE_X44Y96 Latch=AQ Net=sl/countP<8>
Bit 15558620 0x00400d9f   3004 Block=SLICE_X44Y96 Latch=BQ Net=sl/countP<9>
Bit 15558625 0x00400d9f   3009 Block=SLICE_X44Y96 Latch=CQ Net=sl/countP<10>
Bit 15558650 0x00400d9f   3034 Block=SLICE_X44Y96 Latch=DQ Net=sl/countP<11>
Bit 15558659 0x00400d9f   3043 Block=SLICE_X44Y97 Latch=AQ Net=sl/countP<12>
Bit 15558684 0x00400d9f   3068 Block=SLICE_X44Y97 Latch=BQ Net=sl/countP<13>
Bit 15558689 0x00400d9f   3073 Block=SLICE_X44Y97 Latch=CQ Net=sl/countP<14>
Bit 15558714 0x00400d9f   3098 Block=SLICE_X44Y97 Latch=DQ Net=sl/countP<15>
Bit 15558723 0x00400d9f   3107 Block=SLICE_X44Y98 Latch=AQ Net=sl/countP<16>
Bit 15558748 0x00400d9f   3132 Block=SLICE_X44Y98 Latch=BQ Net=sl/countP<17>
Bit 15558753 0x00400d9f   3137 Block=SLICE_X44Y98 Latch=CQ Net=sl/countP<18>
Bit 15558778 0x00400d9f   3162 Block=SLICE_X44Y98 Latch=DQ Net=sl/countP<19>
Bit 15558787 0x00400d9f   3171 Block=SLICE_X44Y99 Latch=AQ Net=sl/countP<20>
Bit 15558812 0x00400d9f   3196 Block=SLICE_X44Y99 Latch=BQ Net=sl/countP<21>
Bit 15558817 0x00400d9f   3201 Block=SLICE_X44Y99 Latch=CQ Net=sl/countP<22>
Bit 15558842 0x00400d9f   3226 Block=SLICE_X44Y99 Latch=DQ Net=sl/countP<23>
