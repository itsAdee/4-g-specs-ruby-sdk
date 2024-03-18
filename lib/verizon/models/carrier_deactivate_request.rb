# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Request to deactivate a carrier.
  class CarrierDeactivateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of a billing account.
    # @return [String]
    attr_accessor :account_name

    # The devices for which you want to deactivate service, specified by device
    # identifier.
    # @return [Array[AccountDeviceList]]
    attr_accessor :devices

    # Code identifying the reason for the deactivation. Currently the only valid
    # reason code is “FF”, which corresponds to General Admin/Maintenance.
    # @return [String]
    attr_accessor :reason_code

    # Custom field names and values, if you want to only include devices that
    # have matching values.
    # @return [Array[CustomFields]]
    attr_accessor :custom_fields

    # Fees may be assessed for deactivating Verizon Wireless devices, depending
    # on the account contract. The etfWaiver parameter waives the Early
    # Termination Fee (ETF), if applicable.
    # @return [TrueClass | FalseClass]
    attr_accessor :etf_waiver

    # The name of a device group, if you want to deactivate all devices in that
    # group.
    # @return [String]
    attr_accessor :group_name

    # The name of a service plan, if you want to only include devices that have
    # that service plan.
    # @return [String]
    attr_accessor :service_plan

    # The name of a service plan, if you want to only include devices that have
    # that service plan.
    # @return [TrueClass | FalseClass]
    attr_accessor :delete_after_deactivation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['devices'] = 'devices'
      @_hash['reason_code'] = 'reasonCode'
      @_hash['custom_fields'] = 'customFields'
      @_hash['etf_waiver'] = 'etfWaiver'
      @_hash['group_name'] = 'groupName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['delete_after_deactivation'] = 'deleteAfterDeactivation'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        custom_fields
        etf_waiver
        group_name
        service_plan
        delete_after_deactivation
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil,
                   devices = nil,
                   reason_code = nil,
                   custom_fields = SKIP,
                   etf_waiver = SKIP,
                   group_name = SKIP,
                   service_plan = SKIP,
                   delete_after_deactivation = SKIP)
      @account_name = account_name
      @devices = devices
      @reason_code = reason_code
      @custom_fields = custom_fields unless custom_fields == SKIP
      @etf_waiver = etf_waiver unless etf_waiver == SKIP
      @group_name = group_name unless group_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      unless delete_after_deactivation == SKIP
        @delete_after_deactivation =
          delete_after_deactivation
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices = nil unless hash.key?('devices')
      reason_code = hash.key?('reasonCode') ? hash['reasonCode'] : nil
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (CustomFields.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      etf_waiver = hash.key?('etfWaiver') ? hash['etfWaiver'] : SKIP
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      delete_after_deactivation =
        hash.key?('deleteAfterDeactivation') ? hash['deleteAfterDeactivation'] : SKIP

      # Create object from extracted values.
      CarrierDeactivateRequest.new(account_name,
                                   devices,
                                   reason_code,
                                   custom_fields,
                                   etf_waiver,
                                   group_name,
                                   service_plan,
                                   delete_after_deactivation)
    end
  end
end
