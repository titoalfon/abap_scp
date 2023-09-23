@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity CLNTS_LIB Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZCDS_E_CLNTS_LIB_2C01
  as select from ztb_clnts_lib_ac

{
  key id_cliente as Cliente_ID,
  key id_libro   as Libro_ID

}
