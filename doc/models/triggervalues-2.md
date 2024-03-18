
# Triggervalues 2

## Structure

`Triggervalues2`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Optional | - |
| `trigger_name` | `String` | Optional | - |
| `account_name` | `String` | Optional | - |
| `organization_name` | `String` | Optional | - |
| `trigger_category` | `String` | Optional | - |
| `promo_alerts` | [`Array<PromoAlert>`](../../doc/models/promo-alert.md) | Optional | - |
| `active` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `modified_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "triggerId": "2874DEC7-26CF-4797-9C6A-B5A2AC72D526",
  "triggerName": "PromoAlerts_0000000000-00001_23456789",
  "accountName": "0000123456-000001",
  "organizationName": "Optional group name",
  "triggerCategory": "PromoAlerts"
}
```

