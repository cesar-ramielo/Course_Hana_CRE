@AbapCatalog.sqlViewName: 'ZCDS_16_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 16 - Exponer la Association 1, Base para publicar'
@ObjectModel: {
    representativeKey: 'AirporId'
}
define view ZI_08_EXPASOC_T100048
  as select from sairport
{
  key id        as AirporId,
      name      as AirporName,
      time_zone as AirporTimeZone
}
