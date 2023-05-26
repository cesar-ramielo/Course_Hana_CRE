@AbapCatalog.sqlViewName: 'ZCDS_32_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 32 - Search function 2'
@Search.searchable: true
define view ZI_Product_T10048
  as select from zproduct_t10048
  association [0..*] to ZI_ProductText_T100048 as _prodtext on $projection.ProductID = _prodtext.Product

{
  key product            as ProductID,
      @Search.defaultSearchElement: true
      product_type       as ProductType,
      creation_date_time as CreationDateTime,
      _prodtext
}
