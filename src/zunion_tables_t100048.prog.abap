*&---------------------------------------------------------------------*
*& Report zunion_tables_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zunion_tables_t100048.

SELECT FROM zint_t100048
   FIELDS product_id,
          description
   UNION DISTINCT
   SELECT FROM zext_t100048
   FIELDS product_id,
          description
   ORDER BY product_id
   INTO TABLE @DATA(lt_union_distinct).

IF sy-subrc = 0.
  cl_demo_output=>display( lt_union_distinct ).
ENDIF.

SELECT FROM zint_t100048
   FIELDS product_id,
          description
   UNION ALL
   SELECT FROM zext_t100048
   FIELDS product_id,
          description
   ORDER BY product_id
   INTO TABLE @DATA(lt_union_all).

IF sy-subrc = 0.
  cl_demo_output=>display( lt_union_all ).
ENDIF.
