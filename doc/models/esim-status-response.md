
# ESIM Status Response

## Structure

`ESIMStatusResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `subrequests` | [`Array<ESIMsubrequest>`](../../doc/models/esi-msubrequest.md) | Optional | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "requestId": "d1f08526-5443-4054-9a29-4456490ea9f8",
  "status": "Success",
  "subrequests": [
    {
      "id": "id0",
      "kind": "kind8",
      "status": "success"
    },
    {
      "id": "id0",
      "kind": "kind8",
      "status": "success"
    }
  ]
}
```

