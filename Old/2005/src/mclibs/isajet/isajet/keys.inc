#ifndef CERNLIB_ISAJET_KEYS_INC
#define CERNLIB_ISAJET_KEYS_INC
*
*
* keys.inc
*
      INTEGER MXKEYS
      PARAMETER (MXKEYS=20)
      COMMON/KEYS/IKEYS,KEYON,KEYS(MXKEYS)
      COMMON/XKEYS/REAC
      SAVE /KEYS/,/XKEYS/
      LOGICAL KEYS
      LOGICAL KEYON
      CHARACTER*8 REAC
      INTEGER   IKEYS

#endif