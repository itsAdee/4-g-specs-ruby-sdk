
# Position Error

Position error.

## Structure

`PositionError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `time` | `String` | Optional | Time location obtained. |
| `utcoffset` | `String` | Optional | UTC offset of time. |
| `type` | `String` | Optional | Error type returned from location server. |
| `info` | `String` | Optional | Additional information about the error. |

## Example (as JSON)

```json
{
  "time": "20170525214342",
  "type": "POSITION METHOD FAILURE",
  "info": "Exception code=ABSENT SUBSCRIBER",
  "utcoffset": "utcoffset0"
}
```

