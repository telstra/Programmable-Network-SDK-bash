# LinksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventoryLinkPost**](LinksApi.md#inventoryLinkPost) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
[**inventoryLinksByLinkidGet**](LinksApi.md#inventoryLinksByLinkidGet) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
[**inventoryLinksCustomerByCustomeruuidGet**](LinksApi.md#inventoryLinksCustomerByCustomeruuidGet) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
[**inventoryLinksHistoryByLinkidGet**](LinksApi.md#inventoryLinksHistoryByLinkidGet) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history


## **inventoryLinkPost**

Create Link and initial Contract

Create Link and initial Contract

### Example
```bash
TelstraTPN inventoryLinkPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryLinkRequest**](InventoryLinkRequest.md) |  | [optional]

### Return type

[**InventoryLinkResponse**](InventoryLinkResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryLinksByLinkidGet**

Get details of specified link

Get details of specified link

### Example
```bash
TelstraTPN inventoryLinksByLinkidGet linkid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **string** | Unique identifier representing a specific link |

### Return type

[**InventoryLinksResponse**](InventoryLinksResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryLinksCustomerByCustomeruuidGet**

Get active Links

Get active Links

### Example
```bash
TelstraTPN inventoryLinksCustomerByCustomeruuidGet customeruuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **string** | Unique identifier representing a specific customer |

### Return type

[**array[Link]**](Link.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryLinksHistoryByLinkidGet**

Get Link history

Get Link history

### Example
```bash
TelstraTPN inventoryLinksHistoryByLinkidGet linkid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkid** | **string** | Unique identifier representing a specific link |

### Return type

[**InventoryLinksHistoryResponse**](InventoryLinksHistoryResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

