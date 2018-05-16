Revision 3
; Created by bitgen P.20131013 at Wed May  9 12:51:38 2018
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
Bit 17995142 0x0040189f   2598 Block=SLICE_X78Y90 Latch=AMUX Net=Result<0>
Bit 17995170 0x0040189f   2626 Block=SLICE_X79Y90 Latch=CQ Net=count<0>
Bit 18111510 0x0040191f   2614 Block=SLICE_X80Y90 Latch=BMUX Net=rdclk_rstpot1
Bit 18111516 0x0040191f   2620 Block=SLICE_X80Y90 Latch=BQ Net=rdclk_OBUF
Bit 18667332 0x00401b9f   2532 Block=SLICE_X89Y89 Latch=AQ Net=count1_0
