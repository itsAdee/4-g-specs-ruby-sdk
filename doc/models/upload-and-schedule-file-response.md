
# Upload and Schedule File Response

## Structure

`UploadAndScheduleFileResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Updgrade identifier. |
| `account_name` | `String` | Optional | Account identifer. |
| `campaign_name` | `String` | Optional | The campaign name. |
| `software_name` | `String` | Optional | Software name. |
| `software_from` | `String` | Optional | Old software name. |
| `software_to` | `String` | Optional | New software name. |
| `file_name` | `String` | Optional | The name of the file you are upgrading to. |
| `file_version` | `String` | Optional | The version of the file you are upgrading to. |
| `distribution_type` | `String` | Optional | Valid values |
| `make` | `String` | Optional | Applicable make. |
| `model` | `String` | Optional | Applicable model. |
| `start_date` | `String` | Optional | Campaign start date. |
| `end_date` | `String` | Optional | Campaign end date. |
| `download_after_date` | `String` | Optional | Specifies the starting date the client should download the package. If null, client downloads as soon as possible. |
| `download_time_window_list` | [`Array<DownloadTimeWindow>`](../../doc/models/download-time-window.md) | Optional | List of allowed download time windows. |
| `install_after_date` | `String` | Optional | The date after which you install the package. If null, install as soon as possible. |
| `install_time_window_list` | [`Array<DownloadTimeWindow>`](../../doc/models/download-time-window.md) | Optional | List of allowed install time windows. |
| `device_list` | `Array<String>` | Optional | Device IMEI list. |
| `status` | `String` | Optional | Software update status. |

## Example (as JSON)

```json
{
  "id": "60b5d639-ccdc-4db8-8824-069bd94c95bf",
  "accountName": "0242078689-00001",
  "campaignName": "FOTA_Verizon_Upgrade",
  "softwareName": "FOTA_Verizon_Model-A_02To03_HF",
  "softwareFrom": "FOTA_Verizon_Model-A_00To01_HF",
  "softwareTo": "FOTA_Verizon_Model-A_02To03_HF",
  "fileName": "configfile-Verizon_VZW1_hello-world.txt",
  "fileVersion": "1.0",
  "distributionType": "HTTP",
  "make": "Verizon",
  "model": "Model-A",
  "startDate": "2021-02-08",
  "endDate": "2021-02-08",
  "downloadAfterDate": "2021-02-08",
  "status": "pending"
}
```

