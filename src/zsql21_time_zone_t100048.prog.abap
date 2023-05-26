*&---------------------------------------------------------------------*
*& Report zsql21_time_zone_t100048
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsql21_time_zone_t100048.


select single from demo_expressions
            fields ABAP_SYSTEM_TIMEZONE( CLIENT = @sy-mandt,
                                       ON_ERROR = @sql_ABAP_SYSTEM_TIMEZONE=>set_to_null ) as system_tz,
                   ABAP_USER_TIMEZONE( CLIENT = @sy-mandt,
                                         USER = @sy-uname,
                                     ON_ERROR = @sql_ABAP_USER_TIMEZONE=>set_to_null ) as user_tz
               into @DATA(gs_result).

 cl_demo_output=>display( gs_result ).
