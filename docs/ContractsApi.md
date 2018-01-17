# ContractsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventoryLinksContractByLinkidAndContractidGet**](ContractsApi.md#inventoryLinksContractByLinkidAndContractidGet) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
[**inventoryLinksContractByLinkidAndContractidPut**](ContractsApi.md#inventoryLinksContractByLinkidAndContractidPut) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
[**inventoryLinksContractByLinkidPost**](ContractsApi.md#inventoryLinksContractByLinkidPost) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link


## **inventoryLinksContractByLinkidAndContractidGet**

Get active Contract by ContractID

Get active Contract by ContractID

### Example
```bash
TelstraTPN inventoryLinksContractByLinkidAndContractidGet linkid=value contractid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **string** | Unique identifier representing a specific link |
 **contractid** | **string** | Unique identifier representing a specific contract |

### Return type

[**InventoryLinksContractResponse**](InventoryLinksContractResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryLinksContractByLinkidAndContractidPut**

Update active Contract by ContractID

Update active Contract by ContractID

### Example
```bash
TelstraTPN inventoryLinksContractByLinkidAndContractidPut linkid=value contractid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **string** | Unique identifier representing a specific link |
 **contractid** | **string** | Unique identifier representing a specific contract |
 **body** | [**InventoryLinksContractRequest**](InventoryLinksContractRequest.md) |  | [optional]

### Return type

[**InventoryLinksContractResponse33**](InventoryLinksContractResponse33.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryLinksContractByLinkidPost**

Create new Contract on specified link

Create new Contract on specified link

### Example
```bash
TelstraTPN inventoryLinksContractByLinkidPost linkid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **string** | Unique identifier representing a specific link |
 **body** | [**InventoryLinksContractRequest37**](InventoryLinksContractRequest37.md) |  | [optional]

### Return type

[**array[InventoryLinksContractResponse38]**](InventoryLinksContractResponse38.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

