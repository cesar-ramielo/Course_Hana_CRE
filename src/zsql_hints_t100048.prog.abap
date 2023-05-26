*&---------------------------------------------------------------------*
*& Report zsql_hints_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_hints_t100048.

select from sflights
       FIELDS *
       WHERE CARRID = 'AA'
       %_HINTS HDB 'INDEX_SEARCH'
       INTO TABLE @DATA(GT_RESULTS).

IF SY-subrc = 0.

CL_DEMO_OUTPUT=>display( gt_results ).

ENDIF.
