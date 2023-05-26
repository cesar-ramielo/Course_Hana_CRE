@AbapCatalog.sqlViewName: 'ZCDS_15_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 15 - Association with Parameters'
define view ZI_07_ASOCP_T100048
  with parameters
    p_Airlinecode : s_carr_id
  as select from sflight as Flight
  association [1] to ZI_01_T100048 as _Airline on _Airline.Carrid = Flight.carrid
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'Currcode'
      price,
      planetype,
      @Semantics.currencyCode: true
      _Airline(p_Airlinecode: $parameters.p_Airlinecode).Currcode,
      _Airline(p_Airlinecode: $parameters.p_Airlinecode).Url

}
where
  carrid = $parameters.p_Airlinecode;
