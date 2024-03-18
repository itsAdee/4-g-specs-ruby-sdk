# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # A successful response returns an array of lead objects.
  class AccountLead < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The customer address for the line's primary place of use, for line usage
    # taxation.
    # @return [Address]
    attr_accessor :address

    # Unique number for each lead. Use this value in the leadId parameter when
    # activating devices to credit the activations to the lead.
    # @return [String]
    attr_accessor :lead_id

    # The current state of the lead, such as “Qualified” or “Closed.”
    # @return [String]
    attr_accessor :lead_state

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address'] = 'address'
      @_hash['lead_id'] = 'leadId'
      @_hash['lead_state'] = 'leadState'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        address
        lead_id
        lead_state
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(address = SKIP,
                   lead_id = SKIP,
                   lead_state = SKIP)
      @address = address unless address == SKIP
      @lead_id = lead_id unless lead_id == SKIP
      @lead_state = lead_state unless lead_state == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address = Address.from_hash(hash['address']) if hash['address']
      lead_id = hash.key?('leadId') ? hash['leadId'] : SKIP
      lead_state = hash.key?('leadState') ? hash['leadState'] : SKIP

      # Create object from extracted values.
      AccountLead.new(address,
                      lead_id,
                      lead_state)
    end
  end
end