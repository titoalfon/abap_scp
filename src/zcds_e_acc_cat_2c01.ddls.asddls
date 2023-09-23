@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity ACC_CAT Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_E_ACC_CAT_2c01
  as select from ztb_acc_cat_2c01
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
