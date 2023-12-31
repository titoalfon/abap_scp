@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity Biblioteca Virtual'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCDS_E_BIB_VIRT_2C01
  as select from ZCDS_V_LIBROS_2C01 as Libros
  association [1..1] to ZCDS_E_CAT_2C01     as _Categories on $projection.BiCateg = _Categories.BiCateg
  association [1..*] to ZCDS_E_CLIENTS_2C01 as _ClientsLib on $projection.Libro_ID = _ClientsLib.Libro_ID
  association [1]    to ZCDS_E_VENTAS       as _Ventas     on $projection.Libro_ID = _Ventas.Libro_ID
{

  key Libro_ID,
  key BiCateg,
      Titulo,
      Autor,
      Editorial,
      Idioma,
      Paginas,
      @Semantics.amount.currencyCode : 'Moneda'
      Precio,
      Moneda,
      Formato,
      _Categories.Descripcion,

      case
        when _Ventas.Ventas = 1 then 1
        when _Ventas.Ventas = 2 then 2
        when _Ventas.Ventas >= 3 then 3
       else 0
      end as Ventas,

      case
      when $projection.Ventas = 0  then 'Sin Ventas'
      else ''
      end as Text,

      URLImage,
      _ClientsLib

}
