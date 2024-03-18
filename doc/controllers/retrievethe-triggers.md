# Retrievethe Triggers

```ruby
retrievethe_triggers_controller = client.retrievethe_triggers
```

## Class Name

`RetrievetheTriggersController`

## Methods

* [Get All Available Triggers](../../doc/controllers/retrievethe-triggers.md#get-all-available-triggers)
* [Get All Triggers by Account Name](../../doc/controllers/retrievethe-triggers.md#get-all-triggers-by-account-name)
* [Get All Triggers by Trigger Category](../../doc/controllers/retrievethe-triggers.md#get-all-triggers-by-trigger-category)
* [Get Triggers by Id](../../doc/controllers/retrievethe-triggers.md#get-triggers-by-id)


# Get All Available Triggers

Retrieves all of the available triggers for pseudo-MDN.

```ruby
def get_all_available_triggers
```

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerValueResponse`](../../doc/models/trigger-value-response.md).

## Example Usage

```ruby
result = retrieve_the_triggers_controller.get_all_available_triggers
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`ReadySimRestErrorResponseException`](../../doc/models/ready-sim-rest-error-response-exception.md) |


# Get All Triggers by Account Name

Retrieve the triggers associated with an account name.

```ruby
def get_all_triggers_by_account_name(account_name)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Template, Required | The account name |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerValueResponse`](../../doc/models/trigger-value-response.md).

## Example Usage

```ruby
account_name = '0000123456-000001'

result = retrieve_the_triggers_controller.get_all_triggers_by_account_name(account_name)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`ReadySimRestErrorResponseException`](../../doc/models/ready-sim-rest-error-response-exception.md) |


# Get All Triggers by Trigger Category

Retrieves all of the triggers for the specified account associated with the PromoAlert category

```ruby
def get_all_triggers_by_trigger_category
```

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerValueResponse2`](../../doc/models/trigger-value-response-2.md).

## Example Usage

```ruby
result = retrieve_the_triggers_controller.get_all_triggers_by_trigger_category
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`ReadySimRestErrorResponseException`](../../doc/models/ready-sim-rest-error-response-exception.md) |


# Get Triggers by Id

Retrives a specific trigger by its ID.

```ruby
def get_triggers_by_id(trigger_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `trigger_id` | `String` | Template, Required | The ID of a specific trigger |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TriggerValueResponse2`](../../doc/models/trigger-value-response-2.md).

## Example Usage

```ruby
trigger_id = '2874DEC7-26CF-4797-9C6A-B5A2AC72D526'

result = retrieve_the_triggers_controller.get_triggers_by_id(trigger_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`ReadySimRestErrorResponseException`](../../doc/models/ready-sim-rest-error-response-exception.md) |

