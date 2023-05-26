*&---------------------------------------------------------------------*
*& Report zinline_declar_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zinline_declar_t100048.

select CARRID, CONNID, PRICE, FLDATE into table @data(gt_sflight)
 from sflight
 up to 10 rows.

* usos de FIELDS se puede definir los campos de extracccion despues del
*  from con ayuda del CTRL + space, nos da los campos de la tabla definida
* en el FROM
*select from sflight
*FIELDS CARRID, CONNID, PRICE, FLDATE
*into table @data(gt_sflight)
* up to 10 rows.



 if sy-subrc = 0.
 cl_demo_output=>display( gt_sflight ).
 endif.
