# VportsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventoryRegularvportPost**](VportsApi.md#inventoryRegularvportPost) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
[**inventoryVnfVportPost**](VportsApi.md#inventoryVnfVportPost) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
[**inventoryVportByVportuuidGet**](VportsApi.md#inventoryVportByVportuuidGet) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


## **inventoryRegularvportPost**

Create VPort for physical endpoint

Create VPort representing a VLAN on a Physical Ethernet Port

### Example
```bash
TelstraTPN inventoryRegularvportPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryRegularvportRequest**](InventoryRegularvportRequest.md) |  | [optional]

### Return type

[**InventoryRegularvportResponse**](InventoryRegularvportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryVnfVportPost**

Create VNF VPort

Create VNF VPort

### Example
```bash
TelstraTPN inventoryVnfVportPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryVnfVportRequest**](InventoryVnfVportRequest.md) |  | [optional]

### Return type

[**InventoryVnfVportResponse**](InventoryVnfVportResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryVportByVportuuidGet**

Get information about the specified VPort

Get information about the specified VPort

### Example
```bash
TelstraTPN inventoryVportByVportuuidGet vportuuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vportuuid** | **string** | Unique identifier representing a specific virtual port |

### Return type

[**array[EndpointPort]**](EndpointPort.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

