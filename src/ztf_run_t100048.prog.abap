*&---------------------------------------------------------------------*
*& Report ztf_run_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztf_run_t100048.

SELECT from ZTF_FLIGHTS_T100048( p_AirlineCode = 'AA' )
fields *
into table @DATA(it_results).

if sy-subrc = 0.
    cl_demo_output=>display( it_results ).
endif.
