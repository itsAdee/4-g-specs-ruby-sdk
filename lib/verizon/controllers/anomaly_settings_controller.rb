# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AnomalySettingsController
  class AnomalySettingsController < BaseController
    # Uses the subscribed account ID to activate anomaly detection and set
    # threshold values.
    # @param [AnomalyDetectionRequest] body Required parameter: Request to
    # activate anomaly detection.
    # @return [IntelligenceSuccessResult] response from the API call
    def activate_anomaly_detection(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/intelligence/anomaly/settings',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('thingspace_oauth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(IntelligenceSuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'An error occurred.',
                                IntelligenceResultException))
        .execute
    end

    # Retrieves the current anomaly detection settings for an account.
    # @param [String] account_name Required parameter: The name of the
    # subscribed account.
    # @return [AnomalyDetectionSettings] response from the API call
    def list_anomaly_detection_settings(account_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/intelligence/{accountName}/anomaly/settings',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('thingspace_oauth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AnomalyDetectionSettings.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'An error occurred.',
                                IntelligenceResultException))
        .execute
    end

    # Resets the thresholds to zero.
    # @param [String] account_name Required parameter: The name of the
    # subscribed account.
    # @return [IntelligenceSuccessResult] response from the API call
    def reset_anomaly_detection_parameters(account_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/m2m/v1/intelligence/{accountName}/anomaly/settings/reset',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('thingspace_oauth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(IntelligenceSuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'An error occurred.',
                                IntelligenceResultException))
        .execute
    end
  end
end
