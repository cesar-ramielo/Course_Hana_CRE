@AbapCatalog.sqlViewName: 'ZCDS_17_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 17 - Association Public - Exponer la Association 2'
define view ZI_09_EXPOASOC_T100048
  as select from spfli as flight
  association to ZI_08_EXPASOC_T100048 as _airportfrom on flight.airpfrom = _airportfrom.AirporId
{
  key carrid,
  key connid,
      countryfr,
      cityfrom,
      airpfrom,
      _airportfrom

}
