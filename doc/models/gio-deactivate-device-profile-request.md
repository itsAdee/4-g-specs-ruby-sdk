
# GIO Deactivate Device Profile Request

## Structure

`GIODeactivateDeviceProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `devices` | [`Array<GIODeviceList>`](../../doc/models/gio-device-list.md) | Optional | **Constraints**: *Maximum Items*: `100` |
| `account_name` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9\-]{3,32}$` |
| `service_plan` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9 ]{3,32}$` |
| `etf_waiver` | `TrueClass \| FalseClass` | Optional | **Default**: `false` |
| `reason_code` | `String` | Optional | **Constraints**: *Minimum Length*: `2`, *Maximum Length*: `32`, *Pattern*: `^[0-9A-Z]{2,32}$` |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "servicePlan": "service plan name",
  "etfWaiver": false,
  "reasonCode": "FF",
  "devices": [
    {
      "deviceIds": [
        {
          "kind": "kind8",
          "id": "id0"
        }
      ]
    }
  ]
}
```

