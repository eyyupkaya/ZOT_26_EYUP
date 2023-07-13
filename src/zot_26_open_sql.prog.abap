*&---------------------------------------------------------------------*
*& Report zot_26_open_sql
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_26_open_sql.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_twid TYPE  i  OBLIGATORY,
              p_twit TYPE  char50.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_twat   RADIOBUTTON GROUP g1,
              p_twsil RADIOBUTTON GROUP g1,
              p_twdeis  RADIOBUTTON GROUP g1,
              p_twgstr RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.

*START-OF-SELECTION.
*
IF p_twat EQ abap_true.
  DATA lt_wit TYPE TABLE OF zot_26_t_day4.
  APPEND VALUE #( tweet   = p_twit
                  twid    = p_twid
                ) TO lt_wit.
  MODIFY zot_26_t_day4 FROM TABLE lt_wit.
  COMMIT WORK AND WAIT.
ENDIF.

  IF p_twdeis EQ abap_true.
    DATA lt_twd TYPE TABLE OF zot_26_t_day4.
    APPEND VALUE #( tweet   = p_twit
                   twid    = p_twid
                  ) TO lt_twd.
    MODIFY zot_26_t_day4 FROM TABLE lt_twd.
     COMMIT work and WAIT.
  ENDIF.


IF p_twgstr EQ abap_true.

  SELECT SINGLE *  FROM zot_26_t_day4 INTO @DATA(ls_data) WHERE twid EQ @p_twid.
  IF sy-subrc EQ 0.
    DATA : lv_message TYPE char50.
    CONCATENATE 'Bulunan tweet:' ls_data-tweet INTO lv_message SEPARATED BY space .
    WRITE : lv_message .

  ELSE.
    WRITE : 'Kayıt bulunamadı!'.
  ENDIF.

ENDIF.
IF p_twsil EQ abap_true.

  DELETE FROM zot_26_t_day4 WHERE twid EQ p_twid.
  COMMIT WORK AND WAIT.
ENDIF.
