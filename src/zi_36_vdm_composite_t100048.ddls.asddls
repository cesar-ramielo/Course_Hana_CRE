@AbapCatalog.sqlViewName: 'ZCDS_36_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 36 - VDM Composite View'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
define view ZI_36_VDM_Composite_T100048
  as select from ZI_35_VDM_basic_T100048
{
  key Carrid,
  key Connid,
      Countryfr,
      Cityfrom,
      Airpfrom,
      Countryto,
      Cityto,
      Airpto,
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'Distid'
      Distance,
      @Semantics.unitOfMeasure: true
      Distid
}
