CLASS zcl_discount_exit_cre DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_discount_exit_cre IMPLEMENTATION.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

    CHECK line_exists( it_requested_calc_elements[ Table_line = 'DISCOUNT' ] ).

    DATA ls_filed_data TYPE sadl_entity_element.

    ls_filed_data = 'TAXTARIFCODE'.
    INSERT ls_filed_data INTO TABLE et_requested_orig_elements.

    ls_filed_data = 'TYPECODE'.
    INSERT ls_filed_data INTO TABLE et_requested_orig_elements.

    ls_filed_data = 'PRICE'.
    INSERT ls_filed_data INTO TABLE et_requested_orig_elements.

  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~calculate.


    CHECK NOT  it_original_data IS INITIAL.

    DATA lt_calculate TYPE TABLE OF ZCDS_47_Products_T100048 WITH DEFAULT KEY.

    lt_calculate = CORRESPONDING #( it_original_data ).

    LOOP AT lt_calculate ASSIGNING FIELD-SYMBOL(<ls_calculated>)
     WHERE TaxTarifCode = '1' AND typecode = 'PR'.
      <ls_calculated>-Discount = '10%'.
    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( lt_calculate ).

  ENDMETHOD.

ENDCLASS.
