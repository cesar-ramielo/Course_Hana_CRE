*&---------------------------------------------------------------------*
*& Report zhost_variables_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zhost_variables_t100048.

data: gv_carrid type sflight-carrid value 'AA'.

data: begin of gs_sflight,
         carrid type sflight-carrid,
         connid type sflight-connid,
      END OF gs_SFLIGHT.

data: go_ref like REF TO gs_sflight.

      go_ref = new #( ).

* Guardado en Estructura
select single from sflight
FIELDS CARRID, CONNID
where carrid =  @gv_carrid
into CORRESPONDING FIELDS OF @gs_sflight .


* Guardado de SQL en field symbol
ASSIGN gs_sflight to FIELD-SYMBOL(<fs_sflight>).

select single from sflight
FIELDS CARRID, CONNID
where carrid =  @gv_carrid
into CORRESPONDING FIELDS OF @<fs_sflight>.

* Guardado en Objeto
select single from sflight
FIELDS CARRID, CONNID
where carrid =  @gv_carrid
into CORRESPONDING FIELDS OF @go_ref->*.


cl_demo_output=>new( )->next_section( title = 'Structure host variable'
     )->write( gs_sflight
     )->next_section( title = 'Field Symbols host variable'
     )->write( <fs_sflight>
     )->next_section( title = 'Reference host variable'
     )->write( go_ref->* )->display(  ).
