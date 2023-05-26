@AbapCatalog.sqlViewName: 'ZCDS_26_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 26 - Inhibiting Access'
define view ZI_17_ARILINE_T100048
  as select from scarr
{
  key carrid   as Airline,
      currcode as AirlineLocalCurrency,
      url      as AirlineUrl
}
