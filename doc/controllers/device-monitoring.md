# Device Monitoring

```ruby
device_monitoring_controller = client.device_monitoring
```

## Class Name

`DeviceMonitoringController`

## Methods

* [Device Reachability](../../doc/controllers/device-monitoring.md#device-reachability)
* [Stop Device Reachability](../../doc/controllers/device-monitoring.md#stop-device-reachability)


# Device Reachability

```ruby
def device_reachability(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`NotificationReportRequest`](../../doc/models/notification-report-request.md) | Body, Required | Create Reachability Report Request |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
body = NotificationReportRequest.new(
  '0242072320-00001',
  'REACHABLE_FOR_DATA',
  [
    DeviceList.new(
      [
        DeviceId.new(
          '89148000004292933820',
          'iccid'
        ),
        DeviceId.new(
          '89148000003164287919',
          'iccid'
        )
      ]
    )
  ],
  '2019-12-02T15:00:00-08:00Z'
)

result = device_monitoring_controller.device_reachability(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Response | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |


# Stop Device Reachability

```ruby
def stop_device_reachability(account_name,
                             monitor_ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | The numeric name of the account. |
| `monitor_ids` | `Array<String>` | Query, Required | The array contains the monitorIDs (UUID) for which the monitor is to be deleted. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RequestResponse`](../../doc/models/request-response.md).

## Example Usage

```ruby
account_name = '0242123520-00001'

monitor_ids = [
  '35596ca6-bab4-4333-a914-42b4fc2da54c',
  '35596ca6-bab4-4333-a914-42b4fc2da54b'
]

result = device_monitoring_controller.stop_device_reachability(
  account_name,
  monitor_ids
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Response | [`RestErrorResponseException`](../../doc/models/rest-error-response-exception.md) |

