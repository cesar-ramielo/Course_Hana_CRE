@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS 48 - Analisys - Trace'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_48_Airline_T100048
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url     
}
