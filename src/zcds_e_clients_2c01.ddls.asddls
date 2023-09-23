@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity Clients Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCDS_E_CLIENTS_2C01
  as select from ztb_clients_2c01
  association [0..*] to ZCDS_E_CLNTS_LIB_2C01 as _LibCl on $projection.Cliente_ID = _LibCl.Cliente_ID
{
  key   id_cliente                              as Cliente_ID,
  key   _LibCl.Libro_ID                         as Libro_ID,
  key   tipo_acceso                             as TipoAcceso,
        nombre                                  as Nombre,
        apellidos                               as Apellidos,
        email                                   as Email,
        url                                     as Url,
        concat_with_space(nombre, apellidos, 1) as NombreCompleto
}
