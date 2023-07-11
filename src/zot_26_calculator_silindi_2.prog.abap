*&---------------------------------------------------------------------*
*& Report zot_26_calculator_silindi_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_26_calculator_silindi_2.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_val1 TYPE p DECIMALS 3 OBLIGATORY,
              p_val2 TYPE p DECIMALS 3 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_topla RADIOBUTTON GROUP g1,
              p_cikar RADIOBUTTON GROUP g1,
              p_carp  RADIOBUTTON GROUP g1,
              p_bol   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.


START-OF-SELECTION.

DATA: gv_sonuc type p DECIMALS 3 ,
      gv_choose type c.

      IF p_topla EQ abap_true.
      gv_sonuc = p_val1 + p_val2.
      cl_demo_output=>write( gv_sonuc ).
      ELSEIF p_cikar EQ abap_true.
      gv_sonuc = p_val1 - p_val2.
      cl_demo_output=>write( gv_sonuc ).
      ELSEIF p_carp EQ abap_true.
      gv_sonuc = p_val1 * p_val2.
      cl_demo_output=>write( gv_sonuc ).
      ELSEIF p_bol EQ abap_true.
      try.
          gv_sonuc = p_val1 / p_val2.
        catch cx_sy_zerodivide.
        cl_demo_output=>write( |SIFIRA BÖLÜNME OLMAZ!| ).
      endtry.
      ENDIF.

      cl_demo_output=>display(  ).
