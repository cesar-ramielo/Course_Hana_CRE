@AbapCatalog.sqlViewName: 'ZCDS_46_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 46 - BPOF Consumption'
@ObjectModel: {
    transactionalProcessingDelegated: true,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,
    compositionRoot: true,
    semanticKey: ['Carrid']
}
@OData.publish: true
define view ZCDS_46_BOPF_T100048
  as select from ZCDS_45_BOPF__T100048
{
  key Bopfkey,
      Carrid,
      Carrname,
      Currcode,
      Url
}
