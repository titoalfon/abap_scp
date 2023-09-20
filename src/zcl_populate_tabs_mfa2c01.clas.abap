CLASS zcl_populate_tabs_mfa2c01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
    METHODS: populate_acc_cat, populate_catego, populate_clients, populate_clnts_lib,populate_libros.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_populate_tabs_mfa2c01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    me->populate_acc_cat(  ).
    me->populate_catego(  ).
    me->populate_clients(  ).
    me->populate_clnts_lib(  ).
    me->populate_libros(  ).
    out->write('Ejecucion terminada').

  ENDMETHOD.

  METHOD populate_acc_cat.

    DATA lt_acc_cat TYPE TABLE OF ztb_acc_cat_2c01.

    lt_acc_cat = VALUE #( ( "client = 'Cliente_1'
                            bi_categ = 'A'
                            tipo_acceso = 'A'

      ) ).

    DELETE FROM ztb_acc_cat_2c01.

    INSERT ztb_acc_cat_2c01 FROM TABLE @lt_acc_cat.


  ENDMETHOD.

  METHOD populate_catego.

    DATA lt_catego TYPE TABLE OF ztb_catego_2c01.

    lt_catego = VALUE #( ( bi_categ = 'A'
                           descripcion = 'Categoria_A') ).

    DELETE FROM ztb_catego_2c01.

    INSERT ztb_catego_2c01 FROM TABLE @lt_catego.


  ENDMETHOD.

  METHOD populate_clients.

    DATA lt_clients TYPE TABLE OF ztb_clients_2c01.

    lt_clients = VALUE #( ( id_cliente = 'Cliente_1'
                            tipo_acceso = 'A'
                            nombre = 'Nombre_1'
                            apellidos = 'Apellido_1'
                            email = 'cliente1@gmail.com'
                            url = 'https://www.youtube.com'
                            ) ).

    DELETE FROM ztb_clients_2c01.

    INSERT ztb_clients_2c01 FROM TABLE @lt_clients.


  ENDMETHOD.

  METHOD populate_clnts_lib.

    DATA lt_clnts_lib TYPE TABLE OF ztb_clnts_lib_ac.

    lt_clnts_lib = VALUE #( ( id_cliente = 'Cliente_1'
                              id_libro = 'IdLibro_1'
    ) ).

    DELETE FROM ztb_clnts_lib_ac.

    INSERT ztb_clnts_lib_ac FROM TABLE @lt_clnts_lib.



  ENDMETHOD.

  METHOD populate_libros.

    DATA lt_libros TYPE TABLE OF ztb_libros_2c01.

    lt_libros = VALUE #( (
                           id_libro = 'IdLibro_1'
                           bi_categ = 'A'
                           titulo = 'Titulo1'
                           autor = 'Autor1'
                           editorial = 'Editorial1'
                           idioma = 'E'
                           paginas = '200'
                           precio = '24.67'
                           moneda = 'EUR'
                           formato = 'E'
    ) ).

    DELETE FROM ztb_libros_2c01.

    INSERT ztb_libros_2c01 FROM TABLE @lt_libros.


  ENDMETHOD.


ENDCLASS.
