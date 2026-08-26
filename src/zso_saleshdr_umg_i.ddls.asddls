@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSO_SALESHDR_UMG_I
  as select from zso_vbak_t as salesHeader
  composition [0..*] of ZSO_SALESITM_UMG_I as _salesItem
{
  key salesdocument         as SalesDocument,
      salesdocumenttype     as SalesDocumentType,
      orderreason           as OrderReason,
      salesorganization     as SalesOrganization,
      distributionchannel   as DistributionChannel,
      division              as Division,
      salesoffice           as SalesOffice,
      salesgroup            as SalesGroup,
      @Semantics.amount.currencyCode: 'Currency'
      netprice              as NetPrice,
      currency              as Currency,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt:true
      local_last_changed_at as LocalLastChangedAt,
      /* Associations */
      _salesItem
}
