# CustomersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountByCustomeruuidGet**](CustomersApi.md#accountByCustomeruuidGet) | **GET** /1.0.0/account/{customeruuid} | Get account information details
[**accountUserByCustomeruuidGet**](CustomersApi.md#accountUserByCustomeruuidGet) | **GET** /1.0.0/account/{customeruuid}/user | List users


## **accountByCustomeruuidGet**

Get account information details

Get the account information for the specified customer

### Example
```bash
TelstraTPN accountByCustomeruuidGet customeruuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **string** | Unique identifier representing a specific customer |

### Return type

[**array[AccountResponse]**](AccountResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **accountUserByCustomeruuidGet**

List users

List all users associated with the specified customer

### Example
```bash
TelstraTPN accountUserByCustomeruuidGet customeruuid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **string** | Unique identifier representing a specific customer |

### Return type

[**array[User]**](User.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

