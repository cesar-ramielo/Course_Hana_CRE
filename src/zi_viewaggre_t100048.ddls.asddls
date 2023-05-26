@AbapCatalog.sqlViewName: 'ZCDS_06_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 06 - Union 1'
define view ZI_VIEWAGGRE_T100048
  as select from t000
{
  key 'A'                     as field1,
  key 'A'                     as field2,
      cast ( 1 as abap.int1 ) as field3
}

union select distinct from t000
{
  key 'A'                     as field1,
  key 'B'                     as field2,
      cast ( 2 as abap.int1 ) as field3
}

union select distinct from t000
{
  key 'A'                     as field1,
  key 'C'                     as field2,
      cast ( 3 as abap.int1 ) as field3
}
