
# Usage Trigger Add Request

## Structure

`UsageTriggerAddRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_name` | `String` | Optional | Usage trigger name |
| `account_name` | `String` | Required | Account name |
| `service_name` | [`ServiceNameEnum`](../../doc/models/service-name-enum.md) | Required | Service name<br>**Default**: `ServiceNameEnum::LOCATION` |
| `threshold_value` | `String` | Required | The percent of subscribed usage required to activate the trigger, such as 90 or 100. |
| `allow_excess` | `TrueClass \| FalseClass` | Optional | Allow additional requests after thresholdValue is reached. (currently not functional) |
| `send_sms_notification` | `TrueClass \| FalseClass` | Optional | Send SMS (text) alerts when the thresholdValue is reached. |
| `sms_phone_numbers` | `String` | Optional | Comma-separated list of phone numbers to send SMS alerts to. Digits only; no dashes or parentheses, etc. |
| `send_email_notification` | `TrueClass \| FalseClass` | Optional | Send email alerts when the thresholdValue is reached. |
| `email_addresses` | `String` | Optional | Comma-separated list of email addresses to send alerts to. |

## Example (as JSON)

```json
{
  "triggerName": "95% usage alert",
  "accountName": "0212312345-00001",
  "serviceName": "Location",
  "thresholdValue": "95",
  "smsPhoneNumbers": "5551231234",
  "emailAddresses": "you@theinternet.com",
  "allowExcess": false,
  "sendSmsNotification": false,
  "sendEmailNotification": false
}
```

