*
* $Id: dgthrb.s,v 1.1.1.1 1996/03/21 17:19:57 mclareni Exp $
*
* $Log: dgthrb.s,v $
* Revision 1.1.1.1  1996/03/21 17:19:57  mclareni
* Bvsl
*
*
#if (defined(CERNLIB_IBM))&&(defined(CERNLIB_QMIBMVF))
*********************************************************************
*     SUBROUTINE DGTHRB(NW,DIN,BV,DOUT)
*
* AUTOR: F. ANTONELLI                     LIBRARY: BVSL
*
*********************************************************************
DGTHRB  CSECT
#if defined(CERNLIB_QMIBMXA)
DGTHRB  AMODE 31
DGTHRB  RMODE ANY
#endif
#include "cachesz.inc"
         USING *,15
         STM   1,5,24(13)
*GET ADDRESS OF PARM LIST
         LM    1,4,0(1)
*
*IN R1 NW
         L     1,0(0,1)
* TEST ON VECTOR SIZE IF VS LT 'SZ' NOSECTIONING
         LA    5,SZ
         SR    5,1
         BC    2,NOSECT
*
*
*IN R2 R3 R4 ADDRESSES OF IN BV OUT
* ADDRESSES OF SUBSEQUENT INDEX SECTION
LOOPV    VLVCU 1
         VLVM  3
         VLMD  2,2(0)
         VSTKD 2,4(0)
         BC    2,LOOPV
* CONCLUSION VECTOR
*
         LM    1,5,24(13)
         BR    14
*
* NO SECTIONING
*
*
NOSECT   VLVCA 0(1)
         VLVM  3
         VLMD  2,2(0)
         VSTKD 2,4(0)
* CONCLUSION NO SECTIONING
*
         LM    1,5,24(13)
         BR    14
*
*
         END
#endif