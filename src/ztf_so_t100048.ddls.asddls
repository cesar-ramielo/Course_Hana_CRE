@EndUserText.label: 'CDS 50 - Table Function with Select-Options'
@ClientHandling.type: #CLIENT_DEPENDENT
define table function ZTF_SO_T100048
  with parameters
    @Environment.systemField: #CLIENT
    CLNT    : abap.clnt,
    SEL_OPT : abap.char( 1000 )
returns
{

  MANDT    : abap.clnt;
  ID       : s_customer;
  NAME     : s_custname;
  FORM     : s_form;
  STREET   : s_street;
  POSTBOX  : s_postbox;
  POSTCODE : postcode;
  CITY     : city;
  COUNTRY  : s_country;

}
implemented by method
  ZCL_TF_SO_T100048=>get_range_cust;
