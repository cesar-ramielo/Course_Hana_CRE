@AbapCatalog.sqlViewName: 'ZCDS_CAST_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS 02 - Casting'
define view ZI_VieweWithCast_T100048
  as select from t000
{
  t000.logsys                                                 as LOGSYS,
  cast( '24022023' as abap.dats )                             as ACT_DATE,
  cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as Langu,
  2.5                                                         as FloatField,
  fltp_to_dec( 2.5 as abap.dec( 4, 2 ) )                      as DecimalField
}
