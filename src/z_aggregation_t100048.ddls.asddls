@AbapCatalog.sqlViewName: 'ZCDS_07_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 07 - Union 2'
define view Z_AGGREGATION_T100048
  as select from ZI_VIEWAGGRE_T100048
{
  key field1,
      //  key field2,
      min(field3)                      as fieldmin,
      max(field3)                      as fieldmax,
      avg(field3)                      as fieldavg,
      sum(field3)                      as fieldsum,
      cast( sum(field3) as abap.int4 ) as fieldsum2,
      count( distinct field1 )         as fieldcount,
      count(*)                         as fieldcountall

}
group by
  field1
