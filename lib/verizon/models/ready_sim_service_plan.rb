# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ReadySimServicePlan Model.
  class ReadySimServicePlan < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :service_plan

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['service_plan'] = 'servicePlan'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        service_plan
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(service_plan = SKIP)
      @service_plan = service_plan unless service_plan == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP

      # Create object from extracted values.
      ReadySimServicePlan.new(service_plan)
    end
  end
end
