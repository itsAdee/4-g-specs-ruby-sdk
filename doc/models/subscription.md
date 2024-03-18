
# Subscription

Subscription resource definition.

## Structure

`Subscription`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `configurationfailures` | `Integer` | Optional | The number of streaming failures due to faulty configuration. |
| `createdon` | `String` | Optional | The number of streaming failures due to faulty configuration. |
| `delegateid` | `String` | Optional | Not currently used. |
| `description` | `String` | Optional | Description of the subscription. |
| `disabled` | `TrueClass \| FalseClass` | Optional | Whether the subscription is currently sending data. |
| `email` | `String` | Optional | The address to which any error reports should be delivered. |
| `filter` | `String` | Optional | Filter for events. |
| `id` | `String` | Optional | ThingSpace unique ID for the subscription that was created. |
| `kind` | `String` | Optional | Identifies the resource kind. |
| `laststreamingstatus` | `String` | Optional | Possible values: success or fail. |
| `laststreamingtime` | `String` | Optional | The date and time that the last stream send was attempted. |
| `lastupdated` | `String` | Optional | The date the resource was last updated. |
| `name` | `String` | Optional | Name of the subscription. |
| `networkfailures` | `Integer` | Optional | The number of failures due to network problems. |
| `streamfailures` | `Integer` | Optional | - |
| `streamkind` | `String` | Optional | The event type that will be sent in the data stream. |
| `targetid` | `String` | Optional | Target to be used for dispatching events. |
| `targettype` | `String` | Optional | - |
| `version` | `String` | Optional | Version of the underlying schema resource. |
| `versionid` | `String` | Optional | The version of the resource. |

## Example (as JSON)

```json
{
  "configurationfailures": 0,
  "createdon": "2018-12-21T05:05:02.134Z",
  "delegateid": "00000000-0000-0000-0000-000000000000",
  "id": "d8c145dd-6948-67ec-ed9b-6a298806bb4a",
  "kind": "ts.subscription",
  "laststreamingstatus": "",
  "laststreamingtime": "0001-01-01T00:00:00Z",
  "lastupdated": "2018-12-21T05:22:12.178Z",
  "networkfailures": 0,
  "streamfailures": 0,
  "streamkind": "ts.event",
  "targetid": "4e211a0e-e39d-6c32-e15b-d6f07f9e2ec8",
  "version": "1.0",
  "versionid": "5ed6063f-04e0-11e9-8279-02420a5e1b0b",
  "description": "description4",
  "disabled": false
}
```

