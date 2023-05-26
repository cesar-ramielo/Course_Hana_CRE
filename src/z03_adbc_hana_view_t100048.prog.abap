*&---------------------------------------------------------------------*
*& Report z03_adbc_hana_view_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z03_adbc_hana_view_t100048.

TYPES: BEGIN OF gty_flights,
         carrid    TYPE s_carr_id,
         connid    TYPE s_conn_id,
         fldate    TYPE s_date,
         price     TYPE s_price,
         currency  TYPE s_currcode,
         countryfr TYPE land1,
         cityfrom  TYPE s_from_cit,
         countryto TYPE land1,
         cityto    TYPE s_to_city,
         deptime   TYPE s_dep_time,
         arrtime   TYPE s_arr_time,
       END OF gty_flights.

DATA: gr_data   TYPE REF TO data,
      gt_flight TYPE STANDARD TABLE OF gty_flights.

PARAMETERS : p_carrid TYPE s_carr_id.

TRY.
    DATA(go_statement) = NEW cl_sql_statement(
               con_ref = cl_sql_connection=>get_connection( 'HANADB' ) ).

    DATA(gv_sql) = |SELECT * FROM "_SYS_BIC"."ZABAP_SEC_HANA_TRAINING.ZT100048/ZT100048_FLIGHTS" where carrid = '{ p_carrid }'|.

    gr_data = REF #( gt_flight ).

    DATA(go_results) = go_statement->execute_query( gv_sql ).

    go_results->set_param_table( gr_data ).

    go_results->next_package( ).

    go_results->close( ).

  CATCH cx_sql_exception INTO DATA(gx_sql_excep).
    WRITE  gx_sql_excep->get_text( ).

ENDTRY.

IF NOT gt_flight IS INITIAL.
  cl_demo_output=>display( gt_flight ).
ELSE.
  WRITE: 'NO Data'.
ENDIF.
