*&---------------------------------------------------------------------*
*& Report zot_26_data_objects
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_26_data_objects.
DATA:
      gv_ogrenci_adi(10)  TYPE c,
      gv_ogrenci_soyadi TYPE char12,
      gv_tarih     TYPE sy-datum.

gv_ogrenci_adi = 'Eyyüp'.
gv_ogrenci_soyadi ='KAYA'.
gv_tarih       = sy-datum.

cl_demo_output=>write( gv_ogrenci_adi ).
cl_demo_output=>write( gv_ogrenci_soyadi ).
cl_demo_output=>write( gv_tarih ).
cl_demo_output=>display(  ).

"case eğer tek koşullu çok seçenek varsa genelde case tercih edilir
* gv deki lk hafr g ve l global mi local mi olduğunu belli eder v ise variable anlamını taşıyor





    """"""""""""""""""""""""""""
DATA: lv_number1 TYPE i VALUE 10 ,
      lv_number2 TYPE i VALUE 5.


DATA(lV_toplama) = lv_number1 + lv_number2.
DATA(lV_cikarma) = lv_number1 - lv_number2.
DATA(lV_carpma) = lv_number1 * lv_number2.
DATA(lV_bolme) = lv_number1 / lv_number2.

cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).

cl_demo_output=>write( |Clear işleminden önce 1v_bolme'nin değeri:{ lv_bolme }| ).
CLEAR lv_bolme.
