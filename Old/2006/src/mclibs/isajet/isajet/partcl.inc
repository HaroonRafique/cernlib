#ifndef CERNLIB_ISAJET_PARTCL_INC
#define CERNLIB_ISAJET_PARTCL_INC
*
*
* partcl.inc
*
      INTEGER   MXPTCL,IPACK
      PARAMETER (MXPTCL=4000,IPACK=10000)
      COMMON/PARTCL/NPTCL,PPTCL(5,MXPTCL),IORIG(MXPTCL),IDENT(MXPTCL)
     1,IDCAY(MXPTCL)
      SAVE /PARTCL/
#if defined(CERNLIB_LEVEL2)
#include "isajet/l2part.inc"
* Ignoring t=pass
#endif
      INTEGER   NPTCL,IORIG,IDENT,IDCAY
      REAL      PPTCL

#endif