
# Diagnostics Subscription

Status of the diagnostic services subscription.

## Structure

`DiagnosticsSubscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | Account identifier in "##########-#####". An account name is usually numeric, and must include any leading zeros. |
| `created_on` | `DateTime` | Required | The date and time of when the subscription was created. |
| `last_updated` | `DateTime` | Required | The date and time of when the subscription was last updated. |
| `total_allowed` | `Integer` | Required | Number of licenses currently assigned to devices. |
| `total_used` | `Integer` | Required | Number of licenses currently used by the devices. |
| `sku_name` | `String` | Required | Name of the SKU for the account. |

## Example (as JSON)

```json
{
  "accountName": "TestQAAccount",
  "skuName": "TS-BUNDLE-KTO-DIAGNOSTIC-MRC",
  "totalAllowed": 100,
  "totalUsed": 50,
  "createdOn": "2019-08-29T00:47:59.240Z",
  "lastUpdated": "2019-08-29T00:47:59.240Z"
}
```

