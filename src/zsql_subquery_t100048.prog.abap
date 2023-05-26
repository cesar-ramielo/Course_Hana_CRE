*&---------------------------------------------------------------------*
*& Report zsql_subquery_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_subquery_t100048.

DELETE FROM  demo_join3.

INSERT demo_join3 FROM ( SELECT FROM demo_join1 AS demo1
                           INNER JOIN demo_join2 AS demo2
                                 ON demo1~d EQ demo2~d
                            FIELDS demo1~a,
                                   demo1~b,
                                   demo2~e,
                                   demo2~f ).

SELECT FROM demo_join3
       FIELDS *
       INTO TABLE @DATA(gt_results).

IF sy-subrc eq 0.
  cl_demo_output=>Display( gt_results ).
ENDIF.
