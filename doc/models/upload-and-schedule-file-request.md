
# Upload and Schedule File Request

## Structure

`UploadAndScheduleFileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `campaign_name` | `String` | Optional | The campaign name. |
| `file_name` | `String` | Optional | The name of the file you are upgrading to. |
| `file_version` | `String` | Optional | The version of the file you are upgrading to. |
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
  "fileName": "configfile-Verizon_VZW1_hello-world.txt",
  "fileVersion": "1.0",
  "distributionType": "HTTP",
  "startDate": "2021-02-08",
  "endDate": "2021-02-08",
  "downloadAfterDate": "2021-02-08"
}
```

