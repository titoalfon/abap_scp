@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity Ventas tablas  clnts_lib'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_E_VENTAS
  as select from ztb_clnts_lib_ac
{
  key id_libro as Libro_ID,
      count(*) as Ventas
}
group by
  id_libro
