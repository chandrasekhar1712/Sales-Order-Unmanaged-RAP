@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZSO_SALESITM_UMG_I
  as select from zso_vbap_t
  association to parent ZSO_SALESHDR_UMG_I as _salesHeader
    on $projection.SalesDocument = _salesHeader.SalesDocument
{
  key salesdocument         as SalesDocument,
  key salesitemnumber       as SalesItemnumber,
      material              as Material,
      plant                 as Plant,
      @Semantics.quantity.unitOfMeasure: 'Quantityunits'
      quantity              as Quantity,
      quantityunits         as Quantityunits,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt:true
      local_last_changed_at as LocalLastChangedAt,
      /* Associations */
      _salesHeader
}
