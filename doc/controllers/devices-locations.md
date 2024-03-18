# Devices Locations

```ruby
devices_locations_controller = client.devices_locations
```

## Class Name

`DevicesLocationsController`

## Methods

* [List Devices Locations Synchronous](../../doc/controllers/devices-locations.md#list-devices-locations-synchronous)
* [List Devices Locations Asynchronous](../../doc/controllers/devices-locations.md#list-devices-locations-asynchronous)
* [Cancel Device Location Request](../../doc/controllers/devices-locations.md#cancel-device-location-request)
* [Create Location Report](../../doc/controllers/devices-locations.md#create-location-report)
* [Retrieve Location Report](../../doc/controllers/devices-locations.md#retrieve-location-report)
* [Get Location Report Status](../../doc/controllers/devices-locations.md#get-location-report-status)
* [Cancel Queued Location Report Generation](../../doc/controllers/devices-locations.md#cancel-queued-location-report-generation)


# List Devices Locations Synchronous

This locations endpoint retrieves the locations for a list of devices.

```ruby
def list_devices_locations_synchronous(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LocationRequest`](../../doc/models/location-request.md) | Body, Required | Request to obtain location of devices. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Array<Location>`](../../doc/models/location.md).

## Example Usage

```ruby
body = LocationRequest.new(
  '1234567890-00001',
  [
    DeviceInfo.new(
      '980003420535573',
      'imei',
      '7892345678'
    ),
    DeviceInfo.new(
      '375535024300089',
      'imei',
      '7897654321'
    ),
    DeviceInfo.new(
      'A100003861E585',
      'meid',
      '7897650914'
    )
  ],
  AccuracyModeEnum::ENUM_0,
  CacheModeEnum::ENUM_1
)

result = devices_locations_controller.list_devices_locations_synchronous(body)
```

## Example Response *(as JSON)*

```json
[
  {
    "msid": "7892345678",
    "pd": {
      "time": "20170520004421",
      "x": "33.45324",
      "y": "-84.59621",
      "radius": "5571",
      "qos": false
    },
    "error": {}
  },
  {
    "msid": "8583239709",
    "pd": {
      "time": "20170525214342",
      "x": "38.8408694",
      "y": "-105.0422583",
      "radius": "3866",
      "qos": false
    },
    "error": {}
  },
  {
    "msid": "7897654321",
    "pd": {},
    "error": {
      "time": "20170525214342",
      "type": "POSITION METHOD FAILURE",
      "info": "Exception code=ABSENT SUBSCRIBER"
    }
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# List Devices Locations Asynchronous

Requests the current or cached location of up to 10,000 IoT or consumer devices (phones, tablets. etc.). This request returns a synchronous transaction ID, and the location information for each device is returned asynchronously as a DeviceLocation callback message.

```ruby
def list_devices_locations_asynchronous(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LocationRequest`](../../doc/models/location-request.md) | Body, Required | An asynchronous request to obtain locations of devices. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`SynchronousLocationRequestResult`](../../doc/models/synchronous-location-request-result.md).

## Example Usage

```ruby
body = LocationRequest.new(
  '2234434445-32333',
  [
    DeviceInfo.new(
      '354677790348290',
      'imei',
      '5557337468'
    )
  ],
  AccuracyModeEnum::ENUM_0,
  CacheModeEnum::ENUM_2
)

result = devices_locations_controller.list_devices_locations_asynchronous(body)
```

## Example Response *(as JSON)*

```json
{
  "txid": "4be7c858-0ef9-4b15-a0c1-95061456d835",
  "status": "QUEUED"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Cancel Device Location Request

Cancel a queued or unfinished device location request.

```ruby
def cancel_device_location_request(account_name,
                                   txid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Query, Required | Account identifier in "##########-#####". |
| `txid` | `String` | Template, Required | Transaction ID of the request to cancel, from the synchronous response to the original request. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TransactionID`](../../doc/models/transaction-id.md).

## Example Usage

```ruby
account_name = '1234567890-00001'

txid = '2c90bd28-ece4-42ef-9f02-7e3bd4fbff33'

result = devices_locations_controller.cancel_device_location_request(
  account_name,
  txid
)
```

## Example Response *(as JSON)*

```json
{
  "txid": "2c90bd28-ece4-42ef-9f02-7e3bd4fbff33"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Create Location Report

Request an asynchronous device location report.

```ruby
def create_location_report(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`LocationRequest`](../../doc/models/location-request.md) | Body, Required | Request for device location report. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AsynchronousLocationRequestResult`](../../doc/models/asynchronous-location-request-result.md).

## Example Usage

```ruby
body = LocationRequest.new(
  '1234567890-00001',
  [
    DeviceInfo.new(
      '980003420535573',
      'imei',
      '7892345678'
    ),
    DeviceInfo.new(
      '375535024300089',
      'imei',
      '7897654321'
    ),
    DeviceInfo.new(
      'A100003861E585',
      'meid',
      '7897650914'
    )
  ],
  AccuracyModeEnum::ENUM_0,
  CacheModeEnum::ENUM_1
)

result = devices_locations_controller.create_location_report(body)
```

## Example Response *(as JSON)*

```json
{
  "txid": "2c90bd28-ece4-42ef-9f02-7e3bd4fbff33",
  "status": "QUEUED"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Retrieve Location Report

Download a completed asynchronous device location report.

```ruby
def retrieve_location_report(account,
                             txid,
                             startindex)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier in "##########-#####". |
| `txid` | `String` | Template, Required | Transaction ID from POST /locationreports response. |
| `startindex` | `Integer` | Template, Required | Zero-based number of the first record to return. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`LocationReport`](../../doc/models/location-report.md).

## Example Usage

```ruby
account = '0252012345-00001'

txid = '2017-12-11Te8b47da2-3a45-46cf-9903-61815e1e97e9'

startindex = 0

result = devices_locations_controller.retrieve_location_report(
  account,
  txid,
  startindex
)
```

## Example Response *(as JSON)*

```json
{
  "startIndex": "0",
  "txid": "2017-12-11Te8b47da2-3a45-46cf-9903-61815e1e97e9",
  "totalCount": 3,
  "hasMoreData": false,
  "devLocationList": [
    {
      "error": {},
      "msid": "7892345678",
      "pd": {
        "qos": false,
        "radius": "5571",
        "time": "20170520004421",
        "x": "33.45324",
        "y": "-84.59621"
      }
    },
    {
      "error": {},
      "msid": "8583239709",
      "pd": {
        "qos": false,
        "radius": "3866",
        "time": "20170525214342",
        "x": "38.8408694",
        "y": "-105.0422583"
      }
    },
    {
      "error": {
        "time": "20170525214342",
        "type": "POSITION METHOD FAILURE",
        "info": "Exception code=ABSENT SUBSCRIBER"
      },
      "msid": "7897654321",
      "pd": {}
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Get Location Report Status

Returns the current status of a requested device location report.

```ruby
def get_location_report_status(account,
                               txid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier in "##########-#####". |
| `txid` | `String` | Template, Required | Transaction ID of the report. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`LocationReportStatus`](../../doc/models/location-report-status.md).

## Example Usage

```ruby
account = '0252012345-00001'

txid = '2c90bd28-ece4-42ef-9f02-7e3bd4fbff33'

result = devices_locations_controller.get_location_report_status(
  account,
  txid
)
```

## Example Response *(as JSON)*

```json
{
  "txid": "2c90bd28-ece4-42ef-9f02-7e3bd4fbff33",
  "status": "INPROGRESS"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |


# Cancel Queued Location Report Generation

Cancel a queued device location report.

```ruby
def cancel_queued_location_report_generation(account,
                                             txid)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier in "##########-#####". |
| `txid` | `String` | Template, Required | Transaction ID of the report to cancel. |

## Server

`Server::DEVICE_LOCATION`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TransactionID`](../../doc/models/transaction-id.md).

## Example Usage

```ruby
account = '0252012345-00001'

txid = '2c90bd28-ece4-42ef-9f02-7e3bd4fbff33'

result = devices_locations_controller.cancel_queued_location_report_generation(
  account,
  txid
)
```

## Example Response *(as JSON)*

```json
{
  "txid": "2c90bd28-ece4-42ef-9f02-7e3bd4fbff33"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error. | [`DeviceLocationResultException`](../../doc/models/device-location-result-exception.md) |

