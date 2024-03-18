
# Campaign

Firmware upgrade information.

## Structure

`Campaign`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Upgrade identifier. |
| `account_name` | `String` | Required | Account identifier. |
| `campaign_name` | `String` | Optional | Campaign name. |
| `firmware_name` | `String` | Optional | Name of firmware. |
| `firmware_from` | `String` | Optional | Old firmware version. |
| `firmware_to` | `String` | Optional | New firmware version. |
| `protocol` | `String` | Required | The protocol of the firmware distribution. Default: LWM2M.<br>**Default**: `'LWM2M'` |
| `make` | `String` | Required | Applicable make. |
| `model` | `String` | Required | Applicable model. |
| `start_date` | `Date` | Required | Campaign start date. |
| `end_date` | `Date` | Required | Campaign end date. |
| `campaign_time_window_list` | [`Array<V3TimeWindow>`](../../doc/models/v3-time-window.md) | Optional | List of allowed campaign time windows. |
| `status` | `String` | Required | Firmware upgrade status. |

## Example (as JSON)

```json
{
  "id": "f858b8c4-2153-11ec-8c44-aeb16d1aa652",
  "accountName": "0642233522-00001",
  "campaignName": "Smart FOTA - test 4",
  "protocol": "LWM2M",
  "make": "SEQUANS Communications",
  "model": "GM01Q",
  "status": "CampaignPreScheduled",
  "startDate": "2021-09-29",
  "endDate": "2021-10-01",
  "firmwareName": "SEQUANSCommunications_GM01Q_SR1.2.0.0-10512_SR1.2.0.0-10657",
  "firmwareFrom": "SR1.2.0.0-10512",
  "firmwareTo": "SR1.2.0.0-10657",
  "campaignTimeWindowList": [
    {
      "startTime": 18,
      "endTime": 22
    }
  ]
}
```

