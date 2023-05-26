@AbapCatalog.sqlViewName: 'ZCDS_39_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 39 - Analytics  - DIMENSION'
@Analytics.dataCategory: #DIMENSION

define view ZCDS_39_DIM_AIRLINES_T100048
  as select from scarr
{
      @ObjectModel.text.element: ['Airlinename']
  key carrid   as Airline,
      @Semantics.text: true
      carrname as Airlinename,
      @Semantics.currencyCode: true
      currcode as currency
}
