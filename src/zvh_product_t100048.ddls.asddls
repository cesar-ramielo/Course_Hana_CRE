@AbapCatalog.sqlViewName: 'ZCDS_33_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'CDS 33 - Search function 3'
@ObjectModel.usageType: {
        serviceQuality: #X,
        sizeCategory: #S,
        dataClass: #MIXED
    }
@Search.searchable: true
@OData.publish: true
define view ZVH_Product_T100048
  as select from ZI_SO_Item_T100048
  association [0..*] to ZI_Product_T10048 as _products on $projection.Product = _products.ProductID

{

      @Search.defaultSearchElement: true
  key Vbeln   as Vbeln,
      @Search.defaultSearchElement: true
  key Posnr   as Posnr,
      Product as Product,
      @ObjectModel.foreignKey.association: '_Products'
      Product as ProductA,
      @Consumption.valueHelpDefinition: [{ association: '_Products' }]
      @ObjectModel.foreignKey.association: '_Products'
      Product as ProductB,
      @Consumption.valueHelpDefinition: [{ entity : { name : 'ZI_Product_T10048',
                                                      element: 'Product'} }]
      Product as ProductC,
      @Consumption.valueHelpDefinition: [{ entity : { name : 'ZI_Product_T10048',
                                                      element: 'Product'},
                                           additionalBinding: [{ localElement: 'ProductType',
                                                                 element: 'ProductType' }] }]
      _products

}
