@AbapCatalog.sqlViewName: 'ZCDS_42_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 42 - Analytics  - DIMENSION'
@Analytics.dataCategory: #DIMENSION
define view ZCDS_42_DIM_AGENCY_T100048
  as select from stravelag
  association [0..1] to I_Country as _Country on $projection.Country = _Country.Country
{
      @ObjectModel.text.element: ['TravelAgencyName']
  key agencynum as TravelAgency,
      @Semantics.text: true
      name      as TravelAgencyName,
      @Semantics.address.country: true
      @ObjectModel.foreignKey.association: '_Country'
      country   as Country,
      @Semantics.address.city: true
      city      as City,
      _Country
}
