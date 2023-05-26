*&---------------------------------------------------------------------*
*& Report z01_sec_hana_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_sec_hana_t100048.

select *
    from spfli USING CLIENT '400'
    CONNECTION HANADB
    INTO table @data(gt_results).

 if sy-subrc = 0.

    cl_demo_output=>display( gt_results ).

 endif.
