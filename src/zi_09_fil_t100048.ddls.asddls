@AbapCatalog.sqlViewName: 'ZCDS_18_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 18 - Use of Filter'
define view ZI_09_FIL_T100048
  with parameters
    p_Language : syst_langu @<Environment.systemField: #SYSTEM_LANGUAGE
  as select from scarr as CompanyCode
  association [0..*] to tcurt as _Currency on _Currency.waers = CompanyCode.currcode
{
  key CompanyCode.carrid                                as Carrid,
      CompanyCode.carrname                              as Carrname,
      CompanyCode.currcode                              as Currcode,
      $parameters.p_Language                            as Language,
      _Currency[1:spras = $parameters.p_Language].ktext as CurrName,
      _Currency[1:spras = $parameters.p_Language].ltext as CurrName1
}
