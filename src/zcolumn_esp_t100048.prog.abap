*&---------------------------------------------------------------------*
*& Report zcolumn_esp_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcolumn_esp_t100048.

DATA: gd_fltime_ini TYPE s_fltime value '60',
      gd_fltime_fin TYPE s_fltime value '500'.

SELECT FROM spfli
    FIELDS carrid, period
    WHERE fltime BETWEEN @gd_fltime_ini AND @gd_fltime_fin
    GROUP BY carrid, period
    ORDER BY carrid DESCENDING
    INTO TABLE @DATA(gt_spfli)
    UP TO 20 ROWS.

IF sy-subrc = 0.

  cl_demo_output=>display( gt_spfli ).

ENDIF.
