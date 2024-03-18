# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Filter for devices without account.
  class DeviceFilterWithoutAccount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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
      @_hash['group_name'] = 'groupName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['custom_fields'] = 'customFields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        group_name
        service_plan
        custom_fields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(group_name = SKIP,
                   service_plan = SKIP,
                   custom_fields = SKIP)
      @group_name = group_name unless group_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
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
      DeviceFilterWithoutAccount.new(group_name,
                                     service_plan,
                                     custom_fields)
    end
  end
end