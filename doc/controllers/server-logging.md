# Server Logging

```ruby
server_logging_controller = client.server_logging
```

## Class Name

`ServerLoggingController`


# Get Device Check in History

Check-in history can be retrieved for any device belonging to the account, not necessarily with logging enabled.

```ruby
def get_device_check_in_history(account,
                                device_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `device_id` | `String` | Template, Required | Device IMEI identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<CheckInHistoryItem>`](../../doc/models/check-in-history-item.md).

## Example Usage

```ruby
account = '0000123456-00001'

device_id = '990013907835573'

result = server_logging_controller.get_device_check_in_history(
  account,
  device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |

