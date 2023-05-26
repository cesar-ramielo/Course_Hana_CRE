*&---------------------------------------------------------------------*
*& Report zsql_hier_mult_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_hier_mult_t100048.

SELECT from HIERARCHY( source DEMO_CDS_PARENT_CHILD_SOURCE
                        child to parent association _relat
                        start where id = '1'
                        siblings order by id ascending
                        DEPTH 2
                        MULTIPLE PARENTS leaves ONLY )
      fields id, parent, hierarchy_level
      into table @data(gt_result).

  cl_demo_output=>display( gt_result ).
