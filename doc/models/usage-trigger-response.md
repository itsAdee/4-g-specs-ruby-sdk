
# Usage Trigger Response

## Structure

`UsageTriggerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Required | Unique usage triggerId |
| `trigger_name` | `String` | Required | Usage trigger name |
| `account_name` | `String` | Required | Account name |
| `service_name` | [`ServiceNameEnum`](../../doc/models/service-name-enum.md) | Required | Service name<br>**Default**: `ServiceNameEnum::LOCATION` |
| `threshold_value` | `String` | Required | Percent of subscription at which trigger will send an alert |
| `allow_excess` | `TrueClass \| FalseClass` | Required | allowExcess determines whether to restrict usage after exceeds limits |
| `send_sms_notification` | `TrueClass \| FalseClass` | Required | Send SMS (text) alerts when the thresholdValue is reached. |
| `sms_phone_numbers` | `String` | Required | comma seperated value of list of Phone numbers for SMS notifications |
| `send_email_notification` | `TrueClass \| FalseClass` | Required | Send email alerts when the thresholdValue is reached. |
| `email_addresses` | `String` | Required | comma seperated value of list of Email addresses for Email notifications |
| `create_date` | `String` | Required | UTC Date when the usage trigger was created |
| `update_date` | `String` | Required | UTC Date when the usage trigger was last updated |

## Example (as JSON)

```json
{
  "triggerId": "3bb4777e-5292-4de7-97df-f578df4a2dbe",
  "triggerName": "95% usage alert",
  "accountName": "0212312345-00001",
  "serviceName": "Location",
  "thresholdValue": "95",
  "allowExcess": false,
  "sendSmsNotification": false,
  "smsPhoneNumbers": "5551231234",
  "sendEmailNotification": false,
  "emailAddresses": "me@theinternet.com, you@theinternet.com",
  "createDate": "2018-08-31",
  "updateDate": "2018-09-03"
}
```

