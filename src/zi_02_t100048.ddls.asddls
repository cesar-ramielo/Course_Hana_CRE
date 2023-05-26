@AbapCatalog.sqlViewName: 'ZCDS_10_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 10 - Inner join'
define view ZI_02_T100048
  with parameters
    p_currency : s_currcode
  as select from spfli   as flightplan
    inner join   sflight as flight on  flightplan.carrid = flight.carrid
                                   and flightplan.connid = flight.connid
{

  key flightplan.carrid    as carrid,
  key flight.connid        as connid,
      flightplan.countryfr as countryfr,
      flightplan.period    as period,
      flight.fldate        as fldate

}
where
  flight.currency = $parameters.p_currency
