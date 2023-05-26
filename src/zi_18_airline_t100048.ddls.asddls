@AbapCatalog.sqlViewName: 'ZCDS_27_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 27 - CDS with MetaData Extension'
@Metadata.allowExtensions: true
define view ZI_18_AIRLINE_T100048
  as select from scarr
{
  key carrid   as Airline,
      carrname as AirlineName,
      currcode as Currcode,
      url      as Url
}
