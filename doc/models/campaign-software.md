
# Campaign Software

Software upgrade information.

## Structure

`CampaignSoftware`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Upgrade identifier. |
| `account_name` | `String` | Required | Account identifier. |
| `campaign_name` | `String` | Optional | Campaign name. |
| `software_name` | `String` | Required | Software name. |
| `distribution_type` | `String` | Required | LWM2M, OMD-DM or HTTP. |
| `make` | `String` | Required | Applicable make. |
| `model` | `String` | Required | Applicable model. |
| `software_from` | `String` | Required | Old software name. |
| `software_to` | `String` | Required | New software name. |
| `start_date` | `Date` | Required | Campaign start date. |
| `end_date` | `Date` | Required | Campaign end date. |
| `download_after_date` | `Date` | Optional | Specifies starting date client should download package. If null, client will download as soon as possible. |
| `download_time_window_list` | [`Array<V2TimeWindow>`](../../doc/models/v2-time-window.md) | Optional | List of allowed download time windows. |
| `install_after_date` | `Date` | Optional | Client will install package after date. If null, client will install as soon as possible. |
| `install_time_window_list` | [`Array<V2TimeWindow>`](../../doc/models/v2-time-window.md) | Optional | List of allowed install time windows. |
| `status` | `String` | Required | Software upgrade status. |

## Example (as JSON)

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

