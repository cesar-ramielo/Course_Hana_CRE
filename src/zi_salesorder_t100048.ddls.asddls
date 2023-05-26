@AbapCatalog.sqlViewName: 'ZCDS_05_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 05 - Client Handeling'
//@ClientHandling : { algorithm: #AUTOMATED }
@ClientHandling.algorithm: #SESSION_VARIABLE
//@ClientHandling.algorithm: #AUTOMATED
define view ZI_SALESORDER_T100048
  as select from zsalesorder_t148
{
  key salesorder           as Salesorder,
      salesordertype       as Salesordertype,
      soldtoparty          as Soldtoparty,
      salesorganization    as Salesorganization,
      distributionchannel  as Distributionchannel,
      organizationdivision as Organizationdivision,
      deliverystatus       as Deliverystatus,
      deletionindicator    as Deletionindicator,
      createbyuser         as Createbyuser,
      creationdatetime     as Creationdatetime,
      lastchangebyuser     as Lastchangebyuser,
      lastchangedatetime   as Lastchangedatetime
}
