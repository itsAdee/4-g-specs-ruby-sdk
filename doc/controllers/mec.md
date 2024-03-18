# MEC

```ruby
mec_controller = client.mec
```

## Class Name

`MECController`

## Methods

* [KPI List](../../doc/controllers/mec.md#kpi-list)
* [Get Profile List](../../doc/controllers/mec.md#get-profile-list)
* [Change Pmec Device State-Activate](../../doc/controllers/mec.md#change-pmec-device-state-activate)
* [Change Pmec Device State-Bulk Deactivate](../../doc/controllers/mec.md#change-pmec-device-state-bulk-deactivate)
* [Change Pmec Device Profile](../../doc/controllers/mec.md#change-pmec-device-profile)
* [Change Pmec Device I Paddress Bulk](../../doc/controllers/mec.md#change-pmec-device-i-paddress-bulk)
* [Get MEC Performance Consent](../../doc/controllers/mec.md#get-mec-performance-consent)


# KPI List

```ruby
def kpi_list(aname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`KPIInfoList`](../../doc/models/kpi-info-list.md).

## Example Usage

```ruby
aname = '0342351414-00001'

result = mec_controller.kpi_list(aname)
```

## Example Response *(as JSON)*

```json
{
  "KpiInfoList": [
    {
      "name": "DOWNLINK_THROUGHPUT",
      "value": "23.2",
      "nodeName": "132924_ENB_VZ_EULESS_OLTE_RD-01",
      "nodeType": "BASEBAND",
      "description": "Downlink throughput (4G)",
      "unit": "Mbps",
      "category": "Network Performance Radio",
      "timeOfLastUpdate": "2022-12-07T08:39:59.228Z"
    }
  ]
}
```


# Get Profile List

```ruby
def get_profile_list(aname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`MECProfileList`](../../doc/models/mec-profile-list.md).

## Example Usage

```ruby
aname = '0342351414-00001'

result = mec_controller.get_profile_list(aname)
```

## Example Response *(as JSON)*

```json
{
  "profiles": [
    {
      "profileId": "HSS-EsmProfile_Enterprise",
      "profileName": "HSS EsmProfile Enterprise"
    }
  ]
}
```


# Change Pmec Device State-Activate

```ruby
def change_pmec_device_state_activate(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ChangePmecDeviceStateActivateRequest`](../../doc/models/change-pmec-device-state-activate-request.md) | Body, Required | - |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ChangeMecDeviceStateResponse`](../../doc/models/change-mec-device-state-response.md).

## Example Usage

```ruby
body = ChangePmecDeviceStateActivateRequest.new(
  '0342351414-00001',
  [
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913024600001',
          'iccid'
        )
      ]
    )
  ],
  Activate.new(
    'HSS EsmProfile Enterprise 5G'
  )
)

result = mec_controller.change_pmec_device_state_activate(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "c7b45cf2-cab1-4e42-82f8-20350f4c4ea3"
}
```


# Change Pmec Device State-Bulk Deactivate

```ruby
def change_pmec_device_state_bulk_deactivate(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ChangePmecDeviceStateBulkDeactivateRequest`](../../doc/models/change-pmec-device-state-bulk-deactivate-request.md) | Body, Required | - |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ChangeMecDeviceStateResponse`](../../doc/models/change-mec-device-state-response.md).

## Example Usage

```ruby
body = ChangePmecDeviceStateBulkDeactivateRequest.new(
  '0342351414-00001',
  [
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913031600000',
          'iccid'
        )
      ]
    ),
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913031700000',
          'iccid'
        )
      ]
    )
  ]
)

result = mec_controller.change_pmec_device_state_bulk_deactivate(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "c7b45cf2-cab1-4e42-82f8-20350f4c4ea3"
}
```


# Change Pmec Device Profile

```ruby
def change_pmec_device_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ChangePmecDeviceProfileRequest`](../../doc/models/change-pmec-device-profile-request.md) | Body, Required | - |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ChangeMecDeviceProfileResponse`](../../doc/models/change-mec-device-profile-response.md).

## Example Usage

```ruby
body = ChangePmecDeviceProfileRequest.new(
  '0342351414-00001',
  [
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913024600000',
          'iccid'
        )
      ]
    )
  ],
  'HSS EsmProfile Enterprise 5G internet'
)

result = mec_controller.change_pmec_device_profile(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "c7b45cf2-cab1-4e42-82f8-20350f4c4ea3"
}
```


# Change Pmec Device I Paddress Bulk

```ruby
def change_pmec_device_i_paddress_bulk(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ChangePmecDeviceStateBulkDeactivateRequest`](../../doc/models/change-pmec-device-state-bulk-deactivate-request.md) | Body, Required | - |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ChangeMecDeviceIPAddressResponse`](../../doc/models/change-mec-device-ip-address-response.md).

## Example Usage

```ruby
body = ChangePmecDeviceStateBulkDeactivateRequest.new(
  '0342351414-00001',
  [
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913031600000',
          'iccid'
        )
      ]
    ),
    MECDeviceList.new(
      [
        MECDeviceId.new(
          '99948099913031700000',
          'iccid'
        )
      ]
    )
  ]
)

result = mec_controller.change_pmec_device_i_paddress_bulk(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "c7b45cf2-cab1-4e42-82f8-20350f4c4ea3"
}
```


# Get MEC Performance Consent

```ruby
def get_mec_performance_consent(aname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`GetMECPerformanceConsentResponse`](../../doc/models/get-mec-performance-consent-response.md).

## Example Usage

```ruby
aname = '1533445500-00088'

result = mec_controller.get_mec_performance_consent(aname)
```

## Example Response *(as JSON)*

```json
{
  "consent": "false"
}
```

