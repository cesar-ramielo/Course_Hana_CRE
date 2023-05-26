*&---------------------------------------------------------------------*
*& Report zgtt_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgtt_t100048.

delete from: zgt_emp_t100048,
             ztb_emp_t100048.

INSERT zgt_emp_t100048 FROM TABLE @( value #( ( employee_number = 001
                                                NAME            = 'Juan'
                                                last_name       = 'Martinez'
                                                gender          = 'H' ) ) ).

INSERT ztb_emp_t100048 FROM TABLE @( value #( ( employee_number = 001
                                                NAME            = 'Juan'
                                                last_name       = 'Martinez'
                                                gender          = 'H' ) ) ).

select  from  zgt_emp_t100048 as t_emp
        INNER JOIN ztb_emp_t100048 as p_emp
        on t_emp~employee_number eq p_emp~employee_number
        fields
         t_emp~employee_number as Emp_num,
         t_emp~name as name,
         t_emp~last_name as last,
         t_emp~gender as gender
         into table @DATA(gt_results).

DELETE from zgt_emp_t100048.

if sy-subrc = 0.
     cl_demo_output=>display( gt_results ).
endif.
