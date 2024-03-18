
# Position Data

Position data.

## Structure

`PositionData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `time` | `String` | Optional | Time location obtained. |
| `utcoffset` | `String` | Optional | UTC offset of time. |
| `x` | `String` | Optional | X coordinate of location. |
| `y` | `String` | Optional | Y coordinate of location. |
| `radius` | `String` | Optional | Radius of the location in meters. |
| `qos` | `TrueClass \| FalseClass` | Optional | Whether requested accurary is met or not. |

## Example (as JSON)

```json
{
  "qos": false,
  "radius": "5571",
  "time": "20170520004421",
  "x": "33.45324",
  "y": "-84.59621",
  "utcoffset": "utcoffset0"
}
```

