@EndUserText.label: 'CDS 28 - Table Function'
define table function ZTF_FLIGHTS_T100048
  with parameters
    @Environment.systemField: #CLIENT
    p_clnt        : abap.clnt,
    p_AirlineCode : s_carr_id
returns
{

  Client      : abap.clnt;
  AirlineName : s_carrname;
  FlightConn  : s_conn_id;
  CityFrom    : s_from_cit;
  CityTo      : s_to_city;

}
implemented by method
  ZCL_TABLE_FUN_T100048=>get_flight;
