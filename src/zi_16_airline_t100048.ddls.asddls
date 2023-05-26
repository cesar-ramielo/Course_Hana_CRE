@AbapCatalog.sqlViewName: 'ZCDS_25_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS 25 - Access Control'
define view ZI_16_AIRLINE_T100048
  as select from scarr
{
  key carrid   as Carrid,
      currcode as Currcode,
      url      as Url
}
