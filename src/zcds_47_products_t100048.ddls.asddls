@AbapCatalog.sqlViewName: 'ZCDS_47_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 47 - Virtual Elements - Product'
@OData.publish: true
define view ZCDS_47_Products_T100048
  as select from snwd_pd
{
  key node_key                   as NodeKey,
      product_id                 as ProductId,
      type_code                  as TypeCode,
      category                   as CategoryCode,
      supplier_guid              as SupplierGuid,
      tax_tarif_code             as TaxTarifCode,
      price                      as Price,
      @ObjectModel: {
      readOnly: true,
      virtualElement: true,
      virtualElementCalculatedBy: 'ABAP:ZCL_DISCOUNT_EXIT_CRE'
      }
      @EndUserText.label: 'Discount'
      cast( '' as abap.char(4) ) as Discount

}
