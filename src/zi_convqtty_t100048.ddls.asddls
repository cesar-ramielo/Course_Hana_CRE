@AbapCatalog.sqlViewName: 'ZCDS_09_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 09 - Funcion conversion de importes'
define view ZI_CONVQTTY_T100048
  with parameters
    p_connid : s_carr_id
  as select from sflight
{

      @Semantics.text: true
  key carrid                                             as Carrid,
  key connid                                             as Connid,
  key fldate                                             as Fldate,
      @Semantics.amount.currencyCode: 'Currency'
      price                                              as Price,
      @Semantics.currencyCode: true
      currency                                           as Currency,
      currency_conversion( amount            => price,
                          source_currency    => currency,
                          target_currency    => cast ( 'USD' as abap.cuky ),
                          exchange_rate_date => fldate ) as USDRICE,
      'USD'                                              as USDCURR

}
where
      currency = 'EUR'
  and carrid   = $parameters.p_connid;
