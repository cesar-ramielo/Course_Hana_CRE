@AbapCatalog.sqlViewName: 'ZCDS_SVAR_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 04 - Variables de Sesión'
define view ZI_SessionVar_T100048
  as select from t000
{
  mtext                    as Mtext,
  ort01                    as Ort01,
  mwaer                    as Mwaer,
  adrnr                    as Adrnr,
  cccategory               as Cccategory,
  cccoractiv               as Cccoractiv,
  ccnocliind               as Ccnocliind,
  cccopylock               as Cccopylock,
  ccnocascad               as Ccnocascad,
  ccsoftlock               as Ccsoftlock,
  ccorigcont               as Ccorigcont,
  ccimaildis               as Ccimaildis,
  cctemplock               as Cctemplock,
  changeuser               as Changeuser,
  changedate               as Changedate,
  logsys                   as Logsys,
  $session.client          as Client,
  $session.system_date     as System_date,
  $session.system_language as system_languaje,
  $session.user            as User_session
}
