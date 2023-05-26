@EndUserText.label: 'CDS 49 - Table Function for AMDP'
//@ClientHandling.type: #CLIENT_INDEPENDENT
define table function ZCDS_49_TF_AMDP_T100048
  with parameters
    @Environment.systemField: #CLIENT
    p_clnt   : abap.clnt
returns
{

  mandt     : abap.clnt;
  PLANETYPE : s_planetye;
  SEATSMAX  : s_seatsmax;
  PRODUCER  : s_prod;

}
implemented by method
  ZCL_TF_AMDP_T100048=>GET_PLANES;
