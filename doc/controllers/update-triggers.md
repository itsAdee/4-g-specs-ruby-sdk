# Update Triggers

```ruby
update_triggers_controller = client.update_triggers
```

## Class Name

`UpdateTriggersController`


# Update All Available Triggers

Updates the promotional triggers for pseudo-MDN.

```ruby
def update_all_available_triggers(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`RequestTrigger`](../../doc/models/request-trigger.md) | Body, Optional | Update the triggers |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Success`](../../doc/models/success.md).

## Example Usage

```ruby
body = RequestTrigger.new(
  '2874DEC7-26CF-4797-9C6A-B5A2AC72D526',
  'PromoAlerts_0000000000-00001_23456789',
  '0000123456-000001',
  'Optional group name',
  'PromoAlerts'
)

result = update_triggers_controller.update_all_available_triggers(body: body)
```

## Example Response *(as JSON)*

```json
{
  "status": "Success"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`ReadySimRestErrorResponseException`](../../doc/models/ready-sim-rest-error-response-exception.md) |

