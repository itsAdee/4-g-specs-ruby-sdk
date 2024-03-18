# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # TriggersListOptions Model.
  class TriggersListOptions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The system assigned name of the trigger being updated.
    # @return [String]
    attr_accessor :trigger_id

    # The user defined name of the trigger.
    # @return [String]
    attr_accessor :trigger_name

    # The user assigned name of the organization associated with the trigger.
    # @return [String]
    attr_accessor :organization_name

    # This is the value to use in the request body to detect anomalous
    # behaivior. The values in this table will only be relevant when this
    # parameter is set to this value.
    # @return [String]
    attr_accessor :trigger_category

    # Additional details and keys for the trigger.
    # @return [Array[TriggerAttributesOptions]]
    attr_accessor :trigger_attributes

    # Timestamp for whe the trigger was created.
    # @return [String]
    attr_accessor :created_at

    # Timestamp for the most recent time the trigger was modified.
    # @return [String]
    attr_accessor :modified_at

    # The details of the UsageAnomaly trigger.
    # @return [UsageAnomalyAttributes]
    attr_accessor :anomalyattributes

    # The notification details of the trigger.
    # @return [Notification]
    attr_accessor :notification

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['trigger_id'] = 'triggerId'
      @_hash['trigger_name'] = 'triggerName'
      @_hash['organization_name'] = 'organizationName'
      @_hash['trigger_category'] = 'triggerCategory'
      @_hash['trigger_attributes'] = 'triggerAttributes'
      @_hash['created_at'] = 'createdAt'
      @_hash['modified_at'] = 'modifiedAt'
      @_hash['anomalyattributes'] = 'anomalyattributes'
      @_hash['notification'] = 'notification'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        trigger_id
        trigger_name
        organization_name
        trigger_category
        trigger_attributes
        created_at
        modified_at
        anomalyattributes
        notification
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(trigger_id = SKIP,
                   trigger_name = SKIP,
                   organization_name = SKIP,
                   trigger_category = SKIP,
                   trigger_attributes = SKIP,
                   created_at = SKIP,
                   modified_at = SKIP,
                   anomalyattributes = SKIP,
                   notification = SKIP)
      @trigger_id = trigger_id unless trigger_id == SKIP
      @trigger_name = trigger_name unless trigger_name == SKIP
      @organization_name = organization_name unless organization_name == SKIP
      @trigger_category = trigger_category unless trigger_category == SKIP
      @trigger_attributes = trigger_attributes unless trigger_attributes == SKIP
      @created_at = created_at unless created_at == SKIP
      @modified_at = modified_at unless modified_at == SKIP
      @anomalyattributes = anomalyattributes unless anomalyattributes == SKIP
      @notification = notification unless notification == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      trigger_id = hash.key?('triggerId') ? hash['triggerId'] : SKIP
      trigger_name = hash.key?('triggerName') ? hash['triggerName'] : SKIP
      organization_name =
        hash.key?('organizationName') ? hash['organizationName'] : SKIP
      trigger_category =
        hash.key?('triggerCategory') ? hash['triggerCategory'] : SKIP
      # Parameter is an array, so we need to iterate through it
      trigger_attributes = nil
      unless hash['triggerAttributes'].nil?
        trigger_attributes = []
        hash['triggerAttributes'].each do |structure|
          trigger_attributes << (TriggerAttributesOptions.from_hash(structure) if structure)
        end
      end

      trigger_attributes = SKIP unless hash.key?('triggerAttributes')
      created_at = hash.key?('createdAt') ? hash['createdAt'] : SKIP
      modified_at = hash.key?('modifiedAt') ? hash['modifiedAt'] : SKIP
      anomalyattributes = UsageAnomalyAttributes.from_hash(hash['anomalyattributes']) if
        hash['anomalyattributes']
      notification = Notification.from_hash(hash['notification']) if hash['notification']

      # Create object from extracted values.
      TriggersListOptions.new(trigger_id,
                              trigger_name,
                              organization_name,
                              trigger_category,
                              trigger_attributes,
                              created_at,
                              modified_at,
                              anomalyattributes,
                              notification)
    end
  end
end
