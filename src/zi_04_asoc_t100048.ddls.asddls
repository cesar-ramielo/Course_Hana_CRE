@AbapCatalog.sqlViewName: 'ZCDS_12_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 12 - Text para ASOCIACIONES 1'
@ObjectModel: {
    dataCategory: #TEXT,
    representativeKey: 'CountryKey '
}
@VDM.viewType: #BASIC
define view ZI_04_ASOC_T100048
  as select from t005t
{

  key land1 as CountryKey,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      @EndUserText.label: 'Country'
      landx as CountryName

}
