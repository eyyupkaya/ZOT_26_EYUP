*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_26_T_P_ITUR.................................*
DATA:  BEGIN OF STATUS_ZOT_26_T_P_ITUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_26_T_P_ITUR               .
*.........table declarations:.................................*
TABLES: *ZOT_26_T_P_ITUR               .
TABLES: ZOT_26_T_P_ITUR                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
