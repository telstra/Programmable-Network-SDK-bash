# AuthenticationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**authGeneratetokenPost**](AuthenticationApi.md#authGeneratetokenPost) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
[**authValidatetokenGet**](AuthenticationApi.md#authValidatetokenGet) | **GET** /1.0.0/auth/validatetoken | Validate authentication token


## **authGeneratetokenPost**

Create an authentication token

Create an authentication token

### Example
```bash
TelstraTPN authGeneratetokenPost
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **string** |  |
 **username** | **string** |  |
 **password** | **string** |  |

### Return type

[**AuthGeneratetokenResponse**](AuthGeneratetokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **authValidatetokenGet**

Validate authentication token

Validate the authentication token and get information about the user (roles, permissions, etc.)

### Example
```bash
TelstraTPN authValidatetokenGet
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthValidatetokenResponse**](AuthValidatetokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

