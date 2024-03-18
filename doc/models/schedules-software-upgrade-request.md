
# Schedules Software Upgrade Request

## Structure

`SchedulesSoftwareUpgradeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `campaign_name` | `String` | Optional | The campaign name. |
| `software_name` | `String` | Optional | Software name. |
| `software_from` | `String` | Optional | Old software name. |
| `software_to` | `String` | Optional | New software name. |
| `distribution_type` | `String` | Optional | Valid values |
| `start_date` | `String` | Optional | Campaign start date. |
| `end_date` | `String` | Optional | Campaign end date. |
| `download_after_date` | `String` | Optional | Specifies the starting date the client should download the package. If null, client downloads as soon as possible. |
| `download_time_window_list` | [`Array<DownloadTimeWindow>`](../../doc/models/download-time-window.md) | Optional | List of allowed download time windows. |
| `install_after_date` | `String` | Optional | The date after which you install the package. If null, install as soon as possible. |
| `install_time_window_list` | [`Array<DownloadTimeWindow>`](../../doc/models/download-time-window.md) | Optional | List of allowed install time windows. |
| `device_list` | `Array<String>` | Optional | Device IMEI list. |

## Example (as JSON)

```json
{
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "distributionType": "HTTP",
  "startDate": "2021-02-08",
  "endDate": "2021-02-08",
  "downloadAfterDate": "2021-02-08"
}
```

