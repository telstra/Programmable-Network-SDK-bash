# EndpointsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**eis100EndpointsAssignTopologyTagByEndpointuuidPost**](EndpointsApi.md#eis100EndpointsAssignTopologyTagByEndpointuuidPost) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign a Topology Tag to an Endpoint
[**inventoryEndpointByEndpointuuidGet**](EndpointsApi.md#inventoryEndpointByEndpointuuidGet) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
[**inventoryEndpointsCustomeruuidByCustomeruuidGet**](EndpointsApi.md#inventoryEndpointsCustomeruuidByCustomeruuidGet) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
[**inventoryRegularendpointPost**](EndpointsApi.md#inventoryRegularendpointPost) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
[**inventoryVnfendpointPost**](EndpointsApi.md#inventoryVnfendpointPost) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint


## **eis100EndpointsAssignTopologyTagByEndpointuuidPost**

Assign a Topology Tag to an Endpoint

Assign a Topology Tag to an Endpoint

### Example
```bash
TelstraTPN eis100EndpointsAssignTopologyTagByEndpointuuidPost endpointuuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **string** | Unique identifier representing a specific endpoint |
 **body** | [**Eis100EndpointsAssignTopologyTagRequest**](Eis100EndpointsAssignTopologyTagRequest.md) |  | [optional]

### Return type

[**array[SuccessFragment]**](SuccessFragment.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryEndpointByEndpointuuidGet**

Get information about the specified endpoint

Get information about the specified endpoint

### Example
```bash
TelstraTPN inventoryEndpointByEndpointuuidGet endpointuuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpointuuid** | **string** | Unique identifier representing a specific endpoint |

### Return type

[**InventoryEndpointResponse**](InventoryEndpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryEndpointsCustomeruuidByCustomeruuidGet**

Get list of endpoints for a customer

Get list of endpoints for a customer

### Example
```bash
TelstraTPN inventoryEndpointsCustomeruuidByCustomeruuidGet customeruuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **string** | Unique identifier representing a specific customer |

### Return type

[**InventoryEndpointsCustomeruuidResponse**](InventoryEndpointsCustomeruuidResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryRegularendpointPost**

Create Physical (Port) Endpoint

Create Physical (Port) Endpoint

### Example
```bash
TelstraTPN inventoryRegularendpointPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryRegularendpointRequest**](InventoryRegularendpointRequest.md) |  | [optional]

### Return type

[**array[InventoryRegularendpointResponse]**](InventoryRegularendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **inventoryVnfendpointPost**

Create VNF Endpoint

Create VNF Endpoint

### Example
```bash
TelstraTPN inventoryVnfendpointPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InventoryVnfendpointRequest**](InventoryVnfendpointRequest.md) |  | [optional]

### Return type

[**array[InventoryVnfendpointResponse]**](InventoryVnfendpointResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

