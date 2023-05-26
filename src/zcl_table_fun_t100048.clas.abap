CLASS zcl_table_fun_t100048 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS get_flight FOR TABLE FUNCTION ztf_flights_t100048.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_table_fun_t100048 IMPLEMENTATION.
  METHOD get_flight BY DATABASE FUNCTION FOR HDB
                       LANGUAGE SQLSCRIPT
                       OPTIONS READ-ONLY
                       USING scarr spfli.

    RETURN  SELECT airline.mandt   as Client,
             airline.carrid  as AirlineName,
             flight.connid   as FlightConn,
             flight.CityFrom as CityFrom,
             flight.CityTo   as Cityto
      from scarr as airline
      inner join spfli as flight
      on  airline.mandt    = flight.mandt
      and airline.carrid   = flight.carrid
      where airline.mandt  = :p_clnt
        and airline.carrid = :p_AirlineCode
        order by airline.mandt, airline.carrid,
                 flight.connid;

  endmethod.

ENDCLASS.
