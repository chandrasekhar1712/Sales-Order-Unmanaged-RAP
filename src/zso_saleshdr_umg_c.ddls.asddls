@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Consumption View'
@Search.searchable:true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZSO_SALESHDR_UMG_C
  provider contract transactional_query
  as projection on ZSO_SALESHDR_UMG_I
{
  key SalesDocument,
      SalesDocumentType,
      OrderReason,
      SalesOrganization,
      DistributionChannel,
      Division,
      @Search.defaultSearchElement:true
      SalesOffice,
      SalesGroup,
      @Semantics.amount.currencyCode: 'Currency'
      NetPrice,
      Currency,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _salesItem : redirected to composition child ZSO_SALESITM_UMG_C
}
