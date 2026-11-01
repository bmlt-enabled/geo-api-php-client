# OpenAPI\Client\TimezoneApi

Timezone

All URIs are relative to https://geo.aws.bmlt.app, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**timezone()**](TimezoneApi.md#timezone) | **GET** /api/timezone | Look up the timezone for a location |


## `timezone()`

```php
timezone($address, $location): \OpenAPI\Client\Model\Timezone200Response
```

Look up the timezone for a location

Provide either `address` (geocoded first) or `location` as \"latitude,longitude\" — the two are mutually exclusive. Returns dstOffset, rawOffset, timeZoneId and timeZoneName.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TimezoneApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$address = 'address_example'; // string | Address to geocode and look up. Mutually exclusive with location.
$location = 'location_example'; // string | Comma-separated latitude,longitude (e.g. 39.60,-119.68). Mutually exclusive with address.

try {
    $result = $apiInstance->timezone($address, $location);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TimezoneApi->timezone: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **address** | **string**| Address to geocode and look up. Mutually exclusive with location. | [optional] |
| **location** | **string**| Comma-separated latitude,longitude (e.g. 39.60,-119.68). Mutually exclusive with address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Timezone200Response**](../Model/Timezone200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
