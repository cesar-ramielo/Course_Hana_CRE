*&---------------------------------------------------------------------*
*& Report zsql_path_expr_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_path_expr_t100048.

SELECT FROM demo_cds_assoc_scarr
      FIELDS carrname,
      \_spfli[ (*) ]-connid AS connid,
      \_spfli[ (*) ]\_sflight[ (*) ]-fldate AS fldate,
      \_spfli[ (*) ]\_sairport[ (1) ]-name AS name
      WHERE carrid = 'LH'
      ORDER BY carrname, connid, fldate
      INTO TABLE @DATA(gt_result)
      UP TO 10 ROWS.

IF sy-subrc = 0.
  cl_demo_output=>display( gt_result ).
ENDIF.
