@AbapCatalog.sqlViewName: 'ZCDS_PROD_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 01 - CDS para productos'
define view ZI_PRODUCT_T100048
  as select from zproduct_t100048
{
  key product            as Product,
      product_type       as ProductType,
      creation_date_time as CreationDateTime
}
