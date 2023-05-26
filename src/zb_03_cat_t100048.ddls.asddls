@AbapCatalog.sqlViewName: 'ZCDS_11_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 11 - Text'
@VDM.viewType: #BASIC
@ObjectModel: {
    dataCategory: #TEXT,
    representativeKey: 'Unit'
}
define view ZB_03_CAT_T0000148
  with parameters
    p_languaje : spras
  as select from t006a
{
      @Semantics.language: true
  key spras as Language,
  key msehi as Unit,
      mseh3 as CommercialFormat,
      mseh6 as MaterialType,
      mseht as TechnicalFormat,
      @Semantics.text: true
      msehl as UnitText 
      
}
where
  spras = $parameters.p_languaje;
