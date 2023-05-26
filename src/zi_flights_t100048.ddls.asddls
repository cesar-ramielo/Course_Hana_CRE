@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 29 - with INNER JOIN Table Function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Flights_T100048
  with parameters
    p_Airline : s_carr_id
  as select from sflight
    inner join   ZTF_FLIGHTS_T100048( p_clnt : $session.client, p_AirlineCode : $parameters.p_Airline ) as flights on flights.FlightConn = sflight.connid

{

  key sflight.carrid     as Carrid,
  key sflight.connid     as Connid,
  key sflight.fldate     as Fldate,
      @Semantics.amount.currencyCode: 'Currency'
      sflight.price      as Price,
      //      @Semantics.currencyCode: true
      sflight.currency   as Currency,
      sflight.planetype  as Planetype,
      sflight.seatsmax   as Seatsmax,
      @Semantics.amount.currencyCode: 'Currency'
      sflight.paymentsum as Paymentsum,
      flights.AirlineName,
      flights.FlightConn,
      flights.CityFrom,
      flights.CityTo

}
