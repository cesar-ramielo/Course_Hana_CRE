@AbapCatalog.sqlViewName: 'ZCDS_40_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 40 - Analytics  - DIMENSION'
@Analytics.dataCategory: #DIMENSION
@ObjectModel.representativeKey: 'FlightConnection'
define view ZCDS_40_DIM_CONN_T100048
  as select from spfli
  association [0..1] to ZCDS_39_DIM_AIRLINES_T100048 as _Airline on $projection.Airline = _Airline.Airline
{

      @ObjectModel.foreignKey.association: '_Airline'
  key carrid                                       as Airline,
      @ObjectModel.text.element: ['Destination!']
  key connid                                       as FlightConnection,
      concat( cityfrom, concat( ' - ' , cityto ) ) as Destination,
      _Airline

}
