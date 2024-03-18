
# V1 List of Licenses to Remove Result

List of licenses assigned.

## Structure

`V1ListOfLicensesToRemoveResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `count` | `Integer` | Optional | The total number of devices on the cancellation candidate list. |
| `device_list` | `Array<String>` | Optional | The IMEIs of the devices. |

## Example (as JSON)

```json
{
  "count": 2,
  "deviceList": [
    "900000000000001",
    "900000000000999"
  ]
}
```

