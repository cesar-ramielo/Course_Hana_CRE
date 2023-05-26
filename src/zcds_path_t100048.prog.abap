*&---------------------------------------------------------------------*
*& Report zcds_path_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_path_t100048.

data gv_carrid type s_carr_id value 'AA'.

cl_demo_input=>request( CHANGING field = gv_carrid ).

SELECT from ZI_11_PATH_T100048 as cds
       fields cds~carrname,
       \_flights-connid as connid,
       \_flights\_sflight-planetype as PlaneType
       where cds~carrid = @gv_carrid
       into table @data(gt_results).

       if sy-subrc =  0.
         cl_demo_output=>display( gt_results ).
       endif.
