
# Notification

The notification details of the trigger.

## Structure

`Notification`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `notification_type` | `String` | Optional | The type of notification, i.e. 'DailySummary'. |
| `callback` | `TrueClass \| FalseClass` | Optional | Whether or not the notification should be sent via callback.<br />true<br />false. |
| `email_notification` | `TrueClass \| FalseClass` | Optional | Whether or not the notification should be sent via e-mail.<br />true<br />false. |
| `notification_group_name` | `String` | Optional | Name for the notification group. |
| `notification_frequency_factor` | `Integer` | Optional | Frequency factor for notification. |
| `notification_frequency_interval` | `String` | Optional | Frequency interval for notification. |
| `external_email_recipients` | `String` | Optional | E-mail address(es) where the notification should be delivered. |
| `sms_notification` | `TrueClass \| FalseClass` | Optional | SMS notification. |
| `sms_numbers` | [`Array<SMSNumber>`](../../doc/models/sms-number.md) | Optional | List of SMS numbers.<br>**Constraints**: *Maximum Items*: `10` |
| `reminder` | `TrueClass \| FalseClass` | Optional | - |
| `severity` | `String` | Optional | Severity level associated with the notification. Examples would be:<br />Major<br />Minor<br />Critical<br />NotApplicable. |

## Example (as JSON)

```json
{
  "notificationType": "DailySummary",
  "callback": true,
  "emailNotification": false,
  "notificationGroupName": "Anomaly Test API",
  "notificationFrequencyFactor": 3,
  "notificationFrequencyInterval": "Hourly",
  "externalEmailRecipients": "placeholder@verizon.com",
  "smsNotification": true,
  "smsNumbers": [
    {
      "carrier": "US Cellular",
      "number": "9299280711"
    }
  ],
  "reminder": true,
  "severity": "Critical"
}
```

