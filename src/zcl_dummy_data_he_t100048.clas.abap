CLASS zcl_dummy_data_he_t100048 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dummy_data_he_t100048 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    MODIFY zemploye_t100048 FROM TABLE @( VALUE #( ( employee = '1' manager = ''  name = 'Emp 1' )
                                                   ( employee = '2' manager = '1' name = 'Emp 2' )
                                                   ( employee = '3' manager = '2' name = 'Emp 3' )
                                                   ( employee = '4' manager = '2' name = 'Emp 4' )
                                                   ( employee = '5' manager = ''  name = 'Emp 5' )
                                                   ( employee = '6' manager = '5' name = 'Emp 6' )
                                                   ( employee = '7' manager = '5' name = 'Emp 7' )
                                                   ( employee = '8' manager = '7' name = 'Emp 8' )
                                                   ( employee = '9' manager = '8' name = 'Emp 9' ) ) ).
  ENDMETHOD.

ENDCLASS.
