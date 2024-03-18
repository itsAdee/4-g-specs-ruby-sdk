
# Devices Consent Result

## Structure

`DevicesConsentResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | Account identifier in "##########-#####". |
| `all_device` | `TrueClass \| FalseClass` | Optional | Exclude all devices or not? |
| `has_more_data` | `TrueClass \| FalseClass` | Optional | Are there more devices to retrieve or not? |
| `total_count` | `Integer` | Optional | Total number of excluded devices in the account. |
| `update_time` | `String` | Optional | Last update time. |
| `exclusion` | `Array<String>` | Optional | Device ID list. |

## Example (as JSON)

```json
{
  "accountName": "2024009649-00001",
  "allDevice": false,
  "hasMoreData": false,
  "totalCount": 4,
  "updateTime": "2018-05-18 19:20:50.076 +0000 UTC",
  "exclusion": [
    "990003420535375",
    "420535399000375",
    "A100003861E585",
    "205353759900034"
  ]
}
```

