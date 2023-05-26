*&---------------------------------------------------------------------*
*& Report zsql_hier_orph_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_hier_orph_t100048.

SELECT from HIERARCHY( source DEMO_CDS_PARENT_CHILD_SOURCE
                        child to parent association _relat
                        start where id = '1'
                        siblings order by id ascending
*                        DEPTH 1
                        MULTIPLE PARENTS ALLOWED
                        ORPHANS root )
      fields id, parent, hierarchy_level, hierarchy_is_cycle,
             hierarchy_is_orphan, hierarchy_parent_rank, hierarchy_rank,
             hierarchy_tree_size
      into table @data(gt_result).

      cl_demo_output=>display( gt_result ).
