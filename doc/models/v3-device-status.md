
# V3 Device Status

Device status.

## Structure

`V3DeviceStatus`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Required | Device IMEI. |
| `status` | `String` | Required | Success or failure. |
| `result_reason` | `String` | Optional | Result reason. |
| `updated_time` | `DateTime` | Optional | Updated Time. |
| `recent_attempt_time` | `DateTime` | Optional | The most recent attempt time. |
| `next_attempt_time` | `DateTime` | Optional | Next attempt time. |

## Example (as JSON)

```json
{
  "deviceId": "15-digit IMEI",
  "status": "UpgradePending",
  "resultReason": "Upgrade pending, the device upgrade is estimated to be scheduled for 06 Oct 22 18:05 UTC",
  "updatedTime": "2022-08-05T21:05:27.129Z",
  "recentAttemptTime": "2022-10-05T21:05:01.19Z",
  "nextAttemptTime": "2022-10-06T18:35:00Z"
}
```

