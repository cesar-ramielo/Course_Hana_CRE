*&---------------------------------------------------------------------*
*& Report zsql18_string_funct2_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql18_string_funct2_t100048.


data(lv_char) = 'LOGALI'.

select single from demo_expressions
     fields *
     where id = 'L'
     into @DATA(gs_results).

if sy-subrc ne 0.
insert demo_expressions from @( value #( id = 'L' char1 = 'AABbCDDe' char2 = '123456' ) ).
endif.

select single from demo_expressions
       fields id,
              char1,
              char2,
              LEFT( char1, 2 ) as left,
              RIGHT( char1, 3 ) as right,
              LPAD( char2, 18, '0' ) as lpad,
              RPAD( char2, 18, '0' ) as rpad,
              LTRIM( char1, 'A' ) as ltrim,
              RTRIM( char1, 'e' ) as rtrim,
              INSTR( char1, 'bC' ) as instr,
              LENGTH( char1 ) as length,
              REPLACE( char1, 'DD', '__' ) as replace,
              SUBSTRING( char1, 3, 2 ) as substring,
              LOWER( char1 ) as lower,
              UPPER( char1 ) as upper
         where id = 'L'
         into @DATA(gs_result).

if sy-subrc = 0.
   cl_demo_output=>display( gs_result ).
endif.
