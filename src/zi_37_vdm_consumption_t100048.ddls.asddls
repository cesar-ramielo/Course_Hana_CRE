@AbapCatalog.sqlViewName: 'ZCDS_37_CRE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS 37 - VDM Consumption View'
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
define view ZI_37_VDM_Consumption_T100048
  as select from ZI_36_VDM_Composite_T100048
{
      @AnalyticsDetails.query.axis: #ROWS
  key Carrid,
      @AnalyticsDetails.query.axis: #ROWS
  key Connid,
      @AnalyticsDetails.query.axis: #ROWS
      Countryfr,
      @AnalyticsDetails.query.axis: #ROWS
      Cityfrom,
      @AnalyticsDetails.query.axis: #ROWS
      Airpfrom,
      @AnalyticsDetails.query.axis: #ROWS
      Countryto,
      @AnalyticsDetails.query.axis: #ROWS
      Cityto,
      @AnalyticsDetails.query.axis: #ROWS
      Airpto,
      @AnalyticsDetails.query.axis: #COLUMNS
      Distance,
      @AnalyticsDetails.query.axis: #COLUMNS
      Distid
}
