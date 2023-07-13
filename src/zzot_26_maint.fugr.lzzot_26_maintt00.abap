*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_26_T_P_ILTSM................................*
DATA:  BEGIN OF STATUS_ZOT_26_T_P_ILTSM              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_26_T_P_ILTSM              .
CONTROLS: TCTRL_ZOT_26_T_P_ILTSM
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_26_T_P_ILTSM              .
TABLES: ZOT_26_T_P_ILTSM               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
