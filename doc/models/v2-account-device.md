
# V2 Account Device

Account device information.

## Structure

`V2AccountDevice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Required | Device identifier. |
| `mdn` | `String` | Required | MDN. |
| `model` | `String` | Required | Device model. |
| `make` | `String` | Required | Device make. |
| `fota_eligible` | `TrueClass \| FalseClass` | Required | Device FOTA capable. |
| `app_fota_eligible` | `TrueClass \| FalseClass` | Required | Device application FOTA capable. |
| `license_assigned` | `TrueClass \| FalseClass` | Required | License assigned device. |
| `distribution_type` | `String` | Required | LWM2M, OMD-DM or HTTP. |
| `software_list` | [`Array<V2SoftwareInfo>`](../../doc/models/v2-software-info.md) | Required | List of sofware. |
| `create_time` | `String` | Optional | The date and time of when the device is created. |
| `upgrade_time` | `String` | Optional | The date and time of when the device firmware or software is upgraded. |
| `update_time` | `String` | Optional | The date and time of when the device is updated. |
| `refresh_time` | `String` | Optional | The date and time of when the device is refreshed. |

## Example (as JSON)

```json
{
  "deviceId": "15-digit IMEI",
  "mdn": "10-digit MDN",
  "model": "Model-A",
  "make": "Verizon",
  "fotaEligible": true,
  "appFotaEligible": true,
  "licenseAssigned": true,
  "distributionType": "HTTP",
  "softwareList": [
    {
      "name": "FOTA_Verizon_Model-A_02To03_HF",
      "version": "3",
      "upgradeTime": "2020-09-08T19:00:51.541Z"
    }
  ],
  "createTime": "2021-06-03 00:03:56.079 +0000 UTC",
  "upgradeTime": "2021-06-03 00:03:56.079 +0000 UTC",
  "updateTime": "2021-06-03 00:03:56.079 +0000 UTC",
  "refreshTime": "2021-06-03 00:03:56.079 +0000 UTC"
}
```

