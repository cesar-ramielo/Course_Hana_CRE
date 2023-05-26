@AbapCatalog.sqlViewName: 'ZCDS_41_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 41 - Analytics  - DIMENSION'
@Analytics.dataCategory: #DIMENSION
define view ZCDS_41_DIM_CUST_T100048
  as select from scustom
  association [0..1] to I_Country as _Country on $projection.Country = _Country.Country
{
      @ObjectModel.text.element: ['CustomerName']
  key id      as Customer,
      @Semantics.text: true
      name    as CustomerName,
      @Semantics.address.city: true
      country as Country,
      @Semantics.address.city: true
      city    as City,
      _Country
}
