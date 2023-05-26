*&---------------------------------------------------------------------*
*& Report zsql_hierarchy_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_hierarchy_t100048.

delete from demo_simple_tree.

INSERT demo_simple_tree FROM TABLE @( VALUE #(
        ( id = 1  parent_id = 0 name = 'AA'          )
        ( id = 2  parent_id = 1 name = 'AA-AA'       )
        ( id = 3  parent_id = 2 name = 'AA-AA-AA'    )
        ( id = 4  parent_id = 2 name = 'AA-AA-BB'    )
        ( id = 5  parent_id = 1 name = 'AA-BB'       )
        ( id = 6  parent_id = 5 name = 'AA-BB-AA'    )
        ( id = 7  parent_id = 6 name = 'AA-BB-AA-AA' )
        ( id = 8  parent_id = 6 name = 'AA-BB-AA-BB' )
        ( id = 9  parent_id = 5 name = 'AA-BB-BB'    )
        ( id = 10 parent_id = 9 name = 'AA-BB-BB-AA' )
        ( id = 11 parent_id = 1 name = 'AA-CC'       )
        ( id = 12 parent_id = 0 name = 'BB'          )
        ( id = 13 parent_id = 0 name = 'CC' ) ) ).


SELECT from HIERARCHY( source DEMO_CDS_SIMPLE_TREE_SOURCE
                        child to parent association _tree
                        start where id = 1
                        siblings order by id ascending
                        DEPTH 2
                        MULTIPLE PARENTS NOT ALLOWED )
      fields id, parent, name, hierarchy_level
      into table @data(gt_result).

  cl_demo_output=>display( gt_result ).
