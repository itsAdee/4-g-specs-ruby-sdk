
# Fota V3 Subscription

Information for licenses applied to devices.

## Structure

`FotaV3Subscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | Account identifier in "##########-#####". |
| `purchase_type` | `String` | Optional | Subscription models used by the account. |
| `license_count` | `Integer` | Optional | Number of monthly licenses in an MRC subscription. |
| `license_used_count` | `Integer` | Optional | Number of licenses currently assigned to devices. |
| `update_time` | `String` | Optional | The date and time of when the subscription was last updated. |

## Example (as JSON)

```json
{
  "accountName": "0000123456-000001",
  "purchaseType": "TS-HFOTA-EVNT,TS-HFOTA-MRC",
  "licenseCount": 500,
  "licenseUsedCount": 400,
  "updateTime": "2020-09-17T21:11:32.170Z"
}
```

