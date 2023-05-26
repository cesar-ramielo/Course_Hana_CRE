*&---------------------------------------------------------------------*
*& Report zsql_with_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql_with_t100048.


with +tmp_table as ( SELECT FROM scarr
    FIELDS carrname,
           CAST( '-' AS CHAR( 4 ) ) AS connid,
           '-' AS cityfrom,
           '-' AS cityto
    WHERE carrid = 'LH'
UNION
SELECT FROM spfli
    FIELDS '-' AS carrname,
           CAST( connid AS CHAR( 4 ) ) AS connid,
           cityfrom,
           cityto WHERE carrid = 'LH'  )

 select from +tmp_table
 fields *
 order by carrname DESCENDING
 into table @data(gt_tmp) .

 cl_demo_output=>display( gt_tmp ).
