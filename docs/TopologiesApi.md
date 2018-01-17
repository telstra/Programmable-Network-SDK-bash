# TopologiesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**ttms100TopologyTagByTopotaguuidDelete**](TopologiesApi.md#ttms100TopologyTagByTopotaguuidDelete) | **DELETE** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Delete a topology tag
[**ttms100TopologyTagByTopotaguuidGet**](TopologiesApi.md#ttms100TopologyTagByTopotaguuidGet) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
[**ttms100TopologyTagByTopotaguuidPut**](TopologiesApi.md#ttms100TopologyTagByTopotaguuidPut) | **PUT** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Update a topology tag&#39;s name and/or description
[**ttms100TopologyTagGet**](TopologiesApi.md#ttms100TopologyTagGet) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
[**ttms100TopologyTagObjectsByTopotaguuidGet**](TopologiesApi.md#ttms100TopologyTagObjectsByTopotaguuidGet) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
[**ttms100TopologyTagPost**](TopologiesApi.md#ttms100TopologyTagPost) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag


## **ttms100TopologyTagByTopotaguuidDelete**

Delete a topology tag

Delete a topology tag

### Example
```bash
TelstraTPN ttms100TopologyTagByTopotaguuidDelete topotaguuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **string** | Unique identifier representing a specific topology tag |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **ttms100TopologyTagByTopotaguuidGet**

Get information about the specified topology tag

Get information about the specified topology tag

### Example
```bash
TelstraTPN ttms100TopologyTagByTopotaguuidGet topotaguuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **string** | Unique identifier representing a specific topology tag |

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **ttms100TopologyTagByTopotaguuidPut**

Update a topology tag's name and/or description

Update a topology tag's name and/or description

### Example
```bash
TelstraTPN ttms100TopologyTagByTopotaguuidPut topotaguuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **string** | Unique identifier representing a specific topology tag |
 **body** | [**Ttms100TopologyTagRequest**](Ttms100TopologyTagRequest.md) |  | [optional]

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **ttms100TopologyTagGet**

List all topology tags

List all topology tags

### Example
```bash
TelstraTPN ttms100TopologyTagGet
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Topology]**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **ttms100TopologyTagObjectsByTopotaguuidGet**

List objects for Topology

List all objects (Endpoints, Links, VPorts, etc.) associated with the topology tag.

### Example
```bash
TelstraTPN ttms100TopologyTagObjectsByTopotaguuidGet topotaguuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topotaguuid** | **string** | Unique identifier representing a specific topology tag |

### Return type

[**Ttms100TopologyTagObjectsResponse**](Ttms100TopologyTagObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **ttms100TopologyTagPost**

Create a named topology tag

Create a named topology tag

### Example
```bash
TelstraTPN ttms100TopologyTagPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Ttms100TopologyTagRequest**](Ttms100TopologyTagRequest.md) |  | [optional]

### Return type

[**Topology**](Topology.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

