@AbapCatalog.sqlViewName: 'ZCDS_08_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 08 - Funciones de Conversion'
define view ZI_CONVERSION_T100048
  as select from saplane
{

  planetype                                                                 as planetype,
  tankcap                                                                   as tankcap,
  cap_unit                                                                  as capunit,
  cast( unit_conversion( quantity => leng,
                      source_unit => leng_unit,
                      target_unit => cast( 'KM' as abap.unit( 3 ) ),
                   error_handling => 'SET_TO_NULL' ) as abap.dec( 10, 3 ) ) as CONVERTED_KM,

  cast( unit_conversion( quantity => leng,
                      source_unit => leng_unit,
                      target_unit => cast( 'CM' as abap.unit( 3 ) ),
                   error_handling => 'SET_TO_NULL' ) as abap.dec( 10, 3 ) ) as CONVERTED_CM

}
where
  leng_unit = 'M'
