@AbapCatalog.sqlViewName: 'ZCDS_14_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 14 - Basic View'
@VDM.viewType: #BASIC
define view ZI_01_T100048
  with parameters
    p_Airlinecode : s_carr_id
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      @Semantics.currencyCode: true
      currcode as Currcode,
      @Semantics.url: {
          mimeType: 'URL'
      }
      url      as Url

}
where
  carrid = $parameters.p_Airlinecode;
