@AbapCatalog.sqlViewName: 'ZCDS_34_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 34 - items'
define view ZI_SO_Item_T100048
  as select from zsalesorders
{
  key vbeln   as Vbeln,
  key posnr   as Posnr,
      product as Product
}
