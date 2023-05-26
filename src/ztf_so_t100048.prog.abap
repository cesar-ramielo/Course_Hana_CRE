*&---------------------------------------------------------------------*
*& Report ztf_so_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztf_so_t100048.

TABLES scustom.
DATA: gv_sel_opt TYPE string.

SELECT-OPTIONS: p_COUNT FOR scustom-country.

START-OF-SELECTION.

  TRY.
      gv_sel_opt = cl_shdb_seltab=>combine_seltabs( EXPORTING
                    it_named_seltabs = VALUE #( ( name = 'COUNTRY' dref = REF #( p_count[] ) ) )
                    iv_client_field  = 'MANDT' ).
    CATCH cx_shdb_exception INTO DATA(cx_shdb).
      cx_shdb->get_text( ).

  ENDTRY.

*WRITE gv_sel_opt.
*
*CHECK 1 = 2.

  SELECT * FROM ztf_so_t100048( sel_opt = @gv_sel_opt )
           INTO TABLE @DATA(gt_results).

  cl_demo_output=>display( gt_results ).
