
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `vz_m2m_token` | `String` | M2M Session Token ([How to generate an M2M session token?](page:getting-started/5g-edge-developer-creds-token#obtaining-a-vz-m2m-session-token-programmatically)) |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `oauth_2_credentials` | [`Oauth2Credentials`]($a/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| `thingspace_oauth_credentials` | [`ThingspaceOauthCredentials`]($a/oauth-2-client-credentials-grant-1.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

```ruby
client = Verizon::Client.new(
  vz_m2m_token: 'VZ-M2M-Token',
  oauth_2credentials: Oauth2Credentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeOauth2Enum::DISCOVERYREAD,
      OauthScopeOauth2Enum::SERVICEPROFILEREAD
    ]
  ),
  thingspace_oauth_credentials: ThingspaceOauthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret'
  ),
  environment: Environment::PRODUCTION
)
```

API calls return an `ApiResponse` object that includes the following fields:

| Field | Description |
|  --- | --- |
| `status_code` | Status code of the HTTP response |
| `reason_phrase` | Reason phrase of the HTTP response |
| `headers` | Headers of the HTTP response as a Hash |
| `raw_body` | The body of the HTTP response as a String |
| `request` | HTTP request info |
| `errors` | Errors, if they exist |
| `data` | The deserialized body of the HTTP response |

## Verizon Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| m_5g_edge_platforms | Gets M5gEdgePlatformsController |
| service_endpoints | Gets ServiceEndpointsController |
| service_profiles | Gets ServiceProfilesController |
| device_management | Gets DeviceManagementController |
| accounts | Gets AccountsController |
| device_groups | Gets DeviceGroupsController |
| sms | Gets SMSController |
| session_management | Gets SessionManagementController |
| connectivity_callbacks | Gets ConnectivityCallbacksController |
| account_requests | Gets AccountRequestsController |
| service_plans | Gets ServicePlansController |
| device_diagnostics | Gets DeviceDiagnosticsController |
| device_profile_management | Gets DeviceProfileManagementController |
| device_monitoring | Gets DeviceMonitoringController |
| e_uicc_device_profile_management | Gets EUICCDeviceProfileManagementController |
| devices_locations | Gets DevicesLocationsController |
| exclusions | Gets ExclusionsController |
| devices_location_subscriptions | Gets DevicesLocationSubscriptionsController |
| device_location_callbacks | Gets DeviceLocationCallbacksController |
| usage_trigger_management | Gets UsageTriggerManagementController |
| billing | Gets BillingController |
| software_management_subscriptions_v1 | Gets SoftwareManagementSubscriptionsV1Controller |
| software_management_licenses_v1 | Gets SoftwareManagementLicensesV1Controller |
| firmware_v1 | Gets FirmwareV1Controller |
| software_management_callbacks_v1 | Gets SoftwareManagementCallbacksV1Controller |
| software_management_reports_v1 | Gets SoftwareManagementReportsV1Controller |
| software_management_subscriptions_v2 | Gets SoftwareManagementSubscriptionsV2Controller |
| software_management_licenses_v2 | Gets SoftwareManagementLicensesV2Controller |
| campaigns_v2 | Gets CampaignsV2Controller |
| software_management_callbacks_v2 | Gets SoftwareManagementCallbacksV2Controller |
| software_management_reports_v2 | Gets SoftwareManagementReportsV2Controller |
| client_logging | Gets ClientLoggingController |
| server_logging | Gets ServerLoggingController |
| configuration_files | Gets ConfigurationFilesController |
| software_management_subscriptions_v3 | Gets SoftwareManagementSubscriptionsV3Controller |
| software_management_licenses_v3 | Gets SoftwareManagementLicensesV3Controller |
| campaigns_v3 | Gets CampaignsV3Controller |
| software_management_reports_v3 | Gets SoftwareManagementReportsV3Controller |
| firmware_v3 | Gets FirmwareV3Controller |
| account_devices | Gets AccountDevicesController |
| software_management_callbacks_v3 | Gets SoftwareManagementCallbacksV3Controller |
| sim_secure_for_io_t_licenses | Gets SIMSecureForIoTLicensesController |
| account_subscriptions | Gets AccountSubscriptionsController |
| performance_metrics | Gets PerformanceMetricsController |
| diagnostics_subscriptions | Gets DiagnosticsSubscriptionsController |
| diagnostics_observations | Gets DiagnosticsObservationsController |
| diagnostics_history | Gets DiagnosticsHistoryController |
| diagnostics_settings | Gets DiagnosticsSettingsController |
| diagnostics_callbacks | Gets DiagnosticsCallbacksController |
| diagnostics_factory_reset | Gets DiagnosticsFactoryResetController |
| targets | Gets TargetsController |
| cloud_connector_subscriptions | Gets CloudConnectorSubscriptionsController |
| cloud_connector_devices | Gets CloudConnectorDevicesController |
| device_service_management | Gets DeviceServiceManagementController |
| device_reports | Gets DeviceReportsController |
| hyper_precise_location_callbacks | Gets HyperPreciseLocationCallbacksController |
| anomaly_settings | Gets AnomalySettingsController |
| anomaly_triggers | Gets AnomalyTriggersController |
| anomaly_triggers_v2 | Gets AnomalyTriggersV2Controller |
| wireless_network_performance | Gets WirelessNetworkPerformanceController |
| fixed_wireless_qualification | Gets FixedWirelessQualificationController |
| managing_e_sim_profiles | Gets ManagingESIMProfilesController |
| device_sms_messaging | Gets DeviceSMSMessagingController |
| device_actions | Gets DeviceActionsController |
| thing_space_quality_of_service_api_actions | Gets ThingSpaceQualityOfServiceAPIActionsController |
| mec | Gets MECController |
| promotion_period_information | Gets PromotionPeriodInformationController |
| retrieve_the_triggers | Gets RetrieveTheTriggersController |
| update_triggers | Gets UpdateTriggersController |
| sim_actions | Gets SIMActionsController |
| global_reporting | Gets GlobalReportingController |
| oauth_authorization | Gets OauthAuthorizationController |

