# Configuration Files

```ruby
configuration_files_controller = client.configuration_files
```

## Class Name

`ConfigurationFilesController`

## Methods

* [Get List of Files](../../doc/controllers/configuration-files.md#get-list-of-files)
* [Upload Config File](../../doc/controllers/configuration-files.md#upload-config-file)


# Get List of Files

You can retrieve a list of configuration or supplementary of files for an account.

```ruby
def get_list_of_files(acc,
                      distribution_type)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `distribution_type` | `String` | Query, Required | Filter the distributionType to only retrieve files for a specific distribution type. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RetrievesAvailableFilesResponseList`](../../doc/models/retrieves-available-files-response-list.md).

## Example Usage

```ruby
acc = '0402196254-00001'

distribution_type = 'HTTP'

result = configuration_files_controller.get_list_of_files(
  acc,
  distribution_type
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |


# Upload Config File

Uploads a configuration/supplementary file for an account. ThingSpace generates a fileName after the upload and is returned in the response.

```ruby
def upload_config_file(acc,
                       fileupload: nil,
                       file_version: nil,
                       make: nil,
                       model: nil,
                       local_target_path: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `acc` | `String` | Template, Required | Account identifier. |
| `fileupload` | `File \| UploadIO` | Form, Optional | The file to upload. |
| `file_version` | `String` | Form, Optional | Version of the file. |
| `make` | `String` | Form, Optional | The software-applicable device make. |
| `model` | `String` | Form, Optional | The software-applicable device model. |
| `local_target_path` | `String` | Form, Optional | Local target path on the device. |

## Server

`Server::SOFTWARE_MANAGEMENT_V2`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`UploadConfigurationFilesResponse`](../../doc/models/upload-configuration-files-response.md).

## Example Usage

```ruby
acc = '0402196254-00001'

file_version = '1.0'

make = 'Verizon'

model = 'VZW1'

local_target_path = '/VZWFOTA/hello-world.txt'

result = configuration_files_controller.upload_config_file(
  acc,
  file_version: file_version,
  make: make,
  model: model,
  local_target_path: local_target_path
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Unexpected error. | [`FotaV2ResultException`](../../doc/models/fota-v2-result-exception.md) |

