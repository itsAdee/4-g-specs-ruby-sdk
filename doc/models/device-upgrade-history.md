
# Device Upgrade History

Firmware upgrade information.

## Structure

`DeviceUpgradeHistory`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Optional | Device IMEI. |
| `id` | `String` | Optional | The unique identifier for the upgrade. |
| `account_name` | `String` | Optional | The name (number) of the billing account that the device belongs to. |
| `firmware_from` | `String` | Optional | The firmware version that was on the device before the upgrade. |
| `firmware_to` | `String` | Optional | The name of the firmware version that was on the device after the upgrade. |
| `start_date` | `String` | Optional | The date of the upgrade. |
| `upgrade_start_time` | `String` | Optional | The date and time that the upgrade actually started for this device. |
| `status` | `String` | Optional | The status of the upgrade for this device. |
| `reason` | `String` | Optional | More information about the status. |

## Example (as JSON)

```json
{
  "deviceId": "900000000000001",
  "id": "f574fbb8-b291-4cc7-bf22-4e3f27977558",
  "accountName": "0242078689-00001",
  "firmwareFrom": "VerizonFirmwareVersion-02",
  "firmwareTo": "VerizonFirmwareVersion-03",
  "startDate": "2018-03-05",
  "upgradeStartTime": "2018-03-05T19:07:21Z",
  "status": "UpgradeSuccess",
  "reason": "success"
}
```

