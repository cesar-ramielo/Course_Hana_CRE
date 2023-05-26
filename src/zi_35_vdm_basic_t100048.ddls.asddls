@AbapCatalog.sqlViewName: 'ZCDS_35_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 35 - VDM Basic View'
@VDM.viewType: #BASIC
define view ZI_35_VDM_basic_T100048
  as select from spfli
{
  key carrid    as Carrid,
  key connid    as Connid,
      countryfr as Countryfr,
      cityfrom  as Cityfrom,
      airpfrom  as Airpfrom,
      countryto as Countryto,
      cityto    as Cityto,
      airpto    as Airpto,
      @Semantics.quantity.unitOfMeasure: 'Distid'
      distance  as Distance,
      @Semantics.unitOfMeasure: true
      distid    as Distid

}
