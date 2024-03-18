# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Specify the kind of the device identifier, the type of match, and the string
  # that you want to match.
  class DeviceFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The the billing account that the devices belong to.
    # @return [String]
    attr_accessor :account

    # Only include devices that are in this device group.
    # @return [String]
    attr_accessor :group_name

    # Only include devices that have this service plan.
    # @return [String]
    attr_accessor :service_plan

    # Custom field names and values, if you want to only include devices that
    # have matching values.
    # @return [Array[CustomFields]]
    attr_accessor :custom_fields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account'] = 'account'
      @_hash['group_name'] = 'groupName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['custom_fields'] = 'customFields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account
        group_name
        service_plan
        custom_fields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account = SKIP,
                   group_name = SKIP,
                   service_plan = SKIP,
                   custom_fields = SKIP)
      @account = account unless account == SKIP
      @group_name = group_name unless group_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account = hash.key?('account') ? hash['account'] : SKIP
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (CustomFields.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')

      # Create object from extracted values.
      DeviceFilter.new(account,
                       group_name,
                       service_plan,
                       custom_fields)
    end
  end
end