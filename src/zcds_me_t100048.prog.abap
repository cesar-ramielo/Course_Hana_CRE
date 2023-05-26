*&---------------------------------------------------------------------*
*& Report zcds_me_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_me_t100048.

cl_dd_ddl_annotation_service=>get_annos(
  EXPORTING
    entityname         = 'ZI_18_AIRLINE_T100048'
     metadata_extension = abap_true
   IMPORTING
     element_annos      = DATA(lt_elements) ).

cl_demo_output=>display( lt_elements ).
