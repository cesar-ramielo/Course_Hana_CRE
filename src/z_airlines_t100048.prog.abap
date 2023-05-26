*&---------------------------------------------------------------------*
*& Report z_airlines_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_airlines_t100048.

try.
* zcl_airlines_t100048=>get_airports(
*  EXPORTING
*    iv_mandt    = sy-mandt
*  IMPORTING
*    et_airports = DATA(gt_airports) ).

 zcl_airlines_t100048=>call_amdp(
  EXPORTING
    iv_mandt    = sy-mandt
  IMPORTING
    et_airports = DATA(gt_airports) ).


CATCH CX_AMDP_EXECUTION_FAILED into data(gx_amdp_exception).
    gx_amdp_exception->get_text( ).
ENDTRY.

CHECK NOT gt_airports IS INITIAL.

cl_demo_output=>display( gt_airports ).
