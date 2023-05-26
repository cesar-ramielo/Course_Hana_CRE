@AbapCatalog.sqlViewName: 'ZCDS_13_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 13 - Association 2'
@VDM.viewType: #BASIC
define view ZI_05_ASOC_T100048
  with parameters
    p_airline  :abap.char( 2 ),
    p_language :abap.char( 1 )
  as select from spfli as flight
  association [1] to ZI_04_ASOC_T100048 as _Country_from on  $projection.FromKey    = _Country_from.CountryKey
                                                         and _Country_from.Language = $parameters.p_language
  association [1] to ZI_04_ASOC_T100048 as _Country_to   on  $projection.FromKey  = _Country_to.CountryKey
                                                         and _Country_to.Language = $parameters.p_language
{

  key flight.carrid             as AirLineCode,
  key flight.connid             as FligthConnection,
      flight.cityfrom           as Cityfrom,
      flight.countryfr          as FromKey,
      _Country_from.CountryName as NameFrom,
      flight.cityto             as Cityto,
      flight.countryto          as toKey,
      _Country_to.CountryName   as Nameto

}
where
  flight.carrid = :p_airline;
