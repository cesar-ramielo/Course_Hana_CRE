*&---------------------------------------------------------------------*
*& Report zfield_annot_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfield_annot_t100048.


SELECT FROM Cds_View_Annotation_Position
FIELDS *
WHERE cdsname EQ 'ZI_CONVQTTY_T100048'
  AND AnnotationName LIKE '%.%'
  INTO TABLE @DATA(gt_annotation_head).

cl_demo_output=>write( gt_annotation_head ) .

SELECT FROM Cds_field_Annotation
FIELDS *
WHERE cdsname EQ 'ZI_CONVQTTY_T100048'
 AND AnnotationName LIKE '%.%'
 INTO TABLE @DATA(gt_annotation_fields).

cl_demo_output=>write( gt_annotation_fields ) .

cl_demo_output=>display( ).
