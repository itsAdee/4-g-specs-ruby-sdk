# Campaigns V2

```ruby
campaigns_v2_controller = client.campaigns_v2
```

## Class Name

`CampaignsV2Controller`

## Methods

* [Schedule Campaign Firmware Upgrade](../../doc/controllers/campaigns-v2.md#schedule-campaign-firmware-upgrade)
* [Get Campaign Information](../../doc/controllers/campaigns-v2.md#get-campaign-information)
* [Update Campaign Firmware Devices](../../doc/controllers/campaigns-v2.md#update-campaign-firmware-devices)
* [Cancel Campaign](../../doc/controllers/campaigns-v2.md#cancel-campaign)
* [Update Campaign Dates](../../doc/controllers/campaigns-v2.md#update-campaign-dates)
* [Schedule File Upgrade](../../doc/controllers/campaigns-v2.md#schedule-file-upgrade)
* [Schedule SW Upgrade Http Devices](../../doc/controllers/campaigns-v2.md#schedule-sw-upgrade-http-devices)


# Schedule Campaign Firmware Upgrade

This endpoint allows user to schedule a software upgrade.

```ruby
def schedule_campaign_firmware_upgrade(account,
                                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `body` | [`CampaignSoftwareUpgrade`](../../doc/models/campaign-software-upgrade.md) | Body, Required | Software upgrade information. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CampaignSoftware`](../../doc/models/campaign-software.md).

## Example Usage

```ruby
account = '0000123456-00001'

body = CampaignSoftwareUpgrade.new(
  'FOTA_Verizon_Model-A_02To03_HF',
  'FOTA_Verizon_Model-A_00To01_HF',
  'FOTA_Verizon_Model-A_02To03_HF',
  'HTTP',
  Date.iso8601('2020-08-21'),
  Date.iso8601('2020-08-22'),
  [
    '990013907835573',
    '990013907884259'
  ],
  'FOTA_Verizon_Upgrade',
  Date.iso8601('2020-08-21'),
  [
    V2TimeWindow.new(
      20,
      21
    )
  ],
  Date.iso8601('2020-08-21'),
  [
    V2TimeWindow.new(
      22,
      23
    )
  ]
)

result = campaigns_v2_controller.schedule_campaign_firmware_upgrade(
  account,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "id": "60b5d639-ccdc-4db8-8824-069bd94c95bf",
  "accountName": "0402196254-00001",
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "distributionType": "HTTP",
  "make": "Verizon",
  "model": "Model-A",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "startDate": "2020-08-21",
  "endDate": "2020-08-22",
  "downloadAfterDate": "2020-08-21",
  "downloadTimeWindowList": [
    {
      "startTime": 20,
      "endTime": 21
    }
  ],
  "installAfterDate": "2020-08-21",
  "installTimeWindowList": [
    {
      "startTime": 22,
      "endTime": 23
    }
  ],
  "status": "CampaignRequestPending"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Get Campaign Information

This endpoint allows user to get information of a software upgrade.

```ruby
def get_campaign_information(account,
                             campaign_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `campaign_id` | `String` | Template, Required | Software upgrade identifier. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CampaignSoftware`](../../doc/models/campaign-software.md).

## Example Usage

```ruby
account = '0000123456-00001'

campaign_id = '60b5d639-ccdc-4db8-8824-069bd94c95bf'

result = campaigns_v2_controller.get_campaign_information(
  account,
  campaign_id
)
```

## Example Response *(as JSON)*

```json
{
  "id": "60b5d639-ccdc-4db8-8824-069bd94c95bf",
  "accountName": "0402196254-00001",
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "distributionType": "HTTP",
  "make": "Verizon",
  "model": "Model-A",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "startDate": "2020-08-21",
  "endDate": "2020-08-22",
  "downloadAfterDate": "2020-08-21",
  "downloadTimeWindowList": [
    {
      "startTime": 20,
      "endTime": 21
    }
  ],
  "installAfterDate": "2020-08-21",
  "installTimeWindowList": [
    {
      "startTime": 22,
      "endTime": 23
    }
  ],
  "status": "CampaignEnded"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Update Campaign Firmware Devices

This endpoint allows user to Add or Remove devices to an existing software upgrade.

```ruby
def update_campaign_firmware_devices(account,
                                     campaign_id,
                                     body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `campaign_id` | `String` | Template, Required | Software upgrade information. |
| `body` | [`V2AddOrRemoveDeviceRequest`](../../doc/models/v2-add-or-remove-device-request.md) | Body, Required | Request to add or remove device to existing software upgrade information. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`V2AddOrRemoveDeviceResult`](../../doc/models/v2-add-or-remove-device-result.md).

## Example Usage

```ruby
account = '0000123456-00001'

campaign_id = '60b5d639-ccdc-4db8-8824-069bd94c95bf'

body = V2AddOrRemoveDeviceRequest.new(
  'remove',
  [
    '990013907884259',
    '990013907835573',
    '990013907833575'
  ]
)

result = campaigns_v2_controller.update_campaign_firmware_devices(
  account,
  campaign_id,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Cancel Campaign

This endpoint allows user to cancel software upgrade. A software upgrade already started can not be cancelled.

```ruby
def cancel_campaign(account,
                    campaign_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `campaign_id` | `String` | Template, Required | Unique identifier of campaign. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`FotaV2SuccessResult`](../../doc/models/fota-v2-success-result.md).

## Example Usage

```ruby
account = '0000123456-00001'

campaign_id = '60b5d639-ccdc-4db8-8824-069bd94c95bf'

result = campaigns_v2_controller.cancel_campaign(
  account,
  campaign_id
)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Update Campaign Dates

This endpoint allows user to change campaign dates and time windows. Fields which need to remain unchanged should be also provided.

```ruby
def update_campaign_dates(account,
                          campaign_id,
                          body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account` | `String` | Template, Required | Account identifier. |
| `campaign_id` | `String` | Template, Required | Software upgrade information. |
| `body` | [`V2ChangeCampaignDatesRequest`](../../doc/models/v2-change-campaign-dates-request.md) | Body, Required | New dates and time windows. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CampaignSoftware`](../../doc/models/campaign-software.md).

## Example Usage

```ruby
account = '0000123456-00001'

campaign_id = '60b5d639-ccdc-4db8-8824-069bd94c95bf'

body = V2ChangeCampaignDatesRequest.new(
  Date.iso8601('2020-08-21'),
  Date.iso8601('2020-08-22'),
  Date.iso8601('2020-08-21'),
  [
    V2TimeWindow.new(
      3,
      4
    )
  ],
  Date.iso8601('2020-08-21'),
  [
    V2TimeWindow.new(
      5,
      6
    )
  ]
)

result = campaigns_v2_controller.update_campaign_dates(
  account,
  campaign_id,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "id": "60b5d639-ccdc-4db8-8824-069bd94c95bf",
  "accountName": "0402196254-00001",
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "distributionType": "HTTP",
  "make": "Verizon",
  "model": "Model-A",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "startDate": "2020-08-21",
  "endDate": "2020-08-22",
  "downloadAfterDate": "2020-08-21",
  "downloadTimeWindowList": [
    {
      "startTime": 3,
      "endTime": 4
    },
    {
      "startTime": 5,
      "endTime": 6
    }
  ],
  "installAfterDate": "2020-08-21",
  "installTimeWindowList": [
    {
      "startTime": 5,
      "endTime": 6
    },
    {
      "startTime": 6,
      "endTime": 7
    }
  ],
  "status": "RequestPending"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Schedule File Upgrade

You can upload configuration files and schedule them in a campaign to devices.

```ruby
def schedule_file_upgrade(acc,
                          body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `body` | [`UploadAndScheduleFileRequest`](../../doc/models/upload-and-schedule-file-request.md) | Body, Required | Device logging information. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`UploadAndScheduleFileResponse`](../../doc/models/upload-and-schedule-file-response.md).

## Example Usage

```ruby
acc = '0402196254-00001'

body = UploadAndScheduleFileRequest.new(
  'FOTA_Verizon_Upgrade',
  'configfile-Verizon_VZW1_hello-world.txt',
  '1.0',
  'HTTP',
  '2021-02-08',
  '2021-02-08',
  '2021-02-08'
)

result = campaigns_v2_controller.schedule_file_upgrade(
  acc,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Schedule SW Upgrade Http Devices

Campaign time windows for downloading and installing software are available as long as the device OEM supports this.

```ruby
def schedule_sw_upgrade_http_devices(acc,
                                     body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `body` | [`SchedulesSoftwareUpgradeRequest`](../../doc/models/schedules-software-upgrade-request.md) | Body, Required | Device logging information. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`UploadAndScheduleFileResponse`](../../doc/models/upload-and-schedule-file-response.md).

## Example Usage

```ruby
acc = '0402196254-00001'

body = SchedulesSoftwareUpgradeRequest.new(
  'FOTA_Verizon_Upgrade',
  'FOTA_Verizon_Model-A_02To03_HF',
  'FOTA_Verizon_Model-A_00To01_HF',
  'FOTA_Verizon_Model-A_02To03_HF',
  'HTTP',
  '2020-08-21',
  '2020-08-22',
  '2020-08-21',
  [
    DownloadTimeWindow.new(
      '20',
      '21'
    )
  ],
  '2020-08-21',
  [
    DownloadTimeWindow.new(
      '22',
      '23'
    )
  ],
  [
    '990013907835573',
    '990013907884259'
  ]
)

result = campaigns_v2_controller.schedule_sw_upgrade_http_devices(
  acc,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "id": "60b5d639-ccdc-4db8-8824-069bd94c95bf",
  "accountName": "0402196254-00001",
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "distributionType": "HTTP",
  "make": "Verizon",
  "model": "Model-A",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "startDate": "2020-08-21",
  "endDate": "2020-08-22",
  "downloadAfterDate": "2020-08-21",
  "downloadTimeWindowList": [
    {
      "startTime": "20",
      "endTime": "21"
    }
  ],
  "installAfterDate": "2020-08-21",
  "installTimeWindowList": [
    {
      "startTime": "22",
      "endTime": "23"
    }
  ],
  "status": "CampaignRequestPending"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |

