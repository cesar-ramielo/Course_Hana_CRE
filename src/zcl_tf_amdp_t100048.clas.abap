CLASS zcl_tf_amdp_t100048 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .



  PUBLIC SECTION.

   INTERFACES: if_amdp_marker_hdb,
               if_oo_adt_classrun.

   class-METHODS GET_PLANES for table FUNCTION ZCDS_49_TF_AMDP_T100048.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tf_amdp_t100048 IMPLEMENTATION.

  METHOD get_planes by DATABASE FUNCTION FOR HDB
                       LANGUAGE SQLSCRIPT
                       options READ-ONLY
                       using SAPLANE.

    return select mandt,
                  PLANETYPE,
                  SEATSMAX,
                  PRODUCER
             from saplane
            where mandt = :p_clnt;

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

  ENDMETHOD.

ENDCLASS.
