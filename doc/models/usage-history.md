
# Usage History

## Structure

`UsageHistory`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bytes_used` | `Integer` | Optional | - |
| `serviceplan` | `String` | Optional | - |
| `sms_used` | `Integer` | Optional | - |
| `mo_sms` | `Integer` | Optional | - |
| `mt_sms` | `Integer` | Optional | - |
| `source` | `String` | Optional | - |
| `event_date_time` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "bytesUsed": 3072,
  "serviceplan": "The serviceplan name",
  "source": "Raw Usage",
  "eventDateTime": "08/15/2021 00:00:00",
  "smsUsed": 250,
  "moSMS": 100,
  "mtSMS": 92
}
```

