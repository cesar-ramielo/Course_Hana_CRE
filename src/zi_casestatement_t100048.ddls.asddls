@AbapCatalog.sqlViewName: 'ZI_CASE_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 03 - Case'
define view ZI_CaseStatement_T100048
  as select from zproduct_logali
{
  key product            as Product,
      product_type       as ProductType,
      creation_date_time as CreationDateTime,
      case product_type
        when 'ROH' then 'X'
        else 'Y'
      end                as TYPE_CASE1,

      case
      when product_type = 'ROH' then 'IS ROH'
      else 'NOT ROH'
      end                as TYPE_CASE2,

      case
      when product_type = 'ROH' then cast( product_type as abap.char(3) )
      else 'N/A'
      end                as ptype_CHAR3

}
