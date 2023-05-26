@AbapCatalog.sqlViewName: 'ZCDS_31_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 31 - Search function'
define view ZI_ProductText_T100048
  as select from zprodtext_t10048
{

  key language     as Language,
  key product      as Product,
      product_name as ProductName
}
