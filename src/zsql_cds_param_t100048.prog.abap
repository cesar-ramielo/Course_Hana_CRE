*&---------------------------------------------------------------------*
*& Report zsql_cds_param_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_cds_param_t100048.

CONSTANTS : gc_distance_l TYPE s_distance VALUE 2000,
            gc_distance_u TYPE s_distance VALUE 5000,
            gc_unit       TYPE s_distid VALUE 'MI'.

SELECT FROM demo_cds_parameters( p_distance_l = @gc_distance_l,
                                 p_distance_u = @gc_distance_u,
                                 p_unit = @gc_unit )
        FIELDS *
        ORDER BY carrid, connid, distance
        INTO TABLE @DATA(gt_results).

IF sy-subrc = 0.
  cl_demo_output=>display( gt_results ).
ENDIF.
