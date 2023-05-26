*&---------------------------------------------------------------------*
*& Report zsql19_time_funct_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql20_time_funct_t100048.

TRY.
    SELECT FROM demo_expressions
          FIELDS id,
                 timestamp1,
                 tstmp_is_valid( timestamp1 ) AS valid,
                 tstmp_seconds_between( tstmp1 = tstmp_current_utctimestamp( ),
                                        tstmp2 = tstmp_add_seconds( tstmp =  timestamp1,
                                                                    seconds = CAST( num1 AS DEC( 15,0 ) ),
                                                                    on_error = @sql_tstmp_add_seconds=>fail ),
                                      on_error = @sql_tstmp_seconds_between=>fail ) AS diferrence
          where id eq '5'
          INTO TABLE @DATA(gt_results).

    IF sy-subrc = 0.
      cl_demo_output=>display( gt_results ).
      return.
    ENDIF.

  CATCH cx_sy_open_sql_db INTO DATA(gx_sql_db).
    cl_demo_output=>display( gx_sql_db->get_text(  ) ).

ENDTRY.
