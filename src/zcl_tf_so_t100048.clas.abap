CLASS zcl_tf_so_t100048 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_amdp_marker_hdb.

    CLASS-METHODS get_range_cust FOR TABLE FUNCTION ztf_so_t100048.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tf_so_t100048 IMPLEMENTATION.

  METHOD get_range_cust BY DATABASE FUNCTION FOR HDB
                       LANGUAGE SQLSCRIPT
                       OPTIONS READ-ONLY
                       USING scustom.

    lt_filter = apply_filter ( scustom, :sel_opt );

   RETURN SELECT so.mandt,
                 so.id,
                 so.name,
                 so.FORM,
                 so.street,
                 so.postbox,
                 so.postcode,
                 so.city,
                 so.country
    from :lt_filter as so;

  endmethod.

ENDCLASS.
