
# Device Firmware Upgrade

Firmware upgrades information.

## Structure

`DeviceFirmwareUpgrade`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Required | Device identifier. |
| `campaign_id` | `String` | Required | Campaign identifier. |
| `account_name` | `String` | Required | Account identifier. |
| `firmware_name` | `String` | Optional | Firmware name. |
| `firmware_from` | `String` | Optional | Old firmware version. |
| `firmware_to` | `String` | Optional | New firmware version. |
| `start_date` | `Date` | Required | Firmware upgrade start date. |
| `status` | `String` | Required | Firmware upgrade status. |
| `reason` | `String` | Required | Software upgrade result reason. |
| `report_updated_time` | `String` | Optional | Report updated time. |

## Example (as JSON)

```json
{
  "deviceId": "15-digit IMEI",
  "campaignId": "252d7ffc-7e35-11ec-931d-76f56843c393",
  "accountName": "0000123456-00001",
  "firmwareName": "SEQUANSCommunications_GM01Q_SR1.2.0.0-10657_SR1.2.0.0-10512",
  "firmwareFrom": "SR1.2.0.0-10657",
  "firmwareTo": "SR1.2.0.0-10512",
  "startDate": "2022-01-25",
  "reportUpdatedTime": "2022-01-26 03:45:01.608 +0000 UTC",
  "status": "UpgradeSuccess",
  "reason": "Upgrade completed successfully"
}
```

