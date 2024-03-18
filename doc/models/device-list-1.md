
# Device List 1

## Structure

`DeviceList1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_ids` | [`Array<MECDeviceId>`](../../doc/models/mec-device-id.md) | Required | - |
| `ip_address` | `String` | Required | - |
| `apn` | `String` | Required | - |

## Example (as JSON)

```json
{
  "deviceIds": [
    {
      "id": "99948099913031600000",
      "kind": "iccid"
    }
  ],
  "ipAddress": "10.3.4.9",
  "apn": "1"
}
```

