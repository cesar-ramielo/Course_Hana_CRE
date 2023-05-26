*&---------------------------------------------------------------------*
*& Report z02_adbc_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_adbc_t100048.

DATA: go_connection TYPE REF TO cl_sql_connection,
      go_statement  TYPE REF TO cl_sql_statement,
      go_result     TYPE REF TO cl_sql_result_set,
      gx_sql_excep  TYPE REF TO cx_sql_exception,

      gv_sql        TYPE string,
      gr_table      TYPE REF TO data,
      gt_SPFLI      TYPE STANDARD TABLE OF spfli.

PARAMETERS p_carrid TYPE s_carrid.

START-OF-SELECTION.

  TRY.
      go_connection = cl_sql_connection=>get_connection( 'HANADB' ).

      CREATE OBJECT go_statement EXPORTING con_ref = go_connection.

      gv_sql = |SELECT * FROM "_SYS_BIC"."SPFLI" WHERE CARRID = '{ p_carrid }'| .

      go_result = go_statement->execute_query( gv_sql ) .

      GET REFERENCE OF gt_SPFLI INTO gr_table.

      go_result->set_param_table( gr_table ).

      go_result->next_package( ).

      go_result->close( ).

    CATCH cx_sql_exception INTO gx_sql_excep.
      gx_sql_excep->get_text( ).
  ENDTRY.

  IF NOT gt_SPFLI IS INITIAL.
    cl_demo_output=>display( gt_SPFLI ).
  ELSE.
    WRITE 'NO Data'.
  ENDIF.
