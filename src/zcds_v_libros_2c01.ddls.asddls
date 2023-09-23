@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity Libros Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_V_LIBROS_2C01
  as select from ztb_libros_2c01
{
  key id_libro  as Libro_ID,
  key bi_categ  as BiCateg,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      @Semantics.amount.currencyCode : 'Moneda'
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url as URLImage
}
