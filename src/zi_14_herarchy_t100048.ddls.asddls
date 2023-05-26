@AbapCatalog.sqlViewName: 'ZCDS_23_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS 23 - Asociaciones de Jerarquia'
define view ZI_14_Herarchy_T100048
  as select from zemploye_t100048
  association [0..1] to ZI_14_Herarchy_T100048 as _Manager on $projection.Manager = _Manager.Employee
{

  key employee as Employee,
      manager  as Manager,
      name     as Name,
      _Manager
}
