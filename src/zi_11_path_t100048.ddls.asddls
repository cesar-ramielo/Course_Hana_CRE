@AbapCatalog.sqlViewName: 'ZCDS_21_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 21 - Path 2'
define view ZI_11_PATH_T100048
  as select from scarr
  association [*] to ZI_10_PATH_T100048 as _flights on _flights.carrid = scarr.carrid
{
      //  key scarr.mandt,
  key scarr.carrid,
      scarr.carrname,
      _flights
}
