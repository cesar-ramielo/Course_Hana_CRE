@AbapCatalog.sqlViewName: 'ZCDS_20_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 20 - Path'
define view ZI_10_PATH_T100048
  as select from spfli
  association [0..*] to sflight  as _SFLIGHT on
                                                 //   _SFLIGHT.mandt  = spfli.mandt and
                                                 _SFLIGHT.carrid = spfli.carrid
                                             and _SFLIGHT.connid = spfli.connid
  association [1..1] to sairport as _airport on
                                                 //   _airport.mandt = spfli.mandt  and
                                                 _airport.id = spfli.airpfrom
{
      //  key mandt,
  key carrid,
  key connid,
      spfli.airpfrom,
      _SFLIGHT,
      _airport
}
