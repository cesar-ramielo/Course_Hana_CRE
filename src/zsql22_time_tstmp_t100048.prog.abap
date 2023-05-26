*&---------------------------------------------------------------------*
*& Report zsql22_time_zone_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql22_time_tstmp_t100048.

DATA: gv_tzone TYPE timezone.

delete from demo_expressions where id = 'T'.

insert demo_expressions from @(  value #( id = 'T'
                                          dats1 = '20230215'
                                          tims1 = '121110' ) ).

CALL FUNCTION 'GET_SYSTEM_TIMEZONE'
  IMPORTING
    timezone            =  gv_tzone.

SELECT single FROM demo_expressions
      FIELDS tstmp_current_utctimestamp( ) AS current,
             tstmp_to_tims( tstmp  = tstmp_current_utctimestamp( ),
                            client = @sy-mandt,
                            tzone  = @gv_tzone,
                            ON_ERROR = @sql_tstmp_to_tims=>set_to_null ) as to_tims,
             tstmp_to_dst( tstmp  = tstmp_current_utctimestamp( ),
                            client = @sy-mandt,
                            tzone  = @gv_tzone,
                            ON_ERROR = @sql_tstmp_to_dst=>set_to_null ) as to_dst,
            DATS_TIMS_TO_TSTMP( CLIENT = @sy-mandt,
                                DATE = dats1,
                                TIME = tims1,
                                TZONE = @gv_tzone,
                                ON_ERROR = @sql_DATS_TIMS_TO_TSTMP=>set_to_null ) as  TO_TSTMP
       where id = 'T'
       into @DATA(gs_result).

if sy-subrc = 0.
 cl_demo_output=>display( gs_result ).
endif.
