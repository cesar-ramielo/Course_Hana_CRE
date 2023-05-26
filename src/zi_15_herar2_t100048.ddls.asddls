define hierarchy ZI_15_Herar2_T100048
  as parent child hierarchy(
    source ZI_14_Herarchy_T100048
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      Employee
    multiple parents allowed
  )
{
  key Employee,
      Manager,
      Name,
      $node.hierarchy_level     as HLevel,
      $node.hierarchy_rank      as HRank,
      $node.node_id             as Hnode,
      $node.parent_id           as HParent,
      $node.hierarchy_tree_size as HTree
}
