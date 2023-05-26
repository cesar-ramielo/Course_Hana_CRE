*&---------------------------------------------------------------------*
*& Report zsql17_string_funct_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql17_string_funct_t100048.

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
              concat( char1, char2 ) as concat,
              concat_with_space( char1, @lv_char, 2 ) as concat2,
              char1 && char2 && 'HANA-' && @lv_char as ampresand
       where id eq 'L'
       into @data(gs_result).

cl_demo_output=>display( gs_result ).
