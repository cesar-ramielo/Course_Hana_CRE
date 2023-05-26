*&---------------------------------------------------------------------*
*& Report zcds_check_ac_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_check_ac_t100048.

SELECT FROM  zi_16_airline_t100048
FIELDS *
INTO TABLE @DATA(it_results).

IF sy-subrc = 0.
  cl_demo_output=>display( it_results ).
ENDIF.
