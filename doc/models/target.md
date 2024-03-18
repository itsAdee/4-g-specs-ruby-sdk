
# Target

Target resource definition.

## Structure

`Target`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address` | `String` | Optional | The endpoint for data streams. |
| `addressscheme` | `String` | Optional | The transport format. |
| `billingaccountid` | `String` | Optional | The billing account ID. |
| `createdon` | `String` | Optional | The date the resource was created. |
| `externalid` | `String` | Optional | Security identification string. |
| `id` | `String` | Optional | ThingSpace unique ID for the target that was created. |
| `kind` | `String` | Optional | Identifies the resource kind. Targets are ts.target. |
| `lastupdated` | `String` | Optional | The date the resource was last updated. |
| `name` | `String` | Optional | Name of the target. |
| `region` | `String` | Optional | AWS region value. |
| `version` | `String` | Optional | Version of the underlying schema resource. |
| `versionid` | `String` | Optional | The version of the resource. |
| `description` | `String` | Optional | Description of the target. |

## Example (as JSON)

```json
{
  "address": "arn:aws:iam::252156542789:role/ThingSpace",
  "addressscheme": "streamawsiot",
  "createdon": "2019-01-24T19:06:43.577Z",
  "externalid": "lJZnih8BfqsosZrEEkfPuR3aGOk2i-HIr6tXN275ioJF6bezIrQB9EbzpTRep8J7RmV7QH==",
  "id": "cea170cc-a58f-6531-fc4b-fae1ceb1a6c8",
  "kind": "ts.target",
  "lastupdated": "2019-01-24T19:32:31.841Z",
  "name": "AWS Target",
  "region": "us-east-1",
  "version": "1.0",
  "versionid": "caf85ff7-200e-11e9-a85b-02420a621e0a",
  "billingaccountid": "billingaccountid0"
}
```

