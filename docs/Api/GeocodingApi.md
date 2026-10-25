# OpenAPI\Client\GeocodingApi

Geocoding

All URIs are relative to https://geo.aws.bmlt.app, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**geocode()**](GeocodingApi.md#geocode) | **GET** /api/geocode | Geocode an address or place |


## `geocode()`

```php
geocode($application, $search, $referrer, $language, $region, $north, $south, $east, $west): \OpenAPI\Client\Model\Geocode200Response
```

Geocode an address or place

Returns the Google Maps Geocoding response (served from the shared cache when available) plus `type` (\"cache\" or \"live\") and a `request` echo.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\GeocodingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$application = 'application_example'; // string | Your application identifier (used for analytics).
$search = 'search_example'; // string | Address or place to geocode.
$referrer = 'referrer_example'; // string | URL of the requesting page (region detection + analytics).
$language = 'language_example'; // string | BCP-47 language code (default: en).
$region = 'region_example'; // string | Region bias as a ccTLD (e.g. \"fr\", \"ca\"). Overrides the region inferred from the referrer domain — useful when the referrer has no country TLD.
$north = 3.4; // float | Viewport north bound (decimal degrees).
$south = 3.4; // float | Viewport south bound (decimal degrees).
$east = 3.4; // float | Viewport east bound (decimal degrees).
$west = 3.4; // float | Viewport west bound (decimal degrees).

try {
    $result = $apiInstance->geocode($application, $search, $referrer, $language, $region, $north, $south, $east, $west);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GeocodingApi->geocode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **application** | **string**| Your application identifier (used for analytics). | |
| **search** | **string**| Address or place to geocode. | |
| **referrer** | **string**| URL of the requesting page (region detection + analytics). | |
| **language** | **string**| BCP-47 language code (default: en). | [optional] |
| **region** | **string**| Region bias as a ccTLD (e.g. \&quot;fr\&quot;, \&quot;ca\&quot;). Overrides the region inferred from the referrer domain — useful when the referrer has no country TLD. | [optional] |
| **north** | **float**| Viewport north bound (decimal degrees). | [optional] |
| **south** | **float**| Viewport south bound (decimal degrees). | [optional] |
| **east** | **float**| Viewport east bound (decimal degrees). | [optional] |
| **west** | **float**| Viewport west bound (decimal degrees). | [optional] |

### Return type

[**\OpenAPI\Client\Model\Geocode200Response**](../Model/Geocode200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
