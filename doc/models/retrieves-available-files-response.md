
# Retrieves Available Files Response

## Structure

`RetrievesAvailableFilesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file_name` | `String` | Optional | ThingSpace-generated name of the file. You will use this name when listing or scheduling campaigns for the file. |
| `file_version` | `String` | Optional | Version of the file. |
| `release_note` | `String` | Optional | Software release note. |
| `make` | `String` | Optional | The software-applicable device make. |
| `model` | `String` | Optional | The software-applicable device model. |
| `local_target_path` | `String` | Optional | Local target path on the device. |
| `distribution_type` | `String` | Optional | Valid values |
| `device_platform_id` | `String` | Optional | The platform (Android, iOS, etc.,) that the software can be applied to. |

## Example (as JSON)

```json
{
  "fileName": "configfile-Verizon_VZW1_hello-world.txt",
  "fileVersion": "1.0",
  "releaseNote": "Hello world initial file",
  "make": "Verizon",
  "model": "VZW1",
  "localTargetPath": "/VZWFOTA/hello-world.txt",
  "distributionType": "HTTP",
  "devicePlatformId": "IoT"
}
```

