@AbapCatalog.sqlViewName: 'ZCDS_45_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 45 - BPOF Airlines'
@ObjectModel: {
    transactionalProcessingEnabled: true,
    usageType.dataClass: #TRANSACTIONAL,
    modelCategory: #BUSINESS_OBJECT,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,
    compositionRoot: true,
    writeActivePersistence: 'zscarr_cre',
    semanticKey: ['Carrid']
}

define view ZCDS_45_BOPF__T100048
  as select from zscarr_cre
{
      @ObjectModel.readOnly: true
  key bopfkey  as Bopfkey,
      carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
