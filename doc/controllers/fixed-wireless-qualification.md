# Fixed Wireless Qualification

```ruby
fixed_wireless_qualification_controller = client.fixed_wireless_qualification
```

## Class Name

`FixedWirelessQualificationController`


# Domestic 4 G and 5G Fixed Wireless Qualification

Use this query for Fixed Wireless Qualification of an address. Network types include: LTE, C-BAND and MMWAVE.

```ruby
def domestic4g_and_5g_fixed_wireless_qualification(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GetWirelessCoverageRequestFWA`](../../doc/models/get-wireless-coverage-request-fwa.md) | Body, Required | Request for network coverage details. |

## Server

`Server::THINGSPACE`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`WNPRequestResponse`](../../doc/models/wnp-request-response.md).

## Example Usage

```ruby
body = GetWirelessCoverageRequestFWA.new(
  '0000123456-00001',
  'FWA',
  'ADDRESS',
  Locations.new(
    [
      AddressItem.new(
        'street address',
        nil,
        'city',
        'LA',
        'USA',
        '00000'
      )
    ]
  ),
  [
    NetworkType.new(
      'LTE'
    )
  ]
)

result = fixed_wireless_qualification_controller.domestic4g_and_5g_fixed_wireless_qualification(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "d1f08526-5443-4054-9a29-4456490ea9f8"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Error response | [`WNPRestErrorResponseException`](../../doc/models/wnp-rest-error-response-exception.md) |

