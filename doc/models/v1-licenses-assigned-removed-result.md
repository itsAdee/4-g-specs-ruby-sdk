
# V1 Licenses Assigned Removed Result

License assignment or removal confirmation.

## Structure

`V1LicensesAssignedRemovedResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | Account identifier in "##########-#####". |
| `lic_count` | `Integer` | Optional | Total number of monthly licenses in an MRC subscription. |
| `lic_used_count` | `Integer` | Optional | Number of licenses assigned to devices after the request completed. |
| `device_list` | [`Array<V1DeviceListItem>`](../../doc/models/v1-device-list-item.md) | Optional | A JSON object for each device that was in the request. |

## Example (as JSON)

```json
{
  "accountName": "0242078689-00001",
  "licCount": 9000,
  "licUsedCount": 1000,
  "deviceList": [
    {
      "deviceId": "900000000000001",
      "status": "LicenseAssignSuccess",
      "Reason": "Success"
    },
    {
      "deviceId": "900000000000999",
      "status": "LicenseAssignSuccess",
      "Reason": "Success"
    }
  ]
}
```

