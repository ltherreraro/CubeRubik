Revision 3
; Created by bitgen P.20131013 at Tue May  8 08:27:34 2018
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
Bit  3170659 0x00000d9f     67 Block=SLICE_X44Y101 Latch=AQ Net=clkout_OBUF
Bit  3170661 0x00000d9f     69 Block=SLICE_X45Y101 Latch=AMUX Net=Result<0>
Bit  3170679 0x00000d9f     87 Block=SLICE_X45Y101 Latch=BMUX Net=Result<1>
Bit  3170714 0x00000d9f    122 Block=SLICE_X44Y101 Latch=DQ Net=count<1>
Bit  3170715 0x00000d9f    123 Block=SLICE_X45Y101 Latch=DQ Net=count<0>
