# Diagnostics Callbacks

```ruby
diagnostics_callbacks_controller = client.diagnostics_callbacks
```

## Class Name

`DiagnosticsCallbacksController`

## Methods

* [Get Diagnostics Subscription Callback Info](../../doc/controllers/diagnostics-callbacks.md#get-diagnostics-subscription-callback-info)
* [Register Diagnostics Callback URL](../../doc/controllers/diagnostics-callbacks.md#register-diagnostics-callback-url)
* [Unregister Diagnostics Callback](../../doc/controllers/diagnostics-callbacks.md#unregister-diagnostics-callback)


# Get Diagnostics Subscription Callback Info

This endpoint allows user to get the registered callback information of an existing diagnostics subscription.

```ruby
def get_diagnostics_subscription_callback_info(account_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | Account identifier. |

## Server

`Server::DEVICE_DIAGNOSTICS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<DeviceDiagnosticsCallback>`](../../doc/models/device-diagnostics-callback.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

result = diagnostics_callbacks_controller.get_diagnostics_subscription_callback_info(account_name)
```

## Example Response *(as JSON)*

```json
[
  {
    "accountName": "TestQAAccount",
    "serviceName": "string",
    "endpoint": "https://yourwebsite.com",
    "httpHeaders": {},
    "createdOn": "2019-09-07T23:57:53.292Z"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`DeviceDiagnosticsResultException`](../../doc/models/device-diagnostics-result-exception.md) |


# Register Diagnostics Callback URL

This endpoint allows user update the callback HTTPS address of an existing diagnostics subscription.

```ruby
def register_diagnostics_callback_url(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CallbackRegistrationRequest`](../../doc/models/callback-registration-request.md) | Body, Required | Callback URL registration request. |

## Server

`Server::DEVICE_DIAGNOSTICS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeviceDiagnosticsCallback`](../../doc/models/device-diagnostics-callback.md).

## Example Usage

```ruby
body = CallbackRegistrationRequest.new(
  'TestQAAccount',
  'Diagnostics',
  'https://yourwebsite.com',
  {  }
)

result = diagnostics_callbacks_controller.register_diagnostics_callback_url(body)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "TestQAAccount",
  "serviceName": "string",
  "endpoint": "https://yourwebsite.com",
  "httpHeaders": {},
  "createdOn": "2019-09-07T23:57:53.292Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`DeviceDiagnosticsResultException`](../../doc/models/device-diagnostics-result-exception.md) |


# Unregister Diagnostics Callback

This endpoint allows user to delete a registered callback URL and credential.

```ruby
def unregister_diagnostics_callback(account_name,
                                    service_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | Account identifier. |
| `service_name` | `String` | Query, Required | Service name for callback notification. |

## Server

`Server::DEVICE_DIAGNOSTICS`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`DeviceDiagnosticsCallback`](../../doc/models/device-diagnostics-callback.md).

## Example Usage

```ruby
account_name = '0000123456-00001'

service_name = 'string'

result = diagnostics_callbacks_controller.unregister_diagnostics_callback(
  account_name,
  service_name
)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "TestQAAccount",
  "serviceName": "string",
  "endpoint": "https://yourwebsite.com",
  "httpHeaders": {},
  "createdOn": "2019-09-07T23:57:53.292Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`DeviceDiagnosticsResultException`](../../doc/models/device-diagnostics-result-exception.md) |

