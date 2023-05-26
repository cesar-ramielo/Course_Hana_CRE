*&---------------------------------------------------------------------*
*& Report zsql19_date_funct_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql19_date_funct_t100048.

SELECT SINGLE FROM demo_expressions
     FIELDS *
     WHERE id = 'F'
     INTO @DATA(gs_results).

IF sy-subrc NE 0 OR ( sy-subrc EQ 0 AND gs_results-dats1 IS INITIAL ).
  MODIFY demo_expressions FROM @( VALUE #( id = 'F'
                                        dats1 = '20230329'
                                        dats2 = '20250329' ) ).
ENDIF.

SELECT SINGLE FROM demo_expressions
        FIELDS id,
               dats1,
               dats2,
               dats_is_valid( dats1 ) AS valid,
               dats_days_between( dats1, dats2 ) AS between,
               dats_add_days( dats1, 30 ) AS add_days,
               dats_add_days( dats1, -1 ) AS addmonts
         WHERE id = 'F'
          INTO @DATA(gs_result).

IF sy-subrc = 0.
  cl_demo_output=>display( gs_result ).
ENDIF.
