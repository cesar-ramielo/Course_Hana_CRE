@AbapCatalog.sqlViewName: 'ZCDS_19_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 19 - Asociaciones y JOIN explicito'
@VDM.viewType: #BASIC
define view ZI_10_EXPJOIN_T100048
  as select from spfli
  association to scarr as _scarr on spfli.carrid = _scarr.carrid
{

  key spfli.carrid           as carrid,
  key spfli.connid           as connid,
      _scarr[inner].carrname as carrier,
      spfli.cityfrom         as departure,
      spfli.cityto           as arrival

}
